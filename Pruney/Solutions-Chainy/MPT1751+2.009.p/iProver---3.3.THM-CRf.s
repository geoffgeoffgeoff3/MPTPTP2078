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
% DateTime   : Thu Dec  3 12:22:32 EST 2020

% Result     : Theorem 2.91s
% Output     : CNFRefutation 2.91s
% Verified   : 
% Statistics : Number of formulae       :  145 ( 490 expanded)
%              Number of clauses        :   85 ( 129 expanded)
%              Number of leaves         :   17 ( 183 expanded)
%              Depth                    :   20
%              Number of atoms          :  556 (4838 expanded)
%              Number of equality atoms :  166 ( 613 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   28 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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
    inference(negated_conjecture,[],[f12])).

fof(f29,plain,(
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
    inference(ennf_transformation,[],[f13])).

fof(f30,plain,(
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
    inference(flattening,[],[f29])).

fof(f36,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)
          & r1_tarski(X4,u1_struct_0(X2))
          & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
     => ( k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,sK4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),sK4)
        & r1_tarski(sK4,u1_struct_0(X2))
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
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

fof(f34,plain,(
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

fof(f33,plain,(
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

fof(f32,plain,
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

fof(f37,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f30,f36,f35,f34,f33,f32])).

fof(f62,plain,(
    m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f37])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => m1_pre_topc(X0,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( m1_pre_topc(X0,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f52,plain,(
    ! [X0] :
      ( m1_pre_topc(X0,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f31,plain,(
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
    inference(nnf_transformation,[],[f28])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(X1,X2)
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f65,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f37])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f18,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f17])).

fof(f42,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f63,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r1_tarski(X2,X0)
       => ( ( m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
            & v1_funct_2(k2_partfun1(X0,X1,X3,X2),X2,X1)
            & v1_funct_1(k2_partfun1(X0,X1,X3,X2)) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
        & v1_funct_2(k2_partfun1(X0,X1,X3,X2),X2,X1)
        & v1_funct_1(k2_partfun1(X0,X1,X3,X2)) )
      | ( k1_xboole_0 != X0
        & k1_xboole_0 = X1 )
      | ~ r1_tarski(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
        & v1_funct_2(k2_partfun1(X0,X1,X3,X2),X2,X1)
        & v1_funct_1(k2_partfun1(X0,X1,X3,X2)) )
      | ( k1_xboole_0 != X0
        & k1_xboole_0 = X1 )
      | ~ r1_tarski(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f19])).

fof(f47,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
      | k1_xboole_0 = X1
      | ~ r1_tarski(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f64,plain,(
    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f37])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f41,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f55,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f37])).

fof(f57,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f37])).

fof(f59,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f37])).

fof(f60,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f37])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f49,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,(
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
    inference(ennf_transformation,[],[f8])).

fof(f23,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f50,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

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

fof(f24,plain,(
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

fof(f25,plain,(
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
    inference(flattening,[],[f24])).

fof(f51,plain,(
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
    inference(cnf_transformation,[],[f25])).

fof(f56,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f37])).

fof(f58,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f37])).

fof(f68,plain,(
    k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
    inference(cnf_transformation,[],[f37])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f67,plain,(
    r1_tarski(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f37])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1,X2] :
          ( r1_tarski(X1,X2)
         => k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1)
          | ~ r1_tarski(X1,X2) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1)
      | ~ r1_tarski(X1,X2)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f14])).

cnf(c_23,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1663,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(subtyping,[status(esa)],[c_23])).

cnf(c_2197,plain,
    ( m1_pre_topc(sK2,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1663])).

cnf(c_14,plain,
    ( m1_pre_topc(X0,X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1672,plain,
    ( m1_pre_topc(X0_53,X0_53)
    | ~ l1_pre_topc(X0_53) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_2189,plain,
    ( m1_pre_topc(X0_53,X0_53) = iProver_top
    | l1_pre_topc(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1672])).

cnf(c_15,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_pre_topc(X0,X2)
    | r1_tarski(u1_struct_0(X0),u1_struct_0(X1))
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1671,plain,
    ( ~ m1_pre_topc(X0_53,X1_53)
    | ~ m1_pre_topc(X1_53,X2_53)
    | ~ m1_pre_topc(X0_53,X2_53)
    | r1_tarski(u1_struct_0(X0_53),u1_struct_0(X1_53))
    | ~ v2_pre_topc(X2_53)
    | ~ l1_pre_topc(X2_53) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_2190,plain,
    ( m1_pre_topc(X0_53,X1_53) != iProver_top
    | m1_pre_topc(X1_53,X2_53) != iProver_top
    | m1_pre_topc(X0_53,X2_53) != iProver_top
    | r1_tarski(u1_struct_0(X0_53),u1_struct_0(X1_53)) = iProver_top
    | v2_pre_topc(X2_53) != iProver_top
    | l1_pre_topc(X2_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1671])).

cnf(c_3329,plain,
    ( m1_pre_topc(X0_53,X1_53) != iProver_top
    | r1_tarski(u1_struct_0(X0_53),u1_struct_0(X1_53)) = iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(X1_53) != iProver_top ),
    inference(superposition,[status(thm)],[c_2189,c_2190])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1666,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_2194,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1666])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1680,plain,
    ( ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
    | ~ v1_funct_1(X0_54)
    | k2_partfun1(X1_54,X2_54,X0_54,X3_54) = k7_relat_1(X0_54,X3_54) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_2181,plain,
    ( k2_partfun1(X0_54,X1_54,X2_54,X3_54) = k7_relat_1(X2_54,X3_54)
    | m1_subset_1(X2_54,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
    | v1_funct_1(X2_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1680])).

cnf(c_3251,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k7_relat_1(sK3,X0_54)
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2194,c_2181])).

cnf(c_22,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_2488,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
    | ~ v1_funct_1(sK3)
    | k2_partfun1(X0_54,X1_54,sK3,X2_54) = k7_relat_1(sK3,X2_54) ),
    inference(instantiation,[status(thm)],[c_1680])).

cnf(c_2603,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
    | ~ v1_funct_1(sK3)
    | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k7_relat_1(sK3,X0_54) ),
    inference(instantiation,[status(thm)],[c_2488])).

cnf(c_3499,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k7_relat_1(sK3,X0_54) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3251,c_22,c_20,c_2603])).

cnf(c_6,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_partfun1(X1,X2,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ r1_tarski(X3,X1)
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1678,plain,
    ( ~ v1_funct_2(X0_54,X1_54,X2_54)
    | ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
    | m1_subset_1(k2_partfun1(X1_54,X2_54,X0_54,X3_54),k1_zfmisc_1(k2_zfmisc_1(X3_54,X2_54)))
    | ~ r1_tarski(X3_54,X1_54)
    | ~ v1_funct_1(X0_54)
    | k1_xboole_0 = X2_54 ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_2183,plain,
    ( k1_xboole_0 = X0_54
    | v1_funct_2(X1_54,X2_54,X0_54) != iProver_top
    | m1_subset_1(X1_54,k1_zfmisc_1(k2_zfmisc_1(X2_54,X0_54))) != iProver_top
    | m1_subset_1(k2_partfun1(X2_54,X0_54,X1_54,X3_54),k1_zfmisc_1(k2_zfmisc_1(X3_54,X0_54))) = iProver_top
    | r1_tarski(X3_54,X2_54) != iProver_top
    | v1_funct_1(X1_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1678])).

cnf(c_4331,plain,
    ( u1_struct_0(sK0) = k1_xboole_0
    | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(k7_relat_1(sK3,X0_54),k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK0)))) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) != iProver_top
    | r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_3499,c_2183])).

cnf(c_39,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_21,negated_conjecture,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_40,plain,
    ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_41,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_4688,plain,
    ( r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top
    | u1_struct_0(sK0) = k1_xboole_0
    | m1_subset_1(k7_relat_1(sK3,X0_54),k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4331,c_39,c_40,c_41])).

cnf(c_4689,plain,
    ( u1_struct_0(sK0) = k1_xboole_0
    | m1_subset_1(k7_relat_1(sK3,X0_54),k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK0)))) = iProver_top
    | r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_4688])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1681,plain,
    ( ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
    | k7_relset_1(X1_54,X2_54,X0_54,X3_54) = k9_relat_1(X0_54,X3_54) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_2180,plain,
    ( k7_relset_1(X0_54,X1_54,X2_54,X3_54) = k9_relat_1(X2_54,X3_54)
    | m1_subset_1(X2_54,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1681])).

cnf(c_4701,plain,
    ( k7_relset_1(X0_54,u1_struct_0(sK0),k7_relat_1(sK3,X0_54),X1_54) = k9_relat_1(k7_relat_1(sK3,X0_54),X1_54)
    | u1_struct_0(sK0) = k1_xboole_0
    | r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4689,c_2180])).

cnf(c_4766,plain,
    ( k7_relset_1(u1_struct_0(X0_53),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54) = k9_relat_1(k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54)
    | u1_struct_0(sK0) = k1_xboole_0
    | m1_pre_topc(X0_53,sK1) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_3329,c_4701])).

cnf(c_30,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_28,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_26,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_35,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_36,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_11,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_12,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_324,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | u1_struct_0(X0) != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_12])).

cnf(c_360,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | u1_struct_0(X0) != k1_xboole_0 ),
    inference(resolution,[status(thm)],[c_11,c_324])).

cnf(c_1655,plain,
    ( v2_struct_0(X0_53)
    | ~ l1_pre_topc(X0_53)
    | u1_struct_0(X0_53) != k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_360])).

cnf(c_4937,plain,
    ( v2_struct_0(sK0)
    | ~ l1_pre_topc(sK0)
    | u1_struct_0(sK0) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1655])).

cnf(c_7908,plain,
    ( k7_relset_1(u1_struct_0(X0_53),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54) = k9_relat_1(k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54)
    | m1_pre_topc(X0_53,sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4766,c_30,c_28,c_35,c_36,c_4937])).

cnf(c_7916,plain,
    ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(sK2)),X0_54) = k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),X0_54) ),
    inference(superposition,[status(thm)],[c_2197,c_7908])).

cnf(c_13,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1673,plain,
    ( ~ v1_funct_2(X0_54,u1_struct_0(X0_53),u1_struct_0(X1_53))
    | ~ m1_pre_topc(X2_53,X0_53)
    | ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53))))
    | ~ v2_pre_topc(X1_53)
    | ~ v2_pre_topc(X0_53)
    | v2_struct_0(X0_53)
    | v2_struct_0(X1_53)
    | ~ l1_pre_topc(X0_53)
    | ~ l1_pre_topc(X1_53)
    | ~ v1_funct_1(X0_54)
    | k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_54,u1_struct_0(X2_53)) = k2_tmap_1(X0_53,X1_53,X0_54,X2_53) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_2188,plain,
    ( k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_54,u1_struct_0(X2_53)) = k2_tmap_1(X0_53,X1_53,X0_54,X2_53)
    | v1_funct_2(X0_54,u1_struct_0(X0_53),u1_struct_0(X1_53)) != iProver_top
    | m1_pre_topc(X2_53,X0_53) != iProver_top
    | m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53)))) != iProver_top
    | v2_pre_topc(X1_53) != iProver_top
    | v2_pre_topc(X0_53) != iProver_top
    | v2_struct_0(X0_53) = iProver_top
    | v2_struct_0(X1_53) = iProver_top
    | l1_pre_topc(X1_53) != iProver_top
    | l1_pre_topc(X0_53) != iProver_top
    | v1_funct_1(X0_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1673])).

cnf(c_4817,plain,
    ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(X0_53)) = k2_tmap_1(sK1,sK0,sK3,X0_53)
    | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
    | m1_pre_topc(X0_53,sK1) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2194,c_2188])).

cnf(c_4913,plain,
    ( k2_tmap_1(sK1,sK0,sK3,X0_53) = k7_relat_1(sK3,u1_struct_0(X0_53))
    | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
    | m1_pre_topc(X0_53,sK1) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4817,c_3499])).

cnf(c_31,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_29,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_32,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_33,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_34,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_5307,plain,
    ( m1_pre_topc(X0_53,sK1) != iProver_top
    | k2_tmap_1(sK1,sK0,sK3,X0_53) = k7_relat_1(sK3,u1_struct_0(X0_53)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4913,c_31,c_32,c_33,c_34,c_35,c_36,c_39,c_40])).

cnf(c_5308,plain,
    ( k2_tmap_1(sK1,sK0,sK3,X0_53) = k7_relat_1(sK3,u1_struct_0(X0_53))
    | m1_pre_topc(X0_53,sK1) != iProver_top ),
    inference(renaming,[status(thm)],[c_5307])).

cnf(c_5315,plain,
    ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK2)) ),
    inference(superposition,[status(thm)],[c_2197,c_5308])).

cnf(c_3171,plain,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k9_relat_1(sK3,X0_54) ),
    inference(superposition,[status(thm)],[c_2194,c_2180])).

cnf(c_17,negated_conjecture,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1669,negated_conjecture,
    ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_3422,plain,
    ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) != k9_relat_1(sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_3171,c_1669])).

cnf(c_5325,plain,
    ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_5315,c_3422])).

cnf(c_7929,plain,
    ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_7916,c_5325])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1682,plain,
    ( ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
    | v1_relat_1(X0_54) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_2179,plain,
    ( m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54))) != iProver_top
    | v1_relat_1(X0_54) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1682])).

cnf(c_2820,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2194,c_2179])).

cnf(c_18,negated_conjecture,
    ( r1_tarski(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1668,negated_conjecture,
    ( r1_tarski(sK4,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_18])).

cnf(c_2192,plain,
    ( r1_tarski(sK4,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1668])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X2)
    | k9_relat_1(k7_relat_1(X2,X1),X0) = k9_relat_1(X2,X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_1683,plain,
    ( ~ r1_tarski(X0_54,X1_54)
    | ~ v1_relat_1(X2_54)
    | k9_relat_1(k7_relat_1(X2_54,X1_54),X0_54) = k9_relat_1(X2_54,X0_54) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_2178,plain,
    ( k9_relat_1(k7_relat_1(X0_54,X1_54),X2_54) = k9_relat_1(X0_54,X2_54)
    | r1_tarski(X2_54,X1_54) != iProver_top
    | v1_relat_1(X0_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1683])).

cnf(c_2651,plain,
    ( k9_relat_1(k7_relat_1(X0_54,u1_struct_0(sK2)),sK4) = k9_relat_1(X0_54,sK4)
    | v1_relat_1(X0_54) != iProver_top ),
    inference(superposition,[status(thm)],[c_2192,c_2178])).

cnf(c_3024,plain,
    ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) = k9_relat_1(sK3,sK4) ),
    inference(superposition,[status(thm)],[c_2820,c_2651])).

cnf(c_7930,plain,
    ( k9_relat_1(sK3,sK4) != k9_relat_1(sK3,sK4) ),
    inference(light_normalisation,[status(thm)],[c_7929,c_3024])).

cnf(c_7931,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_7930])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:25:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.91/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.91/0.99  
% 2.91/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.91/0.99  
% 2.91/0.99  ------  iProver source info
% 2.91/0.99  
% 2.91/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.91/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.91/0.99  git: non_committed_changes: false
% 2.91/0.99  git: last_make_outside_of_git: false
% 2.91/0.99  
% 2.91/0.99  ------ 
% 2.91/0.99  
% 2.91/0.99  ------ Input Options
% 2.91/0.99  
% 2.91/0.99  --out_options                           all
% 2.91/0.99  --tptp_safe_out                         true
% 2.91/0.99  --problem_path                          ""
% 2.91/0.99  --include_path                          ""
% 2.91/0.99  --clausifier                            res/vclausify_rel
% 2.91/0.99  --clausifier_options                    --mode clausify
% 2.91/0.99  --stdin                                 false
% 2.91/0.99  --stats_out                             all
% 2.91/0.99  
% 2.91/0.99  ------ General Options
% 2.91/0.99  
% 2.91/0.99  --fof                                   false
% 2.91/0.99  --time_out_real                         305.
% 2.91/0.99  --time_out_virtual                      -1.
% 2.91/0.99  --symbol_type_check                     false
% 2.91/0.99  --clausify_out                          false
% 2.91/0.99  --sig_cnt_out                           false
% 2.91/0.99  --trig_cnt_out                          false
% 2.91/0.99  --trig_cnt_out_tolerance                1.
% 2.91/0.99  --trig_cnt_out_sk_spl                   false
% 2.91/0.99  --abstr_cl_out                          false
% 2.91/0.99  
% 2.91/0.99  ------ Global Options
% 2.91/0.99  
% 2.91/0.99  --schedule                              default
% 2.91/0.99  --add_important_lit                     false
% 2.91/0.99  --prop_solver_per_cl                    1000
% 2.91/0.99  --min_unsat_core                        false
% 2.91/0.99  --soft_assumptions                      false
% 2.91/0.99  --soft_lemma_size                       3
% 2.91/0.99  --prop_impl_unit_size                   0
% 2.91/0.99  --prop_impl_unit                        []
% 2.91/0.99  --share_sel_clauses                     true
% 2.91/0.99  --reset_solvers                         false
% 2.91/0.99  --bc_imp_inh                            [conj_cone]
% 2.91/0.99  --conj_cone_tolerance                   3.
% 2.91/0.99  --extra_neg_conj                        none
% 2.91/0.99  --large_theory_mode                     true
% 2.91/0.99  --prolific_symb_bound                   200
% 2.91/0.99  --lt_threshold                          2000
% 2.91/0.99  --clause_weak_htbl                      true
% 2.91/0.99  --gc_record_bc_elim                     false
% 2.91/0.99  
% 2.91/0.99  ------ Preprocessing Options
% 2.91/0.99  
% 2.91/0.99  --preprocessing_flag                    true
% 2.91/0.99  --time_out_prep_mult                    0.1
% 2.91/0.99  --splitting_mode                        input
% 2.91/0.99  --splitting_grd                         true
% 2.91/0.99  --splitting_cvd                         false
% 2.91/0.99  --splitting_cvd_svl                     false
% 2.91/0.99  --splitting_nvd                         32
% 2.91/0.99  --sub_typing                            true
% 2.91/0.99  --prep_gs_sim                           true
% 2.91/0.99  --prep_unflatten                        true
% 2.91/0.99  --prep_res_sim                          true
% 2.91/0.99  --prep_upred                            true
% 2.91/0.99  --prep_sem_filter                       exhaustive
% 2.91/0.99  --prep_sem_filter_out                   false
% 2.91/0.99  --pred_elim                             true
% 2.91/0.99  --res_sim_input                         true
% 2.91/0.99  --eq_ax_congr_red                       true
% 2.91/0.99  --pure_diseq_elim                       true
% 2.91/0.99  --brand_transform                       false
% 2.91/0.99  --non_eq_to_eq                          false
% 2.91/0.99  --prep_def_merge                        true
% 2.91/0.99  --prep_def_merge_prop_impl              false
% 2.91/0.99  --prep_def_merge_mbd                    true
% 2.91/0.99  --prep_def_merge_tr_red                 false
% 2.91/0.99  --prep_def_merge_tr_cl                  false
% 2.91/0.99  --smt_preprocessing                     true
% 2.91/0.99  --smt_ac_axioms                         fast
% 2.91/0.99  --preprocessed_out                      false
% 2.91/0.99  --preprocessed_stats                    false
% 2.91/0.99  
% 2.91/0.99  ------ Abstraction refinement Options
% 2.91/0.99  
% 2.91/0.99  --abstr_ref                             []
% 2.91/0.99  --abstr_ref_prep                        false
% 2.91/0.99  --abstr_ref_until_sat                   false
% 2.91/0.99  --abstr_ref_sig_restrict                funpre
% 2.91/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.91/0.99  --abstr_ref_under                       []
% 2.91/0.99  
% 2.91/0.99  ------ SAT Options
% 2.91/0.99  
% 2.91/0.99  --sat_mode                              false
% 2.91/0.99  --sat_fm_restart_options                ""
% 2.91/0.99  --sat_gr_def                            false
% 2.91/0.99  --sat_epr_types                         true
% 2.91/0.99  --sat_non_cyclic_types                  false
% 2.91/0.99  --sat_finite_models                     false
% 2.91/0.99  --sat_fm_lemmas                         false
% 2.91/0.99  --sat_fm_prep                           false
% 2.91/0.99  --sat_fm_uc_incr                        true
% 2.91/0.99  --sat_out_model                         small
% 2.91/0.99  --sat_out_clauses                       false
% 2.91/0.99  
% 2.91/0.99  ------ QBF Options
% 2.91/0.99  
% 2.91/0.99  --qbf_mode                              false
% 2.91/0.99  --qbf_elim_univ                         false
% 2.91/0.99  --qbf_dom_inst                          none
% 2.91/0.99  --qbf_dom_pre_inst                      false
% 2.91/0.99  --qbf_sk_in                             false
% 2.91/0.99  --qbf_pred_elim                         true
% 2.91/0.99  --qbf_split                             512
% 2.91/0.99  
% 2.91/0.99  ------ BMC1 Options
% 2.91/0.99  
% 2.91/0.99  --bmc1_incremental                      false
% 2.91/0.99  --bmc1_axioms                           reachable_all
% 2.91/0.99  --bmc1_min_bound                        0
% 2.91/0.99  --bmc1_max_bound                        -1
% 2.91/0.99  --bmc1_max_bound_default                -1
% 2.91/0.99  --bmc1_symbol_reachability              true
% 2.91/0.99  --bmc1_property_lemmas                  false
% 2.91/0.99  --bmc1_k_induction                      false
% 2.91/0.99  --bmc1_non_equiv_states                 false
% 2.91/0.99  --bmc1_deadlock                         false
% 2.91/0.99  --bmc1_ucm                              false
% 2.91/0.99  --bmc1_add_unsat_core                   none
% 2.91/0.99  --bmc1_unsat_core_children              false
% 2.91/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.91/0.99  --bmc1_out_stat                         full
% 2.91/0.99  --bmc1_ground_init                      false
% 2.91/0.99  --bmc1_pre_inst_next_state              false
% 2.91/0.99  --bmc1_pre_inst_state                   false
% 2.91/0.99  --bmc1_pre_inst_reach_state             false
% 2.91/0.99  --bmc1_out_unsat_core                   false
% 2.91/0.99  --bmc1_aig_witness_out                  false
% 2.91/0.99  --bmc1_verbose                          false
% 2.91/0.99  --bmc1_dump_clauses_tptp                false
% 2.91/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.91/0.99  --bmc1_dump_file                        -
% 2.91/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.91/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.91/0.99  --bmc1_ucm_extend_mode                  1
% 2.91/0.99  --bmc1_ucm_init_mode                    2
% 2.91/0.99  --bmc1_ucm_cone_mode                    none
% 2.91/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.91/0.99  --bmc1_ucm_relax_model                  4
% 2.91/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.91/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.91/0.99  --bmc1_ucm_layered_model                none
% 2.91/0.99  --bmc1_ucm_max_lemma_size               10
% 2.91/0.99  
% 2.91/0.99  ------ AIG Options
% 2.91/0.99  
% 2.91/0.99  --aig_mode                              false
% 2.91/0.99  
% 2.91/0.99  ------ Instantiation Options
% 2.91/0.99  
% 2.91/0.99  --instantiation_flag                    true
% 2.91/0.99  --inst_sos_flag                         false
% 2.91/0.99  --inst_sos_phase                        true
% 2.91/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.91/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.91/0.99  --inst_lit_sel_side                     num_symb
% 2.91/0.99  --inst_solver_per_active                1400
% 2.91/0.99  --inst_solver_calls_frac                1.
% 2.91/0.99  --inst_passive_queue_type               priority_queues
% 2.91/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.91/0.99  --inst_passive_queues_freq              [25;2]
% 2.91/0.99  --inst_dismatching                      true
% 2.91/0.99  --inst_eager_unprocessed_to_passive     true
% 2.91/0.99  --inst_prop_sim_given                   true
% 2.91/0.99  --inst_prop_sim_new                     false
% 2.91/0.99  --inst_subs_new                         false
% 2.91/0.99  --inst_eq_res_simp                      false
% 2.91/0.99  --inst_subs_given                       false
% 2.91/0.99  --inst_orphan_elimination               true
% 2.91/0.99  --inst_learning_loop_flag               true
% 2.91/0.99  --inst_learning_start                   3000
% 2.91/0.99  --inst_learning_factor                  2
% 2.91/0.99  --inst_start_prop_sim_after_learn       3
% 2.91/0.99  --inst_sel_renew                        solver
% 2.91/0.99  --inst_lit_activity_flag                true
% 2.91/0.99  --inst_restr_to_given                   false
% 2.91/0.99  --inst_activity_threshold               500
% 2.91/0.99  --inst_out_proof                        true
% 2.91/0.99  
% 2.91/0.99  ------ Resolution Options
% 2.91/0.99  
% 2.91/0.99  --resolution_flag                       true
% 2.91/0.99  --res_lit_sel                           adaptive
% 2.91/0.99  --res_lit_sel_side                      none
% 2.91/0.99  --res_ordering                          kbo
% 2.91/0.99  --res_to_prop_solver                    active
% 2.91/0.99  --res_prop_simpl_new                    false
% 2.91/0.99  --res_prop_simpl_given                  true
% 2.91/0.99  --res_passive_queue_type                priority_queues
% 2.91/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.91/0.99  --res_passive_queues_freq               [15;5]
% 2.91/0.99  --res_forward_subs                      full
% 2.91/0.99  --res_backward_subs                     full
% 2.91/0.99  --res_forward_subs_resolution           true
% 2.91/0.99  --res_backward_subs_resolution          true
% 2.91/0.99  --res_orphan_elimination                true
% 2.91/0.99  --res_time_limit                        2.
% 2.91/0.99  --res_out_proof                         true
% 2.91/0.99  
% 2.91/0.99  ------ Superposition Options
% 2.91/0.99  
% 2.91/0.99  --superposition_flag                    true
% 2.91/0.99  --sup_passive_queue_type                priority_queues
% 2.91/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.91/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.91/0.99  --demod_completeness_check              fast
% 2.91/0.99  --demod_use_ground                      true
% 2.91/0.99  --sup_to_prop_solver                    passive
% 2.91/0.99  --sup_prop_simpl_new                    true
% 2.91/0.99  --sup_prop_simpl_given                  true
% 2.91/0.99  --sup_fun_splitting                     false
% 2.91/0.99  --sup_smt_interval                      50000
% 2.91/0.99  
% 2.91/0.99  ------ Superposition Simplification Setup
% 2.91/0.99  
% 2.91/0.99  --sup_indices_passive                   []
% 2.91/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.91/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.91/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.91/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.91/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.91/0.99  --sup_full_bw                           [BwDemod]
% 2.91/0.99  --sup_immed_triv                        [TrivRules]
% 2.91/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.91/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.91/0.99  --sup_immed_bw_main                     []
% 2.91/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.91/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.91/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.91/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.91/0.99  
% 2.91/0.99  ------ Combination Options
% 2.91/0.99  
% 2.91/0.99  --comb_res_mult                         3
% 2.91/0.99  --comb_sup_mult                         2
% 2.91/0.99  --comb_inst_mult                        10
% 2.91/0.99  
% 2.91/0.99  ------ Debug Options
% 2.91/0.99  
% 2.91/0.99  --dbg_backtrace                         false
% 2.91/0.99  --dbg_dump_prop_clauses                 false
% 2.91/0.99  --dbg_dump_prop_clauses_file            -
% 2.91/0.99  --dbg_out_stat                          false
% 2.91/0.99  ------ Parsing...
% 2.91/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.91/0.99  
% 2.91/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.91/0.99  
% 2.91/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.91/0.99  
% 2.91/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.91/0.99  ------ Proving...
% 2.91/0.99  ------ Problem Properties 
% 2.91/0.99  
% 2.91/0.99  
% 2.91/0.99  clauses                                 29
% 2.91/0.99  conjectures                             14
% 2.91/0.99  EPR                                     10
% 2.91/0.99  Horn                                    25
% 2.91/0.99  unary                                   14
% 2.91/0.99  binary                                  3
% 2.91/0.99  lits                                    85
% 2.91/0.99  lits eq                                 9
% 2.91/0.99  fd_pure                                 0
% 2.91/0.99  fd_pseudo                               0
% 2.91/0.99  fd_cond                                 3
% 2.91/0.99  fd_pseudo_cond                          0
% 2.91/0.99  AC symbols                              0
% 2.91/0.99  
% 2.91/0.99  ------ Schedule dynamic 5 is on 
% 2.91/0.99  
% 2.91/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.91/0.99  
% 2.91/0.99  
% 2.91/0.99  ------ 
% 2.91/0.99  Current options:
% 2.91/0.99  ------ 
% 2.91/0.99  
% 2.91/0.99  ------ Input Options
% 2.91/0.99  
% 2.91/0.99  --out_options                           all
% 2.91/0.99  --tptp_safe_out                         true
% 2.91/0.99  --problem_path                          ""
% 2.91/0.99  --include_path                          ""
% 2.91/0.99  --clausifier                            res/vclausify_rel
% 2.91/0.99  --clausifier_options                    --mode clausify
% 2.91/0.99  --stdin                                 false
% 2.91/0.99  --stats_out                             all
% 2.91/0.99  
% 2.91/0.99  ------ General Options
% 2.91/0.99  
% 2.91/0.99  --fof                                   false
% 2.91/0.99  --time_out_real                         305.
% 2.91/0.99  --time_out_virtual                      -1.
% 2.91/0.99  --symbol_type_check                     false
% 2.91/0.99  --clausify_out                          false
% 2.91/0.99  --sig_cnt_out                           false
% 2.91/0.99  --trig_cnt_out                          false
% 2.91/0.99  --trig_cnt_out_tolerance                1.
% 2.91/0.99  --trig_cnt_out_sk_spl                   false
% 2.91/0.99  --abstr_cl_out                          false
% 2.91/0.99  
% 2.91/0.99  ------ Global Options
% 2.91/0.99  
% 2.91/0.99  --schedule                              default
% 2.91/0.99  --add_important_lit                     false
% 2.91/0.99  --prop_solver_per_cl                    1000
% 2.91/0.99  --min_unsat_core                        false
% 2.91/0.99  --soft_assumptions                      false
% 2.91/0.99  --soft_lemma_size                       3
% 2.91/0.99  --prop_impl_unit_size                   0
% 2.91/0.99  --prop_impl_unit                        []
% 2.91/0.99  --share_sel_clauses                     true
% 2.91/0.99  --reset_solvers                         false
% 2.91/0.99  --bc_imp_inh                            [conj_cone]
% 2.91/0.99  --conj_cone_tolerance                   3.
% 2.91/0.99  --extra_neg_conj                        none
% 2.91/0.99  --large_theory_mode                     true
% 2.91/0.99  --prolific_symb_bound                   200
% 2.91/0.99  --lt_threshold                          2000
% 2.91/0.99  --clause_weak_htbl                      true
% 2.91/0.99  --gc_record_bc_elim                     false
% 2.91/0.99  
% 2.91/0.99  ------ Preprocessing Options
% 2.91/0.99  
% 2.91/0.99  --preprocessing_flag                    true
% 2.91/0.99  --time_out_prep_mult                    0.1
% 2.91/0.99  --splitting_mode                        input
% 2.91/0.99  --splitting_grd                         true
% 2.91/0.99  --splitting_cvd                         false
% 2.91/0.99  --splitting_cvd_svl                     false
% 2.91/0.99  --splitting_nvd                         32
% 2.91/0.99  --sub_typing                            true
% 2.91/0.99  --prep_gs_sim                           true
% 2.91/0.99  --prep_unflatten                        true
% 2.91/0.99  --prep_res_sim                          true
% 2.91/0.99  --prep_upred                            true
% 2.91/0.99  --prep_sem_filter                       exhaustive
% 2.91/0.99  --prep_sem_filter_out                   false
% 2.91/0.99  --pred_elim                             true
% 2.91/0.99  --res_sim_input                         true
% 2.91/0.99  --eq_ax_congr_red                       true
% 2.91/0.99  --pure_diseq_elim                       true
% 2.91/0.99  --brand_transform                       false
% 2.91/0.99  --non_eq_to_eq                          false
% 2.91/0.99  --prep_def_merge                        true
% 2.91/0.99  --prep_def_merge_prop_impl              false
% 2.91/0.99  --prep_def_merge_mbd                    true
% 2.91/0.99  --prep_def_merge_tr_red                 false
% 2.91/0.99  --prep_def_merge_tr_cl                  false
% 2.91/0.99  --smt_preprocessing                     true
% 2.91/0.99  --smt_ac_axioms                         fast
% 2.91/0.99  --preprocessed_out                      false
% 2.91/0.99  --preprocessed_stats                    false
% 2.91/0.99  
% 2.91/0.99  ------ Abstraction refinement Options
% 2.91/0.99  
% 2.91/0.99  --abstr_ref                             []
% 2.91/0.99  --abstr_ref_prep                        false
% 2.91/0.99  --abstr_ref_until_sat                   false
% 2.91/0.99  --abstr_ref_sig_restrict                funpre
% 2.91/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.91/0.99  --abstr_ref_under                       []
% 2.91/0.99  
% 2.91/0.99  ------ SAT Options
% 2.91/0.99  
% 2.91/0.99  --sat_mode                              false
% 2.91/0.99  --sat_fm_restart_options                ""
% 2.91/0.99  --sat_gr_def                            false
% 2.91/0.99  --sat_epr_types                         true
% 2.91/0.99  --sat_non_cyclic_types                  false
% 2.91/0.99  --sat_finite_models                     false
% 2.91/0.99  --sat_fm_lemmas                         false
% 2.91/0.99  --sat_fm_prep                           false
% 2.91/0.99  --sat_fm_uc_incr                        true
% 2.91/0.99  --sat_out_model                         small
% 2.91/0.99  --sat_out_clauses                       false
% 2.91/0.99  
% 2.91/0.99  ------ QBF Options
% 2.91/0.99  
% 2.91/0.99  --qbf_mode                              false
% 2.91/0.99  --qbf_elim_univ                         false
% 2.91/0.99  --qbf_dom_inst                          none
% 2.91/0.99  --qbf_dom_pre_inst                      false
% 2.91/0.99  --qbf_sk_in                             false
% 2.91/0.99  --qbf_pred_elim                         true
% 2.91/0.99  --qbf_split                             512
% 2.91/0.99  
% 2.91/0.99  ------ BMC1 Options
% 2.91/0.99  
% 2.91/0.99  --bmc1_incremental                      false
% 2.91/0.99  --bmc1_axioms                           reachable_all
% 2.91/0.99  --bmc1_min_bound                        0
% 2.91/0.99  --bmc1_max_bound                        -1
% 2.91/0.99  --bmc1_max_bound_default                -1
% 2.91/0.99  --bmc1_symbol_reachability              true
% 2.91/0.99  --bmc1_property_lemmas                  false
% 2.91/0.99  --bmc1_k_induction                      false
% 2.91/0.99  --bmc1_non_equiv_states                 false
% 2.91/0.99  --bmc1_deadlock                         false
% 2.91/0.99  --bmc1_ucm                              false
% 2.91/0.99  --bmc1_add_unsat_core                   none
% 2.91/0.99  --bmc1_unsat_core_children              false
% 2.91/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.91/0.99  --bmc1_out_stat                         full
% 2.91/0.99  --bmc1_ground_init                      false
% 2.91/0.99  --bmc1_pre_inst_next_state              false
% 2.91/0.99  --bmc1_pre_inst_state                   false
% 2.91/0.99  --bmc1_pre_inst_reach_state             false
% 2.91/0.99  --bmc1_out_unsat_core                   false
% 2.91/0.99  --bmc1_aig_witness_out                  false
% 2.91/0.99  --bmc1_verbose                          false
% 2.91/0.99  --bmc1_dump_clauses_tptp                false
% 2.91/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.91/0.99  --bmc1_dump_file                        -
% 2.91/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.91/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.91/0.99  --bmc1_ucm_extend_mode                  1
% 2.91/0.99  --bmc1_ucm_init_mode                    2
% 2.91/0.99  --bmc1_ucm_cone_mode                    none
% 2.91/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.91/0.99  --bmc1_ucm_relax_model                  4
% 2.91/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.91/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.91/0.99  --bmc1_ucm_layered_model                none
% 2.91/0.99  --bmc1_ucm_max_lemma_size               10
% 2.91/0.99  
% 2.91/0.99  ------ AIG Options
% 2.91/0.99  
% 2.91/0.99  --aig_mode                              false
% 2.91/0.99  
% 2.91/0.99  ------ Instantiation Options
% 2.91/0.99  
% 2.91/0.99  --instantiation_flag                    true
% 2.91/0.99  --inst_sos_flag                         false
% 2.91/0.99  --inst_sos_phase                        true
% 2.91/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.91/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.91/0.99  --inst_lit_sel_side                     none
% 2.91/0.99  --inst_solver_per_active                1400
% 2.91/0.99  --inst_solver_calls_frac                1.
% 2.91/0.99  --inst_passive_queue_type               priority_queues
% 2.91/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.91/0.99  --inst_passive_queues_freq              [25;2]
% 2.91/0.99  --inst_dismatching                      true
% 2.91/0.99  --inst_eager_unprocessed_to_passive     true
% 2.91/0.99  --inst_prop_sim_given                   true
% 2.91/0.99  --inst_prop_sim_new                     false
% 2.91/0.99  --inst_subs_new                         false
% 2.91/0.99  --inst_eq_res_simp                      false
% 2.91/0.99  --inst_subs_given                       false
% 2.91/0.99  --inst_orphan_elimination               true
% 2.91/0.99  --inst_learning_loop_flag               true
% 2.91/0.99  --inst_learning_start                   3000
% 2.91/0.99  --inst_learning_factor                  2
% 2.91/0.99  --inst_start_prop_sim_after_learn       3
% 2.91/0.99  --inst_sel_renew                        solver
% 2.91/0.99  --inst_lit_activity_flag                true
% 2.91/0.99  --inst_restr_to_given                   false
% 2.91/0.99  --inst_activity_threshold               500
% 2.91/0.99  --inst_out_proof                        true
% 2.91/0.99  
% 2.91/0.99  ------ Resolution Options
% 2.91/0.99  
% 2.91/0.99  --resolution_flag                       false
% 2.91/0.99  --res_lit_sel                           adaptive
% 2.91/0.99  --res_lit_sel_side                      none
% 2.91/0.99  --res_ordering                          kbo
% 2.91/0.99  --res_to_prop_solver                    active
% 2.91/0.99  --res_prop_simpl_new                    false
% 2.91/0.99  --res_prop_simpl_given                  true
% 2.91/0.99  --res_passive_queue_type                priority_queues
% 2.91/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.91/0.99  --res_passive_queues_freq               [15;5]
% 2.91/0.99  --res_forward_subs                      full
% 2.91/0.99  --res_backward_subs                     full
% 2.91/0.99  --res_forward_subs_resolution           true
% 2.91/0.99  --res_backward_subs_resolution          true
% 2.91/0.99  --res_orphan_elimination                true
% 2.91/0.99  --res_time_limit                        2.
% 2.91/0.99  --res_out_proof                         true
% 2.91/0.99  
% 2.91/0.99  ------ Superposition Options
% 2.91/0.99  
% 2.91/0.99  --superposition_flag                    true
% 2.91/0.99  --sup_passive_queue_type                priority_queues
% 2.91/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.91/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.91/0.99  --demod_completeness_check              fast
% 2.91/0.99  --demod_use_ground                      true
% 2.91/0.99  --sup_to_prop_solver                    passive
% 2.91/0.99  --sup_prop_simpl_new                    true
% 2.91/0.99  --sup_prop_simpl_given                  true
% 2.91/0.99  --sup_fun_splitting                     false
% 2.91/0.99  --sup_smt_interval                      50000
% 2.91/0.99  
% 2.91/0.99  ------ Superposition Simplification Setup
% 2.91/0.99  
% 2.91/0.99  --sup_indices_passive                   []
% 2.91/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.91/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.91/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.91/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.91/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.91/0.99  --sup_full_bw                           [BwDemod]
% 2.91/0.99  --sup_immed_triv                        [TrivRules]
% 2.91/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.91/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.91/0.99  --sup_immed_bw_main                     []
% 2.91/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.91/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.91/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.91/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.91/0.99  
% 2.91/0.99  ------ Combination Options
% 2.91/0.99  
% 2.91/0.99  --comb_res_mult                         3
% 2.91/0.99  --comb_sup_mult                         2
% 2.91/0.99  --comb_inst_mult                        10
% 2.91/0.99  
% 2.91/0.99  ------ Debug Options
% 2.91/0.99  
% 2.91/0.99  --dbg_backtrace                         false
% 2.91/0.99  --dbg_dump_prop_clauses                 false
% 2.91/0.99  --dbg_dump_prop_clauses_file            -
% 2.91/0.99  --dbg_out_stat                          false
% 2.91/0.99  
% 2.91/0.99  
% 2.91/0.99  
% 2.91/0.99  
% 2.91/0.99  ------ Proving...
% 2.91/0.99  
% 2.91/0.99  
% 2.91/0.99  % SZS status Theorem for theBenchmark.p
% 2.91/0.99  
% 2.91/0.99   Resolution empty clause
% 2.91/0.99  
% 2.91/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.91/0.99  
% 2.91/0.99  fof(f12,conjecture,(
% 2.91/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => ! [X4] : (m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) => (r1_tarski(X4,u1_struct_0(X2)) => k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) = k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)))))))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f13,negated_conjecture,(
% 2.91/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => ! [X4] : (m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) => (r1_tarski(X4,u1_struct_0(X2)) => k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) = k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4)))))))),
% 2.91/0.99    inference(negated_conjecture,[],[f12])).
% 2.91/0.99  
% 2.91/0.99  fof(f29,plain,(
% 2.91/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2))) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3))) & (m1_pre_topc(X2,X1) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.91/0.99    inference(ennf_transformation,[],[f13])).
% 2.91/0.99  
% 2.91/0.99  fof(f30,plain,(
% 2.91/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.91/0.99    inference(flattening,[],[f29])).
% 2.91/0.99  
% 2.91/0.99  fof(f36,plain,(
% 2.91/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) => (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,sK4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),sK4) & r1_tarski(sK4,u1_struct_0(X2)) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X1))))) )),
% 2.91/0.99    introduced(choice_axiom,[])).
% 2.91/0.99  
% 2.91/0.99  fof(f35,plain,(
% 2.91/0.99    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) => (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),sK3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,sK3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(sK3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(sK3))) )),
% 2.91/0.99    introduced(choice_axiom,[])).
% 2.91/0.99  
% 2.91/0.99  fof(f34,plain,(
% 2.91/0.99    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,sK2),X4) & r1_tarski(X4,u1_struct_0(sK2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(sK2,X1) & ~v2_struct_0(sK2))) )),
% 2.91/0.99    introduced(choice_axiom,[])).
% 2.91/0.99  
% 2.91/0.99  fof(f33,plain,(
% 2.91/0.99    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(sK1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(sK1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(sK1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,sK1) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 2.91/0.99    introduced(choice_axiom,[])).
% 2.91/0.99  
% 2.91/0.99  fof(f32,plain,(
% 2.91/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(X0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(X0),k2_tmap_1(X1,X0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (k7_relset_1(u1_struct_0(X1),u1_struct_0(sK0),X3,X4) != k7_relset_1(u1_struct_0(X2),u1_struct_0(sK0),k2_tmap_1(X1,sK0,X3,X2),X4) & r1_tarski(X4,u1_struct_0(X2)) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(sK0)))) & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(sK0)) & v1_funct_1(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 2.91/0.99    introduced(choice_axiom,[])).
% 2.91/0.99  
% 2.91/0.99  fof(f37,plain,(
% 2.91/0.99    ((((k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) & r1_tarski(sK4,u1_struct_0(sK2)) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) & v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) & v1_funct_1(sK3)) & m1_pre_topc(sK2,sK1) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 2.91/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f30,f36,f35,f34,f33,f32])).
% 2.91/0.99  
% 2.91/0.99  fof(f62,plain,(
% 2.91/0.99    m1_pre_topc(sK2,sK1)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f10,axiom,(
% 2.91/0.99    ! [X0] : (l1_pre_topc(X0) => m1_pre_topc(X0,X0))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f26,plain,(
% 2.91/0.99    ! [X0] : (m1_pre_topc(X0,X0) | ~l1_pre_topc(X0))),
% 2.91/0.99    inference(ennf_transformation,[],[f10])).
% 2.91/0.99  
% 2.91/0.99  fof(f52,plain,(
% 2.91/0.99    ( ! [X0] : (m1_pre_topc(X0,X0) | ~l1_pre_topc(X0)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f26])).
% 2.91/0.99  
% 2.91/0.99  fof(f11,axiom,(
% 2.91/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X0) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)))))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f27,plain,(
% 2.91/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.91/0.99    inference(ennf_transformation,[],[f11])).
% 2.91/0.99  
% 2.91/0.99  fof(f28,plain,(
% 2.91/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.91/0.99    inference(flattening,[],[f27])).
% 2.91/0.99  
% 2.91/0.99  fof(f31,plain,(
% 2.91/0.99    ! [X0] : (! [X1] : (! [X2] : (((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2)) & (m1_pre_topc(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)))) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.91/0.99    inference(nnf_transformation,[],[f28])).
% 2.91/0.99  
% 2.91/0.99  fof(f54,plain,(
% 2.91/0.99    ( ! [X2,X0,X1] : (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2) | ~m1_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f31])).
% 2.91/0.99  
% 2.91/0.99  fof(f65,plain,(
% 2.91/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f5,axiom,(
% 2.91/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f17,plain,(
% 2.91/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 2.91/0.99    inference(ennf_transformation,[],[f5])).
% 2.91/0.99  
% 2.91/0.99  fof(f18,plain,(
% 2.91/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 2.91/0.99    inference(flattening,[],[f17])).
% 2.91/0.99  
% 2.91/0.99  fof(f42,plain,(
% 2.91/0.99    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f18])).
% 2.91/0.99  
% 2.91/0.99  fof(f63,plain,(
% 2.91/0.99    v1_funct_1(sK3)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f6,axiom,(
% 2.91/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_tarski(X2,X0) => ((m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) & v1_funct_2(k2_partfun1(X0,X1,X3,X2),X2,X1) & v1_funct_1(k2_partfun1(X0,X1,X3,X2))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f19,plain,(
% 2.91/0.99    ! [X0,X1,X2,X3] : ((((m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) & v1_funct_2(k2_partfun1(X0,X1,X3,X2),X2,X1) & v1_funct_1(k2_partfun1(X0,X1,X3,X2))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)) | ~r1_tarski(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 2.91/0.99    inference(ennf_transformation,[],[f6])).
% 2.91/0.99  
% 2.91/0.99  fof(f20,plain,(
% 2.91/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) & v1_funct_2(k2_partfun1(X0,X1,X3,X2),X2,X1) & v1_funct_1(k2_partfun1(X0,X1,X3,X2))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1) | ~r1_tarski(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 2.91/0.99    inference(flattening,[],[f19])).
% 2.91/0.99  
% 2.91/0.99  fof(f47,plain,(
% 2.91/0.99    ( ! [X2,X0,X3,X1] : (m1_subset_1(k2_partfun1(X0,X1,X3,X2),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) | k1_xboole_0 = X1 | ~r1_tarski(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f20])).
% 2.91/0.99  
% 2.91/0.99  fof(f64,plain,(
% 2.91/0.99    v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0))),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f4,axiom,(
% 2.91/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f16,plain,(
% 2.91/0.99    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.91/0.99    inference(ennf_transformation,[],[f4])).
% 2.91/0.99  
% 2.91/0.99  fof(f41,plain,(
% 2.91/0.99    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.91/0.99    inference(cnf_transformation,[],[f16])).
% 2.91/0.99  
% 2.91/0.99  fof(f55,plain,(
% 2.91/0.99    ~v2_struct_0(sK0)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f57,plain,(
% 2.91/0.99    l1_pre_topc(sK0)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f59,plain,(
% 2.91/0.99    v2_pre_topc(sK1)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f60,plain,(
% 2.91/0.99    l1_pre_topc(sK1)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f7,axiom,(
% 2.91/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f21,plain,(
% 2.91/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.91/0.99    inference(ennf_transformation,[],[f7])).
% 2.91/0.99  
% 2.91/0.99  fof(f49,plain,(
% 2.91/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f21])).
% 2.91/0.99  
% 2.91/0.99  fof(f1,axiom,(
% 2.91/0.99    v1_xboole_0(k1_xboole_0)),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f38,plain,(
% 2.91/0.99    v1_xboole_0(k1_xboole_0)),
% 2.91/0.99    inference(cnf_transformation,[],[f1])).
% 2.91/0.99  
% 2.91/0.99  fof(f8,axiom,(
% 2.91/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f22,plain,(
% 2.91/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.91/0.99    inference(ennf_transformation,[],[f8])).
% 2.91/0.99  
% 2.91/0.99  fof(f23,plain,(
% 2.91/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.91/0.99    inference(flattening,[],[f22])).
% 2.91/0.99  
% 2.91/0.99  fof(f50,plain,(
% 2.91/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f23])).
% 2.91/0.99  
% 2.91/0.99  fof(f9,axiom,(
% 2.91/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_pre_topc(X3,X0) => k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3)))))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f24,plain,(
% 2.91/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.91/0.99    inference(ennf_transformation,[],[f9])).
% 2.91/0.99  
% 2.91/0.99  fof(f25,plain,(
% 2.91/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.91/0.99    inference(flattening,[],[f24])).
% 2.91/0.99  
% 2.91/0.99  fof(f51,plain,(
% 2.91/0.99    ( ! [X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) = k2_tmap_1(X0,X1,X2,X3) | ~m1_pre_topc(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f25])).
% 2.91/0.99  
% 2.91/0.99  fof(f56,plain,(
% 2.91/0.99    v2_pre_topc(sK0)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f58,plain,(
% 2.91/0.99    ~v2_struct_0(sK1)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f68,plain,(
% 2.91/0.99    k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4)),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f3,axiom,(
% 2.91/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f15,plain,(
% 2.91/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.91/0.99    inference(ennf_transformation,[],[f3])).
% 2.91/0.99  
% 2.91/0.99  fof(f40,plain,(
% 2.91/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.91/0.99    inference(cnf_transformation,[],[f15])).
% 2.91/0.99  
% 2.91/0.99  fof(f67,plain,(
% 2.91/0.99    r1_tarski(sK4,u1_struct_0(sK2))),
% 2.91/0.99    inference(cnf_transformation,[],[f37])).
% 2.91/0.99  
% 2.91/0.99  fof(f2,axiom,(
% 2.91/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1,X2] : (r1_tarski(X1,X2) => k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1)))),
% 2.91/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.91/0.99  
% 2.91/0.99  fof(f14,plain,(
% 2.91/0.99    ! [X0] : (! [X1,X2] : (k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1) | ~r1_tarski(X1,X2)) | ~v1_relat_1(X0))),
% 2.91/0.99    inference(ennf_transformation,[],[f2])).
% 2.91/0.99  
% 2.91/0.99  fof(f39,plain,(
% 2.91/0.99    ( ! [X2,X0,X1] : (k9_relat_1(X0,X1) = k9_relat_1(k7_relat_1(X0,X2),X1) | ~r1_tarski(X1,X2) | ~v1_relat_1(X0)) )),
% 2.91/0.99    inference(cnf_transformation,[],[f14])).
% 2.91/0.99  
% 2.91/0.99  cnf(c_23,negated_conjecture,
% 2.91/0.99      ( m1_pre_topc(sK2,sK1) ),
% 2.91/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1663,negated_conjecture,
% 2.91/0.99      ( m1_pre_topc(sK2,sK1) ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_23]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2197,plain,
% 2.91/0.99      ( m1_pre_topc(sK2,sK1) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1663]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_14,plain,
% 2.91/0.99      ( m1_pre_topc(X0,X0) | ~ l1_pre_topc(X0) ),
% 2.91/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1672,plain,
% 2.91/0.99      ( m1_pre_topc(X0_53,X0_53) | ~ l1_pre_topc(X0_53) ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_14]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2189,plain,
% 2.91/0.99      ( m1_pre_topc(X0_53,X0_53) = iProver_top
% 2.91/0.99      | l1_pre_topc(X0_53) != iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1672]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_15,plain,
% 2.91/0.99      ( ~ m1_pre_topc(X0,X1)
% 2.91/0.99      | ~ m1_pre_topc(X1,X2)
% 2.91/0.99      | ~ m1_pre_topc(X0,X2)
% 2.91/0.99      | r1_tarski(u1_struct_0(X0),u1_struct_0(X1))
% 2.91/0.99      | ~ v2_pre_topc(X2)
% 2.91/0.99      | ~ l1_pre_topc(X2) ),
% 2.91/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1671,plain,
% 2.91/0.99      ( ~ m1_pre_topc(X0_53,X1_53)
% 2.91/0.99      | ~ m1_pre_topc(X1_53,X2_53)
% 2.91/0.99      | ~ m1_pre_topc(X0_53,X2_53)
% 2.91/0.99      | r1_tarski(u1_struct_0(X0_53),u1_struct_0(X1_53))
% 2.91/0.99      | ~ v2_pre_topc(X2_53)
% 2.91/0.99      | ~ l1_pre_topc(X2_53) ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_15]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2190,plain,
% 2.91/0.99      ( m1_pre_topc(X0_53,X1_53) != iProver_top
% 2.91/0.99      | m1_pre_topc(X1_53,X2_53) != iProver_top
% 2.91/0.99      | m1_pre_topc(X0_53,X2_53) != iProver_top
% 2.91/0.99      | r1_tarski(u1_struct_0(X0_53),u1_struct_0(X1_53)) = iProver_top
% 2.91/0.99      | v2_pre_topc(X2_53) != iProver_top
% 2.91/0.99      | l1_pre_topc(X2_53) != iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1671]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_3329,plain,
% 2.91/0.99      ( m1_pre_topc(X0_53,X1_53) != iProver_top
% 2.91/0.99      | r1_tarski(u1_struct_0(X0_53),u1_struct_0(X1_53)) = iProver_top
% 2.91/0.99      | v2_pre_topc(X1_53) != iProver_top
% 2.91/0.99      | l1_pre_topc(X1_53) != iProver_top ),
% 2.91/0.99      inference(superposition,[status(thm)],[c_2189,c_2190]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_20,negated_conjecture,
% 2.91/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
% 2.91/0.99      inference(cnf_transformation,[],[f65]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1666,negated_conjecture,
% 2.91/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_20]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2194,plain,
% 2.91/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1666]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4,plain,
% 2.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.91/0.99      | ~ v1_funct_1(X0)
% 2.91/0.99      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 2.91/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1680,plain,
% 2.91/0.99      ( ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
% 2.91/0.99      | ~ v1_funct_1(X0_54)
% 2.91/0.99      | k2_partfun1(X1_54,X2_54,X0_54,X3_54) = k7_relat_1(X0_54,X3_54) ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_4]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2181,plain,
% 2.91/0.99      ( k2_partfun1(X0_54,X1_54,X2_54,X3_54) = k7_relat_1(X2_54,X3_54)
% 2.91/0.99      | m1_subset_1(X2_54,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top
% 2.91/0.99      | v1_funct_1(X2_54) != iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1680]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_3251,plain,
% 2.91/0.99      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k7_relat_1(sK3,X0_54)
% 2.91/0.99      | v1_funct_1(sK3) != iProver_top ),
% 2.91/0.99      inference(superposition,[status(thm)],[c_2194,c_2181]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_22,negated_conjecture,
% 2.91/0.99      ( v1_funct_1(sK3) ),
% 2.91/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2488,plain,
% 2.91/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54)))
% 2.91/0.99      | ~ v1_funct_1(sK3)
% 2.91/0.99      | k2_partfun1(X0_54,X1_54,sK3,X2_54) = k7_relat_1(sK3,X2_54) ),
% 2.91/0.99      inference(instantiation,[status(thm)],[c_1680]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2603,plain,
% 2.91/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0))))
% 2.91/0.99      | ~ v1_funct_1(sK3)
% 2.91/0.99      | k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k7_relat_1(sK3,X0_54) ),
% 2.91/0.99      inference(instantiation,[status(thm)],[c_2488]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_3499,plain,
% 2.91/0.99      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k7_relat_1(sK3,X0_54) ),
% 2.91/0.99      inference(global_propositional_subsumption,
% 2.91/0.99                [status(thm)],
% 2.91/0.99                [c_3251,c_22,c_20,c_2603]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_6,plain,
% 2.91/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.91/0.99      | m1_subset_1(k2_partfun1(X1,X2,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
% 2.91/0.99      | ~ r1_tarski(X3,X1)
% 2.91/0.99      | ~ v1_funct_1(X0)
% 2.91/0.99      | k1_xboole_0 = X2 ),
% 2.91/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1678,plain,
% 2.91/0.99      ( ~ v1_funct_2(X0_54,X1_54,X2_54)
% 2.91/0.99      | ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
% 2.91/0.99      | m1_subset_1(k2_partfun1(X1_54,X2_54,X0_54,X3_54),k1_zfmisc_1(k2_zfmisc_1(X3_54,X2_54)))
% 2.91/0.99      | ~ r1_tarski(X3_54,X1_54)
% 2.91/0.99      | ~ v1_funct_1(X0_54)
% 2.91/0.99      | k1_xboole_0 = X2_54 ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_6]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2183,plain,
% 2.91/0.99      ( k1_xboole_0 = X0_54
% 2.91/0.99      | v1_funct_2(X1_54,X2_54,X0_54) != iProver_top
% 2.91/0.99      | m1_subset_1(X1_54,k1_zfmisc_1(k2_zfmisc_1(X2_54,X0_54))) != iProver_top
% 2.91/0.99      | m1_subset_1(k2_partfun1(X2_54,X0_54,X1_54,X3_54),k1_zfmisc_1(k2_zfmisc_1(X3_54,X0_54))) = iProver_top
% 2.91/0.99      | r1_tarski(X3_54,X2_54) != iProver_top
% 2.91/0.99      | v1_funct_1(X1_54) != iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1678]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4331,plain,
% 2.91/0.99      ( u1_struct_0(sK0) = k1_xboole_0
% 2.91/0.99      | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
% 2.91/0.99      | m1_subset_1(k7_relat_1(sK3,X0_54),k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK0)))) = iProver_top
% 2.91/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) != iProver_top
% 2.91/0.99      | r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top
% 2.91/0.99      | v1_funct_1(sK3) != iProver_top ),
% 2.91/0.99      inference(superposition,[status(thm)],[c_3499,c_2183]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_39,plain,
% 2.91/0.99      ( v1_funct_1(sK3) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_21,negated_conjecture,
% 2.91/0.99      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) ),
% 2.91/0.99      inference(cnf_transformation,[],[f64]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_40,plain,
% 2.91/0.99      ( v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_41,plain,
% 2.91/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK1),u1_struct_0(sK0)))) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4688,plain,
% 2.91/0.99      ( r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top
% 2.91/0.99      | u1_struct_0(sK0) = k1_xboole_0
% 2.91/0.99      | m1_subset_1(k7_relat_1(sK3,X0_54),k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK0)))) = iProver_top ),
% 2.91/0.99      inference(global_propositional_subsumption,
% 2.91/0.99                [status(thm)],
% 2.91/0.99                [c_4331,c_39,c_40,c_41]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4689,plain,
% 2.91/0.99      ( u1_struct_0(sK0) = k1_xboole_0
% 2.91/0.99      | m1_subset_1(k7_relat_1(sK3,X0_54),k1_zfmisc_1(k2_zfmisc_1(X0_54,u1_struct_0(sK0)))) = iProver_top
% 2.91/0.99      | r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top ),
% 2.91/0.99      inference(renaming,[status(thm)],[c_4688]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_3,plain,
% 2.91/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.91/0.99      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.91/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1681,plain,
% 2.91/0.99      ( ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
% 2.91/0.99      | k7_relset_1(X1_54,X2_54,X0_54,X3_54) = k9_relat_1(X0_54,X3_54) ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_3]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_2180,plain,
% 2.91/0.99      ( k7_relset_1(X0_54,X1_54,X2_54,X3_54) = k9_relat_1(X2_54,X3_54)
% 2.91/0.99      | m1_subset_1(X2_54,k1_zfmisc_1(k2_zfmisc_1(X0_54,X1_54))) != iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_1681]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4701,plain,
% 2.91/0.99      ( k7_relset_1(X0_54,u1_struct_0(sK0),k7_relat_1(sK3,X0_54),X1_54) = k9_relat_1(k7_relat_1(sK3,X0_54),X1_54)
% 2.91/0.99      | u1_struct_0(sK0) = k1_xboole_0
% 2.91/0.99      | r1_tarski(X0_54,u1_struct_0(sK1)) != iProver_top ),
% 2.91/0.99      inference(superposition,[status(thm)],[c_4689,c_2180]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4766,plain,
% 2.91/0.99      ( k7_relset_1(u1_struct_0(X0_53),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54) = k9_relat_1(k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54)
% 2.91/0.99      | u1_struct_0(sK0) = k1_xboole_0
% 2.91/0.99      | m1_pre_topc(X0_53,sK1) != iProver_top
% 2.91/0.99      | v2_pre_topc(sK1) != iProver_top
% 2.91/0.99      | l1_pre_topc(sK1) != iProver_top ),
% 2.91/0.99      inference(superposition,[status(thm)],[c_3329,c_4701]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_30,negated_conjecture,
% 2.91/0.99      ( ~ v2_struct_0(sK0) ),
% 2.91/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_28,negated_conjecture,
% 2.91/0.99      ( l1_pre_topc(sK0) ),
% 2.91/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_26,negated_conjecture,
% 2.91/0.99      ( v2_pre_topc(sK1) ),
% 2.91/0.99      inference(cnf_transformation,[],[f59]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_35,plain,
% 2.91/0.99      ( v2_pre_topc(sK1) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_25,negated_conjecture,
% 2.91/0.99      ( l1_pre_topc(sK1) ),
% 2.91/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_36,plain,
% 2.91/0.99      ( l1_pre_topc(sK1) = iProver_top ),
% 2.91/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_11,plain,
% 2.91/0.99      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.91/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_0,plain,
% 2.91/0.99      ( v1_xboole_0(k1_xboole_0) ),
% 2.91/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_12,plain,
% 2.91/0.99      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.91/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_324,plain,
% 2.91/0.99      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | u1_struct_0(X0) != k1_xboole_0 ),
% 2.91/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_12]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_360,plain,
% 2.91/0.99      ( v2_struct_0(X0) | ~ l1_pre_topc(X0) | u1_struct_0(X0) != k1_xboole_0 ),
% 2.91/0.99      inference(resolution,[status(thm)],[c_11,c_324]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1655,plain,
% 2.91/0.99      ( v2_struct_0(X0_53)
% 2.91/0.99      | ~ l1_pre_topc(X0_53)
% 2.91/0.99      | u1_struct_0(X0_53) != k1_xboole_0 ),
% 2.91/0.99      inference(subtyping,[status(esa)],[c_360]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_4937,plain,
% 2.91/0.99      ( v2_struct_0(sK0)
% 2.91/0.99      | ~ l1_pre_topc(sK0)
% 2.91/0.99      | u1_struct_0(sK0) != k1_xboole_0 ),
% 2.91/0.99      inference(instantiation,[status(thm)],[c_1655]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_7908,plain,
% 2.91/0.99      ( k7_relset_1(u1_struct_0(X0_53),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54) = k9_relat_1(k7_relat_1(sK3,u1_struct_0(X0_53)),X0_54)
% 2.91/0.99      | m1_pre_topc(X0_53,sK1) != iProver_top ),
% 2.91/0.99      inference(global_propositional_subsumption,
% 2.91/0.99                [status(thm)],
% 2.91/0.99                [c_4766,c_30,c_28,c_35,c_36,c_4937]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_7916,plain,
% 2.91/0.99      ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(sK2)),X0_54) = k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),X0_54) ),
% 2.91/0.99      inference(superposition,[status(thm)],[c_2197,c_7908]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_13,plain,
% 2.91/0.99      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.91/0.99      | ~ m1_pre_topc(X3,X1)
% 2.91/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.91/0.99      | ~ v2_pre_topc(X2)
% 2.91/0.99      | ~ v2_pre_topc(X1)
% 2.91/0.99      | v2_struct_0(X1)
% 2.91/0.99      | v2_struct_0(X2)
% 2.91/0.99      | ~ l1_pre_topc(X1)
% 2.91/0.99      | ~ l1_pre_topc(X2)
% 2.91/0.99      | ~ v1_funct_1(X0)
% 2.91/0.99      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
% 2.91/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.91/0.99  
% 2.91/0.99  cnf(c_1673,plain,
% 2.91/0.99      ( ~ v1_funct_2(X0_54,u1_struct_0(X0_53),u1_struct_0(X1_53))
% 2.91/0.99      | ~ m1_pre_topc(X2_53,X0_53)
% 2.91/0.99      | ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53))))
% 2.91/0.99      | ~ v2_pre_topc(X1_53)
% 2.91/0.99      | ~ v2_pre_topc(X0_53)
% 2.91/0.99      | v2_struct_0(X0_53)
% 2.91/0.99      | v2_struct_0(X1_53)
% 2.91/1.00      | ~ l1_pre_topc(X0_53)
% 2.91/1.00      | ~ l1_pre_topc(X1_53)
% 2.91/1.00      | ~ v1_funct_1(X0_54)
% 2.91/1.00      | k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_54,u1_struct_0(X2_53)) = k2_tmap_1(X0_53,X1_53,X0_54,X2_53) ),
% 2.91/1.00      inference(subtyping,[status(esa)],[c_13]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2188,plain,
% 2.91/1.00      ( k2_partfun1(u1_struct_0(X0_53),u1_struct_0(X1_53),X0_54,u1_struct_0(X2_53)) = k2_tmap_1(X0_53,X1_53,X0_54,X2_53)
% 2.91/1.00      | v1_funct_2(X0_54,u1_struct_0(X0_53),u1_struct_0(X1_53)) != iProver_top
% 2.91/1.00      | m1_pre_topc(X2_53,X0_53) != iProver_top
% 2.91/1.00      | m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_53),u1_struct_0(X1_53)))) != iProver_top
% 2.91/1.00      | v2_pre_topc(X1_53) != iProver_top
% 2.91/1.00      | v2_pre_topc(X0_53) != iProver_top
% 2.91/1.00      | v2_struct_0(X0_53) = iProver_top
% 2.91/1.00      | v2_struct_0(X1_53) = iProver_top
% 2.91/1.00      | l1_pre_topc(X1_53) != iProver_top
% 2.91/1.00      | l1_pre_topc(X0_53) != iProver_top
% 2.91/1.00      | v1_funct_1(X0_54) != iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_1673]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_4817,plain,
% 2.91/1.00      ( k2_partfun1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,u1_struct_0(X0_53)) = k2_tmap_1(sK1,sK0,sK3,X0_53)
% 2.91/1.00      | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
% 2.91/1.00      | m1_pre_topc(X0_53,sK1) != iProver_top
% 2.91/1.00      | v2_pre_topc(sK0) != iProver_top
% 2.91/1.00      | v2_pre_topc(sK1) != iProver_top
% 2.91/1.00      | v2_struct_0(sK0) = iProver_top
% 2.91/1.00      | v2_struct_0(sK1) = iProver_top
% 2.91/1.00      | l1_pre_topc(sK0) != iProver_top
% 2.91/1.00      | l1_pre_topc(sK1) != iProver_top
% 2.91/1.00      | v1_funct_1(sK3) != iProver_top ),
% 2.91/1.00      inference(superposition,[status(thm)],[c_2194,c_2188]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_4913,plain,
% 2.91/1.00      ( k2_tmap_1(sK1,sK0,sK3,X0_53) = k7_relat_1(sK3,u1_struct_0(X0_53))
% 2.91/1.00      | v1_funct_2(sK3,u1_struct_0(sK1),u1_struct_0(sK0)) != iProver_top
% 2.91/1.00      | m1_pre_topc(X0_53,sK1) != iProver_top
% 2.91/1.00      | v2_pre_topc(sK0) != iProver_top
% 2.91/1.00      | v2_pre_topc(sK1) != iProver_top
% 2.91/1.00      | v2_struct_0(sK0) = iProver_top
% 2.91/1.00      | v2_struct_0(sK1) = iProver_top
% 2.91/1.00      | l1_pre_topc(sK0) != iProver_top
% 2.91/1.00      | l1_pre_topc(sK1) != iProver_top
% 2.91/1.00      | v1_funct_1(sK3) != iProver_top ),
% 2.91/1.00      inference(demodulation,[status(thm)],[c_4817,c_3499]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_31,plain,
% 2.91/1.00      ( v2_struct_0(sK0) != iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_29,negated_conjecture,
% 2.91/1.00      ( v2_pre_topc(sK0) ),
% 2.91/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_32,plain,
% 2.91/1.00      ( v2_pre_topc(sK0) = iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_33,plain,
% 2.91/1.00      ( l1_pre_topc(sK0) = iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_27,negated_conjecture,
% 2.91/1.00      ( ~ v2_struct_0(sK1) ),
% 2.91/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_34,plain,
% 2.91/1.00      ( v2_struct_0(sK1) != iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_5307,plain,
% 2.91/1.00      ( m1_pre_topc(X0_53,sK1) != iProver_top
% 2.91/1.00      | k2_tmap_1(sK1,sK0,sK3,X0_53) = k7_relat_1(sK3,u1_struct_0(X0_53)) ),
% 2.91/1.00      inference(global_propositional_subsumption,
% 2.91/1.00                [status(thm)],
% 2.91/1.00                [c_4913,c_31,c_32,c_33,c_34,c_35,c_36,c_39,c_40]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_5308,plain,
% 2.91/1.00      ( k2_tmap_1(sK1,sK0,sK3,X0_53) = k7_relat_1(sK3,u1_struct_0(X0_53))
% 2.91/1.00      | m1_pre_topc(X0_53,sK1) != iProver_top ),
% 2.91/1.00      inference(renaming,[status(thm)],[c_5307]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_5315,plain,
% 2.91/1.00      ( k2_tmap_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,u1_struct_0(sK2)) ),
% 2.91/1.00      inference(superposition,[status(thm)],[c_2197,c_5308]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_3171,plain,
% 2.91/1.00      ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,X0_54) = k9_relat_1(sK3,X0_54) ),
% 2.91/1.00      inference(superposition,[status(thm)],[c_2194,c_2180]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_17,negated_conjecture,
% 2.91/1.00      ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
% 2.91/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_1669,negated_conjecture,
% 2.91/1.00      ( k7_relset_1(u1_struct_0(sK1),u1_struct_0(sK0),sK3,sK4) != k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) ),
% 2.91/1.00      inference(subtyping,[status(esa)],[c_17]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_3422,plain,
% 2.91/1.00      ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k2_tmap_1(sK1,sK0,sK3,sK2),sK4) != k9_relat_1(sK3,sK4) ),
% 2.91/1.00      inference(demodulation,[status(thm)],[c_3171,c_1669]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_5325,plain,
% 2.91/1.00      ( k7_relset_1(u1_struct_0(sK2),u1_struct_0(sK0),k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
% 2.91/1.00      inference(demodulation,[status(thm)],[c_5315,c_3422]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_7929,plain,
% 2.91/1.00      ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) != k9_relat_1(sK3,sK4) ),
% 2.91/1.00      inference(demodulation,[status(thm)],[c_7916,c_5325]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2,plain,
% 2.91/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 2.91/1.00      inference(cnf_transformation,[],[f40]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_1682,plain,
% 2.91/1.00      ( ~ m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54)))
% 2.91/1.00      | v1_relat_1(X0_54) ),
% 2.91/1.00      inference(subtyping,[status(esa)],[c_2]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2179,plain,
% 2.91/1.00      ( m1_subset_1(X0_54,k1_zfmisc_1(k2_zfmisc_1(X1_54,X2_54))) != iProver_top
% 2.91/1.00      | v1_relat_1(X0_54) = iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_1682]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2820,plain,
% 2.91/1.00      ( v1_relat_1(sK3) = iProver_top ),
% 2.91/1.00      inference(superposition,[status(thm)],[c_2194,c_2179]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_18,negated_conjecture,
% 2.91/1.00      ( r1_tarski(sK4,u1_struct_0(sK2)) ),
% 2.91/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_1668,negated_conjecture,
% 2.91/1.00      ( r1_tarski(sK4,u1_struct_0(sK2)) ),
% 2.91/1.00      inference(subtyping,[status(esa)],[c_18]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2192,plain,
% 2.91/1.00      ( r1_tarski(sK4,u1_struct_0(sK2)) = iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_1668]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_1,plain,
% 2.91/1.00      ( ~ r1_tarski(X0,X1)
% 2.91/1.00      | ~ v1_relat_1(X2)
% 2.91/1.00      | k9_relat_1(k7_relat_1(X2,X1),X0) = k9_relat_1(X2,X0) ),
% 2.91/1.00      inference(cnf_transformation,[],[f39]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_1683,plain,
% 2.91/1.00      ( ~ r1_tarski(X0_54,X1_54)
% 2.91/1.00      | ~ v1_relat_1(X2_54)
% 2.91/1.00      | k9_relat_1(k7_relat_1(X2_54,X1_54),X0_54) = k9_relat_1(X2_54,X0_54) ),
% 2.91/1.00      inference(subtyping,[status(esa)],[c_1]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2178,plain,
% 2.91/1.00      ( k9_relat_1(k7_relat_1(X0_54,X1_54),X2_54) = k9_relat_1(X0_54,X2_54)
% 2.91/1.00      | r1_tarski(X2_54,X1_54) != iProver_top
% 2.91/1.00      | v1_relat_1(X0_54) != iProver_top ),
% 2.91/1.00      inference(predicate_to_equality,[status(thm)],[c_1683]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_2651,plain,
% 2.91/1.00      ( k9_relat_1(k7_relat_1(X0_54,u1_struct_0(sK2)),sK4) = k9_relat_1(X0_54,sK4)
% 2.91/1.00      | v1_relat_1(X0_54) != iProver_top ),
% 2.91/1.00      inference(superposition,[status(thm)],[c_2192,c_2178]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_3024,plain,
% 2.91/1.00      ( k9_relat_1(k7_relat_1(sK3,u1_struct_0(sK2)),sK4) = k9_relat_1(sK3,sK4) ),
% 2.91/1.00      inference(superposition,[status(thm)],[c_2820,c_2651]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_7930,plain,
% 2.91/1.00      ( k9_relat_1(sK3,sK4) != k9_relat_1(sK3,sK4) ),
% 2.91/1.00      inference(light_normalisation,[status(thm)],[c_7929,c_3024]) ).
% 2.91/1.00  
% 2.91/1.00  cnf(c_7931,plain,
% 2.91/1.00      ( $false ),
% 2.91/1.00      inference(equality_resolution_simp,[status(thm)],[c_7930]) ).
% 2.91/1.00  
% 2.91/1.00  
% 2.91/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.91/1.00  
% 2.91/1.00  ------                               Statistics
% 2.91/1.00  
% 2.91/1.00  ------ General
% 2.91/1.00  
% 2.91/1.00  abstr_ref_over_cycles:                  0
% 2.91/1.00  abstr_ref_under_cycles:                 0
% 2.91/1.00  gc_basic_clause_elim:                   0
% 2.91/1.00  forced_gc_time:                         0
% 2.91/1.00  parsing_time:                           0.012
% 2.91/1.00  unif_index_cands_time:                  0.
% 2.91/1.00  unif_index_add_time:                    0.
% 2.91/1.00  orderings_time:                         0.
% 2.91/1.00  out_proof_time:                         0.01
% 2.91/1.00  total_time:                             0.277
% 2.91/1.00  num_of_symbols:                         60
% 2.91/1.00  num_of_terms:                           11185
% 2.91/1.00  
% 2.91/1.00  ------ Preprocessing
% 2.91/1.00  
% 2.91/1.00  num_of_splits:                          0
% 2.91/1.00  num_of_split_atoms:                     0
% 2.91/1.00  num_of_reused_defs:                     0
% 2.91/1.00  num_eq_ax_congr_red:                    25
% 2.91/1.00  num_of_sem_filtered_clauses:            1
% 2.91/1.00  num_of_subtypes:                        4
% 2.91/1.00  monotx_restored_types:                  1
% 2.91/1.00  sat_num_of_epr_types:                   0
% 2.91/1.00  sat_num_of_non_cyclic_types:            0
% 2.91/1.00  sat_guarded_non_collapsed_types:        0
% 2.91/1.00  num_pure_diseq_elim:                    0
% 2.91/1.00  simp_replaced_by:                       0
% 2.91/1.00  res_preprocessed:                       149
% 2.91/1.00  prep_upred:                             0
% 2.91/1.00  prep_unflattend:                        46
% 2.91/1.00  smt_new_axioms:                         0
% 2.91/1.00  pred_elim_cands:                        9
% 2.91/1.00  pred_elim:                              2
% 2.91/1.00  pred_elim_cl:                           2
% 2.91/1.00  pred_elim_cycles:                       6
% 2.91/1.00  merged_defs:                            0
% 2.91/1.00  merged_defs_ncl:                        0
% 2.91/1.00  bin_hyper_res:                          0
% 2.91/1.00  prep_cycles:                            4
% 2.91/1.00  pred_elim_time:                         0.023
% 2.91/1.00  splitting_time:                         0.
% 2.91/1.00  sem_filter_time:                        0.
% 2.91/1.00  monotx_time:                            0.001
% 2.91/1.00  subtype_inf_time:                       0.001
% 2.91/1.00  
% 2.91/1.00  ------ Problem properties
% 2.91/1.00  
% 2.91/1.00  clauses:                                29
% 2.91/1.00  conjectures:                            14
% 2.91/1.00  epr:                                    10
% 2.91/1.00  horn:                                   25
% 2.91/1.00  ground:                                 14
% 2.91/1.00  unary:                                  14
% 2.91/1.00  binary:                                 3
% 2.91/1.00  lits:                                   85
% 2.91/1.00  lits_eq:                                9
% 2.91/1.00  fd_pure:                                0
% 2.91/1.00  fd_pseudo:                              0
% 2.91/1.00  fd_cond:                                3
% 2.91/1.00  fd_pseudo_cond:                         0
% 2.91/1.00  ac_symbols:                             0
% 2.91/1.00  
% 2.91/1.00  ------ Propositional Solver
% 2.91/1.00  
% 2.91/1.00  prop_solver_calls:                      28
% 2.91/1.00  prop_fast_solver_calls:                 1598
% 2.91/1.00  smt_solver_calls:                       0
% 2.91/1.00  smt_fast_solver_calls:                  0
% 2.91/1.00  prop_num_of_clauses:                    2845
% 2.91/1.00  prop_preprocess_simplified:             6772
% 2.91/1.00  prop_fo_subsumed:                       49
% 2.91/1.00  prop_solver_time:                       0.
% 2.91/1.00  smt_solver_time:                        0.
% 2.91/1.00  smt_fast_solver_time:                   0.
% 2.91/1.00  prop_fast_solver_time:                  0.
% 2.91/1.00  prop_unsat_core_time:                   0.
% 2.91/1.00  
% 2.91/1.00  ------ QBF
% 2.91/1.00  
% 2.91/1.00  qbf_q_res:                              0
% 2.91/1.00  qbf_num_tautologies:                    0
% 2.91/1.00  qbf_prep_cycles:                        0
% 2.91/1.00  
% 2.91/1.00  ------ BMC1
% 2.91/1.00  
% 2.91/1.00  bmc1_current_bound:                     -1
% 2.91/1.00  bmc1_last_solved_bound:                 -1
% 2.91/1.00  bmc1_unsat_core_size:                   -1
% 2.91/1.00  bmc1_unsat_core_parents_size:           -1
% 2.91/1.00  bmc1_merge_next_fun:                    0
% 2.91/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.91/1.00  
% 2.91/1.00  ------ Instantiation
% 2.91/1.00  
% 2.91/1.00  inst_num_of_clauses:                    661
% 2.91/1.00  inst_num_in_passive:                    94
% 2.91/1.00  inst_num_in_active:                     484
% 2.91/1.00  inst_num_in_unprocessed:                83
% 2.91/1.00  inst_num_of_loops:                      510
% 2.91/1.00  inst_num_of_learning_restarts:          0
% 2.91/1.00  inst_num_moves_active_passive:          22
% 2.91/1.00  inst_lit_activity:                      0
% 2.91/1.00  inst_lit_activity_moves:                0
% 2.91/1.00  inst_num_tautologies:                   0
% 2.91/1.00  inst_num_prop_implied:                  0
% 2.91/1.00  inst_num_existing_simplified:           0
% 2.91/1.00  inst_num_eq_res_simplified:             0
% 2.91/1.00  inst_num_child_elim:                    0
% 2.91/1.00  inst_num_of_dismatching_blockings:      110
% 2.91/1.00  inst_num_of_non_proper_insts:           421
% 2.91/1.00  inst_num_of_duplicates:                 0
% 2.91/1.00  inst_inst_num_from_inst_to_res:         0
% 2.91/1.00  inst_dismatching_checking_time:         0.
% 2.91/1.00  
% 2.91/1.00  ------ Resolution
% 2.91/1.00  
% 2.91/1.00  res_num_of_clauses:                     0
% 2.91/1.00  res_num_in_passive:                     0
% 2.91/1.00  res_num_in_active:                      0
% 2.91/1.00  res_num_of_loops:                       153
% 2.91/1.00  res_forward_subset_subsumed:            46
% 2.91/1.00  res_backward_subset_subsumed:           2
% 2.91/1.00  res_forward_subsumed:                   0
% 2.91/1.00  res_backward_subsumed:                  0
% 2.91/1.00  res_forward_subsumption_resolution:     0
% 2.91/1.00  res_backward_subsumption_resolution:    0
% 2.91/1.00  res_clause_to_clause_subsumption:       496
% 2.91/1.00  res_orphan_elimination:                 0
% 2.91/1.00  res_tautology_del:                      31
% 2.91/1.00  res_num_eq_res_simplified:              0
% 2.91/1.00  res_num_sel_changes:                    0
% 2.91/1.00  res_moves_from_active_to_pass:          0
% 2.91/1.00  
% 2.91/1.00  ------ Superposition
% 2.91/1.00  
% 2.91/1.00  sup_time_total:                         0.
% 2.91/1.00  sup_time_generating:                    0.
% 2.91/1.00  sup_time_sim_full:                      0.
% 2.91/1.00  sup_time_sim_immed:                     0.
% 2.91/1.00  
% 2.91/1.00  sup_num_of_clauses:                     152
% 2.91/1.00  sup_num_in_active:                      97
% 2.91/1.00  sup_num_in_passive:                     55
% 2.91/1.00  sup_num_of_loops:                       100
% 2.91/1.00  sup_fw_superposition:                   87
% 2.91/1.00  sup_bw_superposition:                   50
% 2.91/1.00  sup_immediate_simplified:               17
% 2.91/1.00  sup_given_eliminated:                   0
% 2.91/1.00  comparisons_done:                       0
% 2.91/1.00  comparisons_avoided:                    10
% 2.91/1.00  
% 2.91/1.00  ------ Simplifications
% 2.91/1.00  
% 2.91/1.00  
% 2.91/1.00  sim_fw_subset_subsumed:                 0
% 2.91/1.00  sim_bw_subset_subsumed:                 0
% 2.91/1.00  sim_fw_subsumed:                        11
% 2.91/1.00  sim_bw_subsumed:                        0
% 2.91/1.00  sim_fw_subsumption_res:                 14
% 2.91/1.00  sim_bw_subsumption_res:                 0
% 2.91/1.00  sim_tautology_del:                      2
% 2.91/1.00  sim_eq_tautology_del:                   0
% 2.91/1.00  sim_eq_res_simp:                        0
% 2.91/1.00  sim_fw_demodulated:                     1
% 2.91/1.00  sim_bw_demodulated:                     3
% 2.91/1.00  sim_light_normalised:                   8
% 2.91/1.00  sim_joinable_taut:                      0
% 2.91/1.00  sim_joinable_simp:                      0
% 2.91/1.00  sim_ac_normalised:                      0
% 2.91/1.00  sim_smt_subsumption:                    0
% 2.91/1.00  
%------------------------------------------------------------------------------
