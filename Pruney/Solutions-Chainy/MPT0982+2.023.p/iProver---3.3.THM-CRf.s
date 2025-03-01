%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:41 EST 2020

% Result     : Theorem 7.86s
% Output     : CNFRefutation 7.86s
% Verified   : 
% Statistics : Number of formulae       :  179 ( 912 expanded)
%              Number of clauses        :  102 ( 289 expanded)
%              Number of leaves         :   20 ( 218 expanded)
%              Depth                    :   17
%              Number of atoms          :  492 (5929 expanded)
%              Number of equality atoms :  234 (2016 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f18,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X4,X1,X2)
            & v1_funct_1(X4) )
         => ( ( v2_funct_1(X4)
              & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 )
           => ( k2_relset_1(X0,X1,X3) = X1
              | k1_xboole_0 = X2 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ! [X4] :
            ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
              & v1_funct_2(X4,X1,X2)
              & v1_funct_1(X4) )
           => ( ( v2_funct_1(X4)
                & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 )
             => ( k2_relset_1(X0,X1,X3) = X1
                | k1_xboole_0 = X2 ) ) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f42,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( k2_relset_1(X0,X1,X3) != X1
          & k1_xboole_0 != X2
          & v2_funct_1(X4)
          & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X4,X1,X2)
          & v1_funct_1(X4) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f43,plain,(
    ? [X0,X1,X2,X3] :
      ( ? [X4] :
          ( k2_relset_1(X0,X1,X3) != X1
          & k1_xboole_0 != X2
          & v2_funct_1(X4)
          & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X4,X1,X2)
          & v1_funct_1(X4) )
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f42])).

fof(f49,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( k2_relset_1(X0,X1,X3) != X1
          & k1_xboole_0 != X2
          & v2_funct_1(X4)
          & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          & v1_funct_2(X4,X1,X2)
          & v1_funct_1(X4) )
     => ( k2_relset_1(X0,X1,X3) != X1
        & k1_xboole_0 != X2
        & v2_funct_1(sK4)
        & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,sK4)) = X2
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_2(sK4,X1,X2)
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,
    ( ? [X0,X1,X2,X3] :
        ( ? [X4] :
            ( k2_relset_1(X0,X1,X3) != X1
            & k1_xboole_0 != X2
            & v2_funct_1(X4)
            & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X4,X1,X2)
            & v1_funct_1(X4) )
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ? [X4] :
          ( k2_relset_1(sK0,sK1,sK3) != sK1
          & k1_xboole_0 != sK2
          & v2_funct_1(X4)
          & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,X4)) = sK2
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
          & v1_funct_2(X4,sK1,sK2)
          & v1_funct_1(X4) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK3,sK0,sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,
    ( k2_relset_1(sK0,sK1,sK3) != sK1
    & k1_xboole_0 != sK2
    & v2_funct_1(sK4)
    & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK4,sK1,sK2)
    & v1_funct_1(sK4)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK3,sK0,sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f43,f49,f48])).

fof(f78,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f50])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f55,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f81,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f50])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( k1_xboole_0 = X1
         => ( ( v1_funct_2(X2,X0,X1)
            <=> k1_xboole_0 = X2 )
            | k1_xboole_0 = X0 ) )
        & ( ( k1_xboole_0 = X1
           => k1_xboole_0 = X0 )
         => ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f38])).

fof(f47,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( ( v1_funct_2(X2,X0,X1)
              | k1_xboole_0 != X2 )
            & ( k1_xboole_0 = X2
              | ~ v1_funct_2(X2,X0,X1) ) )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( ( v1_funct_2(X2,X0,X1)
              | k1_relset_1(X0,X1,X2) != X0 )
            & ( k1_relset_1(X0,X1,X2) = X0
              | ~ v1_funct_2(X2,X0,X1) ) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f39])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f80,plain,(
    v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f50])).

fof(f84,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f50])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( ( v2_funct_1(X1)
          & r1_tarski(X0,k1_relat_1(X1)) )
       => k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f27])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
      | ~ v2_funct_1(X1)
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f83,plain,(
    v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f50])).

fof(f79,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f50])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f54,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f59,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f44])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f45])).

fof(f86,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f52])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f25])).

fof(f60,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f32])).

fof(f65,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f36])).

fof(f68,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f41,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f40])).

fof(f75,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f76,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f50])).

fof(f82,plain,(
    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f50])).

fof(f85,plain,(
    k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_32,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1426,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1431,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2335,plain,
    ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1426,c_1431])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1434,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2896,plain,
    ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2335,c_1434])).

cnf(c_37,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_5805,plain,
    ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2896,c_37])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1439,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_5809,plain,
    ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_5805,c_1439])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1428,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1432,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2833,plain,
    ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1428,c_1432])).

cnf(c_23,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_30,negated_conjecture,
    ( v1_funct_2(sK4,sK1,sK2) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_544,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK4 != X0
    | sK2 != X2
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_30])).

cnf(c_545,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | k1_relset_1(sK1,sK2,sK4) = sK1
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_544])).

cnf(c_26,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_547,plain,
    ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_545,c_29,c_26])).

cnf(c_2835,plain,
    ( k1_relat_1(sK4) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2833,c_547])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_27,negated_conjecture,
    ( v2_funct_1(sK4) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_445,plain,
    ( ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_27])).

cnf(c_446,plain,
    ( ~ r1_tarski(X0,k1_relat_1(sK4))
    | ~ v1_funct_1(sK4)
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_445])).

cnf(c_31,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_450,plain,
    ( ~ r1_tarski(X0,k1_relat_1(sK4))
    | ~ v1_relat_1(sK4)
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_446,c_31])).

cnf(c_1423,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_450])).

cnf(c_40,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_452,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
    | v1_relat_1(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_450])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1503,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_1603,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1503])).

cnf(c_1604,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1603])).

cnf(c_2051,plain,
    ( r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
    | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1423,c_40,c_452,c_1604])).

cnf(c_2052,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2051])).

cnf(c_3050,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
    | r1_tarski(X0,sK1) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2835,c_2052])).

cnf(c_6119,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_5809,c_3050])).

cnf(c_1435,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2266,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1426,c_1435])).

cnf(c_2265,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1428,c_1435])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1437,plain,
    ( k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2960,plain,
    ( k9_relat_1(sK4,k2_relat_1(X0)) = k2_relat_1(k5_relat_1(X0,sK4))
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2265,c_1437])).

cnf(c_5589,plain,
    ( k9_relat_1(sK4,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_2266,c_2960])).

cnf(c_6120,plain,
    ( k10_relat_1(sK4,k2_relat_1(k5_relat_1(sK3,sK4))) = k2_relat_1(sK3) ),
    inference(light_normalisation,[status(thm)],[c_6119,c_5589])).

cnf(c_2334,plain,
    ( k2_relset_1(sK1,sK2,sK4) = k2_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1428,c_1431])).

cnf(c_2898,plain,
    ( m1_subset_1(k2_relat_1(sK4),k1_zfmisc_1(sK2)) = iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2334,c_1434])).

cnf(c_5915,plain,
    ( m1_subset_1(k2_relat_1(sK4),k1_zfmisc_1(sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2898,c_40])).

cnf(c_5919,plain,
    ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_5915,c_1439])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1441,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_6124,plain,
    ( k3_xboole_0(k2_relat_1(sK4),sK2) = k2_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_5919,c_1441])).

cnf(c_8,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1436,plain,
    ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_2441,plain,
    ( k10_relat_1(sK4,k3_xboole_0(k2_relat_1(sK4),X0)) = k10_relat_1(sK4,X0) ),
    inference(superposition,[status(thm)],[c_2265,c_1436])).

cnf(c_6214,plain,
    ( k10_relat_1(sK4,k2_relat_1(sK4)) = k10_relat_1(sK4,sK2) ),
    inference(superposition,[status(thm)],[c_6124,c_2441])).

cnf(c_1,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1442,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_2057,plain,
    ( k10_relat_1(sK4,k9_relat_1(sK4,k1_relat_1(sK4))) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1442,c_2052])).

cnf(c_12,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_9,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_425,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(resolution,[status(thm)],[c_12,c_9])).

cnf(c_429,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relat_1(X0,X1) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_425,c_12,c_11,c_9])).

cnf(c_1424,plain,
    ( k7_relat_1(X0,X1) = X0
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_429])).

cnf(c_2172,plain,
    ( k7_relat_1(sK4,sK1) = sK4 ),
    inference(superposition,[status(thm)],[c_1428,c_1424])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1438,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2442,plain,
    ( k2_relat_1(k7_relat_1(sK4,X0)) = k9_relat_1(sK4,X0) ),
    inference(superposition,[status(thm)],[c_2265,c_1438])).

cnf(c_3188,plain,
    ( k9_relat_1(sK4,sK1) = k2_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_2172,c_2442])).

cnf(c_3415,plain,
    ( k10_relat_1(sK4,k2_relat_1(sK4)) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2057,c_2057,c_2835,c_3188])).

cnf(c_6215,plain,
    ( k10_relat_1(sK4,sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_6214,c_3415])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k4_relset_1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1433,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
    | m1_subset_1(k4_relset_1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2815,plain,
    ( k2_relset_1(X0,X1,k4_relset_1(X0,X2,X3,X1,X4,X5)) = k2_relat_1(k4_relset_1(X0,X2,X3,X1,X4,X5))
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1433,c_1431])).

cnf(c_6030,plain,
    ( k2_relset_1(X0,sK2,k4_relset_1(X0,X1,sK1,sK2,X2,sK4)) = k2_relat_1(k4_relset_1(X0,X1,sK1,sK2,X2,sK4))
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1428,c_2815])).

cnf(c_6359,plain,
    ( k2_relset_1(sK0,sK2,k4_relset_1(sK0,sK1,sK1,sK2,sK3,sK4)) = k2_relat_1(k4_relset_1(sK0,sK1,sK1,sK2,sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_1426,c_6030])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | k4_relset_1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1430,plain,
    ( k4_relset_1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_3570,plain,
    ( k4_relset_1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1428,c_1430])).

cnf(c_3827,plain,
    ( k4_relset_1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(superposition,[status(thm)],[c_1426,c_3570])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1429,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_3589,plain,
    ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1428,c_1429])).

cnf(c_38,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_4444,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3589,c_38])).

cnf(c_4445,plain,
    ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_4444])).

cnf(c_4454,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1426,c_4445])).

cnf(c_34,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_35,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_4788,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4454,c_35])).

cnf(c_28,negated_conjecture,
    ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_4790,plain,
    ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
    inference(demodulation,[status(thm)],[c_4788,c_28])).

cnf(c_6360,plain,
    ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_6359,c_3827,c_4790])).

cnf(c_31922,plain,
    ( k2_relat_1(sK3) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_6120,c_6120,c_6215,c_6360])).

cnf(c_25,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_2639,plain,
    ( k2_relat_1(sK3) != sK1 ),
    inference(demodulation,[status(thm)],[c_2335,c_25])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_31922,c_2639])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:54:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 7.86/1.50  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.86/1.50  
% 7.86/1.50  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.86/1.50  
% 7.86/1.50  ------  iProver source info
% 7.86/1.50  
% 7.86/1.50  git: date: 2020-06-30 10:37:57 +0100
% 7.86/1.50  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.86/1.50  git: non_committed_changes: false
% 7.86/1.50  git: last_make_outside_of_git: false
% 7.86/1.50  
% 7.86/1.50  ------ 
% 7.86/1.50  
% 7.86/1.50  ------ Input Options
% 7.86/1.50  
% 7.86/1.50  --out_options                           all
% 7.86/1.50  --tptp_safe_out                         true
% 7.86/1.50  --problem_path                          ""
% 7.86/1.50  --include_path                          ""
% 7.86/1.50  --clausifier                            res/vclausify_rel
% 7.86/1.50  --clausifier_options                    ""
% 7.86/1.50  --stdin                                 false
% 7.86/1.50  --stats_out                             all
% 7.86/1.50  
% 7.86/1.50  ------ General Options
% 7.86/1.50  
% 7.86/1.50  --fof                                   false
% 7.86/1.50  --time_out_real                         305.
% 7.86/1.50  --time_out_virtual                      -1.
% 7.86/1.50  --symbol_type_check                     false
% 7.86/1.50  --clausify_out                          false
% 7.86/1.50  --sig_cnt_out                           false
% 7.86/1.50  --trig_cnt_out                          false
% 7.86/1.50  --trig_cnt_out_tolerance                1.
% 7.86/1.50  --trig_cnt_out_sk_spl                   false
% 7.86/1.50  --abstr_cl_out                          false
% 7.86/1.50  
% 7.86/1.50  ------ Global Options
% 7.86/1.50  
% 7.86/1.50  --schedule                              default
% 7.86/1.50  --add_important_lit                     false
% 7.86/1.50  --prop_solver_per_cl                    1000
% 7.86/1.50  --min_unsat_core                        false
% 7.86/1.50  --soft_assumptions                      false
% 7.86/1.50  --soft_lemma_size                       3
% 7.86/1.50  --prop_impl_unit_size                   0
% 7.86/1.50  --prop_impl_unit                        []
% 7.86/1.50  --share_sel_clauses                     true
% 7.86/1.50  --reset_solvers                         false
% 7.86/1.50  --bc_imp_inh                            [conj_cone]
% 7.86/1.50  --conj_cone_tolerance                   3.
% 7.86/1.50  --extra_neg_conj                        none
% 7.86/1.50  --large_theory_mode                     true
% 7.86/1.50  --prolific_symb_bound                   200
% 7.86/1.50  --lt_threshold                          2000
% 7.86/1.50  --clause_weak_htbl                      true
% 7.86/1.50  --gc_record_bc_elim                     false
% 7.86/1.50  
% 7.86/1.50  ------ Preprocessing Options
% 7.86/1.50  
% 7.86/1.50  --preprocessing_flag                    true
% 7.86/1.50  --time_out_prep_mult                    0.1
% 7.86/1.50  --splitting_mode                        input
% 7.86/1.50  --splitting_grd                         true
% 7.86/1.50  --splitting_cvd                         false
% 7.86/1.50  --splitting_cvd_svl                     false
% 7.86/1.50  --splitting_nvd                         32
% 7.86/1.50  --sub_typing                            true
% 7.86/1.50  --prep_gs_sim                           true
% 7.86/1.50  --prep_unflatten                        true
% 7.86/1.50  --prep_res_sim                          true
% 7.86/1.50  --prep_upred                            true
% 7.86/1.50  --prep_sem_filter                       exhaustive
% 7.86/1.50  --prep_sem_filter_out                   false
% 7.86/1.50  --pred_elim                             true
% 7.86/1.50  --res_sim_input                         true
% 7.86/1.50  --eq_ax_congr_red                       true
% 7.86/1.50  --pure_diseq_elim                       true
% 7.86/1.50  --brand_transform                       false
% 7.86/1.50  --non_eq_to_eq                          false
% 7.86/1.50  --prep_def_merge                        true
% 7.86/1.50  --prep_def_merge_prop_impl              false
% 7.86/1.50  --prep_def_merge_mbd                    true
% 7.86/1.50  --prep_def_merge_tr_red                 false
% 7.86/1.50  --prep_def_merge_tr_cl                  false
% 7.86/1.50  --smt_preprocessing                     true
% 7.86/1.50  --smt_ac_axioms                         fast
% 7.86/1.50  --preprocessed_out                      false
% 7.86/1.50  --preprocessed_stats                    false
% 7.86/1.50  
% 7.86/1.50  ------ Abstraction refinement Options
% 7.86/1.50  
% 7.86/1.50  --abstr_ref                             []
% 7.86/1.50  --abstr_ref_prep                        false
% 7.86/1.50  --abstr_ref_until_sat                   false
% 7.86/1.50  --abstr_ref_sig_restrict                funpre
% 7.86/1.50  --abstr_ref_af_restrict_to_split_sk     false
% 7.86/1.50  --abstr_ref_under                       []
% 7.86/1.50  
% 7.86/1.50  ------ SAT Options
% 7.86/1.50  
% 7.86/1.50  --sat_mode                              false
% 7.86/1.50  --sat_fm_restart_options                ""
% 7.86/1.50  --sat_gr_def                            false
% 7.86/1.50  --sat_epr_types                         true
% 7.86/1.50  --sat_non_cyclic_types                  false
% 7.86/1.50  --sat_finite_models                     false
% 7.86/1.50  --sat_fm_lemmas                         false
% 7.86/1.50  --sat_fm_prep                           false
% 7.86/1.50  --sat_fm_uc_incr                        true
% 7.86/1.50  --sat_out_model                         small
% 7.86/1.50  --sat_out_clauses                       false
% 7.86/1.50  
% 7.86/1.50  ------ QBF Options
% 7.86/1.50  
% 7.86/1.50  --qbf_mode                              false
% 7.86/1.50  --qbf_elim_univ                         false
% 7.86/1.50  --qbf_dom_inst                          none
% 7.86/1.50  --qbf_dom_pre_inst                      false
% 7.86/1.50  --qbf_sk_in                             false
% 7.86/1.50  --qbf_pred_elim                         true
% 7.86/1.50  --qbf_split                             512
% 7.86/1.50  
% 7.86/1.50  ------ BMC1 Options
% 7.86/1.50  
% 7.86/1.50  --bmc1_incremental                      false
% 7.86/1.50  --bmc1_axioms                           reachable_all
% 7.86/1.50  --bmc1_min_bound                        0
% 7.86/1.50  --bmc1_max_bound                        -1
% 7.86/1.50  --bmc1_max_bound_default                -1
% 7.86/1.50  --bmc1_symbol_reachability              true
% 7.86/1.50  --bmc1_property_lemmas                  false
% 7.86/1.50  --bmc1_k_induction                      false
% 7.86/1.50  --bmc1_non_equiv_states                 false
% 7.86/1.50  --bmc1_deadlock                         false
% 7.86/1.50  --bmc1_ucm                              false
% 7.86/1.50  --bmc1_add_unsat_core                   none
% 7.86/1.50  --bmc1_unsat_core_children              false
% 7.86/1.50  --bmc1_unsat_core_extrapolate_axioms    false
% 7.86/1.50  --bmc1_out_stat                         full
% 7.86/1.50  --bmc1_ground_init                      false
% 7.86/1.50  --bmc1_pre_inst_next_state              false
% 7.86/1.50  --bmc1_pre_inst_state                   false
% 7.86/1.50  --bmc1_pre_inst_reach_state             false
% 7.86/1.50  --bmc1_out_unsat_core                   false
% 7.86/1.50  --bmc1_aig_witness_out                  false
% 7.86/1.50  --bmc1_verbose                          false
% 7.86/1.50  --bmc1_dump_clauses_tptp                false
% 7.86/1.50  --bmc1_dump_unsat_core_tptp             false
% 7.86/1.50  --bmc1_dump_file                        -
% 7.86/1.50  --bmc1_ucm_expand_uc_limit              128
% 7.86/1.50  --bmc1_ucm_n_expand_iterations          6
% 7.86/1.50  --bmc1_ucm_extend_mode                  1
% 7.86/1.50  --bmc1_ucm_init_mode                    2
% 7.86/1.50  --bmc1_ucm_cone_mode                    none
% 7.86/1.50  --bmc1_ucm_reduced_relation_type        0
% 7.86/1.50  --bmc1_ucm_relax_model                  4
% 7.86/1.50  --bmc1_ucm_full_tr_after_sat            true
% 7.86/1.50  --bmc1_ucm_expand_neg_assumptions       false
% 7.86/1.50  --bmc1_ucm_layered_model                none
% 7.86/1.50  --bmc1_ucm_max_lemma_size               10
% 7.86/1.50  
% 7.86/1.50  ------ AIG Options
% 7.86/1.50  
% 7.86/1.50  --aig_mode                              false
% 7.86/1.50  
% 7.86/1.50  ------ Instantiation Options
% 7.86/1.50  
% 7.86/1.50  --instantiation_flag                    true
% 7.86/1.50  --inst_sos_flag                         true
% 7.86/1.50  --inst_sos_phase                        true
% 7.86/1.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.86/1.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.86/1.50  --inst_lit_sel_side                     num_symb
% 7.86/1.50  --inst_solver_per_active                1400
% 7.86/1.50  --inst_solver_calls_frac                1.
% 7.86/1.50  --inst_passive_queue_type               priority_queues
% 7.86/1.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.86/1.50  --inst_passive_queues_freq              [25;2]
% 7.86/1.50  --inst_dismatching                      true
% 7.86/1.50  --inst_eager_unprocessed_to_passive     true
% 7.86/1.50  --inst_prop_sim_given                   true
% 7.86/1.50  --inst_prop_sim_new                     false
% 7.86/1.50  --inst_subs_new                         false
% 7.86/1.50  --inst_eq_res_simp                      false
% 7.86/1.50  --inst_subs_given                       false
% 7.86/1.50  --inst_orphan_elimination               true
% 7.86/1.50  --inst_learning_loop_flag               true
% 7.86/1.50  --inst_learning_start                   3000
% 7.86/1.50  --inst_learning_factor                  2
% 7.86/1.50  --inst_start_prop_sim_after_learn       3
% 7.86/1.50  --inst_sel_renew                        solver
% 7.86/1.50  --inst_lit_activity_flag                true
% 7.86/1.50  --inst_restr_to_given                   false
% 7.86/1.50  --inst_activity_threshold               500
% 7.86/1.50  --inst_out_proof                        true
% 7.86/1.50  
% 7.86/1.50  ------ Resolution Options
% 7.86/1.50  
% 7.86/1.50  --resolution_flag                       true
% 7.86/1.50  --res_lit_sel                           adaptive
% 7.86/1.50  --res_lit_sel_side                      none
% 7.86/1.50  --res_ordering                          kbo
% 7.86/1.50  --res_to_prop_solver                    active
% 7.86/1.50  --res_prop_simpl_new                    false
% 7.86/1.50  --res_prop_simpl_given                  true
% 7.86/1.50  --res_passive_queue_type                priority_queues
% 7.86/1.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.86/1.50  --res_passive_queues_freq               [15;5]
% 7.86/1.50  --res_forward_subs                      full
% 7.86/1.50  --res_backward_subs                     full
% 7.86/1.50  --res_forward_subs_resolution           true
% 7.86/1.50  --res_backward_subs_resolution          true
% 7.86/1.50  --res_orphan_elimination                true
% 7.86/1.50  --res_time_limit                        2.
% 7.86/1.50  --res_out_proof                         true
% 7.86/1.50  
% 7.86/1.50  ------ Superposition Options
% 7.86/1.50  
% 7.86/1.50  --superposition_flag                    true
% 7.86/1.50  --sup_passive_queue_type                priority_queues
% 7.86/1.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.86/1.50  --sup_passive_queues_freq               [8;1;4]
% 7.86/1.50  --demod_completeness_check              fast
% 7.86/1.50  --demod_use_ground                      true
% 7.86/1.50  --sup_to_prop_solver                    passive
% 7.86/1.50  --sup_prop_simpl_new                    true
% 7.86/1.50  --sup_prop_simpl_given                  true
% 7.86/1.50  --sup_fun_splitting                     true
% 7.86/1.50  --sup_smt_interval                      50000
% 7.86/1.50  
% 7.86/1.50  ------ Superposition Simplification Setup
% 7.86/1.50  
% 7.86/1.50  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.86/1.50  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.86/1.50  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.86/1.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.86/1.50  --sup_full_triv                         [TrivRules;PropSubs]
% 7.86/1.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.86/1.50  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.86/1.50  --sup_immed_triv                        [TrivRules]
% 7.86/1.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.86/1.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.86/1.50  --sup_immed_bw_main                     []
% 7.86/1.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.86/1.50  --sup_input_triv                        [Unflattening;TrivRules]
% 7.86/1.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.86/1.50  --sup_input_bw                          []
% 7.86/1.50  
% 7.86/1.50  ------ Combination Options
% 7.86/1.50  
% 7.86/1.50  --comb_res_mult                         3
% 7.86/1.50  --comb_sup_mult                         2
% 7.86/1.50  --comb_inst_mult                        10
% 7.86/1.50  
% 7.86/1.50  ------ Debug Options
% 7.86/1.50  
% 7.86/1.50  --dbg_backtrace                         false
% 7.86/1.50  --dbg_dump_prop_clauses                 false
% 7.86/1.50  --dbg_dump_prop_clauses_file            -
% 7.86/1.50  --dbg_out_stat                          false
% 7.86/1.50  ------ Parsing...
% 7.86/1.50  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.86/1.50  
% 7.86/1.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 7.86/1.50  
% 7.86/1.50  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.86/1.50  
% 7.86/1.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.86/1.50  ------ Proving...
% 7.86/1.50  ------ Problem Properties 
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  clauses                                 30
% 7.86/1.50  conjectures                             7
% 7.86/1.50  EPR                                     5
% 7.86/1.50  Horn                                    27
% 7.86/1.50  unary                                   9
% 7.86/1.50  binary                                  11
% 7.86/1.50  lits                                    65
% 7.86/1.50  lits eq                                 27
% 7.86/1.50  fd_pure                                 0
% 7.86/1.50  fd_pseudo                               0
% 7.86/1.50  fd_cond                                 0
% 7.86/1.50  fd_pseudo_cond                          1
% 7.86/1.50  AC symbols                              0
% 7.86/1.50  
% 7.86/1.50  ------ Schedule dynamic 5 is on 
% 7.86/1.50  
% 7.86/1.50  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  ------ 
% 7.86/1.50  Current options:
% 7.86/1.50  ------ 
% 7.86/1.50  
% 7.86/1.50  ------ Input Options
% 7.86/1.50  
% 7.86/1.50  --out_options                           all
% 7.86/1.50  --tptp_safe_out                         true
% 7.86/1.50  --problem_path                          ""
% 7.86/1.50  --include_path                          ""
% 7.86/1.50  --clausifier                            res/vclausify_rel
% 7.86/1.50  --clausifier_options                    ""
% 7.86/1.50  --stdin                                 false
% 7.86/1.50  --stats_out                             all
% 7.86/1.50  
% 7.86/1.50  ------ General Options
% 7.86/1.50  
% 7.86/1.50  --fof                                   false
% 7.86/1.50  --time_out_real                         305.
% 7.86/1.50  --time_out_virtual                      -1.
% 7.86/1.50  --symbol_type_check                     false
% 7.86/1.50  --clausify_out                          false
% 7.86/1.50  --sig_cnt_out                           false
% 7.86/1.50  --trig_cnt_out                          false
% 7.86/1.50  --trig_cnt_out_tolerance                1.
% 7.86/1.50  --trig_cnt_out_sk_spl                   false
% 7.86/1.50  --abstr_cl_out                          false
% 7.86/1.50  
% 7.86/1.50  ------ Global Options
% 7.86/1.50  
% 7.86/1.50  --schedule                              default
% 7.86/1.50  --add_important_lit                     false
% 7.86/1.50  --prop_solver_per_cl                    1000
% 7.86/1.50  --min_unsat_core                        false
% 7.86/1.50  --soft_assumptions                      false
% 7.86/1.50  --soft_lemma_size                       3
% 7.86/1.50  --prop_impl_unit_size                   0
% 7.86/1.50  --prop_impl_unit                        []
% 7.86/1.50  --share_sel_clauses                     true
% 7.86/1.50  --reset_solvers                         false
% 7.86/1.50  --bc_imp_inh                            [conj_cone]
% 7.86/1.50  --conj_cone_tolerance                   3.
% 7.86/1.50  --extra_neg_conj                        none
% 7.86/1.50  --large_theory_mode                     true
% 7.86/1.50  --prolific_symb_bound                   200
% 7.86/1.50  --lt_threshold                          2000
% 7.86/1.50  --clause_weak_htbl                      true
% 7.86/1.50  --gc_record_bc_elim                     false
% 7.86/1.50  
% 7.86/1.50  ------ Preprocessing Options
% 7.86/1.50  
% 7.86/1.50  --preprocessing_flag                    true
% 7.86/1.50  --time_out_prep_mult                    0.1
% 7.86/1.50  --splitting_mode                        input
% 7.86/1.50  --splitting_grd                         true
% 7.86/1.50  --splitting_cvd                         false
% 7.86/1.50  --splitting_cvd_svl                     false
% 7.86/1.50  --splitting_nvd                         32
% 7.86/1.50  --sub_typing                            true
% 7.86/1.50  --prep_gs_sim                           true
% 7.86/1.50  --prep_unflatten                        true
% 7.86/1.50  --prep_res_sim                          true
% 7.86/1.50  --prep_upred                            true
% 7.86/1.50  --prep_sem_filter                       exhaustive
% 7.86/1.50  --prep_sem_filter_out                   false
% 7.86/1.50  --pred_elim                             true
% 7.86/1.50  --res_sim_input                         true
% 7.86/1.50  --eq_ax_congr_red                       true
% 7.86/1.50  --pure_diseq_elim                       true
% 7.86/1.50  --brand_transform                       false
% 7.86/1.50  --non_eq_to_eq                          false
% 7.86/1.50  --prep_def_merge                        true
% 7.86/1.50  --prep_def_merge_prop_impl              false
% 7.86/1.50  --prep_def_merge_mbd                    true
% 7.86/1.50  --prep_def_merge_tr_red                 false
% 7.86/1.50  --prep_def_merge_tr_cl                  false
% 7.86/1.50  --smt_preprocessing                     true
% 7.86/1.50  --smt_ac_axioms                         fast
% 7.86/1.50  --preprocessed_out                      false
% 7.86/1.50  --preprocessed_stats                    false
% 7.86/1.50  
% 7.86/1.50  ------ Abstraction refinement Options
% 7.86/1.50  
% 7.86/1.50  --abstr_ref                             []
% 7.86/1.50  --abstr_ref_prep                        false
% 7.86/1.50  --abstr_ref_until_sat                   false
% 7.86/1.50  --abstr_ref_sig_restrict                funpre
% 7.86/1.50  --abstr_ref_af_restrict_to_split_sk     false
% 7.86/1.50  --abstr_ref_under                       []
% 7.86/1.50  
% 7.86/1.50  ------ SAT Options
% 7.86/1.50  
% 7.86/1.50  --sat_mode                              false
% 7.86/1.50  --sat_fm_restart_options                ""
% 7.86/1.50  --sat_gr_def                            false
% 7.86/1.50  --sat_epr_types                         true
% 7.86/1.50  --sat_non_cyclic_types                  false
% 7.86/1.50  --sat_finite_models                     false
% 7.86/1.50  --sat_fm_lemmas                         false
% 7.86/1.50  --sat_fm_prep                           false
% 7.86/1.50  --sat_fm_uc_incr                        true
% 7.86/1.50  --sat_out_model                         small
% 7.86/1.50  --sat_out_clauses                       false
% 7.86/1.50  
% 7.86/1.50  ------ QBF Options
% 7.86/1.50  
% 7.86/1.50  --qbf_mode                              false
% 7.86/1.50  --qbf_elim_univ                         false
% 7.86/1.50  --qbf_dom_inst                          none
% 7.86/1.50  --qbf_dom_pre_inst                      false
% 7.86/1.50  --qbf_sk_in                             false
% 7.86/1.50  --qbf_pred_elim                         true
% 7.86/1.50  --qbf_split                             512
% 7.86/1.50  
% 7.86/1.50  ------ BMC1 Options
% 7.86/1.50  
% 7.86/1.50  --bmc1_incremental                      false
% 7.86/1.50  --bmc1_axioms                           reachable_all
% 7.86/1.50  --bmc1_min_bound                        0
% 7.86/1.50  --bmc1_max_bound                        -1
% 7.86/1.50  --bmc1_max_bound_default                -1
% 7.86/1.50  --bmc1_symbol_reachability              true
% 7.86/1.50  --bmc1_property_lemmas                  false
% 7.86/1.50  --bmc1_k_induction                      false
% 7.86/1.50  --bmc1_non_equiv_states                 false
% 7.86/1.50  --bmc1_deadlock                         false
% 7.86/1.50  --bmc1_ucm                              false
% 7.86/1.50  --bmc1_add_unsat_core                   none
% 7.86/1.50  --bmc1_unsat_core_children              false
% 7.86/1.50  --bmc1_unsat_core_extrapolate_axioms    false
% 7.86/1.50  --bmc1_out_stat                         full
% 7.86/1.50  --bmc1_ground_init                      false
% 7.86/1.50  --bmc1_pre_inst_next_state              false
% 7.86/1.50  --bmc1_pre_inst_state                   false
% 7.86/1.50  --bmc1_pre_inst_reach_state             false
% 7.86/1.50  --bmc1_out_unsat_core                   false
% 7.86/1.50  --bmc1_aig_witness_out                  false
% 7.86/1.50  --bmc1_verbose                          false
% 7.86/1.50  --bmc1_dump_clauses_tptp                false
% 7.86/1.50  --bmc1_dump_unsat_core_tptp             false
% 7.86/1.50  --bmc1_dump_file                        -
% 7.86/1.50  --bmc1_ucm_expand_uc_limit              128
% 7.86/1.50  --bmc1_ucm_n_expand_iterations          6
% 7.86/1.50  --bmc1_ucm_extend_mode                  1
% 7.86/1.50  --bmc1_ucm_init_mode                    2
% 7.86/1.50  --bmc1_ucm_cone_mode                    none
% 7.86/1.50  --bmc1_ucm_reduced_relation_type        0
% 7.86/1.50  --bmc1_ucm_relax_model                  4
% 7.86/1.50  --bmc1_ucm_full_tr_after_sat            true
% 7.86/1.50  --bmc1_ucm_expand_neg_assumptions       false
% 7.86/1.50  --bmc1_ucm_layered_model                none
% 7.86/1.50  --bmc1_ucm_max_lemma_size               10
% 7.86/1.50  
% 7.86/1.50  ------ AIG Options
% 7.86/1.50  
% 7.86/1.50  --aig_mode                              false
% 7.86/1.50  
% 7.86/1.50  ------ Instantiation Options
% 7.86/1.50  
% 7.86/1.50  --instantiation_flag                    true
% 7.86/1.50  --inst_sos_flag                         true
% 7.86/1.50  --inst_sos_phase                        true
% 7.86/1.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.86/1.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.86/1.50  --inst_lit_sel_side                     none
% 7.86/1.50  --inst_solver_per_active                1400
% 7.86/1.50  --inst_solver_calls_frac                1.
% 7.86/1.50  --inst_passive_queue_type               priority_queues
% 7.86/1.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.86/1.50  --inst_passive_queues_freq              [25;2]
% 7.86/1.50  --inst_dismatching                      true
% 7.86/1.50  --inst_eager_unprocessed_to_passive     true
% 7.86/1.50  --inst_prop_sim_given                   true
% 7.86/1.50  --inst_prop_sim_new                     false
% 7.86/1.50  --inst_subs_new                         false
% 7.86/1.50  --inst_eq_res_simp                      false
% 7.86/1.50  --inst_subs_given                       false
% 7.86/1.50  --inst_orphan_elimination               true
% 7.86/1.50  --inst_learning_loop_flag               true
% 7.86/1.50  --inst_learning_start                   3000
% 7.86/1.50  --inst_learning_factor                  2
% 7.86/1.50  --inst_start_prop_sim_after_learn       3
% 7.86/1.50  --inst_sel_renew                        solver
% 7.86/1.50  --inst_lit_activity_flag                true
% 7.86/1.50  --inst_restr_to_given                   false
% 7.86/1.50  --inst_activity_threshold               500
% 7.86/1.50  --inst_out_proof                        true
% 7.86/1.50  
% 7.86/1.50  ------ Resolution Options
% 7.86/1.50  
% 7.86/1.50  --resolution_flag                       false
% 7.86/1.50  --res_lit_sel                           adaptive
% 7.86/1.50  --res_lit_sel_side                      none
% 7.86/1.50  --res_ordering                          kbo
% 7.86/1.50  --res_to_prop_solver                    active
% 7.86/1.50  --res_prop_simpl_new                    false
% 7.86/1.50  --res_prop_simpl_given                  true
% 7.86/1.50  --res_passive_queue_type                priority_queues
% 7.86/1.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.86/1.50  --res_passive_queues_freq               [15;5]
% 7.86/1.50  --res_forward_subs                      full
% 7.86/1.50  --res_backward_subs                     full
% 7.86/1.50  --res_forward_subs_resolution           true
% 7.86/1.50  --res_backward_subs_resolution          true
% 7.86/1.50  --res_orphan_elimination                true
% 7.86/1.50  --res_time_limit                        2.
% 7.86/1.50  --res_out_proof                         true
% 7.86/1.50  
% 7.86/1.50  ------ Superposition Options
% 7.86/1.50  
% 7.86/1.50  --superposition_flag                    true
% 7.86/1.50  --sup_passive_queue_type                priority_queues
% 7.86/1.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.86/1.50  --sup_passive_queues_freq               [8;1;4]
% 7.86/1.50  --demod_completeness_check              fast
% 7.86/1.50  --demod_use_ground                      true
% 7.86/1.50  --sup_to_prop_solver                    passive
% 7.86/1.50  --sup_prop_simpl_new                    true
% 7.86/1.50  --sup_prop_simpl_given                  true
% 7.86/1.50  --sup_fun_splitting                     true
% 7.86/1.50  --sup_smt_interval                      50000
% 7.86/1.50  
% 7.86/1.50  ------ Superposition Simplification Setup
% 7.86/1.50  
% 7.86/1.50  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.86/1.50  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.86/1.50  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.86/1.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.86/1.50  --sup_full_triv                         [TrivRules;PropSubs]
% 7.86/1.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.86/1.50  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.86/1.50  --sup_immed_triv                        [TrivRules]
% 7.86/1.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.86/1.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.86/1.50  --sup_immed_bw_main                     []
% 7.86/1.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.86/1.50  --sup_input_triv                        [Unflattening;TrivRules]
% 7.86/1.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.86/1.50  --sup_input_bw                          []
% 7.86/1.50  
% 7.86/1.50  ------ Combination Options
% 7.86/1.50  
% 7.86/1.50  --comb_res_mult                         3
% 7.86/1.50  --comb_sup_mult                         2
% 7.86/1.50  --comb_inst_mult                        10
% 7.86/1.50  
% 7.86/1.50  ------ Debug Options
% 7.86/1.50  
% 7.86/1.50  --dbg_backtrace                         false
% 7.86/1.50  --dbg_dump_prop_clauses                 false
% 7.86/1.50  --dbg_dump_prop_clauses_file            -
% 7.86/1.50  --dbg_out_stat                          false
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  ------ Proving...
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  % SZS status Theorem for theBenchmark.p
% 7.86/1.50  
% 7.86/1.50  % SZS output start CNFRefutation for theBenchmark.p
% 7.86/1.50  
% 7.86/1.50  fof(f18,conjecture,(
% 7.86/1.50    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f19,negated_conjecture,(
% 7.86/1.50    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2) => (k2_relset_1(X0,X1,X3) = X1 | k1_xboole_0 = X2))))),
% 7.86/1.50    inference(negated_conjecture,[],[f18])).
% 7.86/1.50  
% 7.86/1.50  fof(f42,plain,(
% 7.86/1.50    ? [X0,X1,X2,X3] : (? [X4] : (((k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2) & (v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 7.86/1.50    inference(ennf_transformation,[],[f19])).
% 7.86/1.50  
% 7.86/1.50  fof(f43,plain,(
% 7.86/1.50    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 7.86/1.50    inference(flattening,[],[f42])).
% 7.86/1.50  
% 7.86/1.50  fof(f49,plain,(
% 7.86/1.50    ( ! [X2,X0,X3,X1] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(sK4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,sK4)) = X2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(sK4,X1,X2) & v1_funct_1(sK4))) )),
% 7.86/1.50    introduced(choice_axiom,[])).
% 7.86/1.50  
% 7.86/1.50  fof(f48,plain,(
% 7.86/1.50    ? [X0,X1,X2,X3] : (? [X4] : (k2_relset_1(X0,X1,X3) != X1 & k1_xboole_0 != X2 & v2_funct_1(X4) & k2_relset_1(X0,X2,k1_partfun1(X0,X1,X1,X2,X3,X4)) = X2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (? [X4] : (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(X4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,X4)) = sK2 & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(X4,sK1,sK2) & v1_funct_1(X4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3))),
% 7.86/1.50    introduced(choice_axiom,[])).
% 7.86/1.50  
% 7.86/1.50  fof(f50,plain,(
% 7.86/1.50    (k2_relset_1(sK0,sK1,sK3) != sK1 & k1_xboole_0 != sK2 & v2_funct_1(sK4) & k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK4,sK1,sK2) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK3,sK0,sK1) & v1_funct_1(sK3)),
% 7.86/1.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f43,f49,f48])).
% 7.86/1.50  
% 7.86/1.50  fof(f78,plain,(
% 7.86/1.50    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f14,axiom,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f35,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(ennf_transformation,[],[f14])).
% 7.86/1.50  
% 7.86/1.50  fof(f67,plain,(
% 7.86/1.50    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f35])).
% 7.86/1.50  
% 7.86/1.50  fof(f11,axiom,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f31,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(ennf_transformation,[],[f11])).
% 7.86/1.50  
% 7.86/1.50  fof(f64,plain,(
% 7.86/1.50    ( ! [X2,X0,X1] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f31])).
% 7.86/1.50  
% 7.86/1.50  fof(f3,axiom,(
% 7.86/1.50    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f46,plain,(
% 7.86/1.50    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 7.86/1.50    inference(nnf_transformation,[],[f3])).
% 7.86/1.50  
% 7.86/1.50  fof(f55,plain,(
% 7.86/1.50    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f46])).
% 7.86/1.50  
% 7.86/1.50  fof(f81,plain,(
% 7.86/1.50    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f13,axiom,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f34,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(ennf_transformation,[],[f13])).
% 7.86/1.50  
% 7.86/1.50  fof(f66,plain,(
% 7.86/1.50    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f34])).
% 7.86/1.50  
% 7.86/1.50  fof(f16,axiom,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f38,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(ennf_transformation,[],[f16])).
% 7.86/1.50  
% 7.86/1.50  fof(f39,plain,(
% 7.86/1.50    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(flattening,[],[f38])).
% 7.86/1.50  
% 7.86/1.50  fof(f47,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(nnf_transformation,[],[f39])).
% 7.86/1.50  
% 7.86/1.50  fof(f69,plain,(
% 7.86/1.50    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f47])).
% 7.86/1.50  
% 7.86/1.50  fof(f80,plain,(
% 7.86/1.50    v1_funct_2(sK4,sK1,sK2)),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f84,plain,(
% 7.86/1.50    k1_xboole_0 != sK2),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f8,axiom,(
% 7.86/1.50    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((v2_funct_1(X1) & r1_tarski(X0,k1_relat_1(X1))) => k10_relat_1(X1,k9_relat_1(X1,X0)) = X0))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f27,plain,(
% 7.86/1.50    ! [X0,X1] : ((k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | (~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 7.86/1.50    inference(ennf_transformation,[],[f8])).
% 7.86/1.50  
% 7.86/1.50  fof(f28,plain,(
% 7.86/1.50    ! [X0,X1] : (k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | ~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 7.86/1.50    inference(flattening,[],[f27])).
% 7.86/1.50  
% 7.86/1.50  fof(f61,plain,(
% 7.86/1.50    ( ! [X0,X1] : (k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 | ~v2_funct_1(X1) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f28])).
% 7.86/1.50  
% 7.86/1.50  fof(f83,plain,(
% 7.86/1.50    v2_funct_1(sK4)),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f79,plain,(
% 7.86/1.50    v1_funct_1(sK4)),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f9,axiom,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f29,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(ennf_transformation,[],[f9])).
% 7.86/1.50  
% 7.86/1.50  fof(f62,plain,(
% 7.86/1.50    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f29])).
% 7.86/1.50  
% 7.86/1.50  fof(f5,axiom,(
% 7.86/1.50    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f23,plain,(
% 7.86/1.50    ! [X0] : (! [X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 7.86/1.50    inference(ennf_transformation,[],[f5])).
% 7.86/1.50  
% 7.86/1.50  fof(f58,plain,(
% 7.86/1.50    ( ! [X0,X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f23])).
% 7.86/1.50  
% 7.86/1.50  fof(f2,axiom,(
% 7.86/1.50    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f21,plain,(
% 7.86/1.50    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 7.86/1.50    inference(ennf_transformation,[],[f2])).
% 7.86/1.50  
% 7.86/1.50  fof(f54,plain,(
% 7.86/1.50    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f21])).
% 7.86/1.50  
% 7.86/1.50  fof(f6,axiom,(
% 7.86/1.50    ! [X0,X1] : (v1_relat_1(X1) => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f24,plain,(
% 7.86/1.50    ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 7.86/1.50    inference(ennf_transformation,[],[f6])).
% 7.86/1.50  
% 7.86/1.50  fof(f59,plain,(
% 7.86/1.50    ( ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f24])).
% 7.86/1.50  
% 7.86/1.50  fof(f1,axiom,(
% 7.86/1.50    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f44,plain,(
% 7.86/1.50    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 7.86/1.50    inference(nnf_transformation,[],[f1])).
% 7.86/1.50  
% 7.86/1.50  fof(f45,plain,(
% 7.86/1.50    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 7.86/1.50    inference(flattening,[],[f44])).
% 7.86/1.50  
% 7.86/1.50  fof(f52,plain,(
% 7.86/1.50    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 7.86/1.50    inference(cnf_transformation,[],[f45])).
% 7.86/1.50  
% 7.86/1.50  fof(f86,plain,(
% 7.86/1.50    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 7.86/1.50    inference(equality_resolution,[],[f52])).
% 7.86/1.50  
% 7.86/1.50  fof(f10,axiom,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f20,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 7.86/1.50    inference(pure_predicate_removal,[],[f10])).
% 7.86/1.50  
% 7.86/1.50  fof(f30,plain,(
% 7.86/1.50    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(ennf_transformation,[],[f20])).
% 7.86/1.50  
% 7.86/1.50  fof(f63,plain,(
% 7.86/1.50    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f30])).
% 7.86/1.50  
% 7.86/1.50  fof(f7,axiom,(
% 7.86/1.50    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f25,plain,(
% 7.86/1.50    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 7.86/1.50    inference(ennf_transformation,[],[f7])).
% 7.86/1.50  
% 7.86/1.50  fof(f26,plain,(
% 7.86/1.50    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 7.86/1.50    inference(flattening,[],[f25])).
% 7.86/1.50  
% 7.86/1.50  fof(f60,plain,(
% 7.86/1.50    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f26])).
% 7.86/1.50  
% 7.86/1.50  fof(f4,axiom,(
% 7.86/1.50    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f22,plain,(
% 7.86/1.50    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 7.86/1.50    inference(ennf_transformation,[],[f4])).
% 7.86/1.50  
% 7.86/1.50  fof(f57,plain,(
% 7.86/1.50    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f22])).
% 7.86/1.50  
% 7.86/1.50  fof(f12,axiom,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f32,plain,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 7.86/1.50    inference(ennf_transformation,[],[f12])).
% 7.86/1.50  
% 7.86/1.50  fof(f33,plain,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : (m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(flattening,[],[f32])).
% 7.86/1.50  
% 7.86/1.50  fof(f65,plain,(
% 7.86/1.50    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k4_relset_1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f33])).
% 7.86/1.50  
% 7.86/1.50  fof(f15,axiom,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f36,plain,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 7.86/1.50    inference(ennf_transformation,[],[f15])).
% 7.86/1.50  
% 7.86/1.50  fof(f37,plain,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.86/1.50    inference(flattening,[],[f36])).
% 7.86/1.50  
% 7.86/1.50  fof(f68,plain,(
% 7.86/1.50    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k4_relset_1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.86/1.50    inference(cnf_transformation,[],[f37])).
% 7.86/1.50  
% 7.86/1.50  fof(f17,axiom,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 7.86/1.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.86/1.50  
% 7.86/1.50  fof(f40,plain,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 7.86/1.50    inference(ennf_transformation,[],[f17])).
% 7.86/1.50  
% 7.86/1.50  fof(f41,plain,(
% 7.86/1.50    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 7.86/1.50    inference(flattening,[],[f40])).
% 7.86/1.50  
% 7.86/1.50  fof(f75,plain,(
% 7.86/1.50    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 7.86/1.50    inference(cnf_transformation,[],[f41])).
% 7.86/1.50  
% 7.86/1.50  fof(f76,plain,(
% 7.86/1.50    v1_funct_1(sK3)),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f82,plain,(
% 7.86/1.50    k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  fof(f85,plain,(
% 7.86/1.50    k2_relset_1(sK0,sK1,sK3) != sK1),
% 7.86/1.50    inference(cnf_transformation,[],[f50])).
% 7.86/1.50  
% 7.86/1.50  cnf(c_32,negated_conjecture,
% 7.86/1.50      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 7.86/1.50      inference(cnf_transformation,[],[f78]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1426,plain,
% 7.86/1.50      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_16,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 7.86/1.50      inference(cnf_transformation,[],[f67]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1431,plain,
% 7.86/1.50      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2335,plain,
% 7.86/1.50      ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1426,c_1431]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_13,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
% 7.86/1.50      inference(cnf_transformation,[],[f64]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1434,plain,
% 7.86/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 7.86/1.50      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2896,plain,
% 7.86/1.50      ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top
% 7.86/1.50      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2335,c_1434]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_37,plain,
% 7.86/1.50      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_5805,plain,
% 7.86/1.50      ( m1_subset_1(k2_relat_1(sK3),k1_zfmisc_1(sK1)) = iProver_top ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_2896,c_37]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_5,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 7.86/1.50      inference(cnf_transformation,[],[f55]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1439,plain,
% 7.86/1.50      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 7.86/1.50      | r1_tarski(X0,X1) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_5809,plain,
% 7.86/1.50      ( r1_tarski(k2_relat_1(sK3),sK1) = iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_5805,c_1439]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_29,negated_conjecture,
% 7.86/1.50      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 7.86/1.50      inference(cnf_transformation,[],[f81]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1428,plain,
% 7.86/1.50      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_15,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 7.86/1.50      inference(cnf_transformation,[],[f66]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1432,plain,
% 7.86/1.50      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2833,plain,
% 7.86/1.50      ( k1_relset_1(sK1,sK2,sK4) = k1_relat_1(sK4) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_1432]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_23,plain,
% 7.86/1.50      ( ~ v1_funct_2(X0,X1,X2)
% 7.86/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | k1_relset_1(X1,X2,X0) = X1
% 7.86/1.50      | k1_xboole_0 = X2 ),
% 7.86/1.50      inference(cnf_transformation,[],[f69]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_30,negated_conjecture,
% 7.86/1.50      ( v1_funct_2(sK4,sK1,sK2) ),
% 7.86/1.50      inference(cnf_transformation,[],[f80]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_544,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | k1_relset_1(X1,X2,X0) = X1
% 7.86/1.50      | sK4 != X0
% 7.86/1.50      | sK2 != X2
% 7.86/1.50      | sK1 != X1
% 7.86/1.50      | k1_xboole_0 = X2 ),
% 7.86/1.50      inference(resolution_lifted,[status(thm)],[c_23,c_30]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_545,plain,
% 7.86/1.50      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 7.86/1.50      | k1_relset_1(sK1,sK2,sK4) = sK1
% 7.86/1.50      | k1_xboole_0 = sK2 ),
% 7.86/1.50      inference(unflattening,[status(thm)],[c_544]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_26,negated_conjecture,
% 7.86/1.50      ( k1_xboole_0 != sK2 ),
% 7.86/1.50      inference(cnf_transformation,[],[f84]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_547,plain,
% 7.86/1.50      ( k1_relset_1(sK1,sK2,sK4) = sK1 ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_545,c_29,c_26]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2835,plain,
% 7.86/1.50      ( k1_relat_1(sK4) = sK1 ),
% 7.86/1.50      inference(light_normalisation,[status(thm)],[c_2833,c_547]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_10,plain,
% 7.86/1.50      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 7.86/1.50      | ~ v1_funct_1(X1)
% 7.86/1.50      | ~ v2_funct_1(X1)
% 7.86/1.50      | ~ v1_relat_1(X1)
% 7.86/1.50      | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0 ),
% 7.86/1.50      inference(cnf_transformation,[],[f61]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_27,negated_conjecture,
% 7.86/1.50      ( v2_funct_1(sK4) ),
% 7.86/1.50      inference(cnf_transformation,[],[f83]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_445,plain,
% 7.86/1.50      ( ~ r1_tarski(X0,k1_relat_1(X1))
% 7.86/1.50      | ~ v1_funct_1(X1)
% 7.86/1.50      | ~ v1_relat_1(X1)
% 7.86/1.50      | k10_relat_1(X1,k9_relat_1(X1,X0)) = X0
% 7.86/1.50      | sK4 != X1 ),
% 7.86/1.50      inference(resolution_lifted,[status(thm)],[c_10,c_27]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_446,plain,
% 7.86/1.50      ( ~ r1_tarski(X0,k1_relat_1(sK4))
% 7.86/1.50      | ~ v1_funct_1(sK4)
% 7.86/1.50      | ~ v1_relat_1(sK4)
% 7.86/1.50      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 7.86/1.50      inference(unflattening,[status(thm)],[c_445]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_31,negated_conjecture,
% 7.86/1.50      ( v1_funct_1(sK4) ),
% 7.86/1.50      inference(cnf_transformation,[],[f79]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_450,plain,
% 7.86/1.50      ( ~ r1_tarski(X0,k1_relat_1(sK4))
% 7.86/1.50      | ~ v1_relat_1(sK4)
% 7.86/1.50      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_446,c_31]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1423,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 7.86/1.50      | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
% 7.86/1.50      | v1_relat_1(sK4) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_450]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_40,plain,
% 7.86/1.50      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_452,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 7.86/1.50      | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
% 7.86/1.50      | v1_relat_1(sK4) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_450]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_11,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | v1_relat_1(X0) ),
% 7.86/1.50      inference(cnf_transformation,[],[f62]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1503,plain,
% 7.86/1.50      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 7.86/1.50      | v1_relat_1(sK4) ),
% 7.86/1.50      inference(instantiation,[status(thm)],[c_11]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1603,plain,
% 7.86/1.50      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 7.86/1.50      | v1_relat_1(sK4) ),
% 7.86/1.50      inference(instantiation,[status(thm)],[c_1503]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1604,plain,
% 7.86/1.50      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 7.86/1.50      | v1_relat_1(sK4) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_1603]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2051,plain,
% 7.86/1.50      ( r1_tarski(X0,k1_relat_1(sK4)) != iProver_top
% 7.86/1.50      | k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0 ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_1423,c_40,c_452,c_1604]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2052,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 7.86/1.50      | r1_tarski(X0,k1_relat_1(sK4)) != iProver_top ),
% 7.86/1.50      inference(renaming,[status(thm)],[c_2051]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3050,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k9_relat_1(sK4,X0)) = X0
% 7.86/1.50      | r1_tarski(X0,sK1) != iProver_top ),
% 7.86/1.50      inference(demodulation,[status(thm)],[c_2835,c_2052]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6119,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k9_relat_1(sK4,k2_relat_1(sK3))) = k2_relat_1(sK3) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_5809,c_3050]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1435,plain,
% 7.86/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 7.86/1.50      | v1_relat_1(X0) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2266,plain,
% 7.86/1.50      ( v1_relat_1(sK3) = iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1426,c_1435]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2265,plain,
% 7.86/1.50      ( v1_relat_1(sK4) = iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_1435]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_7,plain,
% 7.86/1.50      ( ~ v1_relat_1(X0)
% 7.86/1.50      | ~ v1_relat_1(X1)
% 7.86/1.50      | k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0)) ),
% 7.86/1.50      inference(cnf_transformation,[],[f58]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1437,plain,
% 7.86/1.50      ( k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0))
% 7.86/1.50      | v1_relat_1(X0) != iProver_top
% 7.86/1.50      | v1_relat_1(X1) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2960,plain,
% 7.86/1.50      ( k9_relat_1(sK4,k2_relat_1(X0)) = k2_relat_1(k5_relat_1(X0,sK4))
% 7.86/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2265,c_1437]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_5589,plain,
% 7.86/1.50      ( k9_relat_1(sK4,k2_relat_1(sK3)) = k2_relat_1(k5_relat_1(sK3,sK4)) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2266,c_2960]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6120,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k2_relat_1(k5_relat_1(sK3,sK4))) = k2_relat_1(sK3) ),
% 7.86/1.50      inference(light_normalisation,[status(thm)],[c_6119,c_5589]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2334,plain,
% 7.86/1.50      ( k2_relset_1(sK1,sK2,sK4) = k2_relat_1(sK4) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_1431]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2898,plain,
% 7.86/1.50      ( m1_subset_1(k2_relat_1(sK4),k1_zfmisc_1(sK2)) = iProver_top
% 7.86/1.50      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2334,c_1434]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_5915,plain,
% 7.86/1.50      ( m1_subset_1(k2_relat_1(sK4),k1_zfmisc_1(sK2)) = iProver_top ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_2898,c_40]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_5919,plain,
% 7.86/1.50      ( r1_tarski(k2_relat_1(sK4),sK2) = iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_5915,c_1439]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3,plain,
% 7.86/1.50      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 7.86/1.50      inference(cnf_transformation,[],[f54]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1441,plain,
% 7.86/1.50      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6124,plain,
% 7.86/1.50      ( k3_xboole_0(k2_relat_1(sK4),sK2) = k2_relat_1(sK4) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_5919,c_1441]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_8,plain,
% 7.86/1.50      ( ~ v1_relat_1(X0)
% 7.86/1.50      | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
% 7.86/1.50      inference(cnf_transformation,[],[f59]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1436,plain,
% 7.86/1.50      ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
% 7.86/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2441,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k3_xboole_0(k2_relat_1(sK4),X0)) = k10_relat_1(sK4,X0) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2265,c_1436]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6214,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k2_relat_1(sK4)) = k10_relat_1(sK4,sK2) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_6124,c_2441]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1,plain,
% 7.86/1.50      ( r1_tarski(X0,X0) ),
% 7.86/1.50      inference(cnf_transformation,[],[f86]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1442,plain,
% 7.86/1.50      ( r1_tarski(X0,X0) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2057,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k9_relat_1(sK4,k1_relat_1(sK4))) = k1_relat_1(sK4) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1442,c_2052]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_12,plain,
% 7.86/1.50      ( v4_relat_1(X0,X1)
% 7.86/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 7.86/1.50      inference(cnf_transformation,[],[f63]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_9,plain,
% 7.86/1.50      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 7.86/1.50      inference(cnf_transformation,[],[f60]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_425,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | ~ v1_relat_1(X0)
% 7.86/1.50      | k7_relat_1(X0,X1) = X0 ),
% 7.86/1.50      inference(resolution,[status(thm)],[c_12,c_9]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_429,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | k7_relat_1(X0,X1) = X0 ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_425,c_12,c_11,c_9]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1424,plain,
% 7.86/1.50      ( k7_relat_1(X0,X1) = X0
% 7.86/1.50      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_429]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2172,plain,
% 7.86/1.50      ( k7_relat_1(sK4,sK1) = sK4 ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_1424]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6,plain,
% 7.86/1.50      ( ~ v1_relat_1(X0)
% 7.86/1.50      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 7.86/1.50      inference(cnf_transformation,[],[f57]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1438,plain,
% 7.86/1.50      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 7.86/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2442,plain,
% 7.86/1.50      ( k2_relat_1(k7_relat_1(sK4,X0)) = k9_relat_1(sK4,X0) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2265,c_1438]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3188,plain,
% 7.86/1.50      ( k9_relat_1(sK4,sK1) = k2_relat_1(sK4) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_2172,c_2442]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3415,plain,
% 7.86/1.50      ( k10_relat_1(sK4,k2_relat_1(sK4)) = sK1 ),
% 7.86/1.50      inference(light_normalisation,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_2057,c_2057,c_2835,c_3188]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6215,plain,
% 7.86/1.50      ( k10_relat_1(sK4,sK2) = sK1 ),
% 7.86/1.50      inference(light_normalisation,[status(thm)],[c_6214,c_3415]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_14,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 7.86/1.50      | m1_subset_1(k4_relset_1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) ),
% 7.86/1.50      inference(cnf_transformation,[],[f65]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1433,plain,
% 7.86/1.50      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 7.86/1.50      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
% 7.86/1.50      | m1_subset_1(k4_relset_1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2815,plain,
% 7.86/1.50      ( k2_relset_1(X0,X1,k4_relset_1(X0,X2,X3,X1,X4,X5)) = k2_relat_1(k4_relset_1(X0,X2,X3,X1,X4,X5))
% 7.86/1.50      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) != iProver_top
% 7.86/1.50      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1433,c_1431]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6030,plain,
% 7.86/1.50      ( k2_relset_1(X0,sK2,k4_relset_1(X0,X1,sK1,sK2,X2,sK4)) = k2_relat_1(k4_relset_1(X0,X1,sK1,sK2,X2,sK4))
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_2815]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6359,plain,
% 7.86/1.50      ( k2_relset_1(sK0,sK2,k4_relset_1(sK0,sK1,sK1,sK2,sK3,sK4)) = k2_relat_1(k4_relset_1(sK0,sK1,sK1,sK2,sK3,sK4)) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1426,c_6030]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_17,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 7.86/1.50      | k4_relset_1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 7.86/1.50      inference(cnf_transformation,[],[f68]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1430,plain,
% 7.86/1.50      ( k4_relset_1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 7.86/1.50      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 7.86/1.50      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3570,plain,
% 7.86/1.50      ( k4_relset_1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_1430]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3827,plain,
% 7.86/1.50      ( k4_relset_1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1426,c_3570]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_24,plain,
% 7.86/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.86/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 7.86/1.50      | ~ v1_funct_1(X0)
% 7.86/1.50      | ~ v1_funct_1(X3)
% 7.86/1.50      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 7.86/1.50      inference(cnf_transformation,[],[f75]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_1429,plain,
% 7.86/1.50      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 7.86/1.50      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 7.86/1.50      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.86/1.50      | v1_funct_1(X5) != iProver_top
% 7.86/1.50      | v1_funct_1(X4) != iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_3589,plain,
% 7.86/1.50      ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.86/1.50      | v1_funct_1(X2) != iProver_top
% 7.86/1.50      | v1_funct_1(sK4) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1428,c_1429]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_38,plain,
% 7.86/1.50      ( v1_funct_1(sK4) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_4444,plain,
% 7.86/1.50      ( v1_funct_1(X2) != iProver_top
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.86/1.50      | k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4) ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_3589,c_38]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_4445,plain,
% 7.86/1.50      ( k1_partfun1(X0,X1,sK1,sK2,X2,sK4) = k5_relat_1(X2,sK4)
% 7.86/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.86/1.50      | v1_funct_1(X2) != iProver_top ),
% 7.86/1.50      inference(renaming,[status(thm)],[c_4444]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_4454,plain,
% 7.86/1.50      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4)
% 7.86/1.50      | v1_funct_1(sK3) != iProver_top ),
% 7.86/1.50      inference(superposition,[status(thm)],[c_1426,c_4445]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_34,negated_conjecture,
% 7.86/1.50      ( v1_funct_1(sK3) ),
% 7.86/1.50      inference(cnf_transformation,[],[f76]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_35,plain,
% 7.86/1.50      ( v1_funct_1(sK3) = iProver_top ),
% 7.86/1.50      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_4788,plain,
% 7.86/1.50      ( k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4) = k5_relat_1(sK3,sK4) ),
% 7.86/1.50      inference(global_propositional_subsumption,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_4454,c_35]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_28,negated_conjecture,
% 7.86/1.50      ( k2_relset_1(sK0,sK2,k1_partfun1(sK0,sK1,sK1,sK2,sK3,sK4)) = sK2 ),
% 7.86/1.50      inference(cnf_transformation,[],[f82]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_4790,plain,
% 7.86/1.50      ( k2_relset_1(sK0,sK2,k5_relat_1(sK3,sK4)) = sK2 ),
% 7.86/1.50      inference(demodulation,[status(thm)],[c_4788,c_28]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_6360,plain,
% 7.86/1.50      ( k2_relat_1(k5_relat_1(sK3,sK4)) = sK2 ),
% 7.86/1.50      inference(light_normalisation,[status(thm)],[c_6359,c_3827,c_4790]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_31922,plain,
% 7.86/1.50      ( k2_relat_1(sK3) = sK1 ),
% 7.86/1.50      inference(light_normalisation,
% 7.86/1.50                [status(thm)],
% 7.86/1.50                [c_6120,c_6120,c_6215,c_6360]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_25,negated_conjecture,
% 7.86/1.50      ( k2_relset_1(sK0,sK1,sK3) != sK1 ),
% 7.86/1.50      inference(cnf_transformation,[],[f85]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(c_2639,plain,
% 7.86/1.50      ( k2_relat_1(sK3) != sK1 ),
% 7.86/1.50      inference(demodulation,[status(thm)],[c_2335,c_25]) ).
% 7.86/1.50  
% 7.86/1.50  cnf(contradiction,plain,
% 7.86/1.50      ( $false ),
% 7.86/1.50      inference(minisat,[status(thm)],[c_31922,c_2639]) ).
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  % SZS output end CNFRefutation for theBenchmark.p
% 7.86/1.50  
% 7.86/1.50  ------                               Statistics
% 7.86/1.50  
% 7.86/1.50  ------ General
% 7.86/1.50  
% 7.86/1.50  abstr_ref_over_cycles:                  0
% 7.86/1.50  abstr_ref_under_cycles:                 0
% 7.86/1.50  gc_basic_clause_elim:                   0
% 7.86/1.50  forced_gc_time:                         0
% 7.86/1.50  parsing_time:                           0.008
% 7.86/1.50  unif_index_cands_time:                  0.
% 7.86/1.50  unif_index_add_time:                    0.
% 7.86/1.50  orderings_time:                         0.
% 7.86/1.50  out_proof_time:                         0.012
% 7.86/1.50  total_time:                             0.928
% 7.86/1.50  num_of_symbols:                         57
% 7.86/1.50  num_of_terms:                           34899
% 7.86/1.50  
% 7.86/1.50  ------ Preprocessing
% 7.86/1.50  
% 7.86/1.50  num_of_splits:                          0
% 7.86/1.50  num_of_split_atoms:                     0
% 7.86/1.50  num_of_reused_defs:                     0
% 7.86/1.50  num_eq_ax_congr_red:                    44
% 7.86/1.50  num_of_sem_filtered_clauses:            1
% 7.86/1.50  num_of_subtypes:                        0
% 7.86/1.50  monotx_restored_types:                  0
% 7.86/1.50  sat_num_of_epr_types:                   0
% 7.86/1.50  sat_num_of_non_cyclic_types:            0
% 7.86/1.50  sat_guarded_non_collapsed_types:        0
% 7.86/1.50  num_pure_diseq_elim:                    0
% 7.86/1.50  simp_replaced_by:                       0
% 7.86/1.50  res_preprocessed:                       157
% 7.86/1.50  prep_upred:                             0
% 7.86/1.50  prep_unflattend:                        35
% 7.86/1.50  smt_new_axioms:                         0
% 7.86/1.50  pred_elim_cands:                        4
% 7.86/1.50  pred_elim:                              3
% 7.86/1.50  pred_elim_cl:                           4
% 7.86/1.50  pred_elim_cycles:                       5
% 7.86/1.50  merged_defs:                            8
% 7.86/1.50  merged_defs_ncl:                        0
% 7.86/1.50  bin_hyper_res:                          8
% 7.86/1.50  prep_cycles:                            4
% 7.86/1.50  pred_elim_time:                         0.004
% 7.86/1.50  splitting_time:                         0.
% 7.86/1.50  sem_filter_time:                        0.
% 7.86/1.50  monotx_time:                            0.
% 7.86/1.50  subtype_inf_time:                       0.
% 7.86/1.50  
% 7.86/1.50  ------ Problem properties
% 7.86/1.50  
% 7.86/1.50  clauses:                                30
% 7.86/1.50  conjectures:                            7
% 7.86/1.50  epr:                                    5
% 7.86/1.50  horn:                                   27
% 7.86/1.50  ground:                                 13
% 7.86/1.50  unary:                                  9
% 7.86/1.50  binary:                                 11
% 7.86/1.50  lits:                                   65
% 7.86/1.50  lits_eq:                                27
% 7.86/1.50  fd_pure:                                0
% 7.86/1.50  fd_pseudo:                              0
% 7.86/1.50  fd_cond:                                0
% 7.86/1.50  fd_pseudo_cond:                         1
% 7.86/1.50  ac_symbols:                             0
% 7.86/1.50  
% 7.86/1.50  ------ Propositional Solver
% 7.86/1.50  
% 7.86/1.50  prop_solver_calls:                      35
% 7.86/1.50  prop_fast_solver_calls:                 1517
% 7.86/1.50  smt_solver_calls:                       0
% 7.86/1.50  smt_fast_solver_calls:                  0
% 7.86/1.50  prop_num_of_clauses:                    14772
% 7.86/1.50  prop_preprocess_simplified:             24805
% 7.86/1.50  prop_fo_subsumed:                       53
% 7.86/1.50  prop_solver_time:                       0.
% 7.86/1.50  smt_solver_time:                        0.
% 7.86/1.50  smt_fast_solver_time:                   0.
% 7.86/1.50  prop_fast_solver_time:                  0.
% 7.86/1.50  prop_unsat_core_time:                   0.001
% 7.86/1.50  
% 7.86/1.50  ------ QBF
% 7.86/1.50  
% 7.86/1.50  qbf_q_res:                              0
% 7.86/1.50  qbf_num_tautologies:                    0
% 7.86/1.50  qbf_prep_cycles:                        0
% 7.86/1.50  
% 7.86/1.50  ------ BMC1
% 7.86/1.50  
% 7.86/1.50  bmc1_current_bound:                     -1
% 7.86/1.50  bmc1_last_solved_bound:                 -1
% 7.86/1.50  bmc1_unsat_core_size:                   -1
% 7.86/1.50  bmc1_unsat_core_parents_size:           -1
% 7.86/1.50  bmc1_merge_next_fun:                    0
% 7.86/1.50  bmc1_unsat_core_clauses_time:           0.
% 7.86/1.50  
% 7.86/1.50  ------ Instantiation
% 7.86/1.50  
% 7.86/1.50  inst_num_of_clauses:                    4218
% 7.86/1.50  inst_num_in_passive:                    2551
% 7.86/1.50  inst_num_in_active:                     1666
% 7.86/1.50  inst_num_in_unprocessed:                1
% 7.86/1.50  inst_num_of_loops:                      1900
% 7.86/1.50  inst_num_of_learning_restarts:          0
% 7.86/1.50  inst_num_moves_active_passive:          229
% 7.86/1.50  inst_lit_activity:                      0
% 7.86/1.50  inst_lit_activity_moves:                1
% 7.86/1.50  inst_num_tautologies:                   0
% 7.86/1.50  inst_num_prop_implied:                  0
% 7.86/1.50  inst_num_existing_simplified:           0
% 7.86/1.50  inst_num_eq_res_simplified:             0
% 7.86/1.50  inst_num_child_elim:                    0
% 7.86/1.50  inst_num_of_dismatching_blockings:      2247
% 7.86/1.50  inst_num_of_non_proper_insts:           6007
% 7.86/1.50  inst_num_of_duplicates:                 0
% 7.86/1.50  inst_inst_num_from_inst_to_res:         0
% 7.86/1.50  inst_dismatching_checking_time:         0.
% 7.86/1.50  
% 7.86/1.50  ------ Resolution
% 7.86/1.50  
% 7.86/1.50  res_num_of_clauses:                     0
% 7.86/1.50  res_num_in_passive:                     0
% 7.86/1.50  res_num_in_active:                      0
% 7.86/1.50  res_num_of_loops:                       161
% 7.86/1.50  res_forward_subset_subsumed:            250
% 7.86/1.50  res_backward_subset_subsumed:           2
% 7.86/1.50  res_forward_subsumed:                   0
% 7.86/1.50  res_backward_subsumed:                  0
% 7.86/1.50  res_forward_subsumption_resolution:     0
% 7.86/1.50  res_backward_subsumption_resolution:    0
% 7.86/1.50  res_clause_to_clause_subsumption:       3778
% 7.86/1.50  res_orphan_elimination:                 0
% 7.86/1.50  res_tautology_del:                      516
% 7.86/1.50  res_num_eq_res_simplified:              0
% 7.86/1.50  res_num_sel_changes:                    0
% 7.86/1.50  res_moves_from_active_to_pass:          0
% 7.86/1.50  
% 7.86/1.50  ------ Superposition
% 7.86/1.50  
% 7.86/1.50  sup_time_total:                         0.
% 7.86/1.50  sup_time_generating:                    0.
% 7.86/1.50  sup_time_sim_full:                      0.
% 7.86/1.50  sup_time_sim_immed:                     0.
% 7.86/1.50  
% 7.86/1.50  sup_num_of_clauses:                     1458
% 7.86/1.50  sup_num_in_active:                      373
% 7.86/1.50  sup_num_in_passive:                     1085
% 7.86/1.50  sup_num_of_loops:                       378
% 7.86/1.50  sup_fw_superposition:                   1221
% 7.86/1.50  sup_bw_superposition:                   720
% 7.86/1.50  sup_immediate_simplified:               529
% 7.86/1.50  sup_given_eliminated:                   1
% 7.86/1.50  comparisons_done:                       0
% 7.86/1.50  comparisons_avoided:                    3
% 7.86/1.50  
% 7.86/1.50  ------ Simplifications
% 7.86/1.50  
% 7.86/1.50  
% 7.86/1.50  sim_fw_subset_subsumed:                 14
% 7.86/1.50  sim_bw_subset_subsumed:                 0
% 7.86/1.50  sim_fw_subsumed:                        9
% 7.86/1.50  sim_bw_subsumed:                        1
% 7.86/1.50  sim_fw_subsumption_res:                 0
% 7.86/1.50  sim_bw_subsumption_res:                 0
% 7.86/1.50  sim_tautology_del:                      1
% 7.86/1.50  sim_eq_tautology_del:                   39
% 7.86/1.50  sim_eq_res_simp:                        0
% 7.86/1.50  sim_fw_demodulated:                     128
% 7.86/1.50  sim_bw_demodulated:                     30
% 7.86/1.50  sim_light_normalised:                   365
% 7.86/1.50  sim_joinable_taut:                      0
% 7.86/1.50  sim_joinable_simp:                      0
% 7.86/1.50  sim_ac_normalised:                      0
% 7.86/1.50  sim_smt_subsumption:                    0
% 7.86/1.50  
%------------------------------------------------------------------------------
