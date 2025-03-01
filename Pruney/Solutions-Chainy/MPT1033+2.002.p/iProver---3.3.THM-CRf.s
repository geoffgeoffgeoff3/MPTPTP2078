%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:08:28 EST 2020

% Result     : Theorem 1.80s
% Output     : CNFRefutation 1.80s
% Verified   : 
% Statistics : Number of formulae       :  166 (1659 expanded)
%              Number of clauses        :  104 ( 483 expanded)
%              Number of leaves         :   21 ( 426 expanded)
%              Depth                    :   26
%              Number of atoms          :  512 (12075 expanded)
%              Number of equality atoms :  189 (2810 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
    ? [X1] : m1_subset_1(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] : m1_subset_1(X1,X0)
     => m1_subset_1(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0] : m1_subset_1(sK0(X0),X0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f4,f36])).

fof(f47,plain,(
    ! [X0] : m1_subset_1(sK0(X0),X0) ),
    inference(cnf_transformation,[],[f37])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f26])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f15,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
         => ( r1_partfun1(X2,X3)
           => ( r2_relset_1(X0,X1,X2,X3)
              | ( k1_xboole_0 != X0
                & k1_xboole_0 = X1 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              & v1_funct_2(X3,X0,X1)
              & v1_funct_1(X3) )
           => ( r1_partfun1(X2,X3)
             => ( r2_relset_1(X0,X1,X2,X3)
                | ( k1_xboole_0 != X0
                  & k1_xboole_0 = X1 ) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f32,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f33,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f32])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r2_relset_1(X0,X1,X2,X3)
          & ( k1_xboole_0 = X0
            | k1_xboole_0 != X1 )
          & r1_partfun1(X2,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
     => ( ~ r2_relset_1(X0,X1,X2,sK4)
        & ( k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & r1_partfun1(X2,sK4)
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(sK4,X0,X1)
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ~ r2_relset_1(X0,X1,X2,X3)
            & ( k1_xboole_0 = X0
              | k1_xboole_0 != X1 )
            & r1_partfun1(X2,X3)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_2(X3,X0,X1)
            & v1_funct_1(X3) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ? [X3] :
          ( ~ r2_relset_1(sK1,sK2,sK3,X3)
          & ( k1_xboole_0 = sK1
            | k1_xboole_0 != sK2 )
          & r1_partfun1(sK3,X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
          & v1_funct_2(X3,sK1,sK2)
          & v1_funct_1(X3) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
      & v1_funct_2(sK3,sK1,sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ~ r2_relset_1(sK1,sK2,sK3,sK4)
    & ( k1_xboole_0 = sK1
      | k1_xboole_0 != sK2 )
    & r1_partfun1(sK3,sK4)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK4,sK1,sK2)
    & v1_funct_1(sK4)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK3,sK1,sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f33,f40,f39])).

fof(f65,plain,(
    v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f41])).

fof(f64,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f66,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f41])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
            & v1_funct_1(X3) )
         => ( ( r1_partfun1(X2,X3)
              & v1_partfun1(X3,X0)
              & v1_partfun1(X2,X0) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( X2 = X3
          | ~ r1_partfun1(X2,X3)
          | ~ v1_partfun1(X3,X0)
          | ~ v1_partfun1(X2,X0)
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f28])).

fof(f57,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r1_partfun1(X2,X3)
      | ~ v1_partfun1(X3,X0)
      | ~ v1_partfun1(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f67,plain,(
    r1_partfun1(sK3,sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f61,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f41])).

fof(f63,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f41])).

fof(f62,plain,(
    v1_funct_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f41])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f43,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => r2_relset_1(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f24])).

fof(f54,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f69,plain,(
    ~ r2_relset_1(sK1,sK2,sK3,sK4) ),
    inference(cnf_transformation,[],[f41])).

fof(f68,plain,
    ( k1_xboole_0 = sK1
    | k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f41])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f34])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f71,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f45])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f30])).

fof(f60,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f49,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f5])).

cnf(c_5,plain,
    ( m1_subset_1(sK0(X0),X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_890,plain,
    ( m1_subset_1(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_13,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_23,negated_conjecture,
    ( v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_392,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | sK4 != X0
    | sK2 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_23])).

cnf(c_393,plain,
    ( v1_partfun1(sK4,sK1)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_funct_1(sK4)
    | v1_xboole_0(sK2) ),
    inference(unflattening,[status(thm)],[c_392])).

cnf(c_24,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_395,plain,
    ( v1_partfun1(sK4,sK1)
    | v1_xboole_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_393,c_24,c_22])).

cnf(c_883,plain,
    ( v1_partfun1(sK4,sK1) = iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_395])).

cnf(c_887,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_15,plain,
    ( ~ r1_partfun1(X0,X1)
    | ~ v1_partfun1(X1,X2)
    | ~ v1_partfun1(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_21,negated_conjecture,
    ( r1_partfun1(sK3,sK4) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_292,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v1_partfun1(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X0)
    | X0 = X2
    | sK4 != X0
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_21])).

cnf(c_293,plain,
    ( ~ v1_partfun1(sK4,X0)
    | ~ v1_partfun1(sK3,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK4)
    | ~ v1_funct_1(sK3)
    | sK4 = sK3 ),
    inference(unflattening,[status(thm)],[c_292])).

cnf(c_27,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_297,plain,
    ( ~ v1_partfun1(sK4,X0)
    | ~ v1_partfun1(sK3,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | sK4 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_293,c_27,c_24])).

cnf(c_884,plain,
    ( sK4 = sK3
    | v1_partfun1(sK4,X0) != iProver_top
    | v1_partfun1(sK3,X0) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_297])).

cnf(c_1437,plain,
    ( sK4 = sK3
    | v1_partfun1(sK4,sK1) != iProver_top
    | v1_partfun1(sK3,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_887,c_884])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_30,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_1500,plain,
    ( v1_partfun1(sK3,sK1) != iProver_top
    | v1_partfun1(sK4,sK1) != iProver_top
    | sK4 = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1437,c_30])).

cnf(c_1501,plain,
    ( sK4 = sK3
    | v1_partfun1(sK4,sK1) != iProver_top
    | v1_partfun1(sK3,sK1) != iProver_top ),
    inference(renaming,[status(thm)],[c_1500])).

cnf(c_1610,plain,
    ( sK4 = sK3
    | v1_partfun1(sK3,sK1) != iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_883,c_1501])).

cnf(c_26,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_406,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v1_xboole_0(X2)
    | sK3 != X0
    | sK2 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_26])).

cnf(c_407,plain,
    ( v1_partfun1(sK3,sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_funct_1(sK3)
    | v1_xboole_0(sK2) ),
    inference(unflattening,[status(thm)],[c_406])).

cnf(c_409,plain,
    ( v1_partfun1(sK3,sK1)
    | v1_xboole_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_407,c_27,c_25])).

cnf(c_411,plain,
    ( v1_partfun1(sK3,sK1) = iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_409])).

cnf(c_2354,plain,
    ( sK4 = sK3
    | v1_xboole_0(sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1610,c_411])).

cnf(c_1,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_891,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_2360,plain,
    ( sK4 = sK3
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2354,c_891])).

cnf(c_12,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_19,negated_conjecture,
    ( ~ r2_relset_1(sK1,sK2,sK3,sK4) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_251,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | sK4 != X0
    | sK3 != X0
    | sK2 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_19])).

cnf(c_252,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | sK3 != sK4 ),
    inference(unflattening,[status(thm)],[c_251])).

cnf(c_256,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | sK3 != sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_252,c_22])).

cnf(c_885,plain,
    ( sK3 != sK4
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_256])).

cnf(c_2647,plain,
    ( sK2 = k1_xboole_0
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2360,c_885])).

cnf(c_2709,plain,
    ( sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_890,c_2647])).

cnf(c_886,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_2783,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2709,c_886])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 != sK2
    | k1_xboole_0 = sK1 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_2784,plain,
    ( sK1 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2709,c_20])).

cnf(c_2785,plain,
    ( sK1 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_2784])).

cnf(c_2788,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2783,c_2785])).

cnf(c_3,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_2790,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2788,c_3])).

cnf(c_11,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_9,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_272,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_11,c_9])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_282,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_272,c_10])).

cnf(c_16,plain,
    ( ~ r1_tarski(k2_relat_1(X0),X1)
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_344,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_282,c_16])).

cnf(c_348,plain,
    ( ~ v1_funct_1(X0)
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_344,c_10])).

cnf(c_349,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
    | ~ v1_funct_1(X0) ),
    inference(renaming,[status(thm)],[c_348])).

cnf(c_469,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_349,c_27])).

cnf(c_470,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X1))) ),
    inference(unflattening,[status(thm)],[c_469])).

cnf(c_878,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_470])).

cnf(c_1377,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X0))) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_878])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_888,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2152,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(k2_zfmisc_1(k1_relat_1(sK3),X0)) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1377,c_888])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_77,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1158,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(X0))
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1159,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(X0)) != iProver_top
    | v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1158])).

cnf(c_1161,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(sK3) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1159])).

cnf(c_2485,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2152,c_77,c_1161])).

cnf(c_2924,plain,
    ( v1_xboole_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2790,c_2485])).

cnf(c_3169,plain,
    ( sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2924,c_891])).

cnf(c_2781,plain,
    ( sK4 != sK3
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2709,c_885])).

cnf(c_2796,plain,
    ( sK4 != sK3
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2781,c_2785])).

cnf(c_2799,plain,
    ( sK4 != sK3
    | m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2796,c_3])).

cnf(c_6,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_66,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_68,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_66])).

cnf(c_2836,plain,
    ( sK4 != sK3
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2799])).

cnf(c_3088,plain,
    ( sK4 != sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2799,c_68,c_2836])).

cnf(c_3295,plain,
    ( sK4 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3169,c_3088])).

cnf(c_603,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_2316,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_zfmisc_1(X1,X2))
    | k2_zfmisc_1(X1,X2) != X0 ),
    inference(instantiation,[status(thm)],[c_603])).

cnf(c_2327,plain,
    ( k2_zfmisc_1(X0,X1) != X2
    | v1_xboole_0(X2) != iProver_top
    | v1_xboole_0(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2316])).

cnf(c_2329,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | v1_xboole_0(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2327])).

cnf(c_604,plain,
    ( X0 != X1
    | X2 != X3
    | k2_zfmisc_1(X0,X2) = k2_zfmisc_1(X1,X3) ),
    theory(equality)).

cnf(c_2051,plain,
    ( k2_zfmisc_1(sK1,sK2) = k2_zfmisc_1(X0,X1)
    | sK2 != X1
    | sK1 != X0 ),
    inference(instantiation,[status(thm)],[c_604])).

cnf(c_2056,plain,
    ( k2_zfmisc_1(sK1,sK2) = k2_zfmisc_1(k1_xboole_0,k1_xboole_0)
    | sK2 != k1_xboole_0
    | sK1 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2051])).

cnf(c_1565,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_zfmisc_1(sK1,sK2))
    | k2_zfmisc_1(sK1,sK2) != X0 ),
    inference(instantiation,[status(thm)],[c_603])).

cnf(c_2050,plain,
    ( ~ v1_xboole_0(k2_zfmisc_1(X0,X1))
    | v1_xboole_0(k2_zfmisc_1(sK1,sK2))
    | k2_zfmisc_1(sK1,sK2) != k2_zfmisc_1(X0,X1) ),
    inference(instantiation,[status(thm)],[c_1565])).

cnf(c_2052,plain,
    ( k2_zfmisc_1(sK1,sK2) != k2_zfmisc_1(X0,X1)
    | v1_xboole_0(k2_zfmisc_1(X0,X1)) != iProver_top
    | v1_xboole_0(k2_zfmisc_1(sK1,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2050])).

cnf(c_2054,plain,
    ( k2_zfmisc_1(sK1,sK2) != k2_zfmisc_1(k1_xboole_0,k1_xboole_0)
    | v1_xboole_0(k2_zfmisc_1(sK1,sK2)) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2052])).

cnf(c_1835,plain,
    ( v1_xboole_0(k2_zfmisc_1(sK1,sK2)) != iProver_top
    | v1_xboole_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_887,c_888])).

cnf(c_602,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1096,plain,
    ( X0 != X1
    | sK4 != X1
    | sK4 = X0 ),
    inference(instantiation,[status(thm)],[c_602])).

cnf(c_1281,plain,
    ( X0 != sK4
    | sK4 = X0
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_1096])).

cnf(c_1282,plain,
    ( sK4 != sK4
    | sK4 = k1_xboole_0
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_1281])).

cnf(c_601,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1073,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_601])).

cnf(c_1067,plain,
    ( ~ v1_xboole_0(sK4)
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1070,plain,
    ( k1_xboole_0 = sK4
    | v1_xboole_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1067])).

cnf(c_73,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3295,c_2785,c_2709,c_2329,c_2056,c_2054,c_1835,c_1282,c_1073,c_1070,c_77,c_73])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n025.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:18:06 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.80/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.80/0.99  
% 1.80/0.99  ------  iProver source info
% 1.80/0.99  
% 1.80/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.80/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.80/0.99  git: non_committed_changes: false
% 1.80/0.99  git: last_make_outside_of_git: false
% 1.80/0.99  
% 1.80/0.99  ------ 
% 1.80/0.99  
% 1.80/0.99  ------ Input Options
% 1.80/0.99  
% 1.80/0.99  --out_options                           all
% 1.80/0.99  --tptp_safe_out                         true
% 1.80/0.99  --problem_path                          ""
% 1.80/0.99  --include_path                          ""
% 1.80/0.99  --clausifier                            res/vclausify_rel
% 1.80/0.99  --clausifier_options                    --mode clausify
% 1.80/0.99  --stdin                                 false
% 1.80/0.99  --stats_out                             all
% 1.80/0.99  
% 1.80/0.99  ------ General Options
% 1.80/0.99  
% 1.80/0.99  --fof                                   false
% 1.80/0.99  --time_out_real                         305.
% 1.80/0.99  --time_out_virtual                      -1.
% 1.80/0.99  --symbol_type_check                     false
% 1.80/0.99  --clausify_out                          false
% 1.80/0.99  --sig_cnt_out                           false
% 1.80/0.99  --trig_cnt_out                          false
% 1.80/0.99  --trig_cnt_out_tolerance                1.
% 1.80/0.99  --trig_cnt_out_sk_spl                   false
% 1.80/0.99  --abstr_cl_out                          false
% 1.80/0.99  
% 1.80/0.99  ------ Global Options
% 1.80/0.99  
% 1.80/0.99  --schedule                              default
% 1.80/0.99  --add_important_lit                     false
% 1.80/0.99  --prop_solver_per_cl                    1000
% 1.80/0.99  --min_unsat_core                        false
% 1.80/0.99  --soft_assumptions                      false
% 1.80/0.99  --soft_lemma_size                       3
% 1.80/0.99  --prop_impl_unit_size                   0
% 1.80/0.99  --prop_impl_unit                        []
% 1.80/0.99  --share_sel_clauses                     true
% 1.80/0.99  --reset_solvers                         false
% 1.80/0.99  --bc_imp_inh                            [conj_cone]
% 1.80/0.99  --conj_cone_tolerance                   3.
% 1.80/0.99  --extra_neg_conj                        none
% 1.80/0.99  --large_theory_mode                     true
% 1.80/0.99  --prolific_symb_bound                   200
% 1.80/0.99  --lt_threshold                          2000
% 1.80/0.99  --clause_weak_htbl                      true
% 1.80/0.99  --gc_record_bc_elim                     false
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing Options
% 1.80/0.99  
% 1.80/0.99  --preprocessing_flag                    true
% 1.80/0.99  --time_out_prep_mult                    0.1
% 1.80/0.99  --splitting_mode                        input
% 1.80/0.99  --splitting_grd                         true
% 1.80/0.99  --splitting_cvd                         false
% 1.80/0.99  --splitting_cvd_svl                     false
% 1.80/0.99  --splitting_nvd                         32
% 1.80/0.99  --sub_typing                            true
% 1.80/0.99  --prep_gs_sim                           true
% 1.80/0.99  --prep_unflatten                        true
% 1.80/0.99  --prep_res_sim                          true
% 1.80/0.99  --prep_upred                            true
% 1.80/0.99  --prep_sem_filter                       exhaustive
% 1.80/0.99  --prep_sem_filter_out                   false
% 1.80/0.99  --pred_elim                             true
% 1.80/0.99  --res_sim_input                         true
% 1.80/0.99  --eq_ax_congr_red                       true
% 1.80/0.99  --pure_diseq_elim                       true
% 1.80/0.99  --brand_transform                       false
% 1.80/0.99  --non_eq_to_eq                          false
% 1.80/0.99  --prep_def_merge                        true
% 1.80/0.99  --prep_def_merge_prop_impl              false
% 1.80/0.99  --prep_def_merge_mbd                    true
% 1.80/0.99  --prep_def_merge_tr_red                 false
% 1.80/0.99  --prep_def_merge_tr_cl                  false
% 1.80/0.99  --smt_preprocessing                     true
% 1.80/0.99  --smt_ac_axioms                         fast
% 1.80/0.99  --preprocessed_out                      false
% 1.80/0.99  --preprocessed_stats                    false
% 1.80/0.99  
% 1.80/0.99  ------ Abstraction refinement Options
% 1.80/0.99  
% 1.80/0.99  --abstr_ref                             []
% 1.80/0.99  --abstr_ref_prep                        false
% 1.80/0.99  --abstr_ref_until_sat                   false
% 1.80/0.99  --abstr_ref_sig_restrict                funpre
% 1.80/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.80/0.99  --abstr_ref_under                       []
% 1.80/0.99  
% 1.80/0.99  ------ SAT Options
% 1.80/0.99  
% 1.80/0.99  --sat_mode                              false
% 1.80/0.99  --sat_fm_restart_options                ""
% 1.80/0.99  --sat_gr_def                            false
% 1.80/0.99  --sat_epr_types                         true
% 1.80/0.99  --sat_non_cyclic_types                  false
% 1.80/0.99  --sat_finite_models                     false
% 1.80/0.99  --sat_fm_lemmas                         false
% 1.80/0.99  --sat_fm_prep                           false
% 1.80/0.99  --sat_fm_uc_incr                        true
% 1.80/0.99  --sat_out_model                         small
% 1.80/0.99  --sat_out_clauses                       false
% 1.80/0.99  
% 1.80/0.99  ------ QBF Options
% 1.80/0.99  
% 1.80/0.99  --qbf_mode                              false
% 1.80/0.99  --qbf_elim_univ                         false
% 1.80/0.99  --qbf_dom_inst                          none
% 1.80/0.99  --qbf_dom_pre_inst                      false
% 1.80/0.99  --qbf_sk_in                             false
% 1.80/0.99  --qbf_pred_elim                         true
% 1.80/0.99  --qbf_split                             512
% 1.80/0.99  
% 1.80/0.99  ------ BMC1 Options
% 1.80/0.99  
% 1.80/0.99  --bmc1_incremental                      false
% 1.80/0.99  --bmc1_axioms                           reachable_all
% 1.80/0.99  --bmc1_min_bound                        0
% 1.80/0.99  --bmc1_max_bound                        -1
% 1.80/0.99  --bmc1_max_bound_default                -1
% 1.80/0.99  --bmc1_symbol_reachability              true
% 1.80/0.99  --bmc1_property_lemmas                  false
% 1.80/0.99  --bmc1_k_induction                      false
% 1.80/0.99  --bmc1_non_equiv_states                 false
% 1.80/0.99  --bmc1_deadlock                         false
% 1.80/0.99  --bmc1_ucm                              false
% 1.80/0.99  --bmc1_add_unsat_core                   none
% 1.80/0.99  --bmc1_unsat_core_children              false
% 1.80/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.80/0.99  --bmc1_out_stat                         full
% 1.80/0.99  --bmc1_ground_init                      false
% 1.80/0.99  --bmc1_pre_inst_next_state              false
% 1.80/0.99  --bmc1_pre_inst_state                   false
% 1.80/0.99  --bmc1_pre_inst_reach_state             false
% 1.80/0.99  --bmc1_out_unsat_core                   false
% 1.80/0.99  --bmc1_aig_witness_out                  false
% 1.80/0.99  --bmc1_verbose                          false
% 1.80/0.99  --bmc1_dump_clauses_tptp                false
% 1.80/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.80/0.99  --bmc1_dump_file                        -
% 1.80/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.80/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.80/0.99  --bmc1_ucm_extend_mode                  1
% 1.80/0.99  --bmc1_ucm_init_mode                    2
% 1.80/0.99  --bmc1_ucm_cone_mode                    none
% 1.80/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.80/0.99  --bmc1_ucm_relax_model                  4
% 1.80/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.80/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.80/0.99  --bmc1_ucm_layered_model                none
% 1.80/0.99  --bmc1_ucm_max_lemma_size               10
% 1.80/0.99  
% 1.80/0.99  ------ AIG Options
% 1.80/0.99  
% 1.80/0.99  --aig_mode                              false
% 1.80/0.99  
% 1.80/0.99  ------ Instantiation Options
% 1.80/0.99  
% 1.80/0.99  --instantiation_flag                    true
% 1.80/0.99  --inst_sos_flag                         false
% 1.80/0.99  --inst_sos_phase                        true
% 1.80/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel_side                     num_symb
% 1.80/0.99  --inst_solver_per_active                1400
% 1.80/0.99  --inst_solver_calls_frac                1.
% 1.80/0.99  --inst_passive_queue_type               priority_queues
% 1.80/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.80/0.99  --inst_passive_queues_freq              [25;2]
% 1.80/0.99  --inst_dismatching                      true
% 1.80/0.99  --inst_eager_unprocessed_to_passive     true
% 1.80/0.99  --inst_prop_sim_given                   true
% 1.80/0.99  --inst_prop_sim_new                     false
% 1.80/0.99  --inst_subs_new                         false
% 1.80/0.99  --inst_eq_res_simp                      false
% 1.80/0.99  --inst_subs_given                       false
% 1.80/0.99  --inst_orphan_elimination               true
% 1.80/0.99  --inst_learning_loop_flag               true
% 1.80/0.99  --inst_learning_start                   3000
% 1.80/0.99  --inst_learning_factor                  2
% 1.80/0.99  --inst_start_prop_sim_after_learn       3
% 1.80/0.99  --inst_sel_renew                        solver
% 1.80/0.99  --inst_lit_activity_flag                true
% 1.80/0.99  --inst_restr_to_given                   false
% 1.80/0.99  --inst_activity_threshold               500
% 1.80/0.99  --inst_out_proof                        true
% 1.80/0.99  
% 1.80/0.99  ------ Resolution Options
% 1.80/0.99  
% 1.80/0.99  --resolution_flag                       true
% 1.80/0.99  --res_lit_sel                           adaptive
% 1.80/0.99  --res_lit_sel_side                      none
% 1.80/0.99  --res_ordering                          kbo
% 1.80/0.99  --res_to_prop_solver                    active
% 1.80/0.99  --res_prop_simpl_new                    false
% 1.80/0.99  --res_prop_simpl_given                  true
% 1.80/0.99  --res_passive_queue_type                priority_queues
% 1.80/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.80/0.99  --res_passive_queues_freq               [15;5]
% 1.80/0.99  --res_forward_subs                      full
% 1.80/0.99  --res_backward_subs                     full
% 1.80/0.99  --res_forward_subs_resolution           true
% 1.80/0.99  --res_backward_subs_resolution          true
% 1.80/0.99  --res_orphan_elimination                true
% 1.80/0.99  --res_time_limit                        2.
% 1.80/0.99  --res_out_proof                         true
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Options
% 1.80/0.99  
% 1.80/0.99  --superposition_flag                    true
% 1.80/0.99  --sup_passive_queue_type                priority_queues
% 1.80/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.80/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.80/0.99  --demod_completeness_check              fast
% 1.80/0.99  --demod_use_ground                      true
% 1.80/0.99  --sup_to_prop_solver                    passive
% 1.80/0.99  --sup_prop_simpl_new                    true
% 1.80/0.99  --sup_prop_simpl_given                  true
% 1.80/0.99  --sup_fun_splitting                     false
% 1.80/0.99  --sup_smt_interval                      50000
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Simplification Setup
% 1.80/0.99  
% 1.80/0.99  --sup_indices_passive                   []
% 1.80/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.80/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_full_bw                           [BwDemod]
% 1.80/0.99  --sup_immed_triv                        [TrivRules]
% 1.80/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.80/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_immed_bw_main                     []
% 1.80/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.80/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  
% 1.80/0.99  ------ Combination Options
% 1.80/0.99  
% 1.80/0.99  --comb_res_mult                         3
% 1.80/0.99  --comb_sup_mult                         2
% 1.80/0.99  --comb_inst_mult                        10
% 1.80/0.99  
% 1.80/0.99  ------ Debug Options
% 1.80/0.99  
% 1.80/0.99  --dbg_backtrace                         false
% 1.80/0.99  --dbg_dump_prop_clauses                 false
% 1.80/0.99  --dbg_dump_prop_clauses_file            -
% 1.80/0.99  --dbg_out_stat                          false
% 1.80/0.99  ------ Parsing...
% 1.80/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.80/0.99  ------ Proving...
% 1.80/0.99  ------ Problem Properties 
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  clauses                                 19
% 1.80/0.99  conjectures                             3
% 1.80/0.99  EPR                                     5
% 1.80/0.99  Horn                                    14
% 1.80/0.99  unary                                   7
% 1.80/0.99  binary                                  7
% 1.80/0.99  lits                                    38
% 1.80/0.99  lits eq                                 10
% 1.80/0.99  fd_pure                                 0
% 1.80/0.99  fd_pseudo                               0
% 1.80/0.99  fd_cond                                 2
% 1.80/0.99  fd_pseudo_cond                          0
% 1.80/0.99  AC symbols                              0
% 1.80/0.99  
% 1.80/0.99  ------ Schedule dynamic 5 is on 
% 1.80/0.99  
% 1.80/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  ------ 
% 1.80/0.99  Current options:
% 1.80/0.99  ------ 
% 1.80/0.99  
% 1.80/0.99  ------ Input Options
% 1.80/0.99  
% 1.80/0.99  --out_options                           all
% 1.80/0.99  --tptp_safe_out                         true
% 1.80/0.99  --problem_path                          ""
% 1.80/0.99  --include_path                          ""
% 1.80/0.99  --clausifier                            res/vclausify_rel
% 1.80/0.99  --clausifier_options                    --mode clausify
% 1.80/0.99  --stdin                                 false
% 1.80/0.99  --stats_out                             all
% 1.80/0.99  
% 1.80/0.99  ------ General Options
% 1.80/0.99  
% 1.80/0.99  --fof                                   false
% 1.80/0.99  --time_out_real                         305.
% 1.80/0.99  --time_out_virtual                      -1.
% 1.80/0.99  --symbol_type_check                     false
% 1.80/0.99  --clausify_out                          false
% 1.80/0.99  --sig_cnt_out                           false
% 1.80/0.99  --trig_cnt_out                          false
% 1.80/0.99  --trig_cnt_out_tolerance                1.
% 1.80/0.99  --trig_cnt_out_sk_spl                   false
% 1.80/0.99  --abstr_cl_out                          false
% 1.80/0.99  
% 1.80/0.99  ------ Global Options
% 1.80/0.99  
% 1.80/0.99  --schedule                              default
% 1.80/0.99  --add_important_lit                     false
% 1.80/0.99  --prop_solver_per_cl                    1000
% 1.80/0.99  --min_unsat_core                        false
% 1.80/0.99  --soft_assumptions                      false
% 1.80/0.99  --soft_lemma_size                       3
% 1.80/0.99  --prop_impl_unit_size                   0
% 1.80/0.99  --prop_impl_unit                        []
% 1.80/0.99  --share_sel_clauses                     true
% 1.80/0.99  --reset_solvers                         false
% 1.80/0.99  --bc_imp_inh                            [conj_cone]
% 1.80/0.99  --conj_cone_tolerance                   3.
% 1.80/0.99  --extra_neg_conj                        none
% 1.80/0.99  --large_theory_mode                     true
% 1.80/0.99  --prolific_symb_bound                   200
% 1.80/0.99  --lt_threshold                          2000
% 1.80/0.99  --clause_weak_htbl                      true
% 1.80/0.99  --gc_record_bc_elim                     false
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing Options
% 1.80/0.99  
% 1.80/0.99  --preprocessing_flag                    true
% 1.80/0.99  --time_out_prep_mult                    0.1
% 1.80/0.99  --splitting_mode                        input
% 1.80/0.99  --splitting_grd                         true
% 1.80/0.99  --splitting_cvd                         false
% 1.80/0.99  --splitting_cvd_svl                     false
% 1.80/0.99  --splitting_nvd                         32
% 1.80/0.99  --sub_typing                            true
% 1.80/0.99  --prep_gs_sim                           true
% 1.80/0.99  --prep_unflatten                        true
% 1.80/0.99  --prep_res_sim                          true
% 1.80/0.99  --prep_upred                            true
% 1.80/0.99  --prep_sem_filter                       exhaustive
% 1.80/0.99  --prep_sem_filter_out                   false
% 1.80/0.99  --pred_elim                             true
% 1.80/0.99  --res_sim_input                         true
% 1.80/0.99  --eq_ax_congr_red                       true
% 1.80/0.99  --pure_diseq_elim                       true
% 1.80/0.99  --brand_transform                       false
% 1.80/0.99  --non_eq_to_eq                          false
% 1.80/0.99  --prep_def_merge                        true
% 1.80/0.99  --prep_def_merge_prop_impl              false
% 1.80/0.99  --prep_def_merge_mbd                    true
% 1.80/0.99  --prep_def_merge_tr_red                 false
% 1.80/0.99  --prep_def_merge_tr_cl                  false
% 1.80/0.99  --smt_preprocessing                     true
% 1.80/0.99  --smt_ac_axioms                         fast
% 1.80/0.99  --preprocessed_out                      false
% 1.80/0.99  --preprocessed_stats                    false
% 1.80/0.99  
% 1.80/0.99  ------ Abstraction refinement Options
% 1.80/0.99  
% 1.80/0.99  --abstr_ref                             []
% 1.80/0.99  --abstr_ref_prep                        false
% 1.80/0.99  --abstr_ref_until_sat                   false
% 1.80/0.99  --abstr_ref_sig_restrict                funpre
% 1.80/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.80/0.99  --abstr_ref_under                       []
% 1.80/0.99  
% 1.80/0.99  ------ SAT Options
% 1.80/0.99  
% 1.80/0.99  --sat_mode                              false
% 1.80/0.99  --sat_fm_restart_options                ""
% 1.80/0.99  --sat_gr_def                            false
% 1.80/0.99  --sat_epr_types                         true
% 1.80/0.99  --sat_non_cyclic_types                  false
% 1.80/0.99  --sat_finite_models                     false
% 1.80/0.99  --sat_fm_lemmas                         false
% 1.80/0.99  --sat_fm_prep                           false
% 1.80/0.99  --sat_fm_uc_incr                        true
% 1.80/0.99  --sat_out_model                         small
% 1.80/0.99  --sat_out_clauses                       false
% 1.80/0.99  
% 1.80/0.99  ------ QBF Options
% 1.80/0.99  
% 1.80/0.99  --qbf_mode                              false
% 1.80/0.99  --qbf_elim_univ                         false
% 1.80/0.99  --qbf_dom_inst                          none
% 1.80/0.99  --qbf_dom_pre_inst                      false
% 1.80/0.99  --qbf_sk_in                             false
% 1.80/0.99  --qbf_pred_elim                         true
% 1.80/0.99  --qbf_split                             512
% 1.80/0.99  
% 1.80/0.99  ------ BMC1 Options
% 1.80/0.99  
% 1.80/0.99  --bmc1_incremental                      false
% 1.80/0.99  --bmc1_axioms                           reachable_all
% 1.80/0.99  --bmc1_min_bound                        0
% 1.80/0.99  --bmc1_max_bound                        -1
% 1.80/0.99  --bmc1_max_bound_default                -1
% 1.80/0.99  --bmc1_symbol_reachability              true
% 1.80/0.99  --bmc1_property_lemmas                  false
% 1.80/0.99  --bmc1_k_induction                      false
% 1.80/0.99  --bmc1_non_equiv_states                 false
% 1.80/0.99  --bmc1_deadlock                         false
% 1.80/0.99  --bmc1_ucm                              false
% 1.80/0.99  --bmc1_add_unsat_core                   none
% 1.80/0.99  --bmc1_unsat_core_children              false
% 1.80/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.80/0.99  --bmc1_out_stat                         full
% 1.80/0.99  --bmc1_ground_init                      false
% 1.80/0.99  --bmc1_pre_inst_next_state              false
% 1.80/0.99  --bmc1_pre_inst_state                   false
% 1.80/0.99  --bmc1_pre_inst_reach_state             false
% 1.80/0.99  --bmc1_out_unsat_core                   false
% 1.80/0.99  --bmc1_aig_witness_out                  false
% 1.80/0.99  --bmc1_verbose                          false
% 1.80/0.99  --bmc1_dump_clauses_tptp                false
% 1.80/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.80/0.99  --bmc1_dump_file                        -
% 1.80/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.80/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.80/0.99  --bmc1_ucm_extend_mode                  1
% 1.80/0.99  --bmc1_ucm_init_mode                    2
% 1.80/0.99  --bmc1_ucm_cone_mode                    none
% 1.80/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.80/0.99  --bmc1_ucm_relax_model                  4
% 1.80/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.80/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.80/0.99  --bmc1_ucm_layered_model                none
% 1.80/0.99  --bmc1_ucm_max_lemma_size               10
% 1.80/0.99  
% 1.80/0.99  ------ AIG Options
% 1.80/0.99  
% 1.80/0.99  --aig_mode                              false
% 1.80/0.99  
% 1.80/0.99  ------ Instantiation Options
% 1.80/0.99  
% 1.80/0.99  --instantiation_flag                    true
% 1.80/0.99  --inst_sos_flag                         false
% 1.80/0.99  --inst_sos_phase                        true
% 1.80/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel_side                     none
% 1.80/0.99  --inst_solver_per_active                1400
% 1.80/0.99  --inst_solver_calls_frac                1.
% 1.80/0.99  --inst_passive_queue_type               priority_queues
% 1.80/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.80/0.99  --inst_passive_queues_freq              [25;2]
% 1.80/0.99  --inst_dismatching                      true
% 1.80/0.99  --inst_eager_unprocessed_to_passive     true
% 1.80/0.99  --inst_prop_sim_given                   true
% 1.80/0.99  --inst_prop_sim_new                     false
% 1.80/0.99  --inst_subs_new                         false
% 1.80/0.99  --inst_eq_res_simp                      false
% 1.80/0.99  --inst_subs_given                       false
% 1.80/0.99  --inst_orphan_elimination               true
% 1.80/0.99  --inst_learning_loop_flag               true
% 1.80/0.99  --inst_learning_start                   3000
% 1.80/0.99  --inst_learning_factor                  2
% 1.80/0.99  --inst_start_prop_sim_after_learn       3
% 1.80/0.99  --inst_sel_renew                        solver
% 1.80/0.99  --inst_lit_activity_flag                true
% 1.80/0.99  --inst_restr_to_given                   false
% 1.80/0.99  --inst_activity_threshold               500
% 1.80/0.99  --inst_out_proof                        true
% 1.80/0.99  
% 1.80/0.99  ------ Resolution Options
% 1.80/0.99  
% 1.80/0.99  --resolution_flag                       false
% 1.80/0.99  --res_lit_sel                           adaptive
% 1.80/0.99  --res_lit_sel_side                      none
% 1.80/0.99  --res_ordering                          kbo
% 1.80/0.99  --res_to_prop_solver                    active
% 1.80/0.99  --res_prop_simpl_new                    false
% 1.80/0.99  --res_prop_simpl_given                  true
% 1.80/0.99  --res_passive_queue_type                priority_queues
% 1.80/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.80/0.99  --res_passive_queues_freq               [15;5]
% 1.80/0.99  --res_forward_subs                      full
% 1.80/0.99  --res_backward_subs                     full
% 1.80/0.99  --res_forward_subs_resolution           true
% 1.80/0.99  --res_backward_subs_resolution          true
% 1.80/0.99  --res_orphan_elimination                true
% 1.80/0.99  --res_time_limit                        2.
% 1.80/0.99  --res_out_proof                         true
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Options
% 1.80/0.99  
% 1.80/0.99  --superposition_flag                    true
% 1.80/0.99  --sup_passive_queue_type                priority_queues
% 1.80/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.80/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.80/0.99  --demod_completeness_check              fast
% 1.80/0.99  --demod_use_ground                      true
% 1.80/0.99  --sup_to_prop_solver                    passive
% 1.80/0.99  --sup_prop_simpl_new                    true
% 1.80/0.99  --sup_prop_simpl_given                  true
% 1.80/0.99  --sup_fun_splitting                     false
% 1.80/0.99  --sup_smt_interval                      50000
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Simplification Setup
% 1.80/0.99  
% 1.80/0.99  --sup_indices_passive                   []
% 1.80/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.80/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_full_bw                           [BwDemod]
% 1.80/0.99  --sup_immed_triv                        [TrivRules]
% 1.80/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.80/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_immed_bw_main                     []
% 1.80/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.80/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  
% 1.80/0.99  ------ Combination Options
% 1.80/0.99  
% 1.80/0.99  --comb_res_mult                         3
% 1.80/0.99  --comb_sup_mult                         2
% 1.80/0.99  --comb_inst_mult                        10
% 1.80/0.99  
% 1.80/0.99  ------ Debug Options
% 1.80/0.99  
% 1.80/0.99  --dbg_backtrace                         false
% 1.80/0.99  --dbg_dump_prop_clauses                 false
% 1.80/0.99  --dbg_dump_prop_clauses_file            -
% 1.80/0.99  --dbg_out_stat                          false
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  ------ Proving...
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  % SZS status Theorem for theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  fof(f4,axiom,(
% 1.80/0.99    ! [X0] : ? [X1] : m1_subset_1(X1,X0)),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f36,plain,(
% 1.80/0.99    ! [X0] : (? [X1] : m1_subset_1(X1,X0) => m1_subset_1(sK0(X0),X0))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f37,plain,(
% 1.80/0.99    ! [X0] : m1_subset_1(sK0(X0),X0)),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f4,f36])).
% 1.80/0.99  
% 1.80/0.99  fof(f47,plain,(
% 1.80/0.99    ( ! [X0] : (m1_subset_1(sK0(X0),X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f37])).
% 1.80/0.99  
% 1.80/0.99  fof(f12,axiom,(
% 1.80/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f26,plain,(
% 1.80/0.99    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.80/0.99    inference(ennf_transformation,[],[f12])).
% 1.80/0.99  
% 1.80/0.99  fof(f27,plain,(
% 1.80/0.99    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.80/0.99    inference(flattening,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f56,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f27])).
% 1.80/0.99  
% 1.80/0.99  fof(f15,conjecture,(
% 1.80/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f16,negated_conjecture,(
% 1.80/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r1_partfun1(X2,X3) => (r2_relset_1(X0,X1,X2,X3) | (k1_xboole_0 != X0 & k1_xboole_0 = X1)))))),
% 1.80/0.99    inference(negated_conjecture,[],[f15])).
% 1.80/0.99  
% 1.80/0.99  fof(f32,plain,(
% 1.80/0.99    ? [X0,X1,X2] : (? [X3] : (((~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1)) & r1_partfun1(X2,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 1.80/0.99    inference(ennf_transformation,[],[f16])).
% 1.80/0.99  
% 1.80/0.99  fof(f33,plain,(
% 1.80/0.99    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 1.80/0.99    inference(flattening,[],[f32])).
% 1.80/0.99  
% 1.80/0.99  fof(f40,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (~r2_relset_1(X0,X1,X2,sK4) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(sK4,X0,X1) & v1_funct_1(sK4))) )),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f39,plain,(
% 1.80/0.99    ? [X0,X1,X2] : (? [X3] : (~r2_relset_1(X0,X1,X2,X3) & (k1_xboole_0 = X0 | k1_xboole_0 != X1) & r1_partfun1(X2,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (~r2_relset_1(sK1,sK2,sK3,X3) & (k1_xboole_0 = sK1 | k1_xboole_0 != sK2) & r1_partfun1(sK3,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(X3,sK1,sK2) & v1_funct_1(X3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK3,sK1,sK2) & v1_funct_1(sK3))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f41,plain,(
% 1.80/0.99    (~r2_relset_1(sK1,sK2,sK3,sK4) & (k1_xboole_0 = sK1 | k1_xboole_0 != sK2) & r1_partfun1(sK3,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK4,sK1,sK2) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK3,sK1,sK2) & v1_funct_1(sK3)),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f33,f40,f39])).
% 1.80/0.99  
% 1.80/0.99  fof(f65,plain,(
% 1.80/0.99    v1_funct_2(sK4,sK1,sK2)),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f64,plain,(
% 1.80/0.99    v1_funct_1(sK4)),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f66,plain,(
% 1.80/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f13,axiom,(
% 1.80/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X3)) => ((r1_partfun1(X2,X3) & v1_partfun1(X3,X0) & v1_partfun1(X2,X0)) => X2 = X3)))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f28,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (! [X3] : ((X2 = X3 | (~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 1.80/0.99    inference(ennf_transformation,[],[f13])).
% 1.80/0.99  
% 1.80/0.99  fof(f29,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (! [X3] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 1.80/0.99    inference(flattening,[],[f28])).
% 1.80/0.99  
% 1.80/0.99  fof(f57,plain,(
% 1.80/0.99    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r1_partfun1(X2,X3) | ~v1_partfun1(X3,X0) | ~v1_partfun1(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f29])).
% 1.80/0.99  
% 1.80/0.99  fof(f67,plain,(
% 1.80/0.99    r1_partfun1(sK3,sK4)),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f61,plain,(
% 1.80/0.99    v1_funct_1(sK3)),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f63,plain,(
% 1.80/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f62,plain,(
% 1.80/0.99    v1_funct_2(sK3,sK1,sK2)),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f2,axiom,(
% 1.80/0.99    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f19,plain,(
% 1.80/0.99    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 1.80/0.99    inference(ennf_transformation,[],[f2])).
% 1.80/0.99  
% 1.80/0.99  fof(f43,plain,(
% 1.80/0.99    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f19])).
% 1.80/0.99  
% 1.80/0.99  fof(f11,axiom,(
% 1.80/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => r2_relset_1(X0,X1,X2,X2))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f24,plain,(
% 1.80/0.99    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 1.80/0.99    inference(ennf_transformation,[],[f11])).
% 1.80/0.99  
% 1.80/0.99  fof(f25,plain,(
% 1.80/0.99    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.80/0.99    inference(flattening,[],[f24])).
% 1.80/0.99  
% 1.80/0.99  fof(f54,plain,(
% 1.80/0.99    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f25])).
% 1.80/0.99  
% 1.80/0.99  fof(f69,plain,(
% 1.80/0.99    ~r2_relset_1(sK1,sK2,sK3,sK4)),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f68,plain,(
% 1.80/0.99    k1_xboole_0 = sK1 | k1_xboole_0 != sK2),
% 1.80/0.99    inference(cnf_transformation,[],[f41])).
% 1.80/0.99  
% 1.80/0.99  fof(f3,axiom,(
% 1.80/0.99    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f34,plain,(
% 1.80/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 1.80/0.99    inference(nnf_transformation,[],[f3])).
% 1.80/0.99  
% 1.80/0.99  fof(f35,plain,(
% 1.80/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 1.80/0.99    inference(flattening,[],[f34])).
% 1.80/0.99  
% 1.80/0.99  fof(f45,plain,(
% 1.80/0.99    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 1.80/0.99    inference(cnf_transformation,[],[f35])).
% 1.80/0.99  
% 1.80/0.99  fof(f71,plain,(
% 1.80/0.99    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 1.80/0.99    inference(equality_resolution,[],[f45])).
% 1.80/0.99  
% 1.80/0.99  fof(f10,axiom,(
% 1.80/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f17,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 1.80/0.99    inference(pure_predicate_removal,[],[f10])).
% 1.80/0.99  
% 1.80/0.99  fof(f23,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.80/0.99    inference(ennf_transformation,[],[f17])).
% 1.80/0.99  
% 1.80/0.99  fof(f53,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f23])).
% 1.80/0.99  
% 1.80/0.99  fof(f8,axiom,(
% 1.80/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f21,plain,(
% 1.80/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.80/0.99    inference(ennf_transformation,[],[f8])).
% 1.80/0.99  
% 1.80/0.99  fof(f38,plain,(
% 1.80/0.99    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.80/0.99    inference(nnf_transformation,[],[f21])).
% 1.80/0.99  
% 1.80/0.99  fof(f50,plain,(
% 1.80/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f38])).
% 1.80/0.99  
% 1.80/0.99  fof(f9,axiom,(
% 1.80/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f22,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.80/0.99    inference(ennf_transformation,[],[f9])).
% 1.80/0.99  
% 1.80/0.99  fof(f52,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f22])).
% 1.80/0.99  
% 1.80/0.99  fof(f14,axiom,(
% 1.80/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f30,plain,(
% 1.80/0.99    ! [X0,X1] : (((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 1.80/0.99    inference(ennf_transformation,[],[f14])).
% 1.80/0.99  
% 1.80/0.99  fof(f31,plain,(
% 1.80/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 1.80/0.99    inference(flattening,[],[f30])).
% 1.80/0.99  
% 1.80/0.99  fof(f60,plain,(
% 1.80/0.99    ( ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f31])).
% 1.80/0.99  
% 1.80/0.99  fof(f6,axiom,(
% 1.80/0.99    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_xboole_0(X1)))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f20,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 1.80/0.99    inference(ennf_transformation,[],[f6])).
% 1.80/0.99  
% 1.80/0.99  fof(f49,plain,(
% 1.80/0.99    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f20])).
% 1.80/0.99  
% 1.80/0.99  fof(f1,axiom,(
% 1.80/0.99    v1_xboole_0(k1_xboole_0)),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f42,plain,(
% 1.80/0.99    v1_xboole_0(k1_xboole_0)),
% 1.80/0.99    inference(cnf_transformation,[],[f1])).
% 1.80/0.99  
% 1.80/0.99  fof(f5,axiom,(
% 1.80/0.99    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f48,plain,(
% 1.80/0.99    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f5])).
% 1.80/0.99  
% 1.80/0.99  cnf(c_5,plain,
% 1.80/0.99      ( m1_subset_1(sK0(X0),X0) ),
% 1.80/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_890,plain,
% 1.80/0.99      ( m1_subset_1(sK0(X0),X0) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_13,plain,
% 1.80/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.80/0.99      | v1_partfun1(X0,X1)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/0.99      | ~ v1_funct_1(X0)
% 1.80/0.99      | v1_xboole_0(X2) ),
% 1.80/0.99      inference(cnf_transformation,[],[f56]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_23,negated_conjecture,
% 1.80/0.99      ( v1_funct_2(sK4,sK1,sK2) ),
% 1.80/0.99      inference(cnf_transformation,[],[f65]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_392,plain,
% 1.80/0.99      ( v1_partfun1(X0,X1)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/0.99      | ~ v1_funct_1(X0)
% 1.80/0.99      | v1_xboole_0(X2)
% 1.80/0.99      | sK4 != X0
% 1.80/0.99      | sK2 != X2
% 1.80/0.99      | sK1 != X1 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_23]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_393,plain,
% 1.80/0.99      ( v1_partfun1(sK4,sK1)
% 1.80/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 1.80/0.99      | ~ v1_funct_1(sK4)
% 1.80/0.99      | v1_xboole_0(sK2) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_392]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_24,negated_conjecture,
% 1.80/0.99      ( v1_funct_1(sK4) ),
% 1.80/0.99      inference(cnf_transformation,[],[f64]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_22,negated_conjecture,
% 1.80/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 1.80/0.99      inference(cnf_transformation,[],[f66]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_395,plain,
% 1.80/0.99      ( v1_partfun1(sK4,sK1) | v1_xboole_0(sK2) ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_393,c_24,c_22]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_883,plain,
% 1.80/0.99      ( v1_partfun1(sK4,sK1) = iProver_top
% 1.80/0.99      | v1_xboole_0(sK2) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_395]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_887,plain,
% 1.80/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_15,plain,
% 1.80/0.99      ( ~ r1_partfun1(X0,X1)
% 1.80/0.99      | ~ v1_partfun1(X1,X2)
% 1.80/0.99      | ~ v1_partfun1(X0,X2)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 1.80/0.99      | ~ v1_funct_1(X0)
% 1.80/0.99      | ~ v1_funct_1(X1)
% 1.80/0.99      | X1 = X0 ),
% 1.80/0.99      inference(cnf_transformation,[],[f57]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_21,negated_conjecture,
% 1.80/0.99      ( r1_partfun1(sK3,sK4) ),
% 1.80/0.99      inference(cnf_transformation,[],[f67]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_292,plain,
% 1.80/0.99      ( ~ v1_partfun1(X0,X1)
% 1.80/0.99      | ~ v1_partfun1(X2,X1)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.80/0.99      | ~ v1_funct_1(X2)
% 1.80/0.99      | ~ v1_funct_1(X0)
% 1.80/0.99      | X0 = X2
% 1.80/0.99      | sK4 != X0
% 1.80/0.99      | sK3 != X2 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_21]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_293,plain,
% 1.80/0.99      ( ~ v1_partfun1(sK4,X0)
% 1.80/0.99      | ~ v1_partfun1(sK3,X0)
% 1.80/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.80/0.99      | ~ v1_funct_1(sK4)
% 1.80/0.99      | ~ v1_funct_1(sK3)
% 1.80/0.99      | sK4 = sK3 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_292]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_27,negated_conjecture,
% 1.80/0.99      ( v1_funct_1(sK3) ),
% 1.80/0.99      inference(cnf_transformation,[],[f61]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_297,plain,
% 1.80/0.99      ( ~ v1_partfun1(sK4,X0)
% 1.80/0.99      | ~ v1_partfun1(sK3,X0)
% 1.80/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.80/0.99      | sK4 = sK3 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_293,c_27,c_24]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_884,plain,
% 1.80/0.99      ( sK4 = sK3
% 1.80/0.99      | v1_partfun1(sK4,X0) != iProver_top
% 1.80/0.99      | v1_partfun1(sK3,X0) != iProver_top
% 1.80/0.99      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 1.80/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_297]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1437,plain,
% 1.80/0.99      ( sK4 = sK3
% 1.80/0.99      | v1_partfun1(sK4,sK1) != iProver_top
% 1.80/0.99      | v1_partfun1(sK3,sK1) != iProver_top
% 1.80/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_887,c_884]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_25,negated_conjecture,
% 1.80/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 1.80/0.99      inference(cnf_transformation,[],[f63]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_30,plain,
% 1.80/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1500,plain,
% 1.80/0.99      ( v1_partfun1(sK3,sK1) != iProver_top
% 1.80/0.99      | v1_partfun1(sK4,sK1) != iProver_top
% 1.80/0.99      | sK4 = sK3 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_1437,c_30]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1501,plain,
% 1.80/0.99      ( sK4 = sK3
% 1.80/0.99      | v1_partfun1(sK4,sK1) != iProver_top
% 1.80/0.99      | v1_partfun1(sK3,sK1) != iProver_top ),
% 1.80/0.99      inference(renaming,[status(thm)],[c_1500]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1610,plain,
% 1.80/0.99      ( sK4 = sK3
% 1.80/0.99      | v1_partfun1(sK3,sK1) != iProver_top
% 1.80/0.99      | v1_xboole_0(sK2) = iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_883,c_1501]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_26,negated_conjecture,
% 1.80/0.99      ( v1_funct_2(sK3,sK1,sK2) ),
% 1.80/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_406,plain,
% 1.80/0.99      ( v1_partfun1(X0,X1)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/0.99      | ~ v1_funct_1(X0)
% 1.80/0.99      | v1_xboole_0(X2)
% 1.80/0.99      | sK3 != X0
% 1.80/0.99      | sK2 != X2
% 1.80/0.99      | sK1 != X1 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_26]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_407,plain,
% 1.80/0.99      ( v1_partfun1(sK3,sK1)
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 1.80/0.99      | ~ v1_funct_1(sK3)
% 1.80/0.99      | v1_xboole_0(sK2) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_406]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_409,plain,
% 1.80/0.99      ( v1_partfun1(sK3,sK1) | v1_xboole_0(sK2) ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_407,c_27,c_25]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_411,plain,
% 1.80/0.99      ( v1_partfun1(sK3,sK1) = iProver_top
% 1.80/0.99      | v1_xboole_0(sK2) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_409]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2354,plain,
% 1.80/0.99      ( sK4 = sK3 | v1_xboole_0(sK2) = iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_1610,c_411]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1,plain,
% 1.80/0.99      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_891,plain,
% 1.80/0.99      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2360,plain,
% 1.80/0.99      ( sK4 = sK3 | sK2 = k1_xboole_0 ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_2354,c_891]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_12,plain,
% 1.80/0.99      ( r2_relset_1(X0,X1,X2,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.80/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 1.80/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_19,negated_conjecture,
% 1.80/0.99      ( ~ r2_relset_1(sK1,sK2,sK3,sK4) ),
% 1.80/0.99      inference(cnf_transformation,[],[f69]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_251,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/0.99      | sK4 != X0
% 1.80/0.99      | sK3 != X0
% 1.80/0.99      | sK2 != X2
% 1.80/0.99      | sK1 != X1 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_19]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_252,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 1.80/0.99      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 1.80/0.99      | sK3 != sK4 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_251]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_256,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 1.80/0.99      | sK3 != sK4 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/1.00                [status(thm)],
% 1.80/1.00                [c_252,c_22]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_885,plain,
% 1.80/1.00      ( sK3 != sK4
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_256]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2647,plain,
% 1.80/1.00      ( sK2 = k1_xboole_0
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_2360,c_885]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2709,plain,
% 1.80/1.00      ( sK2 = k1_xboole_0 ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_890,c_2647]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_886,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2783,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) = iProver_top ),
% 1.80/1.00      inference(demodulation,[status(thm)],[c_2709,c_886]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_20,negated_conjecture,
% 1.80/1.00      ( k1_xboole_0 != sK2 | k1_xboole_0 = sK1 ),
% 1.80/1.00      inference(cnf_transformation,[],[f68]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2784,plain,
% 1.80/1.00      ( sK1 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 1.80/1.00      inference(demodulation,[status(thm)],[c_2709,c_20]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2785,plain,
% 1.80/1.00      ( sK1 = k1_xboole_0 ),
% 1.80/1.00      inference(equality_resolution_simp,[status(thm)],[c_2784]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2788,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
% 1.80/1.00      inference(light_normalisation,[status(thm)],[c_2783,c_2785]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_3,plain,
% 1.80/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 1.80/1.00      inference(cnf_transformation,[],[f71]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2790,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.80/1.00      inference(demodulation,[status(thm)],[c_2788,c_3]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_11,plain,
% 1.80/1.00      ( v5_relat_1(X0,X1)
% 1.80/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 1.80/1.00      inference(cnf_transformation,[],[f53]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_9,plain,
% 1.80/1.00      ( r1_tarski(k2_relat_1(X0),X1)
% 1.80/1.00      | ~ v5_relat_1(X0,X1)
% 1.80/1.00      | ~ v1_relat_1(X0) ),
% 1.80/1.00      inference(cnf_transformation,[],[f50]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_272,plain,
% 1.80/1.00      ( r1_tarski(k2_relat_1(X0),X1)
% 1.80/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 1.80/1.00      | ~ v1_relat_1(X0) ),
% 1.80/1.00      inference(resolution,[status(thm)],[c_11,c_9]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_10,plain,
% 1.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/1.00      | v1_relat_1(X0) ),
% 1.80/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_282,plain,
% 1.80/1.00      ( r1_tarski(k2_relat_1(X0),X1)
% 1.80/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 1.80/1.00      inference(forward_subsumption_resolution,
% 1.80/1.00                [status(thm)],
% 1.80/1.00                [c_272,c_10]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_16,plain,
% 1.80/1.00      ( ~ r1_tarski(k2_relat_1(X0),X1)
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
% 1.80/1.00      | ~ v1_funct_1(X0)
% 1.80/1.00      | ~ v1_relat_1(X0) ),
% 1.80/1.00      inference(cnf_transformation,[],[f60]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_344,plain,
% 1.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
% 1.80/1.00      | ~ v1_funct_1(X0)
% 1.80/1.00      | ~ v1_relat_1(X0) ),
% 1.80/1.00      inference(resolution,[status(thm)],[c_282,c_16]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_348,plain,
% 1.80/1.00      ( ~ v1_funct_1(X0)
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
% 1.80/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.80/1.00      inference(global_propositional_subsumption,
% 1.80/1.00                [status(thm)],
% 1.80/1.00                [c_344,c_10]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_349,plain,
% 1.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
% 1.80/1.00      | ~ v1_funct_1(X0) ),
% 1.80/1.00      inference(renaming,[status(thm)],[c_348]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_469,plain,
% 1.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X2)))
% 1.80/1.00      | sK3 != X0 ),
% 1.80/1.00      inference(resolution_lifted,[status(thm)],[c_349,c_27]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_470,plain,
% 1.80/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.80/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X1))) ),
% 1.80/1.00      inference(unflattening,[status(thm)],[c_469]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_878,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 1.80/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X1))) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_470]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1377,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),X0))) = iProver_top
% 1.80/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_3,c_878]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_7,plain,
% 1.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.80/1.00      | ~ v1_xboole_0(X1)
% 1.80/1.00      | v1_xboole_0(X0) ),
% 1.80/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_888,plain,
% 1.80/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 1.80/1.00      | v1_xboole_0(X1) != iProver_top
% 1.80/1.00      | v1_xboole_0(X0) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2152,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(k1_relat_1(sK3),X0)) != iProver_top
% 1.80/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_1377,c_888]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_0,plain,
% 1.80/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 1.80/1.00      inference(cnf_transformation,[],[f42]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_77,plain,
% 1.80/1.00      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1158,plain,
% 1.80/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(X0))
% 1.80/1.00      | ~ v1_xboole_0(X0)
% 1.80/1.00      | v1_xboole_0(sK3) ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1159,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(X0)) != iProver_top
% 1.80/1.00      | v1_xboole_0(X0) != iProver_top
% 1.80/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_1158]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1161,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.80/1.00      | v1_xboole_0(sK3) = iProver_top
% 1.80/1.00      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_1159]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2485,plain,
% 1.80/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.80/1.00      | v1_xboole_0(sK3) = iProver_top ),
% 1.80/1.00      inference(global_propositional_subsumption,
% 1.80/1.00                [status(thm)],
% 1.80/1.00                [c_2152,c_77,c_1161]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2924,plain,
% 1.80/1.00      ( v1_xboole_0(sK3) = iProver_top ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_2790,c_2485]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_3169,plain,
% 1.80/1.00      ( sK3 = k1_xboole_0 ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_2924,c_891]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2781,plain,
% 1.80/1.00      ( sK4 != sK3
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,k1_xboole_0))) != iProver_top ),
% 1.80/1.00      inference(demodulation,[status(thm)],[c_2709,c_885]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2796,plain,
% 1.80/1.00      ( sK4 != sK3
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) != iProver_top ),
% 1.80/1.00      inference(light_normalisation,[status(thm)],[c_2781,c_2785]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2799,plain,
% 1.80/1.00      ( sK4 != sK3
% 1.80/1.00      | m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.80/1.00      inference(demodulation,[status(thm)],[c_2796,c_3]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_6,plain,
% 1.80/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.80/1.00      inference(cnf_transformation,[],[f48]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_66,plain,
% 1.80/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_68,plain,
% 1.80/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_66]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2836,plain,
% 1.80/1.00      ( sK4 != sK3
% 1.80/1.00      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_2799]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_3088,plain,
% 1.80/1.00      ( sK4 != sK3 ),
% 1.80/1.00      inference(global_propositional_subsumption,
% 1.80/1.00                [status(thm)],
% 1.80/1.00                [c_2799,c_68,c_2836]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_3295,plain,
% 1.80/1.00      ( sK4 != k1_xboole_0 ),
% 1.80/1.00      inference(demodulation,[status(thm)],[c_3169,c_3088]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_603,plain,
% 1.80/1.00      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 1.80/1.00      theory(equality) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2316,plain,
% 1.80/1.00      ( ~ v1_xboole_0(X0)
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(X1,X2))
% 1.80/1.00      | k2_zfmisc_1(X1,X2) != X0 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_603]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2327,plain,
% 1.80/1.00      ( k2_zfmisc_1(X0,X1) != X2
% 1.80/1.00      | v1_xboole_0(X2) != iProver_top
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_2316]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2329,plain,
% 1.80/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) = iProver_top
% 1.80/1.00      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_2327]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_604,plain,
% 1.80/1.00      ( X0 != X1 | X2 != X3 | k2_zfmisc_1(X0,X2) = k2_zfmisc_1(X1,X3) ),
% 1.80/1.00      theory(equality) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2051,plain,
% 1.80/1.00      ( k2_zfmisc_1(sK1,sK2) = k2_zfmisc_1(X0,X1)
% 1.80/1.00      | sK2 != X1
% 1.80/1.00      | sK1 != X0 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_604]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2056,plain,
% 1.80/1.00      ( k2_zfmisc_1(sK1,sK2) = k2_zfmisc_1(k1_xboole_0,k1_xboole_0)
% 1.80/1.00      | sK2 != k1_xboole_0
% 1.80/1.00      | sK1 != k1_xboole_0 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_2051]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1565,plain,
% 1.80/1.00      ( ~ v1_xboole_0(X0)
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(sK1,sK2))
% 1.80/1.00      | k2_zfmisc_1(sK1,sK2) != X0 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_603]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2050,plain,
% 1.80/1.00      ( ~ v1_xboole_0(k2_zfmisc_1(X0,X1))
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(sK1,sK2))
% 1.80/1.00      | k2_zfmisc_1(sK1,sK2) != k2_zfmisc_1(X0,X1) ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_1565]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2052,plain,
% 1.80/1.00      ( k2_zfmisc_1(sK1,sK2) != k2_zfmisc_1(X0,X1)
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(X0,X1)) != iProver_top
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(sK1,sK2)) = iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_2050]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_2054,plain,
% 1.80/1.00      ( k2_zfmisc_1(sK1,sK2) != k2_zfmisc_1(k1_xboole_0,k1_xboole_0)
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(sK1,sK2)) = iProver_top
% 1.80/1.00      | v1_xboole_0(k2_zfmisc_1(k1_xboole_0,k1_xboole_0)) != iProver_top ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_2052]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1835,plain,
% 1.80/1.00      ( v1_xboole_0(k2_zfmisc_1(sK1,sK2)) != iProver_top
% 1.80/1.00      | v1_xboole_0(sK4) = iProver_top ),
% 1.80/1.00      inference(superposition,[status(thm)],[c_887,c_888]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_602,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1096,plain,
% 1.80/1.00      ( X0 != X1 | sK4 != X1 | sK4 = X0 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_602]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1281,plain,
% 1.80/1.00      ( X0 != sK4 | sK4 = X0 | sK4 != sK4 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_1096]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1282,plain,
% 1.80/1.00      ( sK4 != sK4 | sK4 = k1_xboole_0 | k1_xboole_0 != sK4 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_1281]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_601,plain,( X0 = X0 ),theory(equality) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1073,plain,
% 1.80/1.00      ( sK4 = sK4 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_601]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1067,plain,
% 1.80/1.00      ( ~ v1_xboole_0(sK4) | k1_xboole_0 = sK4 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_1]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_1070,plain,
% 1.80/1.00      ( k1_xboole_0 = sK4 | v1_xboole_0(sK4) != iProver_top ),
% 1.80/1.00      inference(predicate_to_equality,[status(thm)],[c_1067]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(c_73,plain,
% 1.80/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 1.80/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 1.80/1.00  
% 1.80/1.00  cnf(contradiction,plain,
% 1.80/1.00      ( $false ),
% 1.80/1.00      inference(minisat,
% 1.80/1.00                [status(thm)],
% 1.80/1.00                [c_3295,c_2785,c_2709,c_2329,c_2056,c_2054,c_1835,c_1282,
% 1.80/1.00                 c_1073,c_1070,c_77,c_73]) ).
% 1.80/1.00  
% 1.80/1.00  
% 1.80/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.80/1.00  
% 1.80/1.00  ------                               Statistics
% 1.80/1.00  
% 1.80/1.00  ------ General
% 1.80/1.00  
% 1.80/1.00  abstr_ref_over_cycles:                  0
% 1.80/1.00  abstr_ref_under_cycles:                 0
% 1.80/1.00  gc_basic_clause_elim:                   0
% 1.80/1.00  forced_gc_time:                         0
% 1.80/1.00  parsing_time:                           0.012
% 1.80/1.00  unif_index_cands_time:                  0.
% 1.80/1.00  unif_index_add_time:                    0.
% 1.80/1.00  orderings_time:                         0.
% 1.80/1.00  out_proof_time:                         0.009
% 1.80/1.00  total_time:                             0.133
% 1.80/1.00  num_of_symbols:                         51
% 1.80/1.00  num_of_terms:                           2728
% 1.80/1.00  
% 1.80/1.00  ------ Preprocessing
% 1.80/1.00  
% 1.80/1.00  num_of_splits:                          0
% 1.80/1.00  num_of_split_atoms:                     0
% 1.80/1.00  num_of_reused_defs:                     0
% 1.80/1.00  num_eq_ax_congr_red:                    11
% 1.80/1.00  num_of_sem_filtered_clauses:            1
% 1.80/1.00  num_of_subtypes:                        0
% 1.80/1.00  monotx_restored_types:                  0
% 1.80/1.00  sat_num_of_epr_types:                   0
% 1.80/1.00  sat_num_of_non_cyclic_types:            0
% 1.80/1.00  sat_guarded_non_collapsed_types:        0
% 1.80/1.00  num_pure_diseq_elim:                    0
% 1.80/1.00  simp_replaced_by:                       0
% 1.80/1.00  res_preprocessed:                       100
% 1.80/1.00  prep_upred:                             0
% 1.80/1.00  prep_unflattend:                        18
% 1.80/1.00  smt_new_axioms:                         0
% 1.80/1.00  pred_elim_cands:                        3
% 1.80/1.00  pred_elim:                              7
% 1.80/1.00  pred_elim_cl:                           7
% 1.80/1.00  pred_elim_cycles:                       9
% 1.80/1.00  merged_defs:                            0
% 1.80/1.00  merged_defs_ncl:                        0
% 1.80/1.00  bin_hyper_res:                          0
% 1.80/1.00  prep_cycles:                            4
% 1.80/1.00  pred_elim_time:                         0.005
% 1.80/1.00  splitting_time:                         0.
% 1.80/1.00  sem_filter_time:                        0.
% 1.80/1.00  monotx_time:                            0.
% 1.80/1.00  subtype_inf_time:                       0.
% 1.80/1.00  
% 1.80/1.00  ------ Problem properties
% 1.80/1.00  
% 1.80/1.00  clauses:                                19
% 1.80/1.00  conjectures:                            3
% 1.80/1.00  epr:                                    5
% 1.80/1.00  horn:                                   14
% 1.80/1.00  ground:                                 6
% 1.80/1.00  unary:                                  7
% 1.80/1.00  binary:                                 7
% 1.80/1.00  lits:                                   38
% 1.80/1.00  lits_eq:                                10
% 1.80/1.00  fd_pure:                                0
% 1.80/1.00  fd_pseudo:                              0
% 1.80/1.00  fd_cond:                                2
% 1.80/1.00  fd_pseudo_cond:                         0
% 1.80/1.00  ac_symbols:                             0
% 1.80/1.00  
% 1.80/1.00  ------ Propositional Solver
% 1.80/1.00  
% 1.80/1.00  prop_solver_calls:                      28
% 1.80/1.00  prop_fast_solver_calls:                 627
% 1.80/1.00  smt_solver_calls:                       0
% 1.80/1.00  smt_fast_solver_calls:                  0
% 1.80/1.00  prop_num_of_clauses:                    1109
% 1.80/1.00  prop_preprocess_simplified:             3881
% 1.80/1.00  prop_fo_subsumed:                       17
% 1.80/1.00  prop_solver_time:                       0.
% 1.80/1.00  smt_solver_time:                        0.
% 1.80/1.00  smt_fast_solver_time:                   0.
% 1.80/1.00  prop_fast_solver_time:                  0.
% 1.80/1.00  prop_unsat_core_time:                   0.
% 1.80/1.00  
% 1.80/1.00  ------ QBF
% 1.80/1.00  
% 1.80/1.00  qbf_q_res:                              0
% 1.80/1.00  qbf_num_tautologies:                    0
% 1.80/1.00  qbf_prep_cycles:                        0
% 1.80/1.00  
% 1.80/1.00  ------ BMC1
% 1.80/1.00  
% 1.80/1.00  bmc1_current_bound:                     -1
% 1.80/1.00  bmc1_last_solved_bound:                 -1
% 1.80/1.00  bmc1_unsat_core_size:                   -1
% 1.80/1.00  bmc1_unsat_core_parents_size:           -1
% 1.80/1.00  bmc1_merge_next_fun:                    0
% 1.80/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.80/1.00  
% 1.80/1.00  ------ Instantiation
% 1.80/1.00  
% 1.80/1.00  inst_num_of_clauses:                    436
% 1.80/1.00  inst_num_in_passive:                    186
% 1.80/1.00  inst_num_in_active:                     250
% 1.80/1.00  inst_num_in_unprocessed:                0
% 1.80/1.00  inst_num_of_loops:                      260
% 1.80/1.00  inst_num_of_learning_restarts:          0
% 1.80/1.00  inst_num_moves_active_passive:          6
% 1.80/1.00  inst_lit_activity:                      0
% 1.80/1.00  inst_lit_activity_moves:                0
% 1.80/1.00  inst_num_tautologies:                   0
% 1.80/1.00  inst_num_prop_implied:                  0
% 1.80/1.00  inst_num_existing_simplified:           0
% 1.80/1.00  inst_num_eq_res_simplified:             0
% 1.80/1.00  inst_num_child_elim:                    0
% 1.80/1.00  inst_num_of_dismatching_blockings:      163
% 1.80/1.00  inst_num_of_non_proper_insts:           402
% 1.80/1.00  inst_num_of_duplicates:                 0
% 1.80/1.00  inst_inst_num_from_inst_to_res:         0
% 1.80/1.00  inst_dismatching_checking_time:         0.
% 1.80/1.00  
% 1.80/1.00  ------ Resolution
% 1.80/1.00  
% 1.80/1.00  res_num_of_clauses:                     0
% 1.80/1.00  res_num_in_passive:                     0
% 1.80/1.00  res_num_in_active:                      0
% 1.80/1.00  res_num_of_loops:                       104
% 1.80/1.00  res_forward_subset_subsumed:            17
% 1.80/1.00  res_backward_subset_subsumed:           0
% 1.80/1.00  res_forward_subsumed:                   0
% 1.80/1.00  res_backward_subsumed:                  0
% 1.80/1.00  res_forward_subsumption_resolution:     2
% 1.80/1.00  res_backward_subsumption_resolution:    0
% 1.80/1.00  res_clause_to_clause_subsumption:       94
% 1.80/1.00  res_orphan_elimination:                 0
% 1.80/1.00  res_tautology_del:                      44
% 1.80/1.00  res_num_eq_res_simplified:              0
% 1.80/1.00  res_num_sel_changes:                    0
% 1.80/1.00  res_moves_from_active_to_pass:          0
% 1.80/1.00  
% 1.80/1.00  ------ Superposition
% 1.80/1.00  
% 1.80/1.00  sup_time_total:                         0.
% 1.80/1.00  sup_time_generating:                    0.
% 1.80/1.00  sup_time_sim_full:                      0.
% 1.80/1.00  sup_time_sim_immed:                     0.
% 1.80/1.00  
% 1.80/1.00  sup_num_of_clauses:                     31
% 1.80/1.00  sup_num_in_active:                      18
% 1.80/1.00  sup_num_in_passive:                     13
% 1.80/1.00  sup_num_of_loops:                       51
% 1.80/1.00  sup_fw_superposition:                   35
% 1.80/1.00  sup_bw_superposition:                   48
% 1.80/1.00  sup_immediate_simplified:               43
% 1.80/1.00  sup_given_eliminated:                   0
% 1.80/1.00  comparisons_done:                       0
% 1.80/1.00  comparisons_avoided:                    3
% 1.80/1.00  
% 1.80/1.00  ------ Simplifications
% 1.80/1.00  
% 1.80/1.00  
% 1.80/1.00  sim_fw_subset_subsumed:                 23
% 1.80/1.00  sim_bw_subset_subsumed:                 11
% 1.80/1.00  sim_fw_subsumed:                        4
% 1.80/1.00  sim_bw_subsumed:                        3
% 1.80/1.00  sim_fw_subsumption_res:                 0
% 1.80/1.00  sim_bw_subsumption_res:                 3
% 1.80/1.00  sim_tautology_del:                      4
% 1.80/1.00  sim_eq_tautology_del:                   2
% 1.80/1.00  sim_eq_res_simp:                        1
% 1.80/1.00  sim_fw_demodulated:                     12
% 1.80/1.00  sim_bw_demodulated:                     32
% 1.80/1.00  sim_light_normalised:                   7
% 1.80/1.00  sim_joinable_taut:                      0
% 1.80/1.00  sim_joinable_simp:                      0
% 1.80/1.00  sim_ac_normalised:                      0
% 1.80/1.00  sim_smt_subsumption:                    0
% 1.80/1.00  
%------------------------------------------------------------------------------
