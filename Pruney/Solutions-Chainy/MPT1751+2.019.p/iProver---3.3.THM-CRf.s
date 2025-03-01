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
% DateTime   : Thu Dec  3 12:22:34 EST 2020

% Result     : Theorem 2.11s
% Output     : CNFRefutation 2.11s
% Verified   : 
% Statistics : Number of formulae       :  130 ( 421 expanded)
%              Number of clauses        :   78 ( 118 expanded)
%              Number of leaves         :   15 ( 153 expanded)
%              Depth                    :   24
%              Number of atoms          :  481 (4000 expanded)
%              Number of equality atoms :  115 ( 487 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   28 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f10,conjecture,(
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
                  ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                    & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                    & v1_funct_1(X3) )
                 => ! [X4] :
                      ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                     => ( r1_tarski(X4,u1_struct_0(X2))
                       => k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) = k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
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
                    ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                      & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                      & v1_funct_1(X3) )
                   => ! [X4] :
                        ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                       => ( r1_tarski(X4,u1_struct_0(X2))
                         => k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) = k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
                      & r1_tarski(X4,u1_struct_0(X2))
                      & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
                      & r1_tarski(X4,u1_struct_0(X2))
                      & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
          & r1_tarski(X4,u1_struct_0(X2))
          & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
     => ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,sK4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),sK4)
        & r1_tarski(sK4,u1_struct_0(X2))
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
              & r1_tarski(X4,u1_struct_0(X2))
              & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
          & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
          & v1_funct_1(X3) )
     => ( ? [X4] :
            ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),sK3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,sK3,X2),X4)
            & r1_tarski(X4,u1_struct_0(X2))
            & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
        & v1_funct_2(sK3,u1_struct_0(X1),u1_struct_0(X0))
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
                  & r1_tarski(X4,u1_struct_0(X2))
                  & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
              & v1_funct_1(X3) )
          & m1_pre_topc(X2,X1)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,sK2),X4)
                & r1_tarski(X4,u1_struct_0(sK2))
                & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
            & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
            & v1_funct_1(X3) )
        & m1_pre_topc(sK2,X1)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
                      & r1_tarski(X4,u1_struct_0(X2))
                      & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ? [X4] :
                    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(sK1,X0,X3,X2),X4)
                    & r1_tarski(X4,u1_struct_0(X2))
                    & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK1))) )
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
                & v1_funct_2(X3,u1_struct_0(sK1),u1_struct_0(X0))
                & v1_funct_1(X3) )
            & m1_pre_topc(X2,sK1)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
                        & r1_tarski(X4,u1_struct_0(X2))
                        & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                    & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                    & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0))
                    & v1_funct_1(X3) )
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
                      ( k7_relset_1(u1_struct_0(X1),u1_struct_0(sK0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(sK0),k2_tmap_1(X1,sK0,X3,X2),X4)
                      & r1_tarski(X4,u1_struct_0(X2))
                      & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0))))
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(sK0))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4)
    & r1_tarski(sK4,u1_struct_0(sK2))
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))
    & v1_funct_1(sK3)
    & m1_pre_topc(sK2,sK1)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f25,f30,f29,f28,f27,f26])).

fof(f52,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f31])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f20])).

fof(f40,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f50,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f31])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ( m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(k2_partfun1(X0,X1,X2,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(k2_partfun1(X0,X1,X2,X3)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(k2_partfun1(X0,X1,X2,X3)) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f18])).

fof(f39,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
     => ( r1_tarski(k1_relat_1(X3),X1)
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(flattening,[],[f16])).

fof(f37,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f36,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f32,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f51,plain,(
    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f31])).

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
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)
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
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)
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
    inference(flattening,[],[f22])).

fof(f41,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)
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
    inference(cnf_transformation,[],[f23])).

fof(f49,plain,(
    m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f45,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f46,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f47,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f44,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f42,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f43,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f55,plain,(
    k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
    inference(cnf_transformation,[],[f31])).

fof(f54,plain,(
    r1_tarski(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f31])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1,X2] :
          ( r1_tarski(X1,X2)
         => k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1)
          | ~ r1_tarski(X1,X2) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1)
      | ~ r1_tarski(X1,X2)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f13])).

cnf(c_3,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_604,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0_51,X1_51)),X1_51)
    | ~ v1_relat_1(X0_51) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_909,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0_51,X1_51)),X1_51) = iProver_top
    | v1_relat_1(X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_604])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_595,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_917,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_595])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_599,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | ~ v1_funct_1(X0_51)
    | k2_partfun1(X1_51,X2_51,X0_51,X3_51) = k7_relat_1(X0_51,X3_51) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_914,plain,
    ( k2_partfun1(X0_51,X1_51,X2_51,X3_51) = k7_relat_1(X2_51,X3_51)
    | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X2_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_599])).

cnf(c_1608,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k7_relat_1(sK3,X0_51)
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_917,c_914])).

cnf(c_15,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1072,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(sK3)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k7_relat_1(sK3,X0_51) ),
    inference(instantiation,[status(thm)],[c_599])).

cnf(c_1806,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k7_relat_1(sK3,X0_51) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1608,c_15,c_13,c_1072])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_partfun1(X1,X2,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_601,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | m1_subset_1(k2_partfun1(X1_51,X2_51,X0_51,X3_51),k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | ~ v1_funct_1(X0_51) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_912,plain,
    ( m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51))) != iProver_top
    | m1_subset_1(k2_partfun1(X1_51,X2_51,X0_51,X3_51),k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51))) = iProver_top
    | v1_funct_1(X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_601])).

cnf(c_1819,plain,
    ( m1_subset_1(k7_relat_1(sK3,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1806,c_912])).

cnf(c_32,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_34,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2035,plain,
    ( m1_subset_1(k7_relat_1(sK3,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1819,c_32,c_34])).

cnf(c_5,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_602,plain,
    ( ~ r1_tarski(k1_relat_1(X0_51),X1_51)
    | ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51)))
    | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X3_51))) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_911,plain,
    ( r1_tarski(k1_relat_1(X0_51),X1_51) != iProver_top
    | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51))) != iProver_top
    | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X3_51))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_602])).

cnf(c_2043,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(sK3,X0_51)),X1_51) != iProver_top
    | m1_subset_1(k7_relat_1(sK3,X0_51),k1_zfmisc_1(k2_zfmisc_1(X1_51,u1_struct_0(sK0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2035,c_911])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_603,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
    | k7_relset_1(X1_51,X2_51,X0_51,X3_51) = k9_relat_1(X0_51,X3_51) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_910,plain,
    ( k7_relset_1(X0_51,X1_51,X2_51,X3_51) = k9_relat_1(X2_51,X3_51)
    | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_603])).

cnf(c_2241,plain,
    ( k7_relset_1(X0_51,u1_struct_0(sK0),k7_relat_1(sK3,X1_51),X2_51) = k9_relat_1(k7_relat_1(sK3,X1_51),X2_51)
    | r1_tarski(k1_relat_1(k7_relat_1(sK3,X1_51)),X0_51) != iProver_top ),
    inference(superposition,[status(thm)],[c_2043,c_910])).

cnf(c_2428,plain,
    ( k7_relset_1(X0_51,u1_struct_0(sK0),k7_relat_1(sK3,X0_51),X1_51) = k9_relat_1(k7_relat_1(sK3,X0_51),X1_51)
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_909,c_2241])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_607,plain,
    ( ~ m1_subset_1(X0_51,k1_zfmisc_1(X1_51))
    | ~ v1_relat_1(X1_51)
    | v1_relat_1(X0_51) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_906,plain,
    ( m1_subset_1(X0_51,k1_zfmisc_1(X1_51)) != iProver_top
    | v1_relat_1(X1_51) != iProver_top
    | v1_relat_1(X0_51) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_607])).

cnf(c_1192,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_917,c_906])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_606,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_51,X1_51)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1360,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_606])).

cnf(c_1361,plain,
    ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1360])).

cnf(c_2865,plain,
    ( k7_relset_1(X0_51,u1_struct_0(sK0),k7_relat_1(sK3,X0_51),X1_51) = k9_relat_1(k7_relat_1(sK3,X0_51),X1_51) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2428,c_1192,c_1361])).

cnf(c_14,negated_conjecture,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_9,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_16,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_316,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3)
    | sK2 != X3
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_16])).

cnf(c_317,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | v2_struct_0(sK1)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
    inference(unflattening,[status(thm)],[c_316])).

cnf(c_20,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_19,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_18,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_321,plain,
    ( ~ l1_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ v2_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_317,c_20,c_19,c_18])).

cnf(c_322,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
    inference(renaming,[status(thm)],[c_321])).

cnf(c_355,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2)
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_322])).

cnf(c_356,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_funct_1(sK3)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
    | u1_struct_0(X0) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_355])).

cnf(c_360,plain,
    ( ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
    | u1_struct_0(X0) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_356,c_15])).

cnf(c_361,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
    | u1_struct_0(X0) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_360])).

cnf(c_21,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_409,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
    | v2_struct_0(X0)
    | ~ v2_pre_topc(X0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
    | u1_struct_0(X0) != u1_struct_0(sK0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_361,c_21])).

cnf(c_410,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | v2_struct_0(sK0)
    | ~ v2_pre_topc(sK0)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2)
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_409])).

cnf(c_23,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_22,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_412,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2)
    | u1_struct_0(sK0) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_410,c_23,c_22,c_13])).

cnf(c_440,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_412])).

cnf(c_592,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
    inference(subtyping,[status(esa)],[c_440])).

cnf(c_1810,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK2)) ),
    inference(demodulation,[status(thm)],[c_1806,c_592])).

cnf(c_1272,plain,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k9_relat_1(sK3,X0_51) ),
    inference(superposition,[status(thm)],[c_917,c_910])).

cnf(c_10,negated_conjecture,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_598,negated_conjecture,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_1396,plain,
    ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) != k9_relat_1(sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_1272,c_598])).

cnf(c_1863,plain,
    ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_1810,c_1396])).

cnf(c_2869,plain,
    ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_2865,c_1863])).

cnf(c_1444,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1192,c_1361])).

cnf(c_11,negated_conjecture,
    ( r1_tarski(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_597,negated_conjecture,
    ( r1_tarski(sK4,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_915,plain,
    ( r1_tarski(sK4,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_597])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X2)
    | k9_relat_1(k7_relat_1(X2,X1),X0) = k9_relat_1(X2,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_605,plain,
    ( ~ r1_tarski(X0_51,X1_51)
    | ~ v1_relat_1(X2_51)
    | k9_relat_1(k7_relat_1(X2_51,X1_51),X0_51) = k9_relat_1(X2_51,X0_51) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_908,plain,
    ( k9_relat_1(k7_relat_1(X0_51,X1_51),X2_51) = k9_relat_1(X0_51,X2_51)
    | r1_tarski(X2_51,X1_51) != iProver_top
    | v1_relat_1(X0_51) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_605])).

cnf(c_1278,plain,
    ( k9_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),sK4) = k9_relat_1(X0_51,sK4)
    | v1_relat_1(X0_51) != iProver_top ),
    inference(superposition,[status(thm)],[c_915,c_908])).

cnf(c_1453,plain,
    ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) = k9_relat_1(sK3,sK4) ),
    inference(superposition,[status(thm)],[c_1444,c_1278])).

cnf(c_2870,plain,
    ( k9_relat_1(sK3,sK4) != k9_relat_1(sK3,sK4) ),
    inference(light_normalisation,[status(thm)],[c_2869,c_1453])).

cnf(c_2871,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_2870])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n011.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:22:12 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.11/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.11/0.98  
% 2.11/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.11/0.98  
% 2.11/0.98  ------  iProver source info
% 2.11/0.98  
% 2.11/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.11/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.11/0.98  git: non_committed_changes: false
% 2.11/0.98  git: last_make_outside_of_git: false
% 2.11/0.98  
% 2.11/0.98  ------ 
% 2.11/0.98  
% 2.11/0.98  ------ Input Options
% 2.11/0.98  
% 2.11/0.98  --out_options                           all
% 2.11/0.98  --tptp_safe_out                         true
% 2.11/0.98  --problem_path                          ""
% 2.11/0.98  --include_path                          ""
% 2.11/0.98  --clausifier                            res/vclausify_rel
% 2.11/0.98  --clausifier_options                    --mode clausify
% 2.11/0.98  --stdin                                 false
% 2.11/0.98  --stats_out                             all
% 2.11/0.98  
% 2.11/0.98  ------ General Options
% 2.11/0.98  
% 2.11/0.98  --fof                                   false
% 2.11/0.98  --time_out_real                         305.
% 2.11/0.98  --time_out_virtual                      -1.
% 2.11/0.98  --symbol_type_check                     false
% 2.11/0.98  --clausify_out                          false
% 2.11/0.98  --sig_cnt_out                           false
% 2.11/0.98  --trig_cnt_out                          false
% 2.11/0.98  --trig_cnt_out_tolerance                1.
% 2.11/0.98  --trig_cnt_out_sk_spl                   false
% 2.11/0.98  --abstr_cl_out                          false
% 2.11/0.98  
% 2.11/0.98  ------ Global Options
% 2.11/0.98  
% 2.11/0.98  --schedule                              default
% 2.11/0.98  --add_important_lit                     false
% 2.11/0.98  --prop_solver_per_cl                    1000
% 2.11/0.98  --min_unsat_core                        false
% 2.11/0.98  --soft_assumptions                      false
% 2.11/0.98  --soft_lemma_size                       3
% 2.11/0.98  --prop_impl_unit_size                   0
% 2.11/0.98  --prop_impl_unit                        []
% 2.11/0.98  --share_sel_clauses                     true
% 2.11/0.98  --reset_solvers                         false
% 2.11/0.98  --bc_imp_inh                            [conj_cone]
% 2.11/0.98  --conj_cone_tolerance                   3.
% 2.11/0.98  --extra_neg_conj                        none
% 2.11/0.98  --large_theory_mode                     true
% 2.11/0.98  --prolific_symb_bound                   200
% 2.11/0.98  --lt_threshold                          2000
% 2.11/0.98  --clause_weak_htbl                      true
% 2.11/0.98  --gc_record_bc_elim                     false
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing Options
% 2.11/0.98  
% 2.11/0.98  --preprocessing_flag                    true
% 2.11/0.98  --time_out_prep_mult                    0.1
% 2.11/0.98  --splitting_mode                        input
% 2.11/0.98  --splitting_grd                         true
% 2.11/0.98  --splitting_cvd                         false
% 2.11/0.98  --splitting_cvd_svl                     false
% 2.11/0.98  --splitting_nvd                         32
% 2.11/0.98  --sub_typing                            true
% 2.11/0.98  --prep_gs_sim                           true
% 2.11/0.98  --prep_unflatten                        true
% 2.11/0.98  --prep_res_sim                          true
% 2.11/0.98  --prep_upred                            true
% 2.11/0.98  --prep_sem_filter                       exhaustive
% 2.11/0.98  --prep_sem_filter_out                   false
% 2.11/0.98  --pred_elim                             true
% 2.11/0.98  --res_sim_input                         true
% 2.11/0.98  --eq_ax_congr_red                       true
% 2.11/0.98  --pure_diseq_elim                       true
% 2.11/0.98  --brand_transform                       false
% 2.11/0.98  --non_eq_to_eq                          false
% 2.11/0.98  --prep_def_merge                        true
% 2.11/0.98  --prep_def_merge_prop_impl              false
% 2.11/0.98  --prep_def_merge_mbd                    true
% 2.11/0.98  --prep_def_merge_tr_red                 false
% 2.11/0.98  --prep_def_merge_tr_cl                  false
% 2.11/0.98  --smt_preprocessing                     true
% 2.11/0.98  --smt_ac_axioms                         fast
% 2.11/0.98  --preprocessed_out                      false
% 2.11/0.98  --preprocessed_stats                    false
% 2.11/0.98  
% 2.11/0.98  ------ Abstraction refinement Options
% 2.11/0.98  
% 2.11/0.98  --abstr_ref                             []
% 2.11/0.98  --abstr_ref_prep                        false
% 2.11/0.98  --abstr_ref_until_sat                   false
% 2.11/0.98  --abstr_ref_sig_restrict                funpre
% 2.11/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.11/0.98  --abstr_ref_under                       []
% 2.11/0.98  
% 2.11/0.98  ------ SAT Options
% 2.11/0.98  
% 2.11/0.98  --sat_mode                              false
% 2.11/0.98  --sat_fm_restart_options                ""
% 2.11/0.98  --sat_gr_def                            false
% 2.11/0.98  --sat_epr_types                         true
% 2.11/0.98  --sat_non_cyclic_types                  false
% 2.11/0.98  --sat_finite_models                     false
% 2.11/0.98  --sat_fm_lemmas                         false
% 2.11/0.98  --sat_fm_prep                           false
% 2.11/0.98  --sat_fm_uc_incr                        true
% 2.11/0.98  --sat_out_model                         small
% 2.11/0.98  --sat_out_clauses                       false
% 2.11/0.98  
% 2.11/0.98  ------ QBF Options
% 2.11/0.98  
% 2.11/0.98  --qbf_mode                              false
% 2.11/0.98  --qbf_elim_univ                         false
% 2.11/0.98  --qbf_dom_inst                          none
% 2.11/0.98  --qbf_dom_pre_inst                      false
% 2.11/0.98  --qbf_sk_in                             false
% 2.11/0.98  --qbf_pred_elim                         true
% 2.11/0.98  --qbf_split                             512
% 2.11/0.98  
% 2.11/0.98  ------ BMC1 Options
% 2.11/0.98  
% 2.11/0.98  --bmc1_incremental                      false
% 2.11/0.98  --bmc1_axioms                           reachable_all
% 2.11/0.98  --bmc1_min_bound                        0
% 2.11/0.98  --bmc1_max_bound                        -1
% 2.11/0.98  --bmc1_max_bound_default                -1
% 2.11/0.98  --bmc1_symbol_reachability              true
% 2.11/0.98  --bmc1_property_lemmas                  false
% 2.11/0.98  --bmc1_k_induction                      false
% 2.11/0.98  --bmc1_non_equiv_states                 false
% 2.11/0.98  --bmc1_deadlock                         false
% 2.11/0.98  --bmc1_ucm                              false
% 2.11/0.98  --bmc1_add_unsat_core                   none
% 2.11/0.98  --bmc1_unsat_core_children              false
% 2.11/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.11/0.98  --bmc1_out_stat                         full
% 2.11/0.98  --bmc1_ground_init                      false
% 2.11/0.98  --bmc1_pre_inst_next_state              false
% 2.11/0.98  --bmc1_pre_inst_state                   false
% 2.11/0.98  --bmc1_pre_inst_reach_state             false
% 2.11/0.98  --bmc1_out_unsat_core                   false
% 2.11/0.98  --bmc1_aig_witness_out                  false
% 2.11/0.98  --bmc1_verbose                          false
% 2.11/0.98  --bmc1_dump_clauses_tptp                false
% 2.11/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.11/0.98  --bmc1_dump_file                        -
% 2.11/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.11/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.11/0.98  --bmc1_ucm_extend_mode                  1
% 2.11/0.98  --bmc1_ucm_init_mode                    2
% 2.11/0.98  --bmc1_ucm_cone_mode                    none
% 2.11/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.11/0.98  --bmc1_ucm_relax_model                  4
% 2.11/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.11/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.11/0.98  --bmc1_ucm_layered_model                none
% 2.11/0.98  --bmc1_ucm_max_lemma_size               10
% 2.11/0.98  
% 2.11/0.98  ------ AIG Options
% 2.11/0.98  
% 2.11/0.98  --aig_mode                              false
% 2.11/0.98  
% 2.11/0.98  ------ Instantiation Options
% 2.11/0.98  
% 2.11/0.98  --instantiation_flag                    true
% 2.11/0.98  --inst_sos_flag                         false
% 2.11/0.98  --inst_sos_phase                        true
% 2.11/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel_side                     num_symb
% 2.11/0.98  --inst_solver_per_active                1400
% 2.11/0.98  --inst_solver_calls_frac                1.
% 2.11/0.98  --inst_passive_queue_type               priority_queues
% 2.11/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.11/0.98  --inst_passive_queues_freq              [25;2]
% 2.11/0.98  --inst_dismatching                      true
% 2.11/0.98  --inst_eager_unprocessed_to_passive     true
% 2.11/0.98  --inst_prop_sim_given                   true
% 2.11/0.98  --inst_prop_sim_new                     false
% 2.11/0.98  --inst_subs_new                         false
% 2.11/0.98  --inst_eq_res_simp                      false
% 2.11/0.98  --inst_subs_given                       false
% 2.11/0.98  --inst_orphan_elimination               true
% 2.11/0.98  --inst_learning_loop_flag               true
% 2.11/0.98  --inst_learning_start                   3000
% 2.11/0.98  --inst_learning_factor                  2
% 2.11/0.98  --inst_start_prop_sim_after_learn       3
% 2.11/0.98  --inst_sel_renew                        solver
% 2.11/0.98  --inst_lit_activity_flag                true
% 2.11/0.98  --inst_restr_to_given                   false
% 2.11/0.98  --inst_activity_threshold               500
% 2.11/0.98  --inst_out_proof                        true
% 2.11/0.98  
% 2.11/0.98  ------ Resolution Options
% 2.11/0.98  
% 2.11/0.98  --resolution_flag                       true
% 2.11/0.98  --res_lit_sel                           adaptive
% 2.11/0.98  --res_lit_sel_side                      none
% 2.11/0.98  --res_ordering                          kbo
% 2.11/0.98  --res_to_prop_solver                    active
% 2.11/0.98  --res_prop_simpl_new                    false
% 2.11/0.98  --res_prop_simpl_given                  true
% 2.11/0.98  --res_passive_queue_type                priority_queues
% 2.11/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.11/0.98  --res_passive_queues_freq               [15;5]
% 2.11/0.98  --res_forward_subs                      full
% 2.11/0.98  --res_backward_subs                     full
% 2.11/0.98  --res_forward_subs_resolution           true
% 2.11/0.98  --res_backward_subs_resolution          true
% 2.11/0.98  --res_orphan_elimination                true
% 2.11/0.98  --res_time_limit                        2.
% 2.11/0.98  --res_out_proof                         true
% 2.11/0.98  
% 2.11/0.98  ------ Superposition Options
% 2.11/0.98  
% 2.11/0.98  --superposition_flag                    true
% 2.11/0.98  --sup_passive_queue_type                priority_queues
% 2.11/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.11/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.11/0.98  --demod_completeness_check              fast
% 2.11/0.98  --demod_use_ground                      true
% 2.11/0.98  --sup_to_prop_solver                    passive
% 2.11/0.98  --sup_prop_simpl_new                    true
% 2.11/0.98  --sup_prop_simpl_given                  true
% 2.11/0.98  --sup_fun_splitting                     false
% 2.11/0.98  --sup_smt_interval                      50000
% 2.11/0.98  
% 2.11/0.98  ------ Superposition Simplification Setup
% 2.11/0.98  
% 2.11/0.98  --sup_indices_passive                   []
% 2.11/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.11/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_full_bw                           [BwDemod]
% 2.11/0.98  --sup_immed_triv                        [TrivRules]
% 2.11/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.11/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_immed_bw_main                     []
% 2.11/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.11/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.98  
% 2.11/0.98  ------ Combination Options
% 2.11/0.98  
% 2.11/0.98  --comb_res_mult                         3
% 2.11/0.98  --comb_sup_mult                         2
% 2.11/0.98  --comb_inst_mult                        10
% 2.11/0.98  
% 2.11/0.98  ------ Debug Options
% 2.11/0.98  
% 2.11/0.98  --dbg_backtrace                         false
% 2.11/0.98  --dbg_dump_prop_clauses                 false
% 2.11/0.98  --dbg_dump_prop_clauses_file            -
% 2.11/0.98  --dbg_out_stat                          false
% 2.11/0.98  ------ Parsing...
% 2.11/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.11/0.98  ------ Proving...
% 2.11/0.98  ------ Problem Properties 
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  clauses                                 16
% 2.11/0.98  conjectures                             5
% 2.11/0.98  EPR                                     1
% 2.11/0.98  Horn                                    16
% 2.11/0.98  unary                                   7
% 2.11/0.98  binary                                  2
% 2.11/0.98  lits                                    32
% 2.11/0.98  lits eq                                 7
% 2.11/0.98  fd_pure                                 0
% 2.11/0.98  fd_pseudo                               0
% 2.11/0.98  fd_cond                                 0
% 2.11/0.98  fd_pseudo_cond                          0
% 2.11/0.98  AC symbols                              0
% 2.11/0.98  
% 2.11/0.98  ------ Schedule dynamic 5 is on 
% 2.11/0.98  
% 2.11/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  ------ 
% 2.11/0.98  Current options:
% 2.11/0.98  ------ 
% 2.11/0.98  
% 2.11/0.98  ------ Input Options
% 2.11/0.98  
% 2.11/0.98  --out_options                           all
% 2.11/0.98  --tptp_safe_out                         true
% 2.11/0.98  --problem_path                          ""
% 2.11/0.98  --include_path                          ""
% 2.11/0.98  --clausifier                            res/vclausify_rel
% 2.11/0.98  --clausifier_options                    --mode clausify
% 2.11/0.98  --stdin                                 false
% 2.11/0.98  --stats_out                             all
% 2.11/0.98  
% 2.11/0.98  ------ General Options
% 2.11/0.98  
% 2.11/0.98  --fof                                   false
% 2.11/0.98  --time_out_real                         305.
% 2.11/0.98  --time_out_virtual                      -1.
% 2.11/0.98  --symbol_type_check                     false
% 2.11/0.98  --clausify_out                          false
% 2.11/0.98  --sig_cnt_out                           false
% 2.11/0.98  --trig_cnt_out                          false
% 2.11/0.98  --trig_cnt_out_tolerance                1.
% 2.11/0.98  --trig_cnt_out_sk_spl                   false
% 2.11/0.98  --abstr_cl_out                          false
% 2.11/0.98  
% 2.11/0.98  ------ Global Options
% 2.11/0.98  
% 2.11/0.98  --schedule                              default
% 2.11/0.98  --add_important_lit                     false
% 2.11/0.98  --prop_solver_per_cl                    1000
% 2.11/0.98  --min_unsat_core                        false
% 2.11/0.98  --soft_assumptions                      false
% 2.11/0.98  --soft_lemma_size                       3
% 2.11/0.98  --prop_impl_unit_size                   0
% 2.11/0.98  --prop_impl_unit                        []
% 2.11/0.98  --share_sel_clauses                     true
% 2.11/0.98  --reset_solvers                         false
% 2.11/0.98  --bc_imp_inh                            [conj_cone]
% 2.11/0.98  --conj_cone_tolerance                   3.
% 2.11/0.98  --extra_neg_conj                        none
% 2.11/0.98  --large_theory_mode                     true
% 2.11/0.98  --prolific_symb_bound                   200
% 2.11/0.98  --lt_threshold                          2000
% 2.11/0.98  --clause_weak_htbl                      true
% 2.11/0.98  --gc_record_bc_elim                     false
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing Options
% 2.11/0.98  
% 2.11/0.98  --preprocessing_flag                    true
% 2.11/0.98  --time_out_prep_mult                    0.1
% 2.11/0.98  --splitting_mode                        input
% 2.11/0.98  --splitting_grd                         true
% 2.11/0.98  --splitting_cvd                         false
% 2.11/0.98  --splitting_cvd_svl                     false
% 2.11/0.98  --splitting_nvd                         32
% 2.11/0.98  --sub_typing                            true
% 2.11/0.98  --prep_gs_sim                           true
% 2.11/0.98  --prep_unflatten                        true
% 2.11/0.98  --prep_res_sim                          true
% 2.11/0.98  --prep_upred                            true
% 2.11/0.98  --prep_sem_filter                       exhaustive
% 2.11/0.98  --prep_sem_filter_out                   false
% 2.11/0.98  --pred_elim                             true
% 2.11/0.98  --res_sim_input                         true
% 2.11/0.98  --eq_ax_congr_red                       true
% 2.11/0.98  --pure_diseq_elim                       true
% 2.11/0.98  --brand_transform                       false
% 2.11/0.98  --non_eq_to_eq                          false
% 2.11/0.98  --prep_def_merge                        true
% 2.11/0.98  --prep_def_merge_prop_impl              false
% 2.11/0.98  --prep_def_merge_mbd                    true
% 2.11/0.98  --prep_def_merge_tr_red                 false
% 2.11/0.98  --prep_def_merge_tr_cl                  false
% 2.11/0.98  --smt_preprocessing                     true
% 2.11/0.98  --smt_ac_axioms                         fast
% 2.11/0.98  --preprocessed_out                      false
% 2.11/0.98  --preprocessed_stats                    false
% 2.11/0.98  
% 2.11/0.98  ------ Abstraction refinement Options
% 2.11/0.98  
% 2.11/0.98  --abstr_ref                             []
% 2.11/0.98  --abstr_ref_prep                        false
% 2.11/0.98  --abstr_ref_until_sat                   false
% 2.11/0.98  --abstr_ref_sig_restrict                funpre
% 2.11/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.11/0.98  --abstr_ref_under                       []
% 2.11/0.98  
% 2.11/0.98  ------ SAT Options
% 2.11/0.98  
% 2.11/0.98  --sat_mode                              false
% 2.11/0.98  --sat_fm_restart_options                ""
% 2.11/0.98  --sat_gr_def                            false
% 2.11/0.98  --sat_epr_types                         true
% 2.11/0.98  --sat_non_cyclic_types                  false
% 2.11/0.98  --sat_finite_models                     false
% 2.11/0.98  --sat_fm_lemmas                         false
% 2.11/0.98  --sat_fm_prep                           false
% 2.11/0.98  --sat_fm_uc_incr                        true
% 2.11/0.98  --sat_out_model                         small
% 2.11/0.98  --sat_out_clauses                       false
% 2.11/0.98  
% 2.11/0.98  ------ QBF Options
% 2.11/0.98  
% 2.11/0.98  --qbf_mode                              false
% 2.11/0.98  --qbf_elim_univ                         false
% 2.11/0.98  --qbf_dom_inst                          none
% 2.11/0.98  --qbf_dom_pre_inst                      false
% 2.11/0.98  --qbf_sk_in                             false
% 2.11/0.98  --qbf_pred_elim                         true
% 2.11/0.98  --qbf_split                             512
% 2.11/0.98  
% 2.11/0.98  ------ BMC1 Options
% 2.11/0.98  
% 2.11/0.98  --bmc1_incremental                      false
% 2.11/0.98  --bmc1_axioms                           reachable_all
% 2.11/0.98  --bmc1_min_bound                        0
% 2.11/0.98  --bmc1_max_bound                        -1
% 2.11/0.98  --bmc1_max_bound_default                -1
% 2.11/0.98  --bmc1_symbol_reachability              true
% 2.11/0.98  --bmc1_property_lemmas                  false
% 2.11/0.98  --bmc1_k_induction                      false
% 2.11/0.98  --bmc1_non_equiv_states                 false
% 2.11/0.98  --bmc1_deadlock                         false
% 2.11/0.98  --bmc1_ucm                              false
% 2.11/0.98  --bmc1_add_unsat_core                   none
% 2.11/0.98  --bmc1_unsat_core_children              false
% 2.11/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.11/0.98  --bmc1_out_stat                         full
% 2.11/0.98  --bmc1_ground_init                      false
% 2.11/0.98  --bmc1_pre_inst_next_state              false
% 2.11/0.98  --bmc1_pre_inst_state                   false
% 2.11/0.98  --bmc1_pre_inst_reach_state             false
% 2.11/0.98  --bmc1_out_unsat_core                   false
% 2.11/0.98  --bmc1_aig_witness_out                  false
% 2.11/0.98  --bmc1_verbose                          false
% 2.11/0.98  --bmc1_dump_clauses_tptp                false
% 2.11/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.11/0.98  --bmc1_dump_file                        -
% 2.11/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.11/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.11/0.98  --bmc1_ucm_extend_mode                  1
% 2.11/0.98  --bmc1_ucm_init_mode                    2
% 2.11/0.98  --bmc1_ucm_cone_mode                    none
% 2.11/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.11/0.98  --bmc1_ucm_relax_model                  4
% 2.11/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.11/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.11/0.98  --bmc1_ucm_layered_model                none
% 2.11/0.98  --bmc1_ucm_max_lemma_size               10
% 2.11/0.98  
% 2.11/0.98  ------ AIG Options
% 2.11/0.98  
% 2.11/0.98  --aig_mode                              false
% 2.11/0.98  
% 2.11/0.98  ------ Instantiation Options
% 2.11/0.98  
% 2.11/0.98  --instantiation_flag                    true
% 2.11/0.98  --inst_sos_flag                         false
% 2.11/0.98  --inst_sos_phase                        true
% 2.11/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel_side                     none
% 2.11/0.98  --inst_solver_per_active                1400
% 2.11/0.98  --inst_solver_calls_frac                1.
% 2.11/0.98  --inst_passive_queue_type               priority_queues
% 2.11/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.11/0.98  --inst_passive_queues_freq              [25;2]
% 2.11/0.98  --inst_dismatching                      true
% 2.11/0.98  --inst_eager_unprocessed_to_passive     true
% 2.11/0.98  --inst_prop_sim_given                   true
% 2.11/0.98  --inst_prop_sim_new                     false
% 2.11/0.98  --inst_subs_new                         false
% 2.11/0.98  --inst_eq_res_simp                      false
% 2.11/0.98  --inst_subs_given                       false
% 2.11/0.98  --inst_orphan_elimination               true
% 2.11/0.98  --inst_learning_loop_flag               true
% 2.11/0.98  --inst_learning_start                   3000
% 2.11/0.98  --inst_learning_factor                  2
% 2.11/0.98  --inst_start_prop_sim_after_learn       3
% 2.11/0.98  --inst_sel_renew                        solver
% 2.11/0.98  --inst_lit_activity_flag                true
% 2.11/0.98  --inst_restr_to_given                   false
% 2.11/0.98  --inst_activity_threshold               500
% 2.11/0.98  --inst_out_proof                        true
% 2.11/0.98  
% 2.11/0.98  ------ Resolution Options
% 2.11/0.98  
% 2.11/0.98  --resolution_flag                       false
% 2.11/0.98  --res_lit_sel                           adaptive
% 2.11/0.98  --res_lit_sel_side                      none
% 2.11/0.98  --res_ordering                          kbo
% 2.11/0.98  --res_to_prop_solver                    active
% 2.11/0.98  --res_prop_simpl_new                    false
% 2.11/0.98  --res_prop_simpl_given                  true
% 2.11/0.98  --res_passive_queue_type                priority_queues
% 2.11/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.11/0.98  --res_passive_queues_freq               [15;5]
% 2.11/0.98  --res_forward_subs                      full
% 2.11/0.98  --res_backward_subs                     full
% 2.11/0.98  --res_forward_subs_resolution           true
% 2.11/0.98  --res_backward_subs_resolution          true
% 2.11/0.98  --res_orphan_elimination                true
% 2.11/0.98  --res_time_limit                        2.
% 2.11/0.98  --res_out_proof                         true
% 2.11/0.98  
% 2.11/0.98  ------ Superposition Options
% 2.11/0.98  
% 2.11/0.98  --superposition_flag                    true
% 2.11/0.98  --sup_passive_queue_type                priority_queues
% 2.11/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.11/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.11/0.98  --demod_completeness_check              fast
% 2.11/0.98  --demod_use_ground                      true
% 2.11/0.98  --sup_to_prop_solver                    passive
% 2.11/0.98  --sup_prop_simpl_new                    true
% 2.11/0.98  --sup_prop_simpl_given                  true
% 2.11/0.98  --sup_fun_splitting                     false
% 2.11/0.98  --sup_smt_interval                      50000
% 2.11/0.98  
% 2.11/0.98  ------ Superposition Simplification Setup
% 2.11/0.98  
% 2.11/0.98  --sup_indices_passive                   []
% 2.11/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.11/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_full_bw                           [BwDemod]
% 2.11/0.98  --sup_immed_triv                        [TrivRules]
% 2.11/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.11/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_immed_bw_main                     []
% 2.11/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.11/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.98  
% 2.11/0.98  ------ Combination Options
% 2.11/0.98  
% 2.11/0.98  --comb_res_mult                         3
% 2.11/0.98  --comb_sup_mult                         2
% 2.11/0.98  --comb_inst_mult                        10
% 2.11/0.98  
% 2.11/0.98  ------ Debug Options
% 2.11/0.98  
% 2.11/0.98  --dbg_backtrace                         false
% 2.11/0.98  --dbg_dump_prop_clauses                 false
% 2.11/0.98  --dbg_dump_prop_clauses_file            -
% 2.11/0.98  --dbg_out_stat                          false
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  ------ Proving...
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  % SZS status Theorem for theBenchmark.p
% 2.11/0.98  
% 2.11/0.98   Resolution empty clause
% 2.11/0.98  
% 2.11/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.11/0.98  
% 2.11/0.98  fof(f4,axiom,(
% 2.11/0.98    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f14,plain,(
% 2.11/0.98    ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1))),
% 2.11/0.98    inference(ennf_transformation,[],[f4])).
% 2.11/0.98  
% 2.11/0.98  fof(f35,plain,(
% 2.11/0.98    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1)) )),
% 2.11/0.98    inference(cnf_transformation,[],[f14])).
% 2.11/0.98  
% 2.11/0.98  fof(f10,conjecture,(
% 2.11/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => ! [X4] : (m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) => (r1_tarski(X4,u1_struct_0(X2)) => k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) = k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)))))))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f11,negated_conjecture,(
% 2.11/0.98    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => ! [X4] : (m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) => (r1_tarski(X4,u1_struct_0(X2)) => k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) = k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)))))))),
% 2.11/0.98    inference(negated_conjecture,[],[f10])).
% 2.11/0.98  
% 2.11/0.98  fof(f24,plain,(
% 2.11/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2))) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3))) & (m1_pre_topc(X2,X1) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.11/0.98    inference(ennf_transformation,[],[f11])).
% 2.11/0.98  
% 2.11/0.98  fof(f25,plain,(
% 2.11/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.11/0.98    inference(flattening,[],[f24])).
% 2.11/0.98  
% 2.11/0.98  fof(f30,plain,(
% 2.11/0.98    ( ! [X2,X0,X3,X1] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) => (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,sK4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),sK4) & r1_tarski(sK4,u1_struct_0(X2)) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X1))))) )),
% 2.11/0.98    introduced(choice_axiom,[])).
% 2.11/0.98  
% 2.11/0.98  fof(f29,plain,(
% 2.11/0.98    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),sK3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,sK3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(sK3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(sK3))) )),
% 2.11/0.98    introduced(choice_axiom,[])).
% 2.11/0.98  
% 2.11/0.98  fof(f28,plain,(
% 2.11/0.98    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,sK2),X4) & r1_tarski(X4,u1_struct_0(sK2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(sK2,X1) & ~v2_struct_0(sK2))) )),
% 2.11/0.98    introduced(choice_axiom,[])).
% 2.11/0.98  
% 2.11/0.98  fof(f27,plain,(
% 2.11/0.98    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(sK1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(sK1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(sK1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,sK1) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 2.11/0.98    introduced(choice_axiom,[])).
% 2.11/0.98  
% 2.11/0.98  fof(f26,plain,(
% 2.11/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(sK0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(sK0),k2_tmap_1(X1,sK0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(sK0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 2.11/0.98    introduced(choice_axiom,[])).
% 2.11/0.98  
% 2.11/0.98  fof(f31,plain,(
% 2.11/0.98    ((((k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) & r1_tarski(sK4,u1_struct_0(sK2)) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) & v1_funct_1(sK3)) & m1_pre_topc(sK2,sK1) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 2.11/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f25,f30,f29,f28,f27,f26])).
% 2.11/0.98  
% 2.11/0.98  fof(f52,plain,(
% 2.11/0.98    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f8,axiom,(
% 2.11/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f20,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 2.11/0.98    inference(ennf_transformation,[],[f8])).
% 2.11/0.98  
% 2.11/0.98  fof(f21,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 2.11/0.98    inference(flattening,[],[f20])).
% 2.11/0.98  
% 2.11/0.98  fof(f40,plain,(
% 2.11/0.98    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 2.11/0.98    inference(cnf_transformation,[],[f21])).
% 2.11/0.98  
% 2.11/0.98  fof(f50,plain,(
% 2.11/0.98    v1_funct_1(sK3)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f7,axiom,(
% 2.11/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => (m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(k2_partfun1(X0,X1,X2,X3))))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f18,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(k2_partfun1(X0,X1,X2,X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 2.11/0.98    inference(ennf_transformation,[],[f7])).
% 2.11/0.98  
% 2.11/0.98  fof(f19,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(k2_partfun1(X0,X1,X2,X3))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 2.11/0.98    inference(flattening,[],[f18])).
% 2.11/0.98  
% 2.11/0.98  fof(f39,plain,(
% 2.11/0.98    ( ! [X2,X0,X3,X1] : (m1_subset_1(k2_partfun1(X0,X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 2.11/0.98    inference(cnf_transformation,[],[f19])).
% 2.11/0.98  
% 2.11/0.98  fof(f6,axiom,(
% 2.11/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) => (r1_tarski(k1_relat_1(X3),X1) => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f16,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))),
% 2.11/0.98    inference(ennf_transformation,[],[f6])).
% 2.11/0.98  
% 2.11/0.98  fof(f17,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))),
% 2.11/0.98    inference(flattening,[],[f16])).
% 2.11/0.98  
% 2.11/0.98  fof(f37,plain,(
% 2.11/0.98    ( ! [X2,X0,X3,X1] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) )),
% 2.11/0.98    inference(cnf_transformation,[],[f17])).
% 2.11/0.98  
% 2.11/0.98  fof(f5,axiom,(
% 2.11/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f15,plain,(
% 2.11/0.98    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.11/0.98    inference(ennf_transformation,[],[f5])).
% 2.11/0.98  
% 2.11/0.98  fof(f36,plain,(
% 2.11/0.98    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.11/0.98    inference(cnf_transformation,[],[f15])).
% 2.11/0.98  
% 2.11/0.98  fof(f1,axiom,(
% 2.11/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f12,plain,(
% 2.11/0.98    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.11/0.98    inference(ennf_transformation,[],[f1])).
% 2.11/0.98  
% 2.11/0.98  fof(f32,plain,(
% 2.11/0.98    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.11/0.98    inference(cnf_transformation,[],[f12])).
% 2.11/0.98  
% 2.11/0.98  fof(f2,axiom,(
% 2.11/0.98    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f33,plain,(
% 2.11/0.98    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.11/0.98    inference(cnf_transformation,[],[f2])).
% 2.11/0.98  
% 2.11/0.98  fof(f51,plain,(
% 2.11/0.98    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f9,axiom,(
% 2.11/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_pre_topc(X3,X0) => k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)))))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f22,plain,(
% 2.11/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.11/0.98    inference(ennf_transformation,[],[f9])).
% 2.11/0.98  
% 2.11/0.98  fof(f23,plain,(
% 2.11/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.11/0.98    inference(flattening,[],[f22])).
% 2.11/0.98  
% 2.11/0.98  fof(f41,plain,(
% 2.11/0.98    ( ! [X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.11/0.98    inference(cnf_transformation,[],[f23])).
% 2.11/0.98  
% 2.11/0.98  fof(f49,plain,(
% 2.11/0.98    m1_pre_topc(sK2,sK1)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f45,plain,(
% 2.11/0.98    ~v2_struct_0(sK1)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f46,plain,(
% 2.11/0.98    v2_pre_topc(sK1)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f47,plain,(
% 2.11/0.98    l1_pre_topc(sK1)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f44,plain,(
% 2.11/0.98    l1_pre_topc(sK0)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f42,plain,(
% 2.11/0.98    ~v2_struct_0(sK0)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f43,plain,(
% 2.11/0.98    v2_pre_topc(sK0)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f55,plain,(
% 2.11/0.98    k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4)),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f54,plain,(
% 2.11/0.98    r1_tarski(sK4,u1_struct_0(sK2))),
% 2.11/0.98    inference(cnf_transformation,[],[f31])).
% 2.11/0.98  
% 2.11/0.98  fof(f3,axiom,(
% 2.11/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1,X2] : (r1_tarski(X1,X2) => k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1)))),
% 2.11/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.11/0.98  
% 2.11/0.98  fof(f13,plain,(
% 2.11/0.98    ! [X0] : (! [X1,X2] : (k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1) | ~r1_tarski(X1,X2)) | ~v1_relat_1(X0))),
% 2.11/0.98    inference(ennf_transformation,[],[f3])).
% 2.11/0.98  
% 2.11/0.98  fof(f34,plain,(
% 2.11/0.98    ( ! [X2,X0,X1] : (k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1) | ~r1_tarski(X1,X2) | ~v1_relat_1(X0)) )),
% 2.11/0.98    inference(cnf_transformation,[],[f13])).
% 2.11/0.98  
% 2.11/0.98  cnf(c_3,plain,
% 2.11/0.98      ( r1_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1) | ~ v1_relat_1(X0) ),
% 2.11/0.98      inference(cnf_transformation,[],[f35]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_604,plain,
% 2.11/0.98      ( r1_tarski(k1_relat_1(k7_relat_1(X0_51,X1_51)),X1_51)
% 2.11/0.98      | ~ v1_relat_1(X0_51) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_909,plain,
% 2.11/0.98      ( r1_tarski(k1_relat_1(k7_relat_1(X0_51,X1_51)),X1_51) = iProver_top
% 2.11/0.98      | v1_relat_1(X0_51) != iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_604]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_13,negated_conjecture,
% 2.11/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
% 2.11/0.98      inference(cnf_transformation,[],[f52]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_595,negated_conjecture,
% 2.11/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_13]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_917,plain,
% 2.11/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_595]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_8,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 2.11/0.98      inference(cnf_transformation,[],[f40]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_599,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.11/0.98      | ~ v1_funct_1(X0_51)
% 2.11/0.98      | k2_partfun1(X1_51,X2_51,X0_51,X3_51) = k7_relat_1(X0_51,X3_51) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_8]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_914,plain,
% 2.11/0.98      ( k2_partfun1(X0_51,X1_51,X2_51,X3_51) = k7_relat_1(X2_51,X3_51)
% 2.11/0.98      | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 2.11/0.98      | v1_funct_1(X2_51) != iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_599]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1608,plain,
% 2.11/0.98      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k7_relat_1(sK3,X0_51)
% 2.11/0.98      | v1_funct_1(sK3) != iProver_top ),
% 2.11/0.98      inference(superposition,[status(thm)],[c_917,c_914]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_15,negated_conjecture,
% 2.11/0.98      ( v1_funct_1(sK3) ),
% 2.11/0.98      inference(cnf_transformation,[],[f50]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1072,plain,
% 2.11/0.98      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.11/0.98      | ~ v1_funct_1(sK3)
% 2.11/0.98      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k7_relat_1(sK3,X0_51) ),
% 2.11/0.98      inference(instantiation,[status(thm)],[c_599]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1806,plain,
% 2.11/0.98      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k7_relat_1(sK3,X0_51) ),
% 2.11/0.98      inference(global_propositional_subsumption,
% 2.11/0.98                [status(thm)],
% 2.11/0.98                [c_1608,c_15,c_13,c_1072]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_6,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.11/0.98      | m1_subset_1(k2_partfun1(X1,X2,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.11/0.98      | ~ v1_funct_1(X0) ),
% 2.11/0.98      inference(cnf_transformation,[],[f39]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_601,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.11/0.98      | m1_subset_1(k2_partfun1(X1_51,X2_51,X0_51,X3_51),k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.11/0.98      | ~ v1_funct_1(X0_51) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_6]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_912,plain,
% 2.11/0.98      ( m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51))) != iProver_top
% 2.11/0.98      | m1_subset_1(k2_partfun1(X1_51,X2_51,X0_51,X3_51),k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51))) = iProver_top
% 2.11/0.98      | v1_funct_1(X0_51) != iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_601]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1819,plain,
% 2.11/0.98      ( m1_subset_1(k7_relat_1(sK3,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top
% 2.11/0.98      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) != iProver_top
% 2.11/0.98      | v1_funct_1(sK3) != iProver_top ),
% 2.11/0.98      inference(superposition,[status(thm)],[c_1806,c_912]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_32,plain,
% 2.11/0.98      ( v1_funct_1(sK3) = iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_34,plain,
% 2.11/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_2035,plain,
% 2.11/0.98      ( m1_subset_1(k7_relat_1(sK3,X0_51),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
% 2.11/0.98      inference(global_propositional_subsumption,
% 2.11/0.98                [status(thm)],
% 2.11/0.98                [c_1819,c_32,c_34]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_5,plain,
% 2.11/0.98      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 2.11/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 2.11/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
% 2.11/0.98      inference(cnf_transformation,[],[f37]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_602,plain,
% 2.11/0.98      ( ~ r1_tarski(k1_relat_1(X0_51),X1_51)
% 2.11/0.98      | ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51)))
% 2.11/0.98      | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X3_51))) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_5]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_911,plain,
% 2.11/0.98      ( r1_tarski(k1_relat_1(X0_51),X1_51) != iProver_top
% 2.11/0.98      | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51))) != iProver_top
% 2.11/0.98      | m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X3_51))) = iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_602]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_2043,plain,
% 2.11/0.98      ( r1_tarski(k1_relat_1(k7_relat_1(sK3,X0_51)),X1_51) != iProver_top
% 2.11/0.98      | m1_subset_1(k7_relat_1(sK3,X0_51),k1_zfmisc_1(k2_zfmisc_1(X1_51,u1_struct_0(sK0)))) = iProver_top ),
% 2.11/0.98      inference(superposition,[status(thm)],[c_2035,c_911]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_4,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.11/0.98      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.11/0.98      inference(cnf_transformation,[],[f36]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_603,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(k2_zfmisc_1(X1_51,X2_51)))
% 2.11/0.98      | k7_relset_1(X1_51,X2_51,X0_51,X3_51) = k9_relat_1(X0_51,X3_51) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_4]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_910,plain,
% 2.11/0.98      ( k7_relset_1(X0_51,X1_51,X2_51,X3_51) = k9_relat_1(X2_51,X3_51)
% 2.11/0.98      | m1_subset_1(X2_51,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_603]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_2241,plain,
% 2.11/0.98      ( k7_relset_1(X0_51,u1_struct_0(sK0),k7_relat_1(sK3,X1_51),X2_51) = k9_relat_1(k7_relat_1(sK3,X1_51),X2_51)
% 2.11/0.98      | r1_tarski(k1_relat_1(k7_relat_1(sK3,X1_51)),X0_51) != iProver_top ),
% 2.11/0.98      inference(superposition,[status(thm)],[c_2043,c_910]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_2428,plain,
% 2.11/0.98      ( k7_relset_1(X0_51,u1_struct_0(sK0),k7_relat_1(sK3,X0_51),X1_51) = k9_relat_1(k7_relat_1(sK3,X0_51),X1_51)
% 2.11/0.98      | v1_relat_1(sK3) != iProver_top ),
% 2.11/0.98      inference(superposition,[status(thm)],[c_909,c_2241]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_0,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.11/0.98      inference(cnf_transformation,[],[f32]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_607,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0_51,k1_zfmisc_1(X1_51))
% 2.11/0.98      | ~ v1_relat_1(X1_51)
% 2.11/0.98      | v1_relat_1(X0_51) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_0]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_906,plain,
% 2.11/0.98      ( m1_subset_1(X0_51,k1_zfmisc_1(X1_51)) != iProver_top
% 2.11/0.98      | v1_relat_1(X1_51) != iProver_top
% 2.11/0.98      | v1_relat_1(X0_51) = iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_607]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1192,plain,
% 2.11/0.98      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) != iProver_top
% 2.11/0.98      | v1_relat_1(sK3) = iProver_top ),
% 2.11/0.98      inference(superposition,[status(thm)],[c_917,c_906]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1,plain,
% 2.11/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.11/0.98      inference(cnf_transformation,[],[f33]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_606,plain,
% 2.11/0.98      ( v1_relat_1(k2_zfmisc_1(X0_51,X1_51)) ),
% 2.11/0.98      inference(subtyping,[status(esa)],[c_1]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1360,plain,
% 2.11/0.98      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) ),
% 2.11/0.98      inference(instantiation,[status(thm)],[c_606]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_1361,plain,
% 2.11/0.98      ( v1_relat_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))) = iProver_top ),
% 2.11/0.98      inference(predicate_to_equality,[status(thm)],[c_1360]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_2865,plain,
% 2.11/0.98      ( k7_relset_1(X0_51,u1_struct_0(sK0),k7_relat_1(sK3,X0_51),X1_51) = k9_relat_1(k7_relat_1(sK3,X0_51),X1_51) ),
% 2.11/0.98      inference(global_propositional_subsumption,
% 2.11/0.98                [status(thm)],
% 2.11/0.98                [c_2428,c_1192,c_1361]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_14,negated_conjecture,
% 2.11/0.98      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
% 2.11/0.98      inference(cnf_transformation,[],[f51]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_9,plain,
% 2.11/0.98      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.11/0.98      | ~ m1_pre_topc(X3,X1)
% 2.11/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.11/0.98      | v2_struct_0(X1)
% 2.11/0.98      | v2_struct_0(X2)
% 2.11/0.98      | ~ v2_pre_topc(X2)
% 2.11/0.98      | ~ v2_pre_topc(X1)
% 2.11/0.98      | ~ l1_pre_topc(X2)
% 2.11/0.98      | ~ l1_pre_topc(X1)
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
% 2.11/0.98      inference(cnf_transformation,[],[f41]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_16,negated_conjecture,
% 2.11/0.98      ( m1_pre_topc(sK2,sK1) ),
% 2.11/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_316,plain,
% 2.11/0.98      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.11/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.11/0.98      | v2_struct_0(X1)
% 2.11/0.98      | v2_struct_0(X2)
% 2.11/0.98      | ~ v2_pre_topc(X1)
% 2.11/0.98      | ~ v2_pre_topc(X2)
% 2.11/0.98      | ~ l1_pre_topc(X1)
% 2.11/0.98      | ~ l1_pre_topc(X2)
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3)
% 2.11/0.98      | sK2 != X3
% 2.11/0.98      | sK1 != X1 ),
% 2.11/0.98      inference(resolution_lifted,[status(thm)],[c_9,c_16]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_317,plain,
% 2.11/0.98      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.11/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.11/0.98      | v2_struct_0(X1)
% 2.11/0.98      | v2_struct_0(sK1)
% 2.11/0.98      | ~ v2_pre_topc(X1)
% 2.11/0.98      | ~ v2_pre_topc(sK1)
% 2.11/0.98      | ~ l1_pre_topc(X1)
% 2.11/0.98      | ~ l1_pre_topc(sK1)
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
% 2.11/0.98      inference(unflattening,[status(thm)],[c_316]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_20,negated_conjecture,
% 2.11/0.98      ( ~ v2_struct_0(sK1) ),
% 2.11/0.98      inference(cnf_transformation,[],[f45]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_19,negated_conjecture,
% 2.11/0.98      ( v2_pre_topc(sK1) ),
% 2.11/0.98      inference(cnf_transformation,[],[f46]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_18,negated_conjecture,
% 2.11/0.98      ( l1_pre_topc(sK1) ),
% 2.11/0.98      inference(cnf_transformation,[],[f47]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_321,plain,
% 2.11/0.98      ( ~ l1_pre_topc(X1)
% 2.11/0.98      | v2_struct_0(X1)
% 2.11/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.11/0.98      | ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.11/0.98      | ~ v2_pre_topc(X1)
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
% 2.11/0.98      inference(global_propositional_subsumption,
% 2.11/0.98                [status(thm)],
% 2.11/0.98                [c_317,c_20,c_19,c_18]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_322,plain,
% 2.11/0.98      ( ~ v1_funct_2(X0,u1_struct_0(sK1),u1_struct_0(X1))
% 2.11/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.11/0.98      | v2_struct_0(X1)
% 2.11/0.98      | ~ v2_pre_topc(X1)
% 2.11/0.98      | ~ l1_pre_topc(X1)
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2) ),
% 2.11/0.98      inference(renaming,[status(thm)],[c_321]) ).
% 2.11/0.98  
% 2.11/0.98  cnf(c_355,plain,
% 2.11/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X1))))
% 2.11/0.98      | v2_struct_0(X1)
% 2.11/0.98      | ~ v2_pre_topc(X1)
% 2.11/0.98      | ~ l1_pre_topc(X1)
% 2.11/0.98      | ~ v1_funct_1(X0)
% 2.11/0.98      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X1),X0,u1_struct_0(sK2)) = k2_tmap_1(sK1,X1,X0,sK2)
% 2.11/0.99      | u1_struct_0(X1) != u1_struct_0(sK0)
% 2.11/0.99      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 2.11/0.99      | sK3 != X0 ),
% 2.11/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_322]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_356,plain,
% 2.11/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 2.11/0.99      | v2_struct_0(X0)
% 2.11/0.99      | ~ v2_pre_topc(X0)
% 2.11/0.99      | ~ l1_pre_topc(X0)
% 2.11/0.99      | ~ v1_funct_1(sK3)
% 2.11/0.99      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
% 2.11/0.99      | u1_struct_0(X0) != u1_struct_0(sK0) ),
% 2.11/0.99      inference(unflattening,[status(thm)],[c_355]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_360,plain,
% 2.11/0.99      ( ~ l1_pre_topc(X0)
% 2.11/0.99      | ~ v2_pre_topc(X0)
% 2.11/0.99      | v2_struct_0(X0)
% 2.11/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 2.11/0.99      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
% 2.11/0.99      | u1_struct_0(X0) != u1_struct_0(sK0) ),
% 2.11/0.99      inference(global_propositional_subsumption,[status(thm)],[c_356,c_15]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_361,plain,
% 2.11/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 2.11/0.99      | v2_struct_0(X0)
% 2.11/0.99      | ~ v2_pre_topc(X0)
% 2.11/0.99      | ~ l1_pre_topc(X0)
% 2.11/0.99      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
% 2.11/0.99      | u1_struct_0(X0) != u1_struct_0(sK0) ),
% 2.11/0.99      inference(renaming,[status(thm)],[c_360]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_21,negated_conjecture,
% 2.11/0.99      ( l1_pre_topc(sK0) ),
% 2.11/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_409,plain,
% 2.11/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0))))
% 2.11/0.99      | v2_struct_0(X0)
% 2.11/0.99      | ~ v2_pre_topc(X0)
% 2.11/0.99      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(X0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,X0,sK3,sK2)
% 2.11/0.99      | u1_struct_0(X0) != u1_struct_0(sK0)
% 2.11/0.99      | sK0 != X0 ),
% 2.11/0.99      inference(resolution_lifted,[status(thm)],[c_361,c_21]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_410,plain,
% 2.11/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.11/0.99      | v2_struct_0(sK0)
% 2.11/0.99      | ~ v2_pre_topc(sK0)
% 2.11/0.99      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2)
% 2.11/0.99      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 2.11/0.99      inference(unflattening,[status(thm)],[c_409]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_23,negated_conjecture,
% 2.11/0.99      ( ~ v2_struct_0(sK0) ),
% 2.11/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_22,negated_conjecture,
% 2.11/0.99      ( v2_pre_topc(sK0) ),
% 2.11/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_412,plain,
% 2.11/0.99      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2)
% 2.11/0.99      | u1_struct_0(sK0) != u1_struct_0(sK0) ),
% 2.11/0.99      inference(global_propositional_subsumption,
% 2.11/0.99                [status(thm)],
% 2.11/0.99                [c_410,c_23,c_22,c_13]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_440,plain,
% 2.11/0.99      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.11/0.99      inference(equality_resolution_simp,[status(thm)],[c_412]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_592,plain,
% 2.11/0.99      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(sK2)) = k2_tmap_1(sK1,sK0,sK3,sK2) ),
% 2.11/0.99      inference(subtyping,[status(esa)],[c_440]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1810,plain,
% 2.11/0.99      ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK2)) ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_1806,c_592]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1272,plain,
% 2.11/0.99      ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_51) = k9_relat_1(sK3,X0_51) ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_917,c_910]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_10,negated_conjecture,
% 2.11/0.99      ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
% 2.11/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_598,negated_conjecture,
% 2.11/0.99      ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
% 2.11/0.99      inference(subtyping,[status(esa)],[c_10]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1396,plain,
% 2.11/0.99      ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) != k9_relat_1(sK3,sK4) ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_1272,c_598]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1863,plain,
% 2.11/0.99      ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_1810,c_1396]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2869,plain,
% 2.11/0.99      ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_2865,c_1863]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1444,plain,
% 2.11/0.99      ( v1_relat_1(sK3) = iProver_top ),
% 2.11/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1192,c_1361]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_11,negated_conjecture,
% 2.11/0.99      ( r1_tarski(sK4,u1_struct_0(sK2)) ),
% 2.11/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_597,negated_conjecture,
% 2.11/0.99      ( r1_tarski(sK4,u1_struct_0(sK2)) ),
% 2.11/0.99      inference(subtyping,[status(esa)],[c_11]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_915,plain,
% 2.11/0.99      ( r1_tarski(sK4,u1_struct_0(sK2)) = iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_597]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2,plain,
% 2.11/0.99      ( ~ r1_tarski(X0,X1)
% 2.11/0.99      | ~ v1_relat_1(X2)
% 2.11/0.99      | k9_relat_1(k7_relat_1(X2,X1),X0) = k9_relat_1(X2,X0) ),
% 2.11/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_605,plain,
% 2.11/0.99      ( ~ r1_tarski(X0_51,X1_51)
% 2.11/0.99      | ~ v1_relat_1(X2_51)
% 2.11/0.99      | k9_relat_1(k7_relat_1(X2_51,X1_51),X0_51) = k9_relat_1(X2_51,X0_51) ),
% 2.11/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_908,plain,
% 2.11/0.99      ( k9_relat_1(k7_relat_1(X0_51,X1_51),X2_51) = k9_relat_1(X0_51,X2_51)
% 2.11/0.99      | r1_tarski(X2_51,X1_51) != iProver_top
% 2.11/0.99      | v1_relat_1(X0_51) != iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_605]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1278,plain,
% 2.11/0.99      ( k9_relat_1(k7_relat_1(X0_51,u1_struct_0(sK2)),sK4) = k9_relat_1(X0_51,sK4)
% 2.11/0.99      | v1_relat_1(X0_51) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_915,c_908]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1453,plain,
% 2.11/0.99      ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) = k9_relat_1(sK3,sK4) ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_1444,c_1278]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2870,plain,
% 2.11/0.99      ( k9_relat_1(sK3,sK4) != k9_relat_1(sK3,sK4) ),
% 2.11/0.99      inference(light_normalisation,[status(thm)],[c_2869,c_1453]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2871,plain,
% 2.11/0.99      ( $false ),
% 2.11/0.99      inference(equality_resolution_simp,[status(thm)],[c_2870]) ).
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.11/0.99  
% 2.11/0.99  ------                               Statistics
% 2.11/0.99  
% 2.11/0.99  ------ General
% 2.11/0.99  
% 2.11/0.99  abstr_ref_over_cycles:                  0
% 2.11/0.99  abstr_ref_under_cycles:                 0
% 2.11/0.99  gc_basic_clause_elim:                   0
% 2.11/0.99  forced_gc_time:                         0
% 2.11/0.99  parsing_time:                           0.01
% 2.11/0.99  unif_index_cands_time:                  0.
% 2.11/0.99  unif_index_add_time:                    0.
% 2.11/0.99  orderings_time:                         0.
% 2.11/0.99  out_proof_time:                         0.011
% 2.11/0.99  total_time:                             0.147
% 2.11/0.99  num_of_symbols:                         58
% 2.11/0.99  num_of_terms:                           2898
% 2.11/0.99  
% 2.11/0.99  ------ Preprocessing
% 2.11/0.99  
% 2.11/0.99  num_of_splits:                          0
% 2.11/0.99  num_of_split_atoms:                     0
% 2.11/0.99  num_of_reused_defs:                     0
% 2.11/0.99  num_eq_ax_congr_red:                    14
% 2.11/0.99  num_of_sem_filtered_clauses:            1
% 2.11/0.99  num_of_subtypes:                        4
% 2.11/0.99  monotx_restored_types:                  0
% 2.11/0.99  sat_num_of_epr_types:                   0
% 2.11/0.99  sat_num_of_non_cyclic_types:            0
% 2.11/0.99  sat_guarded_non_collapsed_types:        0
% 2.11/0.99  num_pure_diseq_elim:                    0
% 2.11/0.99  simp_replaced_by:                       0
% 2.11/0.99  res_preprocessed:                       105
% 2.11/0.99  prep_upred:                             0
% 2.11/0.99  prep_unflattend:                        17
% 2.11/0.99  smt_new_axioms:                         0
% 2.11/0.99  pred_elim_cands:                        4
% 2.11/0.99  pred_elim:                              5
% 2.11/0.99  pred_elim_cl:                           8
% 2.11/0.99  pred_elim_cycles:                       8
% 2.11/0.99  merged_defs:                            0
% 2.11/0.99  merged_defs_ncl:                        0
% 2.11/0.99  bin_hyper_res:                          0
% 2.11/0.99  prep_cycles:                            4
% 2.11/0.99  pred_elim_time:                         0.006
% 2.11/0.99  splitting_time:                         0.
% 2.11/0.99  sem_filter_time:                        0.
% 2.11/0.99  monotx_time:                            0.
% 2.11/0.99  subtype_inf_time:                       0.
% 2.11/0.99  
% 2.11/0.99  ------ Problem properties
% 2.11/0.99  
% 2.11/0.99  clauses:                                16
% 2.11/0.99  conjectures:                            5
% 2.11/0.99  epr:                                    1
% 2.11/0.99  horn:                                   16
% 2.11/0.99  ground:                                 7
% 2.11/0.99  unary:                                  7
% 2.11/0.99  binary:                                 2
% 2.11/0.99  lits:                                   32
% 2.11/0.99  lits_eq:                                7
% 2.11/0.99  fd_pure:                                0
% 2.11/0.99  fd_pseudo:                              0
% 2.11/0.99  fd_cond:                                0
% 2.11/0.99  fd_pseudo_cond:                         0
% 2.11/0.99  ac_symbols:                             0
% 2.11/0.99  
% 2.11/0.99  ------ Propositional Solver
% 2.11/0.99  
% 2.11/0.99  prop_solver_calls:                      29
% 2.11/0.99  prop_fast_solver_calls:                 657
% 2.11/0.99  smt_solver_calls:                       0
% 2.11/0.99  smt_fast_solver_calls:                  0
% 2.11/0.99  prop_num_of_clauses:                    867
% 2.11/0.99  prop_preprocess_simplified:             3319
% 2.11/0.99  prop_fo_subsumed:                       28
% 2.11/0.99  prop_solver_time:                       0.
% 2.11/0.99  smt_solver_time:                        0.
% 2.11/0.99  smt_fast_solver_time:                   0.
% 2.11/0.99  prop_fast_solver_time:                  0.
% 2.11/0.99  prop_unsat_core_time:                   0.
% 2.11/0.99  
% 2.11/0.99  ------ QBF
% 2.11/0.99  
% 2.11/0.99  qbf_q_res:                              0
% 2.11/0.99  qbf_num_tautologies:                    0
% 2.11/0.99  qbf_prep_cycles:                        0
% 2.11/0.99  
% 2.11/0.99  ------ BMC1
% 2.11/0.99  
% 2.11/0.99  bmc1_current_bound:                     -1
% 2.11/0.99  bmc1_last_solved_bound:                 -1
% 2.11/0.99  bmc1_unsat_core_size:                   -1
% 2.11/0.99  bmc1_unsat_core_parents_size:           -1
% 2.11/0.99  bmc1_merge_next_fun:                    0
% 2.11/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.11/0.99  
% 2.11/0.99  ------ Instantiation
% 2.11/0.99  
% 2.11/0.99  inst_num_of_clauses:                    282
% 2.11/0.99  inst_num_in_passive:                    48
% 2.11/0.99  inst_num_in_active:                     232
% 2.11/0.99  inst_num_in_unprocessed:                2
% 2.11/0.99  inst_num_of_loops:                      250
% 2.11/0.99  inst_num_of_learning_restarts:          0
% 2.11/0.99  inst_num_moves_active_passive:          13
% 2.11/0.99  inst_lit_activity:                      0
% 2.11/0.99  inst_lit_activity_moves:                0
% 2.11/0.99  inst_num_tautologies:                   0
% 2.11/0.99  inst_num_prop_implied:                  0
% 2.11/0.99  inst_num_existing_simplified:           0
% 2.11/0.99  inst_num_eq_res_simplified:             0
% 2.11/0.99  inst_num_child_elim:                    0
% 2.11/0.99  inst_num_of_dismatching_blockings:      153
% 2.11/0.99  inst_num_of_non_proper_insts:           381
% 2.11/0.99  inst_num_of_duplicates:                 0
% 2.11/0.99  inst_inst_num_from_inst_to_res:         0
% 2.11/0.99  inst_dismatching_checking_time:         0.
% 2.11/0.99  
% 2.11/0.99  ------ Resolution
% 2.11/0.99  
% 2.11/0.99  res_num_of_clauses:                     0
% 2.11/0.99  res_num_in_passive:                     0
% 2.11/0.99  res_num_in_active:                      0
% 2.11/0.99  res_num_of_loops:                       109
% 2.11/0.99  res_forward_subset_subsumed:            101
% 2.11/0.99  res_backward_subset_subsumed:           0
% 2.11/0.99  res_forward_subsumed:                   0
% 2.11/0.99  res_backward_subsumed:                  0
% 2.11/0.99  res_forward_subsumption_resolution:     0
% 2.11/0.99  res_backward_subsumption_resolution:    0
% 2.11/0.99  res_clause_to_clause_subsumption:       68
% 2.11/0.99  res_orphan_elimination:                 0
% 2.11/0.99  res_tautology_del:                      81
% 2.11/0.99  res_num_eq_res_simplified:              1
% 2.11/0.99  res_num_sel_changes:                    0
% 2.11/0.99  res_moves_from_active_to_pass:          0
% 2.11/0.99  
% 2.11/0.99  ------ Superposition
% 2.11/0.99  
% 2.11/0.99  sup_time_total:                         0.
% 2.11/0.99  sup_time_generating:                    0.
% 2.11/0.99  sup_time_sim_full:                      0.
% 2.11/0.99  sup_time_sim_immed:                     0.
% 2.11/0.99  
% 2.11/0.99  sup_num_of_clauses:                     55
% 2.11/0.99  sup_num_in_active:                      42
% 2.11/0.99  sup_num_in_passive:                     13
% 2.11/0.99  sup_num_of_loops:                       49
% 2.11/0.99  sup_fw_superposition:                   19
% 2.11/0.99  sup_bw_superposition:                   31
% 2.11/0.99  sup_immediate_simplified:               9
% 2.11/0.99  sup_given_eliminated:                   0
% 2.11/0.99  comparisons_done:                       0
% 2.11/0.99  comparisons_avoided:                    0
% 2.11/0.99  
% 2.11/0.99  ------ Simplifications
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  sim_fw_subset_subsumed:                 5
% 2.11/0.99  sim_bw_subset_subsumed:                 0
% 2.11/0.99  sim_fw_subsumed:                        5
% 2.11/0.99  sim_bw_subsumed:                        0
% 2.11/0.99  sim_fw_subsumption_res:                 1
% 2.11/0.99  sim_bw_subsumption_res:                 0
% 2.11/0.99  sim_tautology_del:                      0
% 2.11/0.99  sim_eq_tautology_del:                   0
% 2.11/0.99  sim_eq_res_simp:                        0
% 2.11/0.99  sim_fw_demodulated:                     0
% 2.11/0.99  sim_bw_demodulated:                     7
% 2.11/0.99  sim_light_normalised:                   3
% 2.11/0.99  sim_joinable_taut:                      0
% 2.11/0.99  sim_joinable_simp:                      0
% 2.11/0.99  sim_ac_normalised:                      0
% 2.11/0.99  sim_smt_subsumption:                    0
% 2.11/0.99  
%------------------------------------------------------------------------------
