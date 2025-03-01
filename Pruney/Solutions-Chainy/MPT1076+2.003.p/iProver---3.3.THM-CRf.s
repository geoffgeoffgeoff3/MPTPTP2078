%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:10:20 EST 2020

% Result     : Theorem 3.78s
% Output     : CNFRefutation 3.78s
% Verified   : 
% Statistics : Number of formulae       :  186 (1040 expanded)
%              Number of clauses        :  112 ( 242 expanded)
%              Number of leaves         :   20 ( 403 expanded)
%              Depth                    :   21
%              Number of atoms          :  721 (8621 expanded)
%              Number of equality atoms :  256 (1316 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2,X3] :
              ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
                & v1_funct_2(X3,X1,X0)
                & v1_funct_1(X3) )
             => ! [X4] :
                  ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                    & v1_funct_1(X4) )
                 => ! [X5] :
                      ( m1_subset_1(X5,X1)
                     => ( v1_partfun1(X4,X0)
                       => k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) = k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2,X3] :
                ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
                  & v1_funct_2(X3,X1,X0)
                  & v1_funct_1(X3) )
               => ! [X4] :
                    ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                      & v1_funct_1(X4) )
                   => ! [X5] :
                        ( m1_subset_1(X5,X1)
                       => ( v1_partfun1(X4,X0)
                         => k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) = k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f38,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
                      & v1_partfun1(X4,X0)
                      & m1_subset_1(X5,X1) )
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                  & v1_funct_1(X4) )
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
              & v1_funct_2(X3,X1,X0)
              & v1_funct_1(X3) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
                      & v1_partfun1(X4,X0)
                      & m1_subset_1(X5,X1) )
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                  & v1_funct_1(X4) )
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
              & v1_funct_2(X3,X1,X0)
              & v1_funct_1(X3) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f38])).

fof(f46,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
          & v1_partfun1(X4,X0)
          & m1_subset_1(X5,X1) )
     => ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),sK5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,sK5))
        & v1_partfun1(X4,X0)
        & m1_subset_1(sK5,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
              & v1_partfun1(X4,X0)
              & m1_subset_1(X5,X1) )
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,sK4),X5) != k7_partfun1(X2,sK4,k3_funct_2(X1,X0,X3,X5))
            & v1_partfun1(sK4,X0)
            & m1_subset_1(X5,X1) )
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ? [X2,X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
                  & v1_partfun1(X4,X0)
                  & m1_subset_1(X5,X1) )
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
              & v1_funct_1(X4) )
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( k3_funct_2(X1,sK2,k8_funct_2(X1,X0,sK2,sK3,X4),X5) != k7_partfun1(sK2,X4,k3_funct_2(X1,X0,sK3,X5))
                & v1_partfun1(X4,X0)
                & m1_subset_1(X5,X1) )
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,sK2)))
            & v1_funct_1(X4) )
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(sK3,X1,X0)
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
                      & v1_partfun1(X4,X0)
                      & m1_subset_1(X5,X1) )
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                  & v1_funct_1(X4) )
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
              & v1_funct_2(X3,X1,X0)
              & v1_funct_1(X3) )
          & ~ v1_xboole_0(X1) )
     => ( ? [X3,X2] :
            ( ? [X4] :
                ( ? [X5] :
                    ( k3_funct_2(sK1,X2,k8_funct_2(sK1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(sK1,X0,X3,X5))
                    & v1_partfun1(X4,X0)
                    & m1_subset_1(X5,sK1) )
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                & v1_funct_1(X4) )
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,X0)))
            & v1_funct_2(X3,sK1,X0)
            & v1_funct_1(X3) )
        & ~ v1_xboole_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2,X3] :
                ( ? [X4] :
                    ( ? [X5] :
                        ( k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))
                        & v1_partfun1(X4,X0)
                        & m1_subset_1(X5,X1) )
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
                    & v1_funct_1(X4) )
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
                & v1_funct_2(X3,X1,X0)
                & v1_funct_1(X3) )
            & ~ v1_xboole_0(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X3,X2] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( k3_funct_2(X1,X2,k8_funct_2(X1,sK0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,sK0,X3,X5))
                      & v1_partfun1(X4,sK0)
                      & m1_subset_1(X5,X1) )
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK0,X2)))
                  & v1_funct_1(X4) )
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
              & v1_funct_2(X3,X1,sK0)
              & v1_funct_1(X3) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k3_funct_2(sK1,sK0,sK3,sK5))
    & v1_partfun1(sK4,sK0)
    & m1_subset_1(sK5,sK1)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2)))
    & v1_funct_1(sK4)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    & v1_funct_2(sK3,sK1,sK0)
    & v1_funct_1(sK3)
    & ~ v1_xboole_0(sK1)
    & ~ v1_xboole_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f39,f46,f45,f44,f43,f42])).

fof(f75,plain,(
    m1_subset_1(sK5,sK1) ),
    inference(cnf_transformation,[],[f47])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f26])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f59,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f76,plain,(
    v1_partfun1(sK4,sK0) ),
    inference(cnf_transformation,[],[f47])).

fof(f74,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) ),
    inference(cnf_transformation,[],[f47])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relset_1(X0,X1,X2) = k1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f72,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f47])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X3,X1,X2)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
                & v1_funct_1(X4) )
             => ! [X5] :
                  ( m1_subset_1(X5,X1)
                 => ( r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                   => ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                      | k1_xboole_0 = X1 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ! [X4] :
              ( ! [X5] :
                  ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  | k1_xboole_0 = X1
                  | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  | ~ m1_subset_1(X5,X1) )
              | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              | ~ v1_funct_1(X4) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X3,X1,X2)
          | ~ v1_funct_1(X3) )
      | v1_xboole_0(X2) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ! [X4] :
              ( ! [X5] :
                  ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
                  | k1_xboole_0 = X1
                  | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
                  | ~ m1_subset_1(X5,X1) )
              | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
              | ~ v1_funct_1(X4) )
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X3,X1,X2)
          | ~ v1_funct_1(X3) )
      | v1_xboole_0(X2) ) ),
    inference(flattening,[],[f36])).

fof(f67,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5)
      | k1_xboole_0 = X1
      | ~ r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))
      | ~ m1_subset_1(X5,X1)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_2(X3,X1,X2)
      | ~ v1_funct_1(X3)
      | v1_xboole_0(X2) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f68,plain,(
    ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f47])).

fof(f70,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f71,plain,(
    v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f47])).

fof(f73,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f47])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X4)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
        & v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2)
        & v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
        & v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2)
        & v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4)) )
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f31,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
        & v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2)
        & v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4)) )
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f30])).

fof(f64,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,X0)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2)
        & ~ v1_xboole_0(X0) )
     => k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f65,plain,(
    ! [X2,X0,X3,X1] :
      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f62,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f63,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f69,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f47])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,X0)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2)
        & ~ v1_xboole_0(X0) )
     => m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f61,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f13,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                & v1_funct_2(X2,X0,X1)
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( m1_subset_1(X3,X0)
                 => k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3)
                  | ~ m1_subset_1(X3,X0) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              | ~ v1_funct_2(X2,X0,X1)
              | ~ v1_funct_1(X2) )
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3)
                  | ~ m1_subset_1(X3,X0) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              | ~ v1_funct_2(X2,X0,X1)
              | ~ v1_funct_1(X2) )
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f66,plain,(
    ! [X2,X0,X3,X1] :
      ( k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3)
      | ~ m1_subset_1(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v1_partfun1(X2,X0)
          & v1_funct_1(X2) )
       => ( v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f22])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X1)
        & ~ v1_xboole_0(X0) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ~ v1_partfun1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_partfun1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f77,plain,(
    k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k3_funct_2(sK1,sK0,sK3,sK5)) ),
    inference(cnf_transformation,[],[f47])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK5,sK1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1211,plain,
    ( m1_subset_1(sK5,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_5,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_12,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_372,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_5,c_12])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_376,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_partfun1(X0,X1)
    | k1_relat_1(X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_372,c_12,c_5,c_3])).

cnf(c_377,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relat_1(X0) = X1 ),
    inference(renaming,[status(thm)],[c_376])).

cnf(c_21,negated_conjecture,
    ( v1_partfun1(sK4,sK0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_491,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relat_1(X0) = X1
    | sK4 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_377,c_21])).

cnf(c_492,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
    | k1_relat_1(sK4) = sK0 ),
    inference(unflattening,[status(thm)],[c_491])).

cnf(c_1200,plain,
    ( k1_relat_1(sK4) = sK0
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_492])).

cnf(c_23,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1429,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2)))
    | k1_relat_1(sK4) = sK0 ),
    inference(instantiation,[status(thm)],[c_492])).

cnf(c_2056,plain,
    ( k1_relat_1(sK4) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1200,c_23,c_1429])).

cnf(c_1210,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1220,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1822,plain,
    ( k1_relset_1(sK0,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1210,c_1220])).

cnf(c_2059,plain,
    ( k1_relset_1(sK0,sK2,sK4) = sK0 ),
    inference(demodulation,[status(thm)],[c_2056,c_1822])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1208,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1219,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1694,plain,
    ( k2_relset_1(sK1,sK0,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1208,c_1219])).

cnf(c_19,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X5)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k2_relset_1(X1,X2,X0),k1_relset_1(X2,X5,X4))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | k1_funct_1(k8_funct_2(X1,X2,X5,X0,X4),X3) = k1_funct_1(X4,k1_funct_1(X0,X3))
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1212,plain,
    ( k1_funct_1(k8_funct_2(X0,X1,X2,X3,X4),X5) = k1_funct_1(X4,k1_funct_1(X3,X5))
    | k1_xboole_0 = X0
    | v1_funct_2(X3,X0,X1) != iProver_top
    | m1_subset_1(X5,X0) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | r1_tarski(k2_relset_1(X0,X1,X3),k1_relset_1(X1,X2,X4)) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X3) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3013,plain,
    ( k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(X1,k1_funct_1(sK3,X2))
    | sK1 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | m1_subset_1(X2,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(sK3),k1_relset_1(sK0,X0,X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_xboole_0(sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1694,c_1212])).

cnf(c_29,negated_conjecture,
    ( ~ v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_30,plain,
    ( v1_xboole_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_32,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_33,plain,
    ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_34,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_4441,plain,
    ( m1_subset_1(X2,sK1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(X1,k1_funct_1(sK3,X2))
    | sK1 = k1_xboole_0
    | r1_tarski(k2_relat_1(sK3),k1_relset_1(sK0,X0,X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3013,c_30,c_32,c_33,c_34])).

cnf(c_4442,plain,
    ( k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(X1,k1_funct_1(sK3,X2))
    | sK1 = k1_xboole_0
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | m1_subset_1(X2,sK1) != iProver_top
    | r1_tarski(k2_relat_1(sK3),k1_relset_1(sK0,X0,X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_4441])).

cnf(c_4453,plain,
    ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(sK4,k1_funct_1(sK3,X0))
    | sK1 = k1_xboole_0
    | m1_subset_1(X0,sK1) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) != iProver_top
    | r1_tarski(k2_relat_1(sK3),sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2059,c_4442])).

cnf(c_24,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_35,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_36,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v5_relat_1(X0,X2) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_313,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X3),X4)
    | ~ v1_relat_1(X3)
    | X0 != X3
    | X2 != X4 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_4])).

cnf(c_314,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_313])).

cnf(c_318,plain,
    ( r1_tarski(k2_relat_1(X0),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_314,c_3])).

cnf(c_319,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2) ),
    inference(renaming,[status(thm)],[c_318])).

cnf(c_1459,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | r1_tarski(k2_relat_1(sK3),sK0) ),
    inference(instantiation,[status(thm)],[c_319])).

cnf(c_1460,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(sK3),sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1459])).

cnf(c_4501,plain,
    ( m1_subset_1(X0,sK1) != iProver_top
    | sK1 = k1_xboole_0
    | k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(sK4,k1_funct_1(sK3,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4453,c_34,c_35,c_36,c_1460])).

cnf(c_4502,plain,
    ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(sK4,k1_funct_1(sK3,X0))
    | sK1 = k1_xboole_0
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(renaming,[status(thm)],[c_4501])).

cnf(c_4511,plain,
    ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) = k1_funct_1(sK4,k1_funct_1(sK3,sK5))
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1211,c_4502])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k8_funct_2(X1,X2,X4,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1217,plain,
    ( v1_funct_2(X0,X1,X2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4))) != iProver_top
    | m1_subset_1(k8_funct_2(X1,X2,X4,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_17,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X1)
    | k3_funct_2(X1,X2,X0,X3) = k1_funct_1(X0,X3) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1214,plain,
    ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X3,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2920,plain,
    ( k3_funct_2(X0,X1,k8_funct_2(X0,X2,X1,X3,X4),X5) = k1_funct_1(k8_funct_2(X0,X2,X1,X3,X4),X5)
    | v1_funct_2(X3,X0,X2) != iProver_top
    | v1_funct_2(k8_funct_2(X0,X2,X1,X3,X4),X0,X1) != iProver_top
    | m1_subset_1(X5,X0) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top
    | v1_funct_1(X3) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(k8_funct_2(X0,X2,X1,X3,X4)) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1217,c_1214])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0)
    | v1_funct_1(k8_funct_2(X1,X2,X4,X0,X3)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1215,plain,
    ( v1_funct_2(X0,X1,X2) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X3) != iProver_top
    | v1_funct_1(k8_funct_2(X1,X2,X4,X0,X3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_funct_2(k8_funct_2(X1,X2,X3,X0,X4),X1,X3)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1216,plain,
    ( v1_funct_2(X0,X1,X2) != iProver_top
    | v1_funct_2(k8_funct_2(X1,X2,X3,X0,X4),X1,X3) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_9032,plain,
    ( k3_funct_2(X0,X1,k8_funct_2(X0,X2,X1,X3,X4),X5) = k1_funct_1(k8_funct_2(X0,X2,X1,X3,X4),X5)
    | v1_funct_2(X3,X0,X2) != iProver_top
    | m1_subset_1(X5,X0) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X3) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2920,c_1215,c_1216])).

cnf(c_9039,plain,
    ( k3_funct_2(sK1,X0,k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2)
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | m1_subset_1(X2,sK1) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_xboole_0(sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1208,c_9032])).

cnf(c_28,negated_conjecture,
    ( ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_31,plain,
    ( v1_xboole_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_9206,plain,
    ( k3_funct_2(sK1,X0,k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2)
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | m1_subset_1(X2,sK1) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_9039,c_31,c_32,c_33])).

cnf(c_9218,plain,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0)
    | m1_subset_1(X0,sK1) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1210,c_9206])).

cnf(c_9382,plain,
    ( m1_subset_1(X0,sK1) != iProver_top
    | k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_9218,c_35])).

cnf(c_9383,plain,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(renaming,[status(thm)],[c_9382])).

cnf(c_9391,plain,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) ),
    inference(superposition,[status(thm)],[c_1211,c_9383])).

cnf(c_2361,plain,
    ( k3_funct_2(sK1,sK0,sK3,X0) = k1_funct_1(sK3,X0)
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(X0,sK1) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_xboole_0(sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1208,c_1214])).

cnf(c_2574,plain,
    ( k3_funct_2(sK1,sK0,sK3,X0) = k1_funct_1(sK3,X0)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2361,c_31,c_32,c_33])).

cnf(c_2583,plain,
    ( k3_funct_2(sK1,sK0,sK3,sK5) = k1_funct_1(sK3,sK5) ),
    inference(superposition,[status(thm)],[c_1211,c_2574])).

cnf(c_13,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k3_funct_2(X1,X2,X0,X3),X2)
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1218,plain,
    ( v1_funct_2(X0,X1,X2) != iProver_top
    | m1_subset_1(X3,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k3_funct_2(X1,X2,X0,X3),X2) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2609,plain,
    ( v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(k1_funct_1(sK3,sK5),sK0) = iProver_top
    | m1_subset_1(sK5,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_xboole_0(sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_2583,c_1218])).

cnf(c_37,plain,
    ( m1_subset_1(sK5,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3292,plain,
    ( m1_subset_1(k1_funct_1(sK3,sK5),sK0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2609,c_31,c_32,c_33,c_34,c_37])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | k3_funct_2(X1,X2,X0,X3) = k7_partfun1(X2,X0,X3) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1213,plain,
    ( k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3)
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X3,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_xboole_0(X1) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2475,plain,
    ( k3_funct_2(sK0,sK2,sK4,X0) = k7_partfun1(sK2,sK4,X0)
    | v1_funct_2(sK4,sK0,sK2) != iProver_top
    | m1_subset_1(X0,sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_xboole_0(sK0) = iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1210,c_1213])).

cnf(c_8,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_517,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | sK4 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_21])).

cnf(c_518,plain,
    ( v1_funct_2(sK4,sK0,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
    | ~ v1_funct_1(sK4) ),
    inference(unflattening,[status(thm)],[c_517])).

cnf(c_522,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
    | v1_funct_2(sK4,sK0,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_518,c_24])).

cnf(c_523,plain,
    ( v1_funct_2(sK4,sK0,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) ),
    inference(renaming,[status(thm)],[c_522])).

cnf(c_1435,plain,
    ( v1_funct_2(sK4,sK0,sK2)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) ),
    inference(instantiation,[status(thm)],[c_523])).

cnf(c_1436,plain,
    ( v1_funct_2(sK4,sK0,sK2) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1435])).

cnf(c_10,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_503,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X1)
    | sK4 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_21])).

cnf(c_504,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(sK0) ),
    inference(unflattening,[status(thm)],[c_503])).

cnf(c_506,plain,
    ( ~ v1_xboole_0(X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_504,c_29])).

cnf(c_507,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
    | ~ v1_xboole_0(X0) ),
    inference(renaming,[status(thm)],[c_506])).

cnf(c_1199,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_507])).

cnf(c_2063,plain,
    ( v1_xboole_0(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1210,c_1199])).

cnf(c_2643,plain,
    ( m1_subset_1(X0,sK0) != iProver_top
    | k3_funct_2(sK0,sK2,sK4,X0) = k7_partfun1(sK2,sK4,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2475,c_30,c_35,c_36,c_1436,c_2063])).

cnf(c_2644,plain,
    ( k3_funct_2(sK0,sK2,sK4,X0) = k7_partfun1(sK2,sK4,X0)
    | m1_subset_1(X0,sK0) != iProver_top ),
    inference(renaming,[status(thm)],[c_2643])).

cnf(c_3297,plain,
    ( k3_funct_2(sK0,sK2,sK4,k1_funct_1(sK3,sK5)) = k7_partfun1(sK2,sK4,k1_funct_1(sK3,sK5)) ),
    inference(superposition,[status(thm)],[c_3292,c_2644])).

cnf(c_2360,plain,
    ( k3_funct_2(sK0,sK2,sK4,X0) = k1_funct_1(sK4,X0)
    | v1_funct_2(sK4,sK0,sK2) != iProver_top
    | m1_subset_1(X0,sK0) != iProver_top
    | v1_funct_1(sK4) != iProver_top
    | v1_xboole_0(sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1210,c_1214])).

cnf(c_2561,plain,
    ( k3_funct_2(sK0,sK2,sK4,X0) = k1_funct_1(sK4,X0)
    | m1_subset_1(X0,sK0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2360,c_30,c_35,c_36,c_1436])).

cnf(c_3298,plain,
    ( k3_funct_2(sK0,sK2,sK4,k1_funct_1(sK3,sK5)) = k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
    inference(superposition,[status(thm)],[c_3292,c_2561])).

cnf(c_3301,plain,
    ( k7_partfun1(sK2,sK4,k1_funct_1(sK3,sK5)) = k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
    inference(light_normalisation,[status(thm)],[c_3297,c_3298])).

cnf(c_20,negated_conjecture,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k3_funct_2(sK1,sK0,sK3,sK5)) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_2608,plain,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k1_funct_1(sK3,sK5)) ),
    inference(demodulation,[status(thm)],[c_2583,c_20])).

cnf(c_4475,plain,
    ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
    inference(demodulation,[status(thm)],[c_3301,c_2608])).

cnf(c_9410,plain,
    ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
    inference(demodulation,[status(thm)],[c_9391,c_4475])).

cnf(c_9428,plain,
    ( sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4511,c_9410])).

cnf(c_1205,plain,
    ( v1_xboole_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_9477,plain,
    ( v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_9428,c_1205])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_92,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_9477,c_92])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.12  % Command    : iproveropt_run.sh %d %s
% 0.11/0.31  % Computer   : n018.cluster.edu
% 0.11/0.31  % Model      : x86_64 x86_64
% 0.11/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.31  % Memory     : 8042.1875MB
% 0.11/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.31  % CPULimit   : 60
% 0.11/0.31  % WCLimit    : 600
% 0.11/0.31  % DateTime   : Tue Dec  1 12:47:42 EST 2020
% 0.16/0.31  % CPUTime    : 
% 0.16/0.31  % Running in FOF mode
% 3.78/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.78/0.98  
% 3.78/0.98  ------  iProver source info
% 3.78/0.98  
% 3.78/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.78/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.78/0.98  git: non_committed_changes: false
% 3.78/0.98  git: last_make_outside_of_git: false
% 3.78/0.98  
% 3.78/0.98  ------ 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options
% 3.78/0.98  
% 3.78/0.98  --out_options                           all
% 3.78/0.98  --tptp_safe_out                         true
% 3.78/0.98  --problem_path                          ""
% 3.78/0.98  --include_path                          ""
% 3.78/0.98  --clausifier                            res/vclausify_rel
% 3.78/0.98  --clausifier_options                    --mode clausify
% 3.78/0.98  --stdin                                 false
% 3.78/0.98  --stats_out                             all
% 3.78/0.98  
% 3.78/0.98  ------ General Options
% 3.78/0.98  
% 3.78/0.98  --fof                                   false
% 3.78/0.98  --time_out_real                         305.
% 3.78/0.98  --time_out_virtual                      -1.
% 3.78/0.98  --symbol_type_check                     false
% 3.78/0.98  --clausify_out                          false
% 3.78/0.98  --sig_cnt_out                           false
% 3.78/0.98  --trig_cnt_out                          false
% 3.78/0.98  --trig_cnt_out_tolerance                1.
% 3.78/0.98  --trig_cnt_out_sk_spl                   false
% 3.78/0.98  --abstr_cl_out                          false
% 3.78/0.98  
% 3.78/0.98  ------ Global Options
% 3.78/0.98  
% 3.78/0.98  --schedule                              default
% 3.78/0.98  --add_important_lit                     false
% 3.78/0.98  --prop_solver_per_cl                    1000
% 3.78/0.98  --min_unsat_core                        false
% 3.78/0.98  --soft_assumptions                      false
% 3.78/0.98  --soft_lemma_size                       3
% 3.78/0.98  --prop_impl_unit_size                   0
% 3.78/0.98  --prop_impl_unit                        []
% 3.78/0.98  --share_sel_clauses                     true
% 3.78/0.98  --reset_solvers                         false
% 3.78/0.98  --bc_imp_inh                            [conj_cone]
% 3.78/0.98  --conj_cone_tolerance                   3.
% 3.78/0.98  --extra_neg_conj                        none
% 3.78/0.98  --large_theory_mode                     true
% 3.78/0.98  --prolific_symb_bound                   200
% 3.78/0.98  --lt_threshold                          2000
% 3.78/0.98  --clause_weak_htbl                      true
% 3.78/0.98  --gc_record_bc_elim                     false
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing Options
% 3.78/0.98  
% 3.78/0.98  --preprocessing_flag                    true
% 3.78/0.98  --time_out_prep_mult                    0.1
% 3.78/0.98  --splitting_mode                        input
% 3.78/0.98  --splitting_grd                         true
% 3.78/0.98  --splitting_cvd                         false
% 3.78/0.98  --splitting_cvd_svl                     false
% 3.78/0.98  --splitting_nvd                         32
% 3.78/0.98  --sub_typing                            true
% 3.78/0.98  --prep_gs_sim                           true
% 3.78/0.98  --prep_unflatten                        true
% 3.78/0.98  --prep_res_sim                          true
% 3.78/0.98  --prep_upred                            true
% 3.78/0.98  --prep_sem_filter                       exhaustive
% 3.78/0.98  --prep_sem_filter_out                   false
% 3.78/0.98  --pred_elim                             true
% 3.78/0.98  --res_sim_input                         true
% 3.78/0.98  --eq_ax_congr_red                       true
% 3.78/0.98  --pure_diseq_elim                       true
% 3.78/0.98  --brand_transform                       false
% 3.78/0.98  --non_eq_to_eq                          false
% 3.78/0.98  --prep_def_merge                        true
% 3.78/0.98  --prep_def_merge_prop_impl              false
% 3.78/0.98  --prep_def_merge_mbd                    true
% 3.78/0.98  --prep_def_merge_tr_red                 false
% 3.78/0.98  --prep_def_merge_tr_cl                  false
% 3.78/0.98  --smt_preprocessing                     true
% 3.78/0.98  --smt_ac_axioms                         fast
% 3.78/0.98  --preprocessed_out                      false
% 3.78/0.98  --preprocessed_stats                    false
% 3.78/0.98  
% 3.78/0.98  ------ Abstraction refinement Options
% 3.78/0.98  
% 3.78/0.98  --abstr_ref                             []
% 3.78/0.98  --abstr_ref_prep                        false
% 3.78/0.98  --abstr_ref_until_sat                   false
% 3.78/0.98  --abstr_ref_sig_restrict                funpre
% 3.78/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.78/0.98  --abstr_ref_under                       []
% 3.78/0.98  
% 3.78/0.98  ------ SAT Options
% 3.78/0.98  
% 3.78/0.98  --sat_mode                              false
% 3.78/0.98  --sat_fm_restart_options                ""
% 3.78/0.98  --sat_gr_def                            false
% 3.78/0.98  --sat_epr_types                         true
% 3.78/0.98  --sat_non_cyclic_types                  false
% 3.78/0.98  --sat_finite_models                     false
% 3.78/0.98  --sat_fm_lemmas                         false
% 3.78/0.98  --sat_fm_prep                           false
% 3.78/0.98  --sat_fm_uc_incr                        true
% 3.78/0.98  --sat_out_model                         small
% 3.78/0.98  --sat_out_clauses                       false
% 3.78/0.98  
% 3.78/0.98  ------ QBF Options
% 3.78/0.98  
% 3.78/0.98  --qbf_mode                              false
% 3.78/0.98  --qbf_elim_univ                         false
% 3.78/0.98  --qbf_dom_inst                          none
% 3.78/0.98  --qbf_dom_pre_inst                      false
% 3.78/0.98  --qbf_sk_in                             false
% 3.78/0.98  --qbf_pred_elim                         true
% 3.78/0.98  --qbf_split                             512
% 3.78/0.98  
% 3.78/0.98  ------ BMC1 Options
% 3.78/0.98  
% 3.78/0.98  --bmc1_incremental                      false
% 3.78/0.98  --bmc1_axioms                           reachable_all
% 3.78/0.98  --bmc1_min_bound                        0
% 3.78/0.98  --bmc1_max_bound                        -1
% 3.78/0.98  --bmc1_max_bound_default                -1
% 3.78/0.98  --bmc1_symbol_reachability              true
% 3.78/0.98  --bmc1_property_lemmas                  false
% 3.78/0.98  --bmc1_k_induction                      false
% 3.78/0.98  --bmc1_non_equiv_states                 false
% 3.78/0.98  --bmc1_deadlock                         false
% 3.78/0.98  --bmc1_ucm                              false
% 3.78/0.98  --bmc1_add_unsat_core                   none
% 3.78/0.98  --bmc1_unsat_core_children              false
% 3.78/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.78/0.98  --bmc1_out_stat                         full
% 3.78/0.98  --bmc1_ground_init                      false
% 3.78/0.98  --bmc1_pre_inst_next_state              false
% 3.78/0.98  --bmc1_pre_inst_state                   false
% 3.78/0.98  --bmc1_pre_inst_reach_state             false
% 3.78/0.98  --bmc1_out_unsat_core                   false
% 3.78/0.98  --bmc1_aig_witness_out                  false
% 3.78/0.98  --bmc1_verbose                          false
% 3.78/0.98  --bmc1_dump_clauses_tptp                false
% 3.78/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.78/0.98  --bmc1_dump_file                        -
% 3.78/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.78/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.78/0.98  --bmc1_ucm_extend_mode                  1
% 3.78/0.98  --bmc1_ucm_init_mode                    2
% 3.78/0.98  --bmc1_ucm_cone_mode                    none
% 3.78/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.78/0.98  --bmc1_ucm_relax_model                  4
% 3.78/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.78/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.78/0.98  --bmc1_ucm_layered_model                none
% 3.78/0.98  --bmc1_ucm_max_lemma_size               10
% 3.78/0.98  
% 3.78/0.98  ------ AIG Options
% 3.78/0.98  
% 3.78/0.98  --aig_mode                              false
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation Options
% 3.78/0.98  
% 3.78/0.98  --instantiation_flag                    true
% 3.78/0.98  --inst_sos_flag                         false
% 3.78/0.98  --inst_sos_phase                        true
% 3.78/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel_side                     num_symb
% 3.78/0.98  --inst_solver_per_active                1400
% 3.78/0.98  --inst_solver_calls_frac                1.
% 3.78/0.98  --inst_passive_queue_type               priority_queues
% 3.78/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.78/0.98  --inst_passive_queues_freq              [25;2]
% 3.78/0.98  --inst_dismatching                      true
% 3.78/0.98  --inst_eager_unprocessed_to_passive     true
% 3.78/0.98  --inst_prop_sim_given                   true
% 3.78/0.98  --inst_prop_sim_new                     false
% 3.78/0.98  --inst_subs_new                         false
% 3.78/0.98  --inst_eq_res_simp                      false
% 3.78/0.98  --inst_subs_given                       false
% 3.78/0.98  --inst_orphan_elimination               true
% 3.78/0.98  --inst_learning_loop_flag               true
% 3.78/0.98  --inst_learning_start                   3000
% 3.78/0.98  --inst_learning_factor                  2
% 3.78/0.98  --inst_start_prop_sim_after_learn       3
% 3.78/0.98  --inst_sel_renew                        solver
% 3.78/0.98  --inst_lit_activity_flag                true
% 3.78/0.98  --inst_restr_to_given                   false
% 3.78/0.98  --inst_activity_threshold               500
% 3.78/0.98  --inst_out_proof                        true
% 3.78/0.98  
% 3.78/0.98  ------ Resolution Options
% 3.78/0.98  
% 3.78/0.98  --resolution_flag                       true
% 3.78/0.98  --res_lit_sel                           adaptive
% 3.78/0.98  --res_lit_sel_side                      none
% 3.78/0.98  --res_ordering                          kbo
% 3.78/0.98  --res_to_prop_solver                    active
% 3.78/0.98  --res_prop_simpl_new                    false
% 3.78/0.98  --res_prop_simpl_given                  true
% 3.78/0.98  --res_passive_queue_type                priority_queues
% 3.78/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.78/0.98  --res_passive_queues_freq               [15;5]
% 3.78/0.98  --res_forward_subs                      full
% 3.78/0.98  --res_backward_subs                     full
% 3.78/0.98  --res_forward_subs_resolution           true
% 3.78/0.98  --res_backward_subs_resolution          true
% 3.78/0.98  --res_orphan_elimination                true
% 3.78/0.98  --res_time_limit                        2.
% 3.78/0.98  --res_out_proof                         true
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Options
% 3.78/0.98  
% 3.78/0.98  --superposition_flag                    true
% 3.78/0.98  --sup_passive_queue_type                priority_queues
% 3.78/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.78/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.78/0.98  --demod_completeness_check              fast
% 3.78/0.98  --demod_use_ground                      true
% 3.78/0.98  --sup_to_prop_solver                    passive
% 3.78/0.98  --sup_prop_simpl_new                    true
% 3.78/0.98  --sup_prop_simpl_given                  true
% 3.78/0.98  --sup_fun_splitting                     false
% 3.78/0.98  --sup_smt_interval                      50000
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Simplification Setup
% 3.78/0.98  
% 3.78/0.98  --sup_indices_passive                   []
% 3.78/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.78/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_full_bw                           [BwDemod]
% 3.78/0.98  --sup_immed_triv                        [TrivRules]
% 3.78/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.78/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_immed_bw_main                     []
% 3.78/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.78/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  
% 3.78/0.98  ------ Combination Options
% 3.78/0.98  
% 3.78/0.98  --comb_res_mult                         3
% 3.78/0.98  --comb_sup_mult                         2
% 3.78/0.98  --comb_inst_mult                        10
% 3.78/0.98  
% 3.78/0.98  ------ Debug Options
% 3.78/0.98  
% 3.78/0.98  --dbg_backtrace                         false
% 3.78/0.98  --dbg_dump_prop_clauses                 false
% 3.78/0.98  --dbg_dump_prop_clauses_file            -
% 3.78/0.98  --dbg_out_stat                          false
% 3.78/0.98  ------ Parsing...
% 3.78/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.78/0.98  ------ Proving...
% 3.78/0.98  ------ Problem Properties 
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  clauses                                 25
% 3.78/0.98  conjectures                             9
% 3.78/0.98  EPR                                     7
% 3.78/0.98  Horn                                    21
% 3.78/0.98  unary                                   10
% 3.78/0.98  binary                                  6
% 3.78/0.98  lits                                    77
% 3.78/0.98  lits eq                                 8
% 3.78/0.98  fd_pure                                 0
% 3.78/0.98  fd_pseudo                               0
% 3.78/0.98  fd_cond                                 1
% 3.78/0.98  fd_pseudo_cond                          0
% 3.78/0.98  AC symbols                              0
% 3.78/0.98  
% 3.78/0.98  ------ Schedule dynamic 5 is on 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  ------ 
% 3.78/0.98  Current options:
% 3.78/0.98  ------ 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options
% 3.78/0.98  
% 3.78/0.98  --out_options                           all
% 3.78/0.98  --tptp_safe_out                         true
% 3.78/0.98  --problem_path                          ""
% 3.78/0.98  --include_path                          ""
% 3.78/0.98  --clausifier                            res/vclausify_rel
% 3.78/0.98  --clausifier_options                    --mode clausify
% 3.78/0.98  --stdin                                 false
% 3.78/0.98  --stats_out                             all
% 3.78/0.98  
% 3.78/0.98  ------ General Options
% 3.78/0.98  
% 3.78/0.98  --fof                                   false
% 3.78/0.98  --time_out_real                         305.
% 3.78/0.98  --time_out_virtual                      -1.
% 3.78/0.98  --symbol_type_check                     false
% 3.78/0.98  --clausify_out                          false
% 3.78/0.98  --sig_cnt_out                           false
% 3.78/0.98  --trig_cnt_out                          false
% 3.78/0.98  --trig_cnt_out_tolerance                1.
% 3.78/0.98  --trig_cnt_out_sk_spl                   false
% 3.78/0.98  --abstr_cl_out                          false
% 3.78/0.98  
% 3.78/0.98  ------ Global Options
% 3.78/0.98  
% 3.78/0.98  --schedule                              default
% 3.78/0.98  --add_important_lit                     false
% 3.78/0.98  --prop_solver_per_cl                    1000
% 3.78/0.98  --min_unsat_core                        false
% 3.78/0.98  --soft_assumptions                      false
% 3.78/0.98  --soft_lemma_size                       3
% 3.78/0.98  --prop_impl_unit_size                   0
% 3.78/0.98  --prop_impl_unit                        []
% 3.78/0.98  --share_sel_clauses                     true
% 3.78/0.98  --reset_solvers                         false
% 3.78/0.98  --bc_imp_inh                            [conj_cone]
% 3.78/0.98  --conj_cone_tolerance                   3.
% 3.78/0.98  --extra_neg_conj                        none
% 3.78/0.98  --large_theory_mode                     true
% 3.78/0.98  --prolific_symb_bound                   200
% 3.78/0.98  --lt_threshold                          2000
% 3.78/0.98  --clause_weak_htbl                      true
% 3.78/0.98  --gc_record_bc_elim                     false
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing Options
% 3.78/0.98  
% 3.78/0.98  --preprocessing_flag                    true
% 3.78/0.98  --time_out_prep_mult                    0.1
% 3.78/0.98  --splitting_mode                        input
% 3.78/0.98  --splitting_grd                         true
% 3.78/0.98  --splitting_cvd                         false
% 3.78/0.98  --splitting_cvd_svl                     false
% 3.78/0.98  --splitting_nvd                         32
% 3.78/0.98  --sub_typing                            true
% 3.78/0.98  --prep_gs_sim                           true
% 3.78/0.98  --prep_unflatten                        true
% 3.78/0.98  --prep_res_sim                          true
% 3.78/0.98  --prep_upred                            true
% 3.78/0.98  --prep_sem_filter                       exhaustive
% 3.78/0.98  --prep_sem_filter_out                   false
% 3.78/0.98  --pred_elim                             true
% 3.78/0.98  --res_sim_input                         true
% 3.78/0.98  --eq_ax_congr_red                       true
% 3.78/0.98  --pure_diseq_elim                       true
% 3.78/0.98  --brand_transform                       false
% 3.78/0.98  --non_eq_to_eq                          false
% 3.78/0.98  --prep_def_merge                        true
% 3.78/0.98  --prep_def_merge_prop_impl              false
% 3.78/0.98  --prep_def_merge_mbd                    true
% 3.78/0.98  --prep_def_merge_tr_red                 false
% 3.78/0.98  --prep_def_merge_tr_cl                  false
% 3.78/0.98  --smt_preprocessing                     true
% 3.78/0.98  --smt_ac_axioms                         fast
% 3.78/0.98  --preprocessed_out                      false
% 3.78/0.98  --preprocessed_stats                    false
% 3.78/0.98  
% 3.78/0.98  ------ Abstraction refinement Options
% 3.78/0.98  
% 3.78/0.98  --abstr_ref                             []
% 3.78/0.98  --abstr_ref_prep                        false
% 3.78/0.98  --abstr_ref_until_sat                   false
% 3.78/0.98  --abstr_ref_sig_restrict                funpre
% 3.78/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.78/0.98  --abstr_ref_under                       []
% 3.78/0.98  
% 3.78/0.98  ------ SAT Options
% 3.78/0.98  
% 3.78/0.98  --sat_mode                              false
% 3.78/0.98  --sat_fm_restart_options                ""
% 3.78/0.98  --sat_gr_def                            false
% 3.78/0.98  --sat_epr_types                         true
% 3.78/0.98  --sat_non_cyclic_types                  false
% 3.78/0.98  --sat_finite_models                     false
% 3.78/0.98  --sat_fm_lemmas                         false
% 3.78/0.98  --sat_fm_prep                           false
% 3.78/0.98  --sat_fm_uc_incr                        true
% 3.78/0.98  --sat_out_model                         small
% 3.78/0.98  --sat_out_clauses                       false
% 3.78/0.98  
% 3.78/0.98  ------ QBF Options
% 3.78/0.98  
% 3.78/0.98  --qbf_mode                              false
% 3.78/0.98  --qbf_elim_univ                         false
% 3.78/0.98  --qbf_dom_inst                          none
% 3.78/0.98  --qbf_dom_pre_inst                      false
% 3.78/0.98  --qbf_sk_in                             false
% 3.78/0.98  --qbf_pred_elim                         true
% 3.78/0.98  --qbf_split                             512
% 3.78/0.98  
% 3.78/0.98  ------ BMC1 Options
% 3.78/0.98  
% 3.78/0.98  --bmc1_incremental                      false
% 3.78/0.98  --bmc1_axioms                           reachable_all
% 3.78/0.98  --bmc1_min_bound                        0
% 3.78/0.98  --bmc1_max_bound                        -1
% 3.78/0.98  --bmc1_max_bound_default                -1
% 3.78/0.98  --bmc1_symbol_reachability              true
% 3.78/0.98  --bmc1_property_lemmas                  false
% 3.78/0.98  --bmc1_k_induction                      false
% 3.78/0.98  --bmc1_non_equiv_states                 false
% 3.78/0.98  --bmc1_deadlock                         false
% 3.78/0.98  --bmc1_ucm                              false
% 3.78/0.98  --bmc1_add_unsat_core                   none
% 3.78/0.98  --bmc1_unsat_core_children              false
% 3.78/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.78/0.98  --bmc1_out_stat                         full
% 3.78/0.98  --bmc1_ground_init                      false
% 3.78/0.98  --bmc1_pre_inst_next_state              false
% 3.78/0.98  --bmc1_pre_inst_state                   false
% 3.78/0.98  --bmc1_pre_inst_reach_state             false
% 3.78/0.98  --bmc1_out_unsat_core                   false
% 3.78/0.98  --bmc1_aig_witness_out                  false
% 3.78/0.98  --bmc1_verbose                          false
% 3.78/0.98  --bmc1_dump_clauses_tptp                false
% 3.78/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.78/0.98  --bmc1_dump_file                        -
% 3.78/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.78/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.78/0.98  --bmc1_ucm_extend_mode                  1
% 3.78/0.98  --bmc1_ucm_init_mode                    2
% 3.78/0.98  --bmc1_ucm_cone_mode                    none
% 3.78/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.78/0.98  --bmc1_ucm_relax_model                  4
% 3.78/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.78/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.78/0.98  --bmc1_ucm_layered_model                none
% 3.78/0.98  --bmc1_ucm_max_lemma_size               10
% 3.78/0.98  
% 3.78/0.98  ------ AIG Options
% 3.78/0.98  
% 3.78/0.98  --aig_mode                              false
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation Options
% 3.78/0.98  
% 3.78/0.98  --instantiation_flag                    true
% 3.78/0.98  --inst_sos_flag                         false
% 3.78/0.98  --inst_sos_phase                        true
% 3.78/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel_side                     none
% 3.78/0.98  --inst_solver_per_active                1400
% 3.78/0.98  --inst_solver_calls_frac                1.
% 3.78/0.98  --inst_passive_queue_type               priority_queues
% 3.78/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.78/0.98  --inst_passive_queues_freq              [25;2]
% 3.78/0.98  --inst_dismatching                      true
% 3.78/0.98  --inst_eager_unprocessed_to_passive     true
% 3.78/0.98  --inst_prop_sim_given                   true
% 3.78/0.98  --inst_prop_sim_new                     false
% 3.78/0.98  --inst_subs_new                         false
% 3.78/0.98  --inst_eq_res_simp                      false
% 3.78/0.98  --inst_subs_given                       false
% 3.78/0.98  --inst_orphan_elimination               true
% 3.78/0.98  --inst_learning_loop_flag               true
% 3.78/0.98  --inst_learning_start                   3000
% 3.78/0.98  --inst_learning_factor                  2
% 3.78/0.98  --inst_start_prop_sim_after_learn       3
% 3.78/0.98  --inst_sel_renew                        solver
% 3.78/0.98  --inst_lit_activity_flag                true
% 3.78/0.98  --inst_restr_to_given                   false
% 3.78/0.98  --inst_activity_threshold               500
% 3.78/0.98  --inst_out_proof                        true
% 3.78/0.98  
% 3.78/0.98  ------ Resolution Options
% 3.78/0.98  
% 3.78/0.98  --resolution_flag                       false
% 3.78/0.98  --res_lit_sel                           adaptive
% 3.78/0.98  --res_lit_sel_side                      none
% 3.78/0.98  --res_ordering                          kbo
% 3.78/0.98  --res_to_prop_solver                    active
% 3.78/0.98  --res_prop_simpl_new                    false
% 3.78/0.98  --res_prop_simpl_given                  true
% 3.78/0.98  --res_passive_queue_type                priority_queues
% 3.78/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.78/0.98  --res_passive_queues_freq               [15;5]
% 3.78/0.98  --res_forward_subs                      full
% 3.78/0.98  --res_backward_subs                     full
% 3.78/0.98  --res_forward_subs_resolution           true
% 3.78/0.98  --res_backward_subs_resolution          true
% 3.78/0.98  --res_orphan_elimination                true
% 3.78/0.98  --res_time_limit                        2.
% 3.78/0.98  --res_out_proof                         true
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Options
% 3.78/0.98  
% 3.78/0.98  --superposition_flag                    true
% 3.78/0.98  --sup_passive_queue_type                priority_queues
% 3.78/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.78/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.78/0.98  --demod_completeness_check              fast
% 3.78/0.98  --demod_use_ground                      true
% 3.78/0.98  --sup_to_prop_solver                    passive
% 3.78/0.98  --sup_prop_simpl_new                    true
% 3.78/0.98  --sup_prop_simpl_given                  true
% 3.78/0.98  --sup_fun_splitting                     false
% 3.78/0.98  --sup_smt_interval                      50000
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Simplification Setup
% 3.78/0.98  
% 3.78/0.98  --sup_indices_passive                   []
% 3.78/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.78/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_full_bw                           [BwDemod]
% 3.78/0.98  --sup_immed_triv                        [TrivRules]
% 3.78/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.78/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_immed_bw_main                     []
% 3.78/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.78/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  
% 3.78/0.98  ------ Combination Options
% 3.78/0.98  
% 3.78/0.98  --comb_res_mult                         3
% 3.78/0.98  --comb_sup_mult                         2
% 3.78/0.98  --comb_inst_mult                        10
% 3.78/0.98  
% 3.78/0.98  ------ Debug Options
% 3.78/0.98  
% 3.78/0.98  --dbg_backtrace                         false
% 3.78/0.98  --dbg_dump_prop_clauses                 false
% 3.78/0.98  --dbg_dump_prop_clauses_file            -
% 3.78/0.98  --dbg_out_stat                          false
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  ------ Proving...
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  % SZS status Theorem for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  fof(f15,conjecture,(
% 3.78/0.98    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (v1_partfun1(X4,X0) => k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) = k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))))))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f16,negated_conjecture,(
% 3.78/0.98    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (v1_partfun1(X4,X0) => k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) = k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5))))))))),
% 3.78/0.98    inference(negated_conjecture,[],[f15])).
% 3.78/0.98  
% 3.78/0.98  fof(f38,plain,(
% 3.78/0.98    ? [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (? [X5] : ((k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0)) & m1_subset_1(X5,X1)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 3.78/0.98    inference(ennf_transformation,[],[f16])).
% 3.78/0.98  
% 3.78/0.98  fof(f39,plain,(
% 3.78/0.98    ? [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 3.78/0.98    inference(flattening,[],[f38])).
% 3.78/0.98  
% 3.78/0.98  fof(f46,plain,(
% 3.78/0.98    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) => (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),sK5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,sK5)) & v1_partfun1(X4,X0) & m1_subset_1(sK5,X1))) )),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f45,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) => (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,sK4),X5) != k7_partfun1(X2,sK4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(sK4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(sK4))) )),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f44,plain,(
% 3.78/0.98    ( ! [X0,X1] : (? [X2,X3] : (? [X4] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (? [X4] : (? [X5] : (k3_funct_2(X1,sK2,k8_funct_2(X1,X0,sK2,sK3,X4),X5) != k7_partfun1(sK2,X4,k3_funct_2(X1,X0,sK3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,sK2))) & v1_funct_1(X4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK3,X1,X0) & v1_funct_1(sK3))) )),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f43,plain,(
% 3.78/0.98    ( ! [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & ~v1_xboole_0(X1)) => (? [X3,X2] : (? [X4] : (? [X5] : (k3_funct_2(sK1,X2,k8_funct_2(sK1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(sK1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,sK1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) & v1_funct_2(X3,sK1,X0) & v1_funct_1(X3)) & ~v1_xboole_0(sK1))) )),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f42,plain,(
% 3.78/0.98    ? [X0] : (? [X1] : (? [X2,X3] : (? [X4] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,X0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,X0,X3,X5)) & v1_partfun1(X4,X0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X3,X2] : (? [X4] : (? [X5] : (k3_funct_2(X1,X2,k8_funct_2(X1,sK0,X2,X3,X4),X5) != k7_partfun1(X2,X4,k3_funct_2(X1,sK0,X3,X5)) & v1_partfun1(X4,sK0) & m1_subset_1(X5,X1)) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK0,X2))) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,sK0))) & v1_funct_2(X3,X1,sK0) & v1_funct_1(X3)) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK0))),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f47,plain,(
% 3.78/0.98    ((((k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k3_funct_2(sK1,sK0,sK3,sK5)) & v1_partfun1(sK4,sK0) & m1_subset_1(sK5,sK1)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(sK3,sK1,sK0) & v1_funct_1(sK3)) & ~v1_xboole_0(sK1)) & ~v1_xboole_0(sK0)),
% 3.78/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f39,f46,f45,f44,f43,f42])).
% 3.78/0.98  
% 3.78/0.98  fof(f75,plain,(
% 3.78/0.98    m1_subset_1(sK5,sK1)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f4,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f19,plain,(
% 3.78/0.98    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f4])).
% 3.78/0.98  
% 3.78/0.98  fof(f52,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f19])).
% 3.78/0.98  
% 3.78/0.98  fof(f9,axiom,(
% 3.78/0.98    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f26,plain,(
% 3.78/0.98    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.78/0.98    inference(ennf_transformation,[],[f9])).
% 3.78/0.98  
% 3.78/0.98  fof(f27,plain,(
% 3.78/0.98    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(flattening,[],[f26])).
% 3.78/0.98  
% 3.78/0.98  fof(f41,plain,(
% 3.78/0.98    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(nnf_transformation,[],[f27])).
% 3.78/0.98  
% 3.78/0.98  fof(f59,plain,(
% 3.78/0.98    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f41])).
% 3.78/0.98  
% 3.78/0.98  fof(f3,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f18,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f3])).
% 3.78/0.98  
% 3.78/0.98  fof(f51,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f18])).
% 3.78/0.98  
% 3.78/0.98  fof(f76,plain,(
% 3.78/0.98    v1_partfun1(sK4,sK0)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f74,plain,(
% 3.78/0.98    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2)))),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f5,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relset_1(X0,X1,X2) = k1_relat_1(X2))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f20,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f5])).
% 3.78/0.98  
% 3.78/0.98  fof(f54,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = k1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f20])).
% 3.78/0.98  
% 3.78/0.98  fof(f72,plain,(
% 3.78/0.98    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f6,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f21,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f6])).
% 3.78/0.98  
% 3.78/0.98  fof(f55,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f21])).
% 3.78/0.98  
% 3.78/0.98  fof(f14,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (~v1_xboole_0(X2) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X3,X1,X2) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,X1) => (r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) => (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1))))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f36,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (! [X3] : (! [X4] : (! [X5] : (((k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1) | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4))) | ~m1_subset_1(X5,X1)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3))) | v1_xboole_0(X2))),
% 3.78/0.98    inference(ennf_transformation,[],[f14])).
% 3.78/0.98  
% 3.78/0.98  fof(f37,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (! [X3] : (! [X4] : (! [X5] : (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1 | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) | ~m1_subset_1(X5,X1)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3)) | v1_xboole_0(X2))),
% 3.78/0.98    inference(flattening,[],[f36])).
% 3.78/0.98  
% 3.78/0.98  fof(f67,plain,(
% 3.78/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k1_funct_1(X4,k1_funct_1(X3,X5)) = k1_funct_1(k8_funct_2(X1,X2,X0,X3,X4),X5) | k1_xboole_0 = X1 | ~r1_tarski(k2_relset_1(X1,X2,X3),k1_relset_1(X2,X0,X4)) | ~m1_subset_1(X5,X1) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X3,X1,X2) | ~v1_funct_1(X3) | v1_xboole_0(X2)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f37])).
% 3.78/0.98  
% 3.78/0.98  fof(f68,plain,(
% 3.78/0.98    ~v1_xboole_0(sK0)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f70,plain,(
% 3.78/0.98    v1_funct_1(sK3)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f71,plain,(
% 3.78/0.98    v1_funct_2(sK3,sK1,sK0)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f73,plain,(
% 3.78/0.98    v1_funct_1(sK4)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f2,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f17,plain,(
% 3.78/0.98    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f2])).
% 3.78/0.98  
% 3.78/0.98  fof(f40,plain,(
% 3.78/0.98    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(nnf_transformation,[],[f17])).
% 3.78/0.98  
% 3.78/0.98  fof(f49,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f40])).
% 3.78/0.98  
% 3.78/0.98  fof(f53,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f19])).
% 3.78/0.98  
% 3.78/0.98  fof(f11,axiom,(
% 3.78/0.98    ! [X0,X1,X2,X3,X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_1(X4) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2) & v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f30,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3,X4] : ((m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2) & v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 3.78/0.98    inference(ennf_transformation,[],[f11])).
% 3.78/0.98  
% 3.78/0.98  fof(f31,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3,X4] : ((m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2))) & v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2) & v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 3.78/0.98    inference(flattening,[],[f30])).
% 3.78/0.98  
% 3.78/0.98  fof(f64,plain,(
% 3.78/0.98    ( ! [X4,X2,X0,X3,X1] : (m1_subset_1(k8_funct_2(X0,X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X0,X2))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f31])).
% 3.78/0.98  
% 3.78/0.98  fof(f12,axiom,(
% 3.78/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,X0) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & ~v1_xboole_0(X0)) => k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f32,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | (~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)))),
% 3.78/0.98    inference(ennf_transformation,[],[f12])).
% 3.78/0.98  
% 3.78/0.98  fof(f33,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0))),
% 3.78/0.98    inference(flattening,[],[f32])).
% 3.78/0.98  
% 3.78/0.98  fof(f65,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f33])).
% 3.78/0.98  
% 3.78/0.98  fof(f62,plain,(
% 3.78/0.98    ( ! [X4,X2,X0,X3,X1] : (v1_funct_1(k8_funct_2(X0,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f31])).
% 3.78/0.98  
% 3.78/0.98  fof(f63,plain,(
% 3.78/0.98    ( ! [X4,X2,X0,X3,X1] : (v1_funct_2(k8_funct_2(X0,X1,X2,X3,X4),X0,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f31])).
% 3.78/0.98  
% 3.78/0.98  fof(f69,plain,(
% 3.78/0.98    ~v1_xboole_0(sK1)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f10,axiom,(
% 3.78/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,X0) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2) & ~v1_xboole_0(X0)) => m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f28,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) | (~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)))),
% 3.78/0.98    inference(ennf_transformation,[],[f10])).
% 3.78/0.98  
% 3.78/0.98  fof(f29,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0))),
% 3.78/0.98    inference(flattening,[],[f28])).
% 3.78/0.98  
% 3.78/0.98  fof(f61,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (m1_subset_1(k3_funct_2(X0,X1,X2,X3),X1) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f29])).
% 3.78/0.98  
% 3.78/0.98  fof(f13,axiom,(
% 3.78/0.98    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : (m1_subset_1(X3,X0) => k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3)))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f34,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3) | ~m1_subset_1(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 3.78/0.98    inference(ennf_transformation,[],[f13])).
% 3.78/0.98  
% 3.78/0.98  fof(f35,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3) | ~m1_subset_1(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 3.78/0.98    inference(flattening,[],[f34])).
% 3.78/0.98  
% 3.78/0.98  fof(f66,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3) | ~m1_subset_1(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f35])).
% 3.78/0.98  
% 3.78/0.98  fof(f7,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_partfun1(X2,X0) & v1_funct_1(X2)) => (v1_funct_2(X2,X0,X1) & v1_funct_1(X2))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f22,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) | (~v1_partfun1(X2,X0) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f7])).
% 3.78/0.98  
% 3.78/0.98  fof(f23,plain,(
% 3.78/0.98    ! [X0,X1,X2] : ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) | ~v1_partfun1(X2,X0) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(flattening,[],[f22])).
% 3.78/0.98  
% 3.78/0.98  fof(f57,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | ~v1_partfun1(X2,X0) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f23])).
% 3.78/0.98  
% 3.78/0.98  fof(f8,axiom,(
% 3.78/0.98    ! [X0,X1] : ((v1_xboole_0(X1) & ~v1_xboole_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ~v1_partfun1(X2,X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f24,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (~v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | (~v1_xboole_0(X1) | v1_xboole_0(X0)))),
% 3.78/0.98    inference(ennf_transformation,[],[f8])).
% 3.78/0.98  
% 3.78/0.98  fof(f25,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (~v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | ~v1_xboole_0(X1) | v1_xboole_0(X0))),
% 3.78/0.98    inference(flattening,[],[f24])).
% 3.78/0.98  
% 3.78/0.98  fof(f58,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (~v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  fof(f77,plain,(
% 3.78/0.98    k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k3_funct_2(sK1,sK0,sK3,sK5))),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f1,axiom,(
% 3.78/0.98    v1_xboole_0(k1_xboole_0)),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f48,plain,(
% 3.78/0.98    v1_xboole_0(k1_xboole_0)),
% 3.78/0.98    inference(cnf_transformation,[],[f1])).
% 3.78/0.98  
% 3.78/0.98  cnf(c_22,negated_conjecture,
% 3.78/0.98      ( m1_subset_1(sK5,sK1) ),
% 3.78/0.98      inference(cnf_transformation,[],[f75]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1211,plain,
% 3.78/0.98      ( m1_subset_1(sK5,sK1) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_5,plain,
% 3.78/0.98      ( v4_relat_1(X0,X1)
% 3.78/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 3.78/0.98      inference(cnf_transformation,[],[f52]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12,plain,
% 3.78/0.98      ( ~ v1_partfun1(X0,X1)
% 3.78/0.98      | ~ v4_relat_1(X0,X1)
% 3.78/0.98      | ~ v1_relat_1(X0)
% 3.78/0.98      | k1_relat_1(X0) = X1 ),
% 3.78/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_372,plain,
% 3.78/0.98      ( ~ v1_partfun1(X0,X1)
% 3.78/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | ~ v1_relat_1(X0)
% 3.78/0.98      | k1_relat_1(X0) = X1 ),
% 3.78/0.98      inference(resolution,[status(thm)],[c_5,c_12]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f51]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_376,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | ~ v1_partfun1(X0,X1)
% 3.78/0.98      | k1_relat_1(X0) = X1 ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_372,c_12,c_5,c_3]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_377,plain,
% 3.78/0.98      ( ~ v1_partfun1(X0,X1)
% 3.78/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k1_relat_1(X0) = X1 ),
% 3.78/0.98      inference(renaming,[status(thm)],[c_376]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_21,negated_conjecture,
% 3.78/0.98      ( v1_partfun1(sK4,sK0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f76]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_491,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k1_relat_1(X0) = X1
% 3.78/0.98      | sK4 != X0
% 3.78/0.98      | sK0 != X1 ),
% 3.78/0.98      inference(resolution_lifted,[status(thm)],[c_377,c_21]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_492,plain,
% 3.78/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
% 3.78/0.98      | k1_relat_1(sK4) = sK0 ),
% 3.78/0.98      inference(unflattening,[status(thm)],[c_491]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1200,plain,
% 3.78/0.98      ( k1_relat_1(sK4) = sK0
% 3.78/0.98      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_492]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_23,negated_conjecture,
% 3.78/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) ),
% 3.78/0.98      inference(cnf_transformation,[],[f74]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1429,plain,
% 3.78/0.98      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2)))
% 3.78/0.98      | k1_relat_1(sK4) = sK0 ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_492]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2056,plain,
% 3.78/0.98      ( k1_relat_1(sK4) = sK0 ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_1200,c_23,c_1429]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1210,plain,
% 3.78/0.98      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_6,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f54]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1220,plain,
% 3.78/0.98      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.78/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1822,plain,
% 3.78/0.98      ( k1_relset_1(sK0,sK2,sK4) = k1_relat_1(sK4) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_1210,c_1220]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2059,plain,
% 3.78/0.98      ( k1_relset_1(sK0,sK2,sK4) = sK0 ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_2056,c_1822]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_25,negated_conjecture,
% 3.78/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 3.78/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1208,plain,
% 3.78/0.98      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_7,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f55]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1219,plain,
% 3.78/0.98      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.78/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1694,plain,
% 3.78/0.98      ( k2_relset_1(sK1,sK0,sK3) = k2_relat_1(sK3) ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1208,c_1219]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_19,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X3,X1)
% 3.78/0.99      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X5)))
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ r1_tarski(k2_relset_1(X1,X2,X0),k1_relset_1(X2,X5,X4))
% 3.78/0.99      | ~ v1_funct_1(X4)
% 3.78/0.99      | ~ v1_funct_1(X0)
% 3.78/0.99      | v1_xboole_0(X2)
% 3.78/0.99      | k1_funct_1(k8_funct_2(X1,X2,X5,X0,X4),X3) = k1_funct_1(X4,k1_funct_1(X0,X3))
% 3.78/0.99      | k1_xboole_0 = X1 ),
% 3.78/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1212,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(X0,X1,X2,X3,X4),X5) = k1_funct_1(X4,k1_funct_1(X3,X5))
% 3.78/0.99      | k1_xboole_0 = X0
% 3.78/0.99      | v1_funct_2(X3,X0,X1) != iProver_top
% 3.78/0.99      | m1_subset_1(X5,X0) != iProver_top
% 3.78/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.78/0.99      | r1_tarski(k2_relset_1(X0,X1,X3),k1_relset_1(X1,X2,X4)) != iProver_top
% 3.78/0.99      | v1_funct_1(X4) != iProver_top
% 3.78/0.99      | v1_funct_1(X3) != iProver_top
% 3.78/0.99      | v1_xboole_0(X1) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_3013,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(X1,k1_funct_1(sK3,X2))
% 3.78/0.99      | sK1 = k1_xboole_0
% 3.78/0.99      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.78/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.78/0.99      | m1_subset_1(X2,sK1) != iProver_top
% 3.78/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.78/0.99      | r1_tarski(k2_relat_1(sK3),k1_relset_1(sK0,X0,X1)) != iProver_top
% 3.78/0.99      | v1_funct_1(X1) != iProver_top
% 3.78/0.99      | v1_funct_1(sK3) != iProver_top
% 3.78/0.99      | v1_xboole_0(sK0) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1694,c_1212]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_29,negated_conjecture,
% 3.78/0.99      ( ~ v1_xboole_0(sK0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_30,plain,
% 3.78/0.99      ( v1_xboole_0(sK0) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_27,negated_conjecture,
% 3.78/0.99      ( v1_funct_1(sK3) ),
% 3.78/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_32,plain,
% 3.78/0.99      ( v1_funct_1(sK3) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_26,negated_conjecture,
% 3.78/0.99      ( v1_funct_2(sK3,sK1,sK0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_33,plain,
% 3.78/0.99      ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_34,plain,
% 3.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4441,plain,
% 3.78/0.99      ( m1_subset_1(X2,sK1) != iProver_top
% 3.78/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.78/0.99      | k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(X1,k1_funct_1(sK3,X2))
% 3.78/0.99      | sK1 = k1_xboole_0
% 3.78/0.99      | r1_tarski(k2_relat_1(sK3),k1_relset_1(sK0,X0,X1)) != iProver_top
% 3.78/0.99      | v1_funct_1(X1) != iProver_top ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_3013,c_30,c_32,c_33,c_34]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4442,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(X1,k1_funct_1(sK3,X2))
% 3.78/0.99      | sK1 = k1_xboole_0
% 3.78/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.78/0.99      | m1_subset_1(X2,sK1) != iProver_top
% 3.78/0.99      | r1_tarski(k2_relat_1(sK3),k1_relset_1(sK0,X0,X1)) != iProver_top
% 3.78/0.99      | v1_funct_1(X1) != iProver_top ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_4441]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4453,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(sK4,k1_funct_1(sK3,X0))
% 3.78/0.99      | sK1 = k1_xboole_0
% 3.78/0.99      | m1_subset_1(X0,sK1) != iProver_top
% 3.78/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) != iProver_top
% 3.78/0.99      | r1_tarski(k2_relat_1(sK3),sK0) != iProver_top
% 3.78/0.99      | v1_funct_1(sK4) != iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_2059,c_4442]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_24,negated_conjecture,
% 3.78/0.99      ( v1_funct_1(sK4) ),
% 3.78/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_35,plain,
% 3.78/0.99      ( v1_funct_1(sK4) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_36,plain,
% 3.78/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2,plain,
% 3.78/0.99      ( r1_tarski(k2_relat_1(X0),X1)
% 3.78/0.99      | ~ v5_relat_1(X0,X1)
% 3.78/0.99      | ~ v1_relat_1(X0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f49]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4,plain,
% 3.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | v5_relat_1(X0,X2) ),
% 3.78/0.99      inference(cnf_transformation,[],[f53]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_313,plain,
% 3.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | r1_tarski(k2_relat_1(X3),X4)
% 3.78/0.99      | ~ v1_relat_1(X3)
% 3.78/0.99      | X0 != X3
% 3.78/0.99      | X2 != X4 ),
% 3.78/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_4]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_314,plain,
% 3.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | r1_tarski(k2_relat_1(X0),X2)
% 3.78/0.99      | ~ v1_relat_1(X0) ),
% 3.78/0.99      inference(unflattening,[status(thm)],[c_313]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_318,plain,
% 3.78/0.99      ( r1_tarski(k2_relat_1(X0),X2)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_314,c_3]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_319,plain,
% 3.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | r1_tarski(k2_relat_1(X0),X2) ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_318]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1459,plain,
% 3.78/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.78/0.99      | r1_tarski(k2_relat_1(sK3),sK0) ),
% 3.78/0.99      inference(instantiation,[status(thm)],[c_319]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1460,plain,
% 3.78/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.78/0.99      | r1_tarski(k2_relat_1(sK3),sK0) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_1459]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4501,plain,
% 3.78/0.99      ( m1_subset_1(X0,sK1) != iProver_top
% 3.78/0.99      | sK1 = k1_xboole_0
% 3.78/0.99      | k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(sK4,k1_funct_1(sK3,X0)) ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_4453,c_34,c_35,c_36,c_1460]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4502,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(sK4,k1_funct_1(sK3,X0))
% 3.78/0.99      | sK1 = k1_xboole_0
% 3.78/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_4501]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4511,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) = k1_funct_1(sK4,k1_funct_1(sK3,sK5))
% 3.78/0.99      | sK1 = k1_xboole_0 ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1211,c_4502]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_14,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | m1_subset_1(k8_funct_2(X1,X2,X4,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
% 3.78/0.99      | ~ v1_funct_1(X3)
% 3.78/0.99      | ~ v1_funct_1(X0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1217,plain,
% 3.78/0.99      ( v1_funct_2(X0,X1,X2) != iProver_top
% 3.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4))) != iProver_top
% 3.78/0.99      | m1_subset_1(k8_funct_2(X1,X2,X4,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) = iProver_top
% 3.78/0.99      | v1_funct_1(X0) != iProver_top
% 3.78/0.99      | v1_funct_1(X3) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_17,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X3,X1)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_funct_1(X0)
% 3.78/0.99      | v1_xboole_0(X1)
% 3.78/0.99      | k3_funct_2(X1,X2,X0,X3) = k1_funct_1(X0,X3) ),
% 3.78/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1214,plain,
% 3.78/0.99      ( k3_funct_2(X0,X1,X2,X3) = k1_funct_1(X2,X3)
% 3.78/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,X0) != iProver_top
% 3.78/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.78/0.99      | v1_funct_1(X2) != iProver_top
% 3.78/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2920,plain,
% 3.78/0.99      ( k3_funct_2(X0,X1,k8_funct_2(X0,X2,X1,X3,X4),X5) = k1_funct_1(k8_funct_2(X0,X2,X1,X3,X4),X5)
% 3.78/0.99      | v1_funct_2(X3,X0,X2) != iProver_top
% 3.78/0.99      | v1_funct_2(k8_funct_2(X0,X2,X1,X3,X4),X0,X1) != iProver_top
% 3.78/0.99      | m1_subset_1(X5,X0) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top
% 3.78/0.99      | v1_funct_1(X3) != iProver_top
% 3.78/0.99      | v1_funct_1(X4) != iProver_top
% 3.78/0.99      | v1_funct_1(k8_funct_2(X0,X2,X1,X3,X4)) != iProver_top
% 3.78/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1217,c_1214]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_16,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_funct_1(X3)
% 3.78/0.99      | ~ v1_funct_1(X0)
% 3.78/0.99      | v1_funct_1(k8_funct_2(X1,X2,X4,X0,X3)) ),
% 3.78/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1215,plain,
% 3.78/0.99      ( v1_funct_2(X0,X1,X2) != iProver_top
% 3.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X4))) != iProver_top
% 3.78/0.99      | v1_funct_1(X0) != iProver_top
% 3.78/0.99      | v1_funct_1(X3) != iProver_top
% 3.78/0.99      | v1_funct_1(k8_funct_2(X1,X2,X4,X0,X3)) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_15,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | v1_funct_2(k8_funct_2(X1,X2,X3,X0,X4),X1,X3)
% 3.78/0.99      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_funct_1(X4)
% 3.78/0.99      | ~ v1_funct_1(X0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f63]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1216,plain,
% 3.78/0.99      ( v1_funct_2(X0,X1,X2) != iProver_top
% 3.78/0.99      | v1_funct_2(k8_funct_2(X1,X2,X3,X0,X4),X1,X3) = iProver_top
% 3.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 3.78/0.99      | v1_funct_1(X4) != iProver_top
% 3.78/0.99      | v1_funct_1(X0) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9032,plain,
% 3.78/0.99      ( k3_funct_2(X0,X1,k8_funct_2(X0,X2,X1,X3,X4),X5) = k1_funct_1(k8_funct_2(X0,X2,X1,X3,X4),X5)
% 3.78/0.99      | v1_funct_2(X3,X0,X2) != iProver_top
% 3.78/0.99      | m1_subset_1(X5,X0) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top
% 3.78/0.99      | v1_funct_1(X4) != iProver_top
% 3.78/0.99      | v1_funct_1(X3) != iProver_top
% 3.78/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.78/0.99      inference(forward_subsumption_resolution,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_2920,c_1215,c_1216]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9039,plain,
% 3.78/0.99      ( k3_funct_2(sK1,X0,k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2)
% 3.78/0.99      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.78/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.78/0.99      | m1_subset_1(X2,sK1) != iProver_top
% 3.78/0.99      | v1_funct_1(X1) != iProver_top
% 3.78/0.99      | v1_funct_1(sK3) != iProver_top
% 3.78/0.99      | v1_xboole_0(sK1) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1208,c_9032]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_28,negated_conjecture,
% 3.78/0.99      ( ~ v1_xboole_0(sK1) ),
% 3.78/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_31,plain,
% 3.78/0.99      ( v1_xboole_0(sK1) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9206,plain,
% 3.78/0.99      ( k3_funct_2(sK1,X0,k8_funct_2(sK1,sK0,X0,sK3,X1),X2) = k1_funct_1(k8_funct_2(sK1,sK0,X0,sK3,X1),X2)
% 3.78/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.78/0.99      | m1_subset_1(X2,sK1) != iProver_top
% 3.78/0.99      | v1_funct_1(X1) != iProver_top ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_9039,c_31,c_32,c_33]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9218,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0)
% 3.78/0.99      | m1_subset_1(X0,sK1) != iProver_top
% 3.78/0.99      | v1_funct_1(sK4) != iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1210,c_9206]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9382,plain,
% 3.78/0.99      ( m1_subset_1(X0,sK1) != iProver_top
% 3.78/0.99      | k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_9218,c_35]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9383,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),X0)
% 3.78/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_9382]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9391,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) = k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1211,c_9383]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2361,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK0,sK3,X0) = k1_funct_1(sK3,X0)
% 3.78/0.99      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.78/0.99      | m1_subset_1(X0,sK1) != iProver_top
% 3.78/0.99      | v1_funct_1(sK3) != iProver_top
% 3.78/0.99      | v1_xboole_0(sK1) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1208,c_1214]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2574,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK0,sK3,X0) = k1_funct_1(sK3,X0)
% 3.78/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_2361,c_31,c_32,c_33]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2583,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK0,sK3,sK5) = k1_funct_1(sK3,sK5) ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1211,c_2574]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_13,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X3,X1)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | m1_subset_1(k3_funct_2(X1,X2,X0,X3),X2)
% 3.78/0.99      | ~ v1_funct_1(X0)
% 3.78/0.99      | v1_xboole_0(X1) ),
% 3.78/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1218,plain,
% 3.78/0.99      ( v1_funct_2(X0,X1,X2) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,X1) != iProver_top
% 3.78/0.99      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.99      | m1_subset_1(k3_funct_2(X1,X2,X0,X3),X2) = iProver_top
% 3.78/0.99      | v1_funct_1(X0) != iProver_top
% 3.78/0.99      | v1_xboole_0(X1) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2609,plain,
% 3.78/0.99      ( v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.78/0.99      | m1_subset_1(k1_funct_1(sK3,sK5),sK0) = iProver_top
% 3.78/0.99      | m1_subset_1(sK5,sK1) != iProver_top
% 3.78/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.78/0.99      | v1_funct_1(sK3) != iProver_top
% 3.78/0.99      | v1_xboole_0(sK1) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_2583,c_1218]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_37,plain,
% 3.78/0.99      ( m1_subset_1(sK5,sK1) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_3292,plain,
% 3.78/0.99      ( m1_subset_1(k1_funct_1(sK3,sK5),sK0) = iProver_top ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_2609,c_31,c_32,c_33,c_34,c_37]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_18,plain,
% 3.78/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X3,X1)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_funct_1(X0)
% 3.78/0.99      | v1_xboole_0(X2)
% 3.78/0.99      | v1_xboole_0(X1)
% 3.78/0.99      | k3_funct_2(X1,X2,X0,X3) = k7_partfun1(X2,X0,X3) ),
% 3.78/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1213,plain,
% 3.78/0.99      ( k3_funct_2(X0,X1,X2,X3) = k7_partfun1(X1,X2,X3)
% 3.78/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.78/0.99      | m1_subset_1(X3,X0) != iProver_top
% 3.78/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.78/0.99      | v1_funct_1(X2) != iProver_top
% 3.78/0.99      | v1_xboole_0(X1) = iProver_top
% 3.78/0.99      | v1_xboole_0(X0) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2475,plain,
% 3.78/0.99      ( k3_funct_2(sK0,sK2,sK4,X0) = k7_partfun1(sK2,sK4,X0)
% 3.78/0.99      | v1_funct_2(sK4,sK0,sK2) != iProver_top
% 3.78/0.99      | m1_subset_1(X0,sK0) != iProver_top
% 3.78/0.99      | v1_funct_1(sK4) != iProver_top
% 3.78/0.99      | v1_xboole_0(sK0) = iProver_top
% 3.78/0.99      | v1_xboole_0(sK2) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1210,c_1213]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_8,plain,
% 3.78/0.99      ( v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ v1_partfun1(X0,X1)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_funct_1(X0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_517,plain,
% 3.78/0.99      ( v1_funct_2(X0,X1,X2)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_funct_1(X0)
% 3.78/0.99      | sK4 != X0
% 3.78/0.99      | sK0 != X1 ),
% 3.78/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_21]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_518,plain,
% 3.78/0.99      ( v1_funct_2(sK4,sK0,X0)
% 3.78/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
% 3.78/0.99      | ~ v1_funct_1(sK4) ),
% 3.78/0.99      inference(unflattening,[status(thm)],[c_517]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_522,plain,
% 3.78/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
% 3.78/0.99      | v1_funct_2(sK4,sK0,X0) ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_518,c_24]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_523,plain,
% 3.78/0.99      ( v1_funct_2(sK4,sK0,X0)
% 3.78/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_522]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1435,plain,
% 3.78/0.99      ( v1_funct_2(sK4,sK0,sK2)
% 3.78/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) ),
% 3.78/0.99      inference(instantiation,[status(thm)],[c_523]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1436,plain,
% 3.78/0.99      ( v1_funct_2(sK4,sK0,sK2) = iProver_top
% 3.78/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,sK2))) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_1435]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_10,plain,
% 3.78/0.99      ( ~ v1_partfun1(X0,X1)
% 3.78/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_xboole_0(X2)
% 3.78/0.99      | v1_xboole_0(X1) ),
% 3.78/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_503,plain,
% 3.78/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.99      | ~ v1_xboole_0(X2)
% 3.78/0.99      | v1_xboole_0(X1)
% 3.78/0.99      | sK4 != X0
% 3.78/0.99      | sK0 != X1 ),
% 3.78/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_21]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_504,plain,
% 3.78/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
% 3.78/0.99      | ~ v1_xboole_0(X0)
% 3.78/0.99      | v1_xboole_0(sK0) ),
% 3.78/0.99      inference(unflattening,[status(thm)],[c_503]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_506,plain,
% 3.78/0.99      ( ~ v1_xboole_0(X0)
% 3.78/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_504,c_29]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_507,plain,
% 3.78/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0)))
% 3.78/0.99      | ~ v1_xboole_0(X0) ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_506]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1199,plain,
% 3.78/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.78/0.99      | v1_xboole_0(X0) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_507]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2063,plain,
% 3.78/0.99      ( v1_xboole_0(sK2) != iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1210,c_1199]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2643,plain,
% 3.78/0.99      ( m1_subset_1(X0,sK0) != iProver_top
% 3.78/0.99      | k3_funct_2(sK0,sK2,sK4,X0) = k7_partfun1(sK2,sK4,X0) ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_2475,c_30,c_35,c_36,c_1436,c_2063]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2644,plain,
% 3.78/0.99      ( k3_funct_2(sK0,sK2,sK4,X0) = k7_partfun1(sK2,sK4,X0)
% 3.78/0.99      | m1_subset_1(X0,sK0) != iProver_top ),
% 3.78/0.99      inference(renaming,[status(thm)],[c_2643]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_3297,plain,
% 3.78/0.99      ( k3_funct_2(sK0,sK2,sK4,k1_funct_1(sK3,sK5)) = k7_partfun1(sK2,sK4,k1_funct_1(sK3,sK5)) ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_3292,c_2644]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2360,plain,
% 3.78/0.99      ( k3_funct_2(sK0,sK2,sK4,X0) = k1_funct_1(sK4,X0)
% 3.78/0.99      | v1_funct_2(sK4,sK0,sK2) != iProver_top
% 3.78/0.99      | m1_subset_1(X0,sK0) != iProver_top
% 3.78/0.99      | v1_funct_1(sK4) != iProver_top
% 3.78/0.99      | v1_xboole_0(sK0) = iProver_top ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_1210,c_1214]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2561,plain,
% 3.78/0.99      ( k3_funct_2(sK0,sK2,sK4,X0) = k1_funct_1(sK4,X0)
% 3.78/0.99      | m1_subset_1(X0,sK0) != iProver_top ),
% 3.78/0.99      inference(global_propositional_subsumption,
% 3.78/0.99                [status(thm)],
% 3.78/0.99                [c_2360,c_30,c_35,c_36,c_1436]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_3298,plain,
% 3.78/0.99      ( k3_funct_2(sK0,sK2,sK4,k1_funct_1(sK3,sK5)) = k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_3292,c_2561]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_3301,plain,
% 3.78/0.99      ( k7_partfun1(sK2,sK4,k1_funct_1(sK3,sK5)) = k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
% 3.78/0.99      inference(light_normalisation,[status(thm)],[c_3297,c_3298]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_20,negated_conjecture,
% 3.78/0.99      ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k3_funct_2(sK1,sK0,sK3,sK5)) ),
% 3.78/0.99      inference(cnf_transformation,[],[f77]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_2608,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k7_partfun1(sK2,sK4,k1_funct_1(sK3,sK5)) ),
% 3.78/0.99      inference(demodulation,[status(thm)],[c_2583,c_20]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_4475,plain,
% 3.78/0.99      ( k3_funct_2(sK1,sK2,k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
% 3.78/0.99      inference(demodulation,[status(thm)],[c_3301,c_2608]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9410,plain,
% 3.78/0.99      ( k1_funct_1(k8_funct_2(sK1,sK0,sK2,sK3,sK4),sK5) != k1_funct_1(sK4,k1_funct_1(sK3,sK5)) ),
% 3.78/0.99      inference(demodulation,[status(thm)],[c_9391,c_4475]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9428,plain,
% 3.78/0.99      ( sK1 = k1_xboole_0 ),
% 3.78/0.99      inference(superposition,[status(thm)],[c_4511,c_9410]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_1205,plain,
% 3.78/0.99      ( v1_xboole_0(sK1) != iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_9477,plain,
% 3.78/0.99      ( v1_xboole_0(k1_xboole_0) != iProver_top ),
% 3.78/0.99      inference(demodulation,[status(thm)],[c_9428,c_1205]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_0,plain,
% 3.78/0.99      ( v1_xboole_0(k1_xboole_0) ),
% 3.78/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(c_92,plain,
% 3.78/0.99      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 3.78/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.78/0.99  
% 3.78/0.99  cnf(contradiction,plain,
% 3.78/0.99      ( $false ),
% 3.78/0.99      inference(minisat,[status(thm)],[c_9477,c_92]) ).
% 3.78/0.99  
% 3.78/0.99  
% 3.78/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.78/0.99  
% 3.78/0.99  ------                               Statistics
% 3.78/0.99  
% 3.78/0.99  ------ General
% 3.78/0.99  
% 3.78/0.99  abstr_ref_over_cycles:                  0
% 3.78/0.99  abstr_ref_under_cycles:                 0
% 3.78/0.99  gc_basic_clause_elim:                   0
% 3.78/0.99  forced_gc_time:                         0
% 3.78/0.99  parsing_time:                           0.008
% 3.78/0.99  unif_index_cands_time:                  0.
% 3.78/0.99  unif_index_add_time:                    0.
% 3.78/0.99  orderings_time:                         0.
% 3.78/0.99  out_proof_time:                         0.013
% 3.78/0.99  total_time:                             0.457
% 3.78/0.99  num_of_symbols:                         57
% 3.78/0.99  num_of_terms:                           15790
% 3.78/0.99  
% 3.78/0.99  ------ Preprocessing
% 3.78/0.99  
% 3.78/0.99  num_of_splits:                          0
% 3.78/0.99  num_of_split_atoms:                     0
% 3.78/0.99  num_of_reused_defs:                     0
% 3.78/0.99  num_eq_ax_congr_red:                    26
% 3.78/0.99  num_of_sem_filtered_clauses:            1
% 3.78/0.99  num_of_subtypes:                        0
% 3.78/0.99  monotx_restored_types:                  0
% 3.78/0.99  sat_num_of_epr_types:                   0
% 3.78/0.99  sat_num_of_non_cyclic_types:            0
% 3.78/0.99  sat_guarded_non_collapsed_types:        0
% 3.78/0.99  num_pure_diseq_elim:                    0
% 3.78/0.99  simp_replaced_by:                       0
% 3.78/0.99  res_preprocessed:                       133
% 3.78/0.99  prep_upred:                             0
% 3.78/0.99  prep_unflattend:                        18
% 3.78/0.99  smt_new_axioms:                         0
% 3.78/0.99  pred_elim_cands:                        5
% 3.78/0.99  pred_elim:                              4
% 3.78/0.99  pred_elim_cl:                           4
% 3.78/0.99  pred_elim_cycles:                       8
% 3.78/0.99  merged_defs:                            0
% 3.78/0.99  merged_defs_ncl:                        0
% 3.78/0.99  bin_hyper_res:                          0
% 3.78/0.99  prep_cycles:                            4
% 3.78/0.99  pred_elim_time:                         0.01
% 3.78/0.99  splitting_time:                         0.
% 3.78/0.99  sem_filter_time:                        0.
% 3.78/0.99  monotx_time:                            0.
% 3.78/0.99  subtype_inf_time:                       0.
% 3.78/0.99  
% 3.78/0.99  ------ Problem properties
% 3.78/0.99  
% 3.78/0.99  clauses:                                25
% 3.78/0.99  conjectures:                            9
% 3.78/0.99  epr:                                    7
% 3.78/0.99  horn:                                   21
% 3.78/0.99  ground:                                 10
% 3.78/0.99  unary:                                  10
% 3.78/0.99  binary:                                 6
% 3.78/0.99  lits:                                   77
% 3.78/0.99  lits_eq:                                8
% 3.78/0.99  fd_pure:                                0
% 3.78/0.99  fd_pseudo:                              0
% 3.78/0.99  fd_cond:                                1
% 3.78/0.99  fd_pseudo_cond:                         0
% 3.78/0.99  ac_symbols:                             0
% 3.78/0.99  
% 3.78/0.99  ------ Propositional Solver
% 3.78/0.99  
% 3.78/0.99  prop_solver_calls:                      27
% 3.78/0.99  prop_fast_solver_calls:                 1611
% 3.78/0.99  smt_solver_calls:                       0
% 3.78/0.99  smt_fast_solver_calls:                  0
% 3.78/0.99  prop_num_of_clauses:                    4016
% 3.78/0.99  prop_preprocess_simplified:             8288
% 3.78/0.99  prop_fo_subsumed:                       84
% 3.78/0.99  prop_solver_time:                       0.
% 3.78/0.99  smt_solver_time:                        0.
% 3.78/0.99  smt_fast_solver_time:                   0.
% 3.78/0.99  prop_fast_solver_time:                  0.
% 3.78/0.99  prop_unsat_core_time:                   0.
% 3.78/0.99  
% 3.78/0.99  ------ QBF
% 3.78/0.99  
% 3.78/0.99  qbf_q_res:                              0
% 3.78/0.99  qbf_num_tautologies:                    0
% 3.78/0.99  qbf_prep_cycles:                        0
% 3.78/0.99  
% 3.78/0.99  ------ BMC1
% 3.78/0.99  
% 3.78/0.99  bmc1_current_bound:                     -1
% 3.78/0.99  bmc1_last_solved_bound:                 -1
% 3.78/0.99  bmc1_unsat_core_size:                   -1
% 3.78/0.99  bmc1_unsat_core_parents_size:           -1
% 3.78/0.99  bmc1_merge_next_fun:                    0
% 3.78/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.78/0.99  
% 3.78/0.99  ------ Instantiation
% 3.78/0.99  
% 3.78/0.99  inst_num_of_clauses:                    864
% 3.78/0.99  inst_num_in_passive:                    240
% 3.78/0.99  inst_num_in_active:                     519
% 3.78/0.99  inst_num_in_unprocessed:                105
% 3.78/0.99  inst_num_of_loops:                      550
% 3.78/0.99  inst_num_of_learning_restarts:          0
% 3.78/0.99  inst_num_moves_active_passive:          27
% 3.78/0.99  inst_lit_activity:                      0
% 3.78/0.99  inst_lit_activity_moves:                0
% 3.78/0.99  inst_num_tautologies:                   0
% 3.78/0.99  inst_num_prop_implied:                  0
% 3.78/0.99  inst_num_existing_simplified:           0
% 3.78/0.99  inst_num_eq_res_simplified:             0
% 3.78/0.99  inst_num_child_elim:                    0
% 3.78/0.99  inst_num_of_dismatching_blockings:      46
% 3.78/0.99  inst_num_of_non_proper_insts:           484
% 3.78/0.99  inst_num_of_duplicates:                 0
% 3.78/0.99  inst_inst_num_from_inst_to_res:         0
% 3.78/0.99  inst_dismatching_checking_time:         0.
% 3.78/0.99  
% 3.78/0.99  ------ Resolution
% 3.78/0.99  
% 3.78/0.99  res_num_of_clauses:                     0
% 3.78/0.99  res_num_in_passive:                     0
% 3.78/0.99  res_num_in_active:                      0
% 3.78/0.99  res_num_of_loops:                       137
% 3.78/0.99  res_forward_subset_subsumed:            29
% 3.78/0.99  res_backward_subset_subsumed:           0
% 3.78/0.99  res_forward_subsumed:                   0
% 3.78/0.99  res_backward_subsumed:                  0
% 3.78/0.99  res_forward_subsumption_resolution:     1
% 3.78/0.99  res_backward_subsumption_resolution:    0
% 3.78/0.99  res_clause_to_clause_subsumption:       2076
% 3.78/0.99  res_orphan_elimination:                 0
% 3.78/0.99  res_tautology_del:                      32
% 3.78/0.99  res_num_eq_res_simplified:              0
% 3.78/0.99  res_num_sel_changes:                    0
% 3.78/0.99  res_moves_from_active_to_pass:          0
% 3.78/0.99  
% 3.78/0.99  ------ Superposition
% 3.78/0.99  
% 3.78/0.99  sup_time_total:                         0.
% 3.78/0.99  sup_time_generating:                    0.
% 3.78/0.99  sup_time_sim_full:                      0.
% 3.78/0.99  sup_time_sim_immed:                     0.
% 3.78/0.99  
% 3.78/0.99  sup_num_of_clauses:                     184
% 3.78/0.99  sup_num_in_active:                      57
% 3.78/0.99  sup_num_in_passive:                     127
% 3.78/0.99  sup_num_of_loops:                       109
% 3.78/0.99  sup_fw_superposition:                   153
% 3.78/0.99  sup_bw_superposition:                   15
% 3.78/0.99  sup_immediate_simplified:               7
% 3.78/0.99  sup_given_eliminated:                   0
% 3.78/0.99  comparisons_done:                       0
% 3.78/0.99  comparisons_avoided:                    15
% 3.78/0.99  
% 3.78/0.99  ------ Simplifications
% 3.78/0.99  
% 3.78/0.99  
% 3.78/0.99  sim_fw_subset_subsumed:                 0
% 3.78/0.99  sim_bw_subset_subsumed:                 0
% 3.78/0.99  sim_fw_subsumed:                        3
% 3.78/0.99  sim_bw_subsumed:                        0
% 3.78/0.99  sim_fw_subsumption_res:                 22
% 3.78/0.99  sim_bw_subsumption_res:                 0
% 3.78/0.99  sim_tautology_del:                      0
% 3.78/0.99  sim_eq_tautology_del:                   5
% 3.78/0.99  sim_eq_res_simp:                        0
% 3.78/0.99  sim_fw_demodulated:                     0
% 3.78/0.99  sim_bw_demodulated:                     52
% 3.78/0.99  sim_light_normalised:                   7
% 3.78/0.99  sim_joinable_taut:                      0
% 3.78/0.99  sim_joinable_simp:                      0
% 3.78/0.99  sim_ac_normalised:                      0
% 3.78/0.99  sim_smt_subsumption:                    0
% 3.78/0.99  
%------------------------------------------------------------------------------
