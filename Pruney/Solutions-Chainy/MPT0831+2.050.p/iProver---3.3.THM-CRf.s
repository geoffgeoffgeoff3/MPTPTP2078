%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:55:44 EST 2020

% Result     : Theorem 3.22s
% Output     : CNFRefutation 3.22s
% Verified   : 
% Statistics : Number of formulae       :  130 (2437 expanded)
%              Number of clauses        :   72 (1022 expanded)
%              Number of leaves         :   16 ( 432 expanded)
%              Depth                    :   28
%              Number of atoms          :  304 (6309 expanded)
%              Number of equality atoms :  159 (1733 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f22,conjecture,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
     => ( r1_tarski(X1,X2)
       => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
       => ( r1_tarski(X1,X2)
         => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) ) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f42,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)
      & r1_tarski(X1,X2)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f43,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)
      & r1_tarski(X1,X2)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(flattening,[],[f42])).

fof(f52,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)
        & r1_tarski(X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
   => ( ~ r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4)
      & r1_tarski(sK2,sK3)
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( ~ r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4)
    & r1_tarski(sK2,sK3)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f43,f52])).

fof(f82,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f53])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f64,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f14,axiom,(
    ! [X0,X1] :
      ~ ( ~ ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
            & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
        & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f14])).

fof(f71,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f15,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(X0,X1)
           => ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
              & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f32])).

fof(f73,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f9,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f66,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f65,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f10,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f34])).

fof(f75,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f83,plain,(
    r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f53])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f28])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f18,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f77,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f84,plain,(
    ~ r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f39,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f38])).

fof(f51,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f39])).

fof(f79,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f87,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f79])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f56,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f3,axiom,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f3])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f48])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f49])).

fof(f85,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f61])).

fof(f13,axiom,(
    ! [X0] : k1_xboole_0 = k7_relat_1(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f70,plain,(
    ! [X0] : k1_xboole_0 = k7_relat_1(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f60,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f49])).

fof(f86,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f60])).

fof(f21,axiom,(
    ! [X0,X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f81,plain,(
    ! [X0,X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_30,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1103,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1116,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_2294,plain,
    ( r1_tarski(sK4,k2_zfmisc_1(sK2,sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1103,c_1116])).

cnf(c_18,plain,
    ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_20,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_10,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_148,plain,
    ( r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
    | ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_20,c_12,c_10])).

cnf(c_149,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(renaming,[status(thm)],[c_148])).

cnf(c_1102,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_149])).

cnf(c_3581,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | r1_tarski(X2,k2_zfmisc_1(X1,X0)) != iProver_top
    | r1_tarski(k1_relat_1(X2),X1) = iProver_top
    | v1_relat_1(k2_zfmisc_1(X1,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_18,c_1102])).

cnf(c_13,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1115,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_5237,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | r1_tarski(X2,k2_zfmisc_1(X1,X0)) != iProver_top
    | r1_tarski(k1_relat_1(X2),X1) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3581,c_1115])).

cnf(c_5240,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(k1_relat_1(sK4),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_2294,c_5237])).

cnf(c_21,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1112,plain,
    ( k7_relat_1(X0,X1) = X0
    | r1_tarski(k1_relat_1(X0),X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_5448,plain,
    ( k7_relat_1(sK4,sK2) = sK4
    | sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | v1_relat_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_5240,c_1112])).

cnf(c_203,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_10])).

cnf(c_204,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_203])).

cnf(c_252,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_12,c_204])).

cnf(c_1100,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_252])).

cnf(c_2407,plain,
    ( v1_relat_1(k2_zfmisc_1(sK2,sK1)) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_2294,c_1100])).

cnf(c_2524,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2407,c_1115])).

cnf(c_7139,plain,
    ( sK2 = k1_xboole_0
    | sK1 = k1_xboole_0
    | k7_relat_1(sK4,sK2) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5448,c_2524])).

cnf(c_7140,plain,
    ( k7_relat_1(sK4,sK2) = sK4
    | sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_7139])).

cnf(c_29,negated_conjecture,
    ( r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1104,plain,
    ( r1_tarski(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_14,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X2)
    | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1114,plain,
    ( k7_relat_1(k7_relat_1(X0,X1),X2) = k7_relat_1(X0,X1)
    | r1_tarski(X1,X2) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_4350,plain,
    ( k7_relat_1(k7_relat_1(X0,sK2),sK3) = k7_relat_1(X0,sK2)
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1104,c_1114])).

cnf(c_4700,plain,
    ( k7_relat_1(k7_relat_1(sK4,sK2),sK3) = k7_relat_1(sK4,sK2) ),
    inference(superposition,[status(thm)],[c_2524,c_4350])).

cnf(c_7144,plain,
    ( k7_relat_1(sK4,sK2) = k7_relat_1(sK4,sK3)
    | sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_7140,c_4700])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k5_relset_1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1110,plain,
    ( k5_relset_1(X0,X1,X2,X3) = k7_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_3040,plain,
    ( k5_relset_1(sK2,sK1,sK4,X0) = k7_relat_1(sK4,X0) ),
    inference(superposition,[status(thm)],[c_1103,c_1110])).

cnf(c_28,negated_conjecture,
    ( ~ r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_1105,plain,
    ( r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_3190,plain,
    ( r2_relset_1(sK2,sK1,k7_relat_1(sK4,sK3),sK4) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3040,c_1105])).

cnf(c_7420,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r2_relset_1(sK2,sK1,k7_relat_1(sK4,sK2),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_7144,c_3190])).

cnf(c_7426,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r2_relset_1(sK2,sK1,sK4,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_7140,c_7420])).

cnf(c_24,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1109,plain,
    ( r2_relset_1(X0,X1,X2,X2) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2354,plain,
    ( r2_relset_1(sK2,sK1,sK4,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1103,c_1109])).

cnf(c_7450,plain,
    ( sK2 = k1_xboole_0
    | sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_7426,c_2354])).

cnf(c_7451,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_7450])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1119,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2408,plain,
    ( k3_xboole_0(sK4,k2_zfmisc_1(sK2,sK1)) = sK4 ),
    inference(superposition,[status(thm)],[c_2294,c_1119])).

cnf(c_7472,plain,
    ( k3_xboole_0(sK4,k2_zfmisc_1(sK2,k1_xboole_0)) = sK4
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_7451,c_2408])).

cnf(c_3,plain,
    ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_5,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_7492,plain,
    ( sK4 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_7472,c_3,c_5])).

cnf(c_7473,plain,
    ( sK2 = k1_xboole_0
    | r2_relset_1(sK2,k1_xboole_0,sK4,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_7451,c_2354])).

cnf(c_7843,plain,
    ( sK2 = k1_xboole_0
    | r2_relset_1(sK2,k1_xboole_0,k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_7492,c_7473])).

cnf(c_7470,plain,
    ( sK2 = k1_xboole_0
    | r2_relset_1(sK2,k1_xboole_0,k7_relat_1(sK4,sK3),sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_7451,c_3190])).

cnf(c_7846,plain,
    ( sK2 = k1_xboole_0
    | r2_relset_1(sK2,k1_xboole_0,k7_relat_1(k1_xboole_0,sK3),k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_7492,c_7470])).

cnf(c_16,plain,
    ( k7_relat_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_7932,plain,
    ( sK2 = k1_xboole_0
    | r2_relset_1(sK2,k1_xboole_0,k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_7846,c_16])).

cnf(c_7937,plain,
    ( sK2 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7843,c_7932])).

cnf(c_8302,plain,
    ( r2_relset_1(k1_xboole_0,sK1,k7_relat_1(sK4,sK3),sK4) != iProver_top ),
    inference(demodulation,[status(thm)],[c_7937,c_3190])).

cnf(c_8304,plain,
    ( k3_xboole_0(sK4,k2_zfmisc_1(k1_xboole_0,sK1)) = sK4 ),
    inference(demodulation,[status(thm)],[c_7937,c_2408])).

cnf(c_6,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f86])).

cnf(c_8324,plain,
    ( sK4 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_8304,c_3,c_6])).

cnf(c_8333,plain,
    ( r2_relset_1(k1_xboole_0,sK1,k7_relat_1(k1_xboole_0,sK3),k1_xboole_0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_8302,c_8324])).

cnf(c_8335,plain,
    ( r2_relset_1(k1_xboole_0,sK1,k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_8333,c_16])).

cnf(c_27,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1106,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2353,plain,
    ( r2_relset_1(X0,X1,k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1106,c_1109])).

cnf(c_8483,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_8335,c_2353])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n012.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:01:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.22/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.22/0.99  
% 3.22/0.99  ------  iProver source info
% 3.22/0.99  
% 3.22/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.22/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.22/0.99  git: non_committed_changes: false
% 3.22/0.99  git: last_make_outside_of_git: false
% 3.22/0.99  
% 3.22/0.99  ------ 
% 3.22/0.99  
% 3.22/0.99  ------ Input Options
% 3.22/0.99  
% 3.22/0.99  --out_options                           all
% 3.22/0.99  --tptp_safe_out                         true
% 3.22/0.99  --problem_path                          ""
% 3.22/0.99  --include_path                          ""
% 3.22/0.99  --clausifier                            res/vclausify_rel
% 3.22/0.99  --clausifier_options                    --mode clausify
% 3.22/0.99  --stdin                                 false
% 3.22/0.99  --stats_out                             all
% 3.22/0.99  
% 3.22/0.99  ------ General Options
% 3.22/0.99  
% 3.22/0.99  --fof                                   false
% 3.22/0.99  --time_out_real                         305.
% 3.22/0.99  --time_out_virtual                      -1.
% 3.22/0.99  --symbol_type_check                     false
% 3.22/0.99  --clausify_out                          false
% 3.22/0.99  --sig_cnt_out                           false
% 3.22/0.99  --trig_cnt_out                          false
% 3.22/0.99  --trig_cnt_out_tolerance                1.
% 3.22/0.99  --trig_cnt_out_sk_spl                   false
% 3.22/0.99  --abstr_cl_out                          false
% 3.22/0.99  
% 3.22/0.99  ------ Global Options
% 3.22/0.99  
% 3.22/0.99  --schedule                              default
% 3.22/0.99  --add_important_lit                     false
% 3.22/0.99  --prop_solver_per_cl                    1000
% 3.22/0.99  --min_unsat_core                        false
% 3.22/0.99  --soft_assumptions                      false
% 3.22/0.99  --soft_lemma_size                       3
% 3.22/0.99  --prop_impl_unit_size                   0
% 3.22/0.99  --prop_impl_unit                        []
% 3.22/0.99  --share_sel_clauses                     true
% 3.22/0.99  --reset_solvers                         false
% 3.22/0.99  --bc_imp_inh                            [conj_cone]
% 3.22/0.99  --conj_cone_tolerance                   3.
% 3.22/0.99  --extra_neg_conj                        none
% 3.22/0.99  --large_theory_mode                     true
% 3.22/0.99  --prolific_symb_bound                   200
% 3.22/0.99  --lt_threshold                          2000
% 3.22/0.99  --clause_weak_htbl                      true
% 3.22/0.99  --gc_record_bc_elim                     false
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing Options
% 3.22/0.99  
% 3.22/0.99  --preprocessing_flag                    true
% 3.22/0.99  --time_out_prep_mult                    0.1
% 3.22/0.99  --splitting_mode                        input
% 3.22/0.99  --splitting_grd                         true
% 3.22/0.99  --splitting_cvd                         false
% 3.22/0.99  --splitting_cvd_svl                     false
% 3.22/0.99  --splitting_nvd                         32
% 3.22/0.99  --sub_typing                            true
% 3.22/0.99  --prep_gs_sim                           true
% 3.22/0.99  --prep_unflatten                        true
% 3.22/0.99  --prep_res_sim                          true
% 3.22/0.99  --prep_upred                            true
% 3.22/0.99  --prep_sem_filter                       exhaustive
% 3.22/0.99  --prep_sem_filter_out                   false
% 3.22/0.99  --pred_elim                             true
% 3.22/0.99  --res_sim_input                         true
% 3.22/0.99  --eq_ax_congr_red                       true
% 3.22/0.99  --pure_diseq_elim                       true
% 3.22/0.99  --brand_transform                       false
% 3.22/0.99  --non_eq_to_eq                          false
% 3.22/0.99  --prep_def_merge                        true
% 3.22/0.99  --prep_def_merge_prop_impl              false
% 3.22/0.99  --prep_def_merge_mbd                    true
% 3.22/0.99  --prep_def_merge_tr_red                 false
% 3.22/0.99  --prep_def_merge_tr_cl                  false
% 3.22/0.99  --smt_preprocessing                     true
% 3.22/0.99  --smt_ac_axioms                         fast
% 3.22/0.99  --preprocessed_out                      false
% 3.22/0.99  --preprocessed_stats                    false
% 3.22/0.99  
% 3.22/0.99  ------ Abstraction refinement Options
% 3.22/0.99  
% 3.22/0.99  --abstr_ref                             []
% 3.22/0.99  --abstr_ref_prep                        false
% 3.22/0.99  --abstr_ref_until_sat                   false
% 3.22/0.99  --abstr_ref_sig_restrict                funpre
% 3.22/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.22/0.99  --abstr_ref_under                       []
% 3.22/0.99  
% 3.22/0.99  ------ SAT Options
% 3.22/0.99  
% 3.22/0.99  --sat_mode                              false
% 3.22/0.99  --sat_fm_restart_options                ""
% 3.22/0.99  --sat_gr_def                            false
% 3.22/0.99  --sat_epr_types                         true
% 3.22/0.99  --sat_non_cyclic_types                  false
% 3.22/0.99  --sat_finite_models                     false
% 3.22/0.99  --sat_fm_lemmas                         false
% 3.22/0.99  --sat_fm_prep                           false
% 3.22/0.99  --sat_fm_uc_incr                        true
% 3.22/0.99  --sat_out_model                         small
% 3.22/0.99  --sat_out_clauses                       false
% 3.22/0.99  
% 3.22/0.99  ------ QBF Options
% 3.22/0.99  
% 3.22/0.99  --qbf_mode                              false
% 3.22/0.99  --qbf_elim_univ                         false
% 3.22/0.99  --qbf_dom_inst                          none
% 3.22/0.99  --qbf_dom_pre_inst                      false
% 3.22/0.99  --qbf_sk_in                             false
% 3.22/0.99  --qbf_pred_elim                         true
% 3.22/0.99  --qbf_split                             512
% 3.22/0.99  
% 3.22/0.99  ------ BMC1 Options
% 3.22/0.99  
% 3.22/0.99  --bmc1_incremental                      false
% 3.22/0.99  --bmc1_axioms                           reachable_all
% 3.22/0.99  --bmc1_min_bound                        0
% 3.22/0.99  --bmc1_max_bound                        -1
% 3.22/0.99  --bmc1_max_bound_default                -1
% 3.22/0.99  --bmc1_symbol_reachability              true
% 3.22/0.99  --bmc1_property_lemmas                  false
% 3.22/0.99  --bmc1_k_induction                      false
% 3.22/0.99  --bmc1_non_equiv_states                 false
% 3.22/0.99  --bmc1_deadlock                         false
% 3.22/0.99  --bmc1_ucm                              false
% 3.22/0.99  --bmc1_add_unsat_core                   none
% 3.22/0.99  --bmc1_unsat_core_children              false
% 3.22/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.22/0.99  --bmc1_out_stat                         full
% 3.22/0.99  --bmc1_ground_init                      false
% 3.22/0.99  --bmc1_pre_inst_next_state              false
% 3.22/0.99  --bmc1_pre_inst_state                   false
% 3.22/0.99  --bmc1_pre_inst_reach_state             false
% 3.22/0.99  --bmc1_out_unsat_core                   false
% 3.22/0.99  --bmc1_aig_witness_out                  false
% 3.22/0.99  --bmc1_verbose                          false
% 3.22/0.99  --bmc1_dump_clauses_tptp                false
% 3.22/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.22/0.99  --bmc1_dump_file                        -
% 3.22/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.22/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.22/0.99  --bmc1_ucm_extend_mode                  1
% 3.22/0.99  --bmc1_ucm_init_mode                    2
% 3.22/0.99  --bmc1_ucm_cone_mode                    none
% 3.22/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.22/0.99  --bmc1_ucm_relax_model                  4
% 3.22/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.22/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.22/0.99  --bmc1_ucm_layered_model                none
% 3.22/0.99  --bmc1_ucm_max_lemma_size               10
% 3.22/0.99  
% 3.22/0.99  ------ AIG Options
% 3.22/0.99  
% 3.22/0.99  --aig_mode                              false
% 3.22/0.99  
% 3.22/0.99  ------ Instantiation Options
% 3.22/0.99  
% 3.22/0.99  --instantiation_flag                    true
% 3.22/0.99  --inst_sos_flag                         false
% 3.22/0.99  --inst_sos_phase                        true
% 3.22/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel_side                     num_symb
% 3.22/0.99  --inst_solver_per_active                1400
% 3.22/0.99  --inst_solver_calls_frac                1.
% 3.22/0.99  --inst_passive_queue_type               priority_queues
% 3.22/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.22/0.99  --inst_passive_queues_freq              [25;2]
% 3.22/0.99  --inst_dismatching                      true
% 3.22/0.99  --inst_eager_unprocessed_to_passive     true
% 3.22/0.99  --inst_prop_sim_given                   true
% 3.22/0.99  --inst_prop_sim_new                     false
% 3.22/0.99  --inst_subs_new                         false
% 3.22/0.99  --inst_eq_res_simp                      false
% 3.22/0.99  --inst_subs_given                       false
% 3.22/0.99  --inst_orphan_elimination               true
% 3.22/0.99  --inst_learning_loop_flag               true
% 3.22/0.99  --inst_learning_start                   3000
% 3.22/0.99  --inst_learning_factor                  2
% 3.22/0.99  --inst_start_prop_sim_after_learn       3
% 3.22/0.99  --inst_sel_renew                        solver
% 3.22/0.99  --inst_lit_activity_flag                true
% 3.22/0.99  --inst_restr_to_given                   false
% 3.22/0.99  --inst_activity_threshold               500
% 3.22/0.99  --inst_out_proof                        true
% 3.22/0.99  
% 3.22/0.99  ------ Resolution Options
% 3.22/0.99  
% 3.22/0.99  --resolution_flag                       true
% 3.22/0.99  --res_lit_sel                           adaptive
% 3.22/0.99  --res_lit_sel_side                      none
% 3.22/0.99  --res_ordering                          kbo
% 3.22/0.99  --res_to_prop_solver                    active
% 3.22/0.99  --res_prop_simpl_new                    false
% 3.22/0.99  --res_prop_simpl_given                  true
% 3.22/0.99  --res_passive_queue_type                priority_queues
% 3.22/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.22/0.99  --res_passive_queues_freq               [15;5]
% 3.22/0.99  --res_forward_subs                      full
% 3.22/0.99  --res_backward_subs                     full
% 3.22/0.99  --res_forward_subs_resolution           true
% 3.22/0.99  --res_backward_subs_resolution          true
% 3.22/0.99  --res_orphan_elimination                true
% 3.22/0.99  --res_time_limit                        2.
% 3.22/0.99  --res_out_proof                         true
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Options
% 3.22/0.99  
% 3.22/0.99  --superposition_flag                    true
% 3.22/0.99  --sup_passive_queue_type                priority_queues
% 3.22/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.22/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.22/0.99  --demod_completeness_check              fast
% 3.22/0.99  --demod_use_ground                      true
% 3.22/0.99  --sup_to_prop_solver                    passive
% 3.22/0.99  --sup_prop_simpl_new                    true
% 3.22/0.99  --sup_prop_simpl_given                  true
% 3.22/0.99  --sup_fun_splitting                     false
% 3.22/0.99  --sup_smt_interval                      50000
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Simplification Setup
% 3.22/0.99  
% 3.22/0.99  --sup_indices_passive                   []
% 3.22/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.22/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_full_bw                           [BwDemod]
% 3.22/0.99  --sup_immed_triv                        [TrivRules]
% 3.22/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.22/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_immed_bw_main                     []
% 3.22/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.22/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  
% 3.22/0.99  ------ Combination Options
% 3.22/0.99  
% 3.22/0.99  --comb_res_mult                         3
% 3.22/0.99  --comb_sup_mult                         2
% 3.22/0.99  --comb_inst_mult                        10
% 3.22/0.99  
% 3.22/0.99  ------ Debug Options
% 3.22/0.99  
% 3.22/0.99  --dbg_backtrace                         false
% 3.22/0.99  --dbg_dump_prop_clauses                 false
% 3.22/0.99  --dbg_dump_prop_clauses_file            -
% 3.22/0.99  --dbg_out_stat                          false
% 3.22/0.99  ------ Parsing...
% 3.22/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.22/0.99  ------ Proving...
% 3.22/0.99  ------ Problem Properties 
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  clauses                                 29
% 3.22/0.99  conjectures                             3
% 3.22/0.99  EPR                                     3
% 3.22/0.99  Horn                                    25
% 3.22/0.99  unary                                   10
% 3.22/0.99  binary                                  8
% 3.22/0.99  lits                                    61
% 3.22/0.99  lits eq                                 22
% 3.22/0.99  fd_pure                                 0
% 3.22/0.99  fd_pseudo                               0
% 3.22/0.99  fd_cond                                 2
% 3.22/0.99  fd_pseudo_cond                          1
% 3.22/0.99  AC symbols                              0
% 3.22/0.99  
% 3.22/0.99  ------ Schedule dynamic 5 is on 
% 3.22/0.99  
% 3.22/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  ------ 
% 3.22/0.99  Current options:
% 3.22/0.99  ------ 
% 3.22/0.99  
% 3.22/0.99  ------ Input Options
% 3.22/0.99  
% 3.22/0.99  --out_options                           all
% 3.22/0.99  --tptp_safe_out                         true
% 3.22/0.99  --problem_path                          ""
% 3.22/0.99  --include_path                          ""
% 3.22/0.99  --clausifier                            res/vclausify_rel
% 3.22/0.99  --clausifier_options                    --mode clausify
% 3.22/0.99  --stdin                                 false
% 3.22/0.99  --stats_out                             all
% 3.22/0.99  
% 3.22/0.99  ------ General Options
% 3.22/0.99  
% 3.22/0.99  --fof                                   false
% 3.22/0.99  --time_out_real                         305.
% 3.22/0.99  --time_out_virtual                      -1.
% 3.22/0.99  --symbol_type_check                     false
% 3.22/0.99  --clausify_out                          false
% 3.22/0.99  --sig_cnt_out                           false
% 3.22/0.99  --trig_cnt_out                          false
% 3.22/0.99  --trig_cnt_out_tolerance                1.
% 3.22/0.99  --trig_cnt_out_sk_spl                   false
% 3.22/0.99  --abstr_cl_out                          false
% 3.22/0.99  
% 3.22/0.99  ------ Global Options
% 3.22/0.99  
% 3.22/0.99  --schedule                              default
% 3.22/0.99  --add_important_lit                     false
% 3.22/0.99  --prop_solver_per_cl                    1000
% 3.22/0.99  --min_unsat_core                        false
% 3.22/0.99  --soft_assumptions                      false
% 3.22/0.99  --soft_lemma_size                       3
% 3.22/0.99  --prop_impl_unit_size                   0
% 3.22/0.99  --prop_impl_unit                        []
% 3.22/0.99  --share_sel_clauses                     true
% 3.22/0.99  --reset_solvers                         false
% 3.22/0.99  --bc_imp_inh                            [conj_cone]
% 3.22/0.99  --conj_cone_tolerance                   3.
% 3.22/0.99  --extra_neg_conj                        none
% 3.22/0.99  --large_theory_mode                     true
% 3.22/0.99  --prolific_symb_bound                   200
% 3.22/0.99  --lt_threshold                          2000
% 3.22/0.99  --clause_weak_htbl                      true
% 3.22/0.99  --gc_record_bc_elim                     false
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing Options
% 3.22/0.99  
% 3.22/0.99  --preprocessing_flag                    true
% 3.22/0.99  --time_out_prep_mult                    0.1
% 3.22/0.99  --splitting_mode                        input
% 3.22/0.99  --splitting_grd                         true
% 3.22/0.99  --splitting_cvd                         false
% 3.22/0.99  --splitting_cvd_svl                     false
% 3.22/0.99  --splitting_nvd                         32
% 3.22/0.99  --sub_typing                            true
% 3.22/0.99  --prep_gs_sim                           true
% 3.22/0.99  --prep_unflatten                        true
% 3.22/0.99  --prep_res_sim                          true
% 3.22/0.99  --prep_upred                            true
% 3.22/0.99  --prep_sem_filter                       exhaustive
% 3.22/0.99  --prep_sem_filter_out                   false
% 3.22/0.99  --pred_elim                             true
% 3.22/0.99  --res_sim_input                         true
% 3.22/0.99  --eq_ax_congr_red                       true
% 3.22/0.99  --pure_diseq_elim                       true
% 3.22/0.99  --brand_transform                       false
% 3.22/0.99  --non_eq_to_eq                          false
% 3.22/0.99  --prep_def_merge                        true
% 3.22/0.99  --prep_def_merge_prop_impl              false
% 3.22/0.99  --prep_def_merge_mbd                    true
% 3.22/0.99  --prep_def_merge_tr_red                 false
% 3.22/0.99  --prep_def_merge_tr_cl                  false
% 3.22/0.99  --smt_preprocessing                     true
% 3.22/0.99  --smt_ac_axioms                         fast
% 3.22/0.99  --preprocessed_out                      false
% 3.22/0.99  --preprocessed_stats                    false
% 3.22/0.99  
% 3.22/0.99  ------ Abstraction refinement Options
% 3.22/0.99  
% 3.22/0.99  --abstr_ref                             []
% 3.22/0.99  --abstr_ref_prep                        false
% 3.22/0.99  --abstr_ref_until_sat                   false
% 3.22/0.99  --abstr_ref_sig_restrict                funpre
% 3.22/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.22/0.99  --abstr_ref_under                       []
% 3.22/0.99  
% 3.22/0.99  ------ SAT Options
% 3.22/0.99  
% 3.22/0.99  --sat_mode                              false
% 3.22/0.99  --sat_fm_restart_options                ""
% 3.22/0.99  --sat_gr_def                            false
% 3.22/0.99  --sat_epr_types                         true
% 3.22/0.99  --sat_non_cyclic_types                  false
% 3.22/0.99  --sat_finite_models                     false
% 3.22/0.99  --sat_fm_lemmas                         false
% 3.22/0.99  --sat_fm_prep                           false
% 3.22/0.99  --sat_fm_uc_incr                        true
% 3.22/0.99  --sat_out_model                         small
% 3.22/0.99  --sat_out_clauses                       false
% 3.22/0.99  
% 3.22/0.99  ------ QBF Options
% 3.22/0.99  
% 3.22/0.99  --qbf_mode                              false
% 3.22/0.99  --qbf_elim_univ                         false
% 3.22/0.99  --qbf_dom_inst                          none
% 3.22/0.99  --qbf_dom_pre_inst                      false
% 3.22/0.99  --qbf_sk_in                             false
% 3.22/0.99  --qbf_pred_elim                         true
% 3.22/0.99  --qbf_split                             512
% 3.22/0.99  
% 3.22/0.99  ------ BMC1 Options
% 3.22/0.99  
% 3.22/0.99  --bmc1_incremental                      false
% 3.22/0.99  --bmc1_axioms                           reachable_all
% 3.22/0.99  --bmc1_min_bound                        0
% 3.22/0.99  --bmc1_max_bound                        -1
% 3.22/0.99  --bmc1_max_bound_default                -1
% 3.22/0.99  --bmc1_symbol_reachability              true
% 3.22/0.99  --bmc1_property_lemmas                  false
% 3.22/0.99  --bmc1_k_induction                      false
% 3.22/0.99  --bmc1_non_equiv_states                 false
% 3.22/0.99  --bmc1_deadlock                         false
% 3.22/0.99  --bmc1_ucm                              false
% 3.22/0.99  --bmc1_add_unsat_core                   none
% 3.22/0.99  --bmc1_unsat_core_children              false
% 3.22/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.22/0.99  --bmc1_out_stat                         full
% 3.22/0.99  --bmc1_ground_init                      false
% 3.22/0.99  --bmc1_pre_inst_next_state              false
% 3.22/0.99  --bmc1_pre_inst_state                   false
% 3.22/0.99  --bmc1_pre_inst_reach_state             false
% 3.22/0.99  --bmc1_out_unsat_core                   false
% 3.22/0.99  --bmc1_aig_witness_out                  false
% 3.22/0.99  --bmc1_verbose                          false
% 3.22/0.99  --bmc1_dump_clauses_tptp                false
% 3.22/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.22/0.99  --bmc1_dump_file                        -
% 3.22/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.22/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.22/0.99  --bmc1_ucm_extend_mode                  1
% 3.22/0.99  --bmc1_ucm_init_mode                    2
% 3.22/0.99  --bmc1_ucm_cone_mode                    none
% 3.22/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.22/0.99  --bmc1_ucm_relax_model                  4
% 3.22/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.22/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.22/0.99  --bmc1_ucm_layered_model                none
% 3.22/0.99  --bmc1_ucm_max_lemma_size               10
% 3.22/0.99  
% 3.22/0.99  ------ AIG Options
% 3.22/0.99  
% 3.22/0.99  --aig_mode                              false
% 3.22/0.99  
% 3.22/0.99  ------ Instantiation Options
% 3.22/0.99  
% 3.22/0.99  --instantiation_flag                    true
% 3.22/0.99  --inst_sos_flag                         false
% 3.22/0.99  --inst_sos_phase                        true
% 3.22/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel_side                     none
% 3.22/0.99  --inst_solver_per_active                1400
% 3.22/0.99  --inst_solver_calls_frac                1.
% 3.22/0.99  --inst_passive_queue_type               priority_queues
% 3.22/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.22/0.99  --inst_passive_queues_freq              [25;2]
% 3.22/0.99  --inst_dismatching                      true
% 3.22/0.99  --inst_eager_unprocessed_to_passive     true
% 3.22/0.99  --inst_prop_sim_given                   true
% 3.22/0.99  --inst_prop_sim_new                     false
% 3.22/0.99  --inst_subs_new                         false
% 3.22/0.99  --inst_eq_res_simp                      false
% 3.22/0.99  --inst_subs_given                       false
% 3.22/0.99  --inst_orphan_elimination               true
% 3.22/0.99  --inst_learning_loop_flag               true
% 3.22/0.99  --inst_learning_start                   3000
% 3.22/0.99  --inst_learning_factor                  2
% 3.22/0.99  --inst_start_prop_sim_after_learn       3
% 3.22/0.99  --inst_sel_renew                        solver
% 3.22/0.99  --inst_lit_activity_flag                true
% 3.22/0.99  --inst_restr_to_given                   false
% 3.22/0.99  --inst_activity_threshold               500
% 3.22/0.99  --inst_out_proof                        true
% 3.22/0.99  
% 3.22/0.99  ------ Resolution Options
% 3.22/0.99  
% 3.22/0.99  --resolution_flag                       false
% 3.22/0.99  --res_lit_sel                           adaptive
% 3.22/0.99  --res_lit_sel_side                      none
% 3.22/0.99  --res_ordering                          kbo
% 3.22/0.99  --res_to_prop_solver                    active
% 3.22/0.99  --res_prop_simpl_new                    false
% 3.22/0.99  --res_prop_simpl_given                  true
% 3.22/0.99  --res_passive_queue_type                priority_queues
% 3.22/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.22/0.99  --res_passive_queues_freq               [15;5]
% 3.22/0.99  --res_forward_subs                      full
% 3.22/0.99  --res_backward_subs                     full
% 3.22/0.99  --res_forward_subs_resolution           true
% 3.22/0.99  --res_backward_subs_resolution          true
% 3.22/0.99  --res_orphan_elimination                true
% 3.22/0.99  --res_time_limit                        2.
% 3.22/0.99  --res_out_proof                         true
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Options
% 3.22/0.99  
% 3.22/0.99  --superposition_flag                    true
% 3.22/0.99  --sup_passive_queue_type                priority_queues
% 3.22/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.22/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.22/0.99  --demod_completeness_check              fast
% 3.22/0.99  --demod_use_ground                      true
% 3.22/0.99  --sup_to_prop_solver                    passive
% 3.22/0.99  --sup_prop_simpl_new                    true
% 3.22/0.99  --sup_prop_simpl_given                  true
% 3.22/0.99  --sup_fun_splitting                     false
% 3.22/0.99  --sup_smt_interval                      50000
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Simplification Setup
% 3.22/0.99  
% 3.22/0.99  --sup_indices_passive                   []
% 3.22/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.22/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_full_bw                           [BwDemod]
% 3.22/0.99  --sup_immed_triv                        [TrivRules]
% 3.22/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.22/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_immed_bw_main                     []
% 3.22/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.22/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  
% 3.22/0.99  ------ Combination Options
% 3.22/0.99  
% 3.22/0.99  --comb_res_mult                         3
% 3.22/0.99  --comb_sup_mult                         2
% 3.22/0.99  --comb_inst_mult                        10
% 3.22/0.99  
% 3.22/0.99  ------ Debug Options
% 3.22/0.99  
% 3.22/0.99  --dbg_backtrace                         false
% 3.22/0.99  --dbg_dump_prop_clauses                 false
% 3.22/0.99  --dbg_dump_prop_clauses_file            -
% 3.22/0.99  --dbg_out_stat                          false
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  ------ Proving...
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  % SZS status Theorem for theBenchmark.p
% 3.22/0.99  
% 3.22/0.99   Resolution empty clause
% 3.22/0.99  
% 3.22/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  fof(f22,conjecture,(
% 3.22/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (r1_tarski(X1,X2) => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f23,negated_conjecture,(
% 3.22/0.99    ~! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (r1_tarski(X1,X2) => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)))),
% 3.22/0.99    inference(negated_conjecture,[],[f22])).
% 3.22/0.99  
% 3.22/0.99  fof(f42,plain,(
% 3.22/0.99    ? [X0,X1,X2,X3] : ((~r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) & r1_tarski(X1,X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 3.22/0.99    inference(ennf_transformation,[],[f23])).
% 3.22/0.99  
% 3.22/0.99  fof(f43,plain,(
% 3.22/0.99    ? [X0,X1,X2,X3] : (~r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 3.22/0.99    inference(flattening,[],[f42])).
% 3.22/0.99  
% 3.22/0.99  fof(f52,plain,(
% 3.22/0.99    ? [X0,X1,X2,X3] : (~r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => (~r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) & r1_tarski(sK2,sK3) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))))),
% 3.22/0.99    introduced(choice_axiom,[])).
% 3.22/0.99  
% 3.22/0.99  fof(f53,plain,(
% 3.22/0.99    ~r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) & r1_tarski(sK2,sK3) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))),
% 3.22/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f43,f52])).
% 3.22/0.99  
% 3.22/0.99  fof(f82,plain,(
% 3.22/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))),
% 3.22/0.99    inference(cnf_transformation,[],[f53])).
% 3.22/0.99  
% 3.22/0.99  fof(f8,axiom,(
% 3.22/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f50,plain,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 3.22/0.99    inference(nnf_transformation,[],[f8])).
% 3.22/0.99  
% 3.22/0.99  fof(f64,plain,(
% 3.22/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f50])).
% 3.22/0.99  
% 3.22/0.99  fof(f14,axiom,(
% 3.22/0.99    ! [X0,X1] : ~(~(k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f31,plain,(
% 3.22/0.99    ! [X0,X1] : ((k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 3.22/0.99    inference(ennf_transformation,[],[f14])).
% 3.22/0.99  
% 3.22/0.99  fof(f71,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 3.22/0.99    inference(cnf_transformation,[],[f31])).
% 3.22/0.99  
% 3.22/0.99  fof(f15,axiom,(
% 3.22/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(X0,X1) => (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))))))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f32,plain,(
% 3.22/0.99    ! [X0] : (! [X1] : (((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.22/0.99    inference(ennf_transformation,[],[f15])).
% 3.22/0.99  
% 3.22/0.99  fof(f33,plain,(
% 3.22/0.99    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.22/0.99    inference(flattening,[],[f32])).
% 3.22/0.99  
% 3.22/0.99  fof(f73,plain,(
% 3.22/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f33])).
% 3.22/0.99  
% 3.22/0.99  fof(f9,axiom,(
% 3.22/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f27,plain,(
% 3.22/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 3.22/0.99    inference(ennf_transformation,[],[f9])).
% 3.22/0.99  
% 3.22/0.99  fof(f66,plain,(
% 3.22/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f27])).
% 3.22/0.99  
% 3.22/0.99  fof(f65,plain,(
% 3.22/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f50])).
% 3.22/0.99  
% 3.22/0.99  fof(f10,axiom,(
% 3.22/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f67,plain,(
% 3.22/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f10])).
% 3.22/0.99  
% 3.22/0.99  fof(f16,axiom,(
% 3.22/0.99    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f34,plain,(
% 3.22/0.99    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.22/0.99    inference(ennf_transformation,[],[f16])).
% 3.22/0.99  
% 3.22/0.99  fof(f35,plain,(
% 3.22/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 3.22/0.99    inference(flattening,[],[f34])).
% 3.22/0.99  
% 3.22/0.99  fof(f75,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f35])).
% 3.22/0.99  
% 3.22/0.99  fof(f83,plain,(
% 3.22/0.99    r1_tarski(sK2,sK3)),
% 3.22/0.99    inference(cnf_transformation,[],[f53])).
% 3.22/0.99  
% 3.22/0.99  fof(f11,axiom,(
% 3.22/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1)))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f28,plain,(
% 3.22/0.99    ! [X0,X1,X2] : ((k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X2))),
% 3.22/0.99    inference(ennf_transformation,[],[f11])).
% 3.22/0.99  
% 3.22/0.99  fof(f29,plain,(
% 3.22/0.99    ! [X0,X1,X2] : (k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) | ~r1_tarski(X0,X1) | ~v1_relat_1(X2))),
% 3.22/0.99    inference(flattening,[],[f28])).
% 3.22/0.99  
% 3.22/0.99  fof(f68,plain,(
% 3.22/0.99    ( ! [X2,X0,X1] : (k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) | ~r1_tarski(X0,X1) | ~v1_relat_1(X2)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f29])).
% 3.22/0.99  
% 3.22/0.99  fof(f18,axiom,(
% 3.22/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f37,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(ennf_transformation,[],[f18])).
% 3.22/0.99  
% 3.22/0.99  fof(f77,plain,(
% 3.22/0.99    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f37])).
% 3.22/0.99  
% 3.22/0.99  fof(f84,plain,(
% 3.22/0.99    ~r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4)),
% 3.22/0.99    inference(cnf_transformation,[],[f53])).
% 3.22/0.99  
% 3.22/0.99  fof(f19,axiom,(
% 3.22/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f38,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.22/0.99    inference(ennf_transformation,[],[f19])).
% 3.22/0.99  
% 3.22/0.99  fof(f39,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(flattening,[],[f38])).
% 3.22/0.99  
% 3.22/0.99  fof(f51,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(nnf_transformation,[],[f39])).
% 3.22/0.99  
% 3.22/0.99  fof(f79,plain,(
% 3.22/0.99    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f51])).
% 3.22/0.99  
% 3.22/0.99  fof(f87,plain,(
% 3.22/0.99    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(equality_resolution,[],[f79])).
% 3.22/0.99  
% 3.22/0.99  fof(f2,axiom,(
% 3.22/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f24,plain,(
% 3.22/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.22/0.99    inference(ennf_transformation,[],[f2])).
% 3.22/0.99  
% 3.22/0.99  fof(f56,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f24])).
% 3.22/0.99  
% 3.22/0.99  fof(f3,axiom,(
% 3.22/0.99    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f57,plain,(
% 3.22/0.99    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0) )),
% 3.22/0.99    inference(cnf_transformation,[],[f3])).
% 3.22/0.99  
% 3.22/0.99  fof(f5,axiom,(
% 3.22/0.99    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f48,plain,(
% 3.22/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.22/0.99    inference(nnf_transformation,[],[f5])).
% 3.22/0.99  
% 3.22/0.99  fof(f49,plain,(
% 3.22/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 3.22/0.99    inference(flattening,[],[f48])).
% 3.22/0.99  
% 3.22/0.99  fof(f61,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 3.22/0.99    inference(cnf_transformation,[],[f49])).
% 3.22/0.99  
% 3.22/0.99  fof(f85,plain,(
% 3.22/0.99    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 3.22/0.99    inference(equality_resolution,[],[f61])).
% 3.22/0.99  
% 3.22/0.99  fof(f13,axiom,(
% 3.22/0.99    ! [X0] : k1_xboole_0 = k7_relat_1(k1_xboole_0,X0)),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f70,plain,(
% 3.22/0.99    ( ! [X0] : (k1_xboole_0 = k7_relat_1(k1_xboole_0,X0)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f13])).
% 3.22/0.99  
% 3.22/0.99  fof(f60,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 3.22/0.99    inference(cnf_transformation,[],[f49])).
% 3.22/0.99  
% 3.22/0.99  fof(f86,plain,(
% 3.22/0.99    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 3.22/0.99    inference(equality_resolution,[],[f60])).
% 3.22/0.99  
% 3.22/0.99  fof(f21,axiom,(
% 3.22/0.99    ! [X0,X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))),
% 3.22/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f81,plain,(
% 3.22/0.99    ( ! [X0,X1] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f21])).
% 3.22/0.99  
% 3.22/0.99  cnf(c_30,negated_conjecture,
% 3.22/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1103,plain,
% 3.22/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_11,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.22/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1116,plain,
% 3.22/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.22/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2294,plain,
% 3.22/0.99      ( r1_tarski(sK4,k2_zfmisc_1(sK2,sK1)) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1103,c_1116]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_18,plain,
% 3.22/0.99      ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0
% 3.22/0.99      | k1_xboole_0 = X0
% 3.22/0.99      | k1_xboole_0 = X1 ),
% 3.22/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_20,plain,
% 3.22/0.99      ( ~ r1_tarski(X0,X1)
% 3.22/0.99      | r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
% 3.22/0.99      | ~ v1_relat_1(X0)
% 3.22/0.99      | ~ v1_relat_1(X1) ),
% 3.22/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_12,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_10,plain,
% 3.22/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.22/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_148,plain,
% 3.22/0.99      ( r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
% 3.22/0.99      | ~ r1_tarski(X0,X1)
% 3.22/0.99      | ~ v1_relat_1(X1) ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_20,c_12,c_10]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_149,plain,
% 3.22/0.99      ( ~ r1_tarski(X0,X1)
% 3.22/0.99      | r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
% 3.22/0.99      | ~ v1_relat_1(X1) ),
% 3.22/0.99      inference(renaming,[status(thm)],[c_148]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1102,plain,
% 3.22/0.99      ( r1_tarski(X0,X1) != iProver_top
% 3.22/0.99      | r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) = iProver_top
% 3.22/0.99      | v1_relat_1(X1) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_149]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3581,plain,
% 3.22/0.99      ( k1_xboole_0 = X0
% 3.22/0.99      | k1_xboole_0 = X1
% 3.22/0.99      | r1_tarski(X2,k2_zfmisc_1(X1,X0)) != iProver_top
% 3.22/0.99      | r1_tarski(k1_relat_1(X2),X1) = iProver_top
% 3.22/0.99      | v1_relat_1(k2_zfmisc_1(X1,X0)) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_18,c_1102]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_13,plain,
% 3.22/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 3.22/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1115,plain,
% 3.22/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_5237,plain,
% 3.22/0.99      ( k1_xboole_0 = X0
% 3.22/0.99      | k1_xboole_0 = X1
% 3.22/0.99      | r1_tarski(X2,k2_zfmisc_1(X1,X0)) != iProver_top
% 3.22/0.99      | r1_tarski(k1_relat_1(X2),X1) = iProver_top ),
% 3.22/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_3581,c_1115]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_5240,plain,
% 3.22/0.99      ( sK1 = k1_xboole_0
% 3.22/0.99      | sK2 = k1_xboole_0
% 3.22/0.99      | r1_tarski(k1_relat_1(sK4),sK2) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2294,c_5237]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_21,plain,
% 3.22/0.99      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 3.22/0.99      | ~ v1_relat_1(X0)
% 3.22/0.99      | k7_relat_1(X0,X1) = X0 ),
% 3.22/0.99      inference(cnf_transformation,[],[f75]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1112,plain,
% 3.22/0.99      ( k7_relat_1(X0,X1) = X0
% 3.22/0.99      | r1_tarski(k1_relat_1(X0),X1) != iProver_top
% 3.22/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_5448,plain,
% 3.22/0.99      ( k7_relat_1(sK4,sK2) = sK4
% 3.22/0.99      | sK1 = k1_xboole_0
% 3.22/0.99      | sK2 = k1_xboole_0
% 3.22/0.99      | v1_relat_1(sK4) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_5240,c_1112]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_203,plain,
% 3.22/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 3.22/0.99      inference(prop_impl,[status(thm)],[c_10]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_204,plain,
% 3.22/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.22/0.99      inference(renaming,[status(thm)],[c_203]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_252,plain,
% 3.22/0.99      ( ~ r1_tarski(X0,X1) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 3.22/0.99      inference(bin_hyper_res,[status(thm)],[c_12,c_204]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1100,plain,
% 3.22/0.99      ( r1_tarski(X0,X1) != iProver_top
% 3.22/0.99      | v1_relat_1(X1) != iProver_top
% 3.22/0.99      | v1_relat_1(X0) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_252]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2407,plain,
% 3.22/0.99      ( v1_relat_1(k2_zfmisc_1(sK2,sK1)) != iProver_top
% 3.22/0.99      | v1_relat_1(sK4) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2294,c_1100]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2524,plain,
% 3.22/0.99      ( v1_relat_1(sK4) = iProver_top ),
% 3.22/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_2407,c_1115]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7139,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0 | sK1 = k1_xboole_0 | k7_relat_1(sK4,sK2) = sK4 ),
% 3.22/0.99      inference(global_propositional_subsumption,[status(thm)],[c_5448,c_2524]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7140,plain,
% 3.22/0.99      ( k7_relat_1(sK4,sK2) = sK4 | sK1 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.22/0.99      inference(renaming,[status(thm)],[c_7139]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_29,negated_conjecture,
% 3.22/0.99      ( r1_tarski(sK2,sK3) ),
% 3.22/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1104,plain,
% 3.22/0.99      ( r1_tarski(sK2,sK3) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_14,plain,
% 3.22/0.99      ( ~ r1_tarski(X0,X1)
% 3.22/0.99      | ~ v1_relat_1(X2)
% 3.22/0.99      | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1114,plain,
% 3.22/0.99      ( k7_relat_1(k7_relat_1(X0,X1),X2) = k7_relat_1(X0,X1)
% 3.22/0.99      | r1_tarski(X1,X2) != iProver_top
% 3.22/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4350,plain,
% 3.22/0.99      ( k7_relat_1(k7_relat_1(X0,sK2),sK3) = k7_relat_1(X0,sK2)
% 3.22/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1104,c_1114]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4700,plain,
% 3.22/0.99      ( k7_relat_1(k7_relat_1(sK4,sK2),sK3) = k7_relat_1(sK4,sK2) ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2524,c_4350]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7144,plain,
% 3.22/0.99      ( k7_relat_1(sK4,sK2) = k7_relat_1(sK4,sK3)
% 3.22/0.99      | sK1 = k1_xboole_0
% 3.22/0.99      | sK2 = k1_xboole_0 ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7140,c_4700]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_23,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | k5_relset_1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 3.22/0.99      inference(cnf_transformation,[],[f77]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1110,plain,
% 3.22/0.99      ( k5_relset_1(X0,X1,X2,X3) = k7_relat_1(X2,X3)
% 3.22/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3040,plain,
% 3.22/0.99      ( k5_relset_1(sK2,sK1,sK4,X0) = k7_relat_1(sK4,X0) ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1103,c_1110]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_28,negated_conjecture,
% 3.22/0.99      ( ~ r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) ),
% 3.22/0.99      inference(cnf_transformation,[],[f84]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1105,plain,
% 3.22/0.99      ( r2_relset_1(sK2,sK1,k5_relset_1(sK2,sK1,sK4,sK3),sK4) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3190,plain,
% 3.22/0.99      ( r2_relset_1(sK2,sK1,k7_relat_1(sK4,sK3),sK4) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_3040,c_1105]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7420,plain,
% 3.22/0.99      ( sK1 = k1_xboole_0
% 3.22/0.99      | sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,sK1,k7_relat_1(sK4,sK2),sK4) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7144,c_3190]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7426,plain,
% 3.22/0.99      ( sK1 = k1_xboole_0
% 3.22/0.99      | sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,sK1,sK4,sK4) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7140,c_7420]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_24,plain,
% 3.22/0.99      ( r2_relset_1(X0,X1,X2,X2)
% 3.22/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1109,plain,
% 3.22/0.99      ( r2_relset_1(X0,X1,X2,X2) = iProver_top
% 3.22/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2354,plain,
% 3.22/0.99      ( r2_relset_1(sK2,sK1,sK4,sK4) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1103,c_1109]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7450,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0 | sK1 = k1_xboole_0 ),
% 3.22/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7426,c_2354]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7451,plain,
% 3.22/0.99      ( sK1 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.22/0.99      inference(renaming,[status(thm)],[c_7450]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2,plain,
% 3.22/0.99      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 3.22/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1119,plain,
% 3.22/0.99      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2408,plain,
% 3.22/0.99      ( k3_xboole_0(sK4,k2_zfmisc_1(sK2,sK1)) = sK4 ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2294,c_1119]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7472,plain,
% 3.22/0.99      ( k3_xboole_0(sK4,k2_zfmisc_1(sK2,k1_xboole_0)) = sK4
% 3.22/0.99      | sK2 = k1_xboole_0 ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7451,c_2408]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3,plain,
% 3.22/0.99      ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
% 3.22/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_5,plain,
% 3.22/0.99      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 3.22/0.99      inference(cnf_transformation,[],[f85]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7492,plain,
% 3.22/0.99      ( sK4 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_7472,c_3,c_5]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7473,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,k1_xboole_0,sK4,sK4) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7451,c_2354]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7843,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,k1_xboole_0,k1_xboole_0,k1_xboole_0) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7492,c_7473]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7470,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,k1_xboole_0,k7_relat_1(sK4,sK3),sK4) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7451,c_3190]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7846,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,k1_xboole_0,k7_relat_1(k1_xboole_0,sK3),k1_xboole_0) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_7492,c_7470]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_16,plain,
% 3.22/0.99      ( k7_relat_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.22/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7932,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0
% 3.22/0.99      | r2_relset_1(sK2,k1_xboole_0,k1_xboole_0,k1_xboole_0) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_7846,c_16]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7937,plain,
% 3.22/0.99      ( sK2 = k1_xboole_0 ),
% 3.22/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_7843,c_7932]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8302,plain,
% 3.22/0.99      ( r2_relset_1(k1_xboole_0,sK1,k7_relat_1(sK4,sK3),sK4) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_7937,c_3190]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8304,plain,
% 3.22/0.99      ( k3_xboole_0(sK4,k2_zfmisc_1(k1_xboole_0,sK1)) = sK4 ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_7937,c_2408]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_6,plain,
% 3.22/0.99      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.22/0.99      inference(cnf_transformation,[],[f86]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8324,plain,
% 3.22/0.99      ( sK4 = k1_xboole_0 ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_8304,c_3,c_6]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8333,plain,
% 3.22/0.99      ( r2_relset_1(k1_xboole_0,sK1,k7_relat_1(k1_xboole_0,sK3),k1_xboole_0) != iProver_top ),
% 3.22/0.99      inference(light_normalisation,[status(thm)],[c_8302,c_8324]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8335,plain,
% 3.22/0.99      ( r2_relset_1(k1_xboole_0,sK1,k1_xboole_0,k1_xboole_0) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_8333,c_16]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_27,plain,
% 3.22/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1106,plain,
% 3.22/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2353,plain,
% 3.22/0.99      ( r2_relset_1(X0,X1,k1_xboole_0,k1_xboole_0) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1106,c_1109]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8483,plain,
% 3.22/0.99      ( $false ),
% 3.22/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_8335,c_2353]) ).
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  ------                               Statistics
% 3.22/0.99  
% 3.22/0.99  ------ General
% 3.22/0.99  
% 3.22/0.99  abstr_ref_over_cycles:                  0
% 3.22/0.99  abstr_ref_under_cycles:                 0
% 3.22/0.99  gc_basic_clause_elim:                   0
% 3.22/0.99  forced_gc_time:                         0
% 3.22/0.99  parsing_time:                           0.007
% 3.22/0.99  unif_index_cands_time:                  0.
% 3.22/0.99  unif_index_add_time:                    0.
% 3.22/0.99  orderings_time:                         0.
% 3.22/0.99  out_proof_time:                         0.009
% 3.22/0.99  total_time:                             0.204
% 3.22/0.99  num_of_symbols:                         52
% 3.22/0.99  num_of_terms:                           6988
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing
% 3.22/0.99  
% 3.22/0.99  num_of_splits:                          0
% 3.22/0.99  num_of_split_atoms:                     0
% 3.22/0.99  num_of_reused_defs:                     0
% 3.22/0.99  num_eq_ax_congr_red:                    14
% 3.22/0.99  num_of_sem_filtered_clauses:            1
% 3.22/0.99  num_of_subtypes:                        0
% 3.22/0.99  monotx_restored_types:                  0
% 3.22/0.99  sat_num_of_epr_types:                   0
% 3.22/0.99  sat_num_of_non_cyclic_types:            0
% 3.22/0.99  sat_guarded_non_collapsed_types:        0
% 3.22/0.99  num_pure_diseq_elim:                    0
% 3.22/0.99  simp_replaced_by:                       0
% 3.22/0.99  res_preprocessed:                       149
% 3.22/0.99  prep_upred:                             0
% 3.22/0.99  prep_unflattend:                        4
% 3.22/0.99  smt_new_axioms:                         0
% 3.22/0.99  pred_elim_cands:                        5
% 3.22/0.99  pred_elim:                              1
% 3.22/0.99  pred_elim_cl:                           2
% 3.22/0.99  pred_elim_cycles:                       3
% 3.22/0.99  merged_defs:                            8
% 3.22/0.99  merged_defs_ncl:                        0
% 3.22/0.99  bin_hyper_res:                          9
% 3.22/0.99  prep_cycles:                            4
% 3.22/0.99  pred_elim_time:                         0.
% 3.22/0.99  splitting_time:                         0.
% 3.22/0.99  sem_filter_time:                        0.
% 3.22/0.99  monotx_time:                            0.
% 3.22/0.99  subtype_inf_time:                       0.
% 3.22/0.99  
% 3.22/0.99  ------ Problem properties
% 3.22/0.99  
% 3.22/0.99  clauses:                                29
% 3.22/0.99  conjectures:                            3
% 3.22/0.99  epr:                                    3
% 3.22/0.99  horn:                                   25
% 3.22/0.99  ground:                                 3
% 3.22/0.99  unary:                                  10
% 3.22/0.99  binary:                                 8
% 3.22/0.99  lits:                                   61
% 3.22/0.99  lits_eq:                                22
% 3.22/0.99  fd_pure:                                0
% 3.22/0.99  fd_pseudo:                              0
% 3.22/0.99  fd_cond:                                2
% 3.22/0.99  fd_pseudo_cond:                         1
% 3.22/0.99  ac_symbols:                             0
% 3.22/0.99  
% 3.22/0.99  ------ Propositional Solver
% 3.22/0.99  
% 3.22/0.99  prop_solver_calls:                      27
% 3.22/0.99  prop_fast_solver_calls:                 1039
% 3.22/0.99  smt_solver_calls:                       0
% 3.22/0.99  smt_fast_solver_calls:                  0
% 3.22/0.99  prop_num_of_clauses:                    2875
% 3.22/0.99  prop_preprocess_simplified:             8785
% 3.22/0.99  prop_fo_subsumed:                       34
% 3.22/0.99  prop_solver_time:                       0.
% 3.22/0.99  smt_solver_time:                        0.
% 3.22/0.99  smt_fast_solver_time:                   0.
% 3.22/0.99  prop_fast_solver_time:                  0.
% 3.22/0.99  prop_unsat_core_time:                   0.
% 3.22/0.99  
% 3.22/0.99  ------ QBF
% 3.22/0.99  
% 3.22/0.99  qbf_q_res:                              0
% 3.22/0.99  qbf_num_tautologies:                    0
% 3.22/0.99  qbf_prep_cycles:                        0
% 3.22/0.99  
% 3.22/0.99  ------ BMC1
% 3.22/0.99  
% 3.22/0.99  bmc1_current_bound:                     -1
% 3.22/0.99  bmc1_last_solved_bound:                 -1
% 3.22/0.99  bmc1_unsat_core_size:                   -1
% 3.22/0.99  bmc1_unsat_core_parents_size:           -1
% 3.22/0.99  bmc1_merge_next_fun:                    0
% 3.22/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.22/0.99  
% 3.22/0.99  ------ Instantiation
% 3.22/0.99  
% 3.22/0.99  inst_num_of_clauses:                    980
% 3.22/0.99  inst_num_in_passive:                    419
% 3.22/0.99  inst_num_in_active:                     424
% 3.22/0.99  inst_num_in_unprocessed:                137
% 3.22/0.99  inst_num_of_loops:                      600
% 3.22/0.99  inst_num_of_learning_restarts:          0
% 3.22/0.99  inst_num_moves_active_passive:          175
% 3.22/0.99  inst_lit_activity:                      0
% 3.22/0.99  inst_lit_activity_moves:                0
% 3.22/0.99  inst_num_tautologies:                   0
% 3.22/0.99  inst_num_prop_implied:                  0
% 3.22/0.99  inst_num_existing_simplified:           0
% 3.22/0.99  inst_num_eq_res_simplified:             0
% 3.22/0.99  inst_num_child_elim:                    0
% 3.22/0.99  inst_num_of_dismatching_blockings:      383
% 3.22/0.99  inst_num_of_non_proper_insts:           888
% 3.22/0.99  inst_num_of_duplicates:                 0
% 3.22/0.99  inst_inst_num_from_inst_to_res:         0
% 3.22/0.99  inst_dismatching_checking_time:         0.
% 3.22/0.99  
% 3.22/0.99  ------ Resolution
% 3.22/0.99  
% 3.22/0.99  res_num_of_clauses:                     0
% 3.22/0.99  res_num_in_passive:                     0
% 3.22/0.99  res_num_in_active:                      0
% 3.22/0.99  res_num_of_loops:                       153
% 3.22/0.99  res_forward_subset_subsumed:            37
% 3.22/0.99  res_backward_subset_subsumed:           0
% 3.22/0.99  res_forward_subsumed:                   0
% 3.22/0.99  res_backward_subsumed:                  0
% 3.22/0.99  res_forward_subsumption_resolution:     0
% 3.22/0.99  res_backward_subsumption_resolution:    0
% 3.22/0.99  res_clause_to_clause_subsumption:       517
% 3.22/0.99  res_orphan_elimination:                 0
% 3.22/0.99  res_tautology_del:                      65
% 3.22/0.99  res_num_eq_res_simplified:              0
% 3.22/0.99  res_num_sel_changes:                    0
% 3.22/0.99  res_moves_from_active_to_pass:          0
% 3.22/0.99  
% 3.22/0.99  ------ Superposition
% 3.22/0.99  
% 3.22/0.99  sup_time_total:                         0.
% 3.22/1.00  sup_time_generating:                    0.
% 3.22/1.00  sup_time_sim_full:                      0.
% 3.22/1.00  sup_time_sim_immed:                     0.
% 3.22/1.00  
% 3.22/1.00  sup_num_of_clauses:                     119
% 3.22/1.00  sup_num_in_active:                      67
% 3.22/1.00  sup_num_in_passive:                     52
% 3.22/1.00  sup_num_of_loops:                       119
% 3.22/1.00  sup_fw_superposition:                   197
% 3.22/1.00  sup_bw_superposition:                   85
% 3.22/1.00  sup_immediate_simplified:               124
% 3.22/1.00  sup_given_eliminated:                   1
% 3.22/1.00  comparisons_done:                       0
% 3.22/1.00  comparisons_avoided:                    49
% 3.22/1.00  
% 3.22/1.00  ------ Simplifications
% 3.22/1.00  
% 3.22/1.00  
% 3.22/1.00  sim_fw_subset_subsumed:                 50
% 3.22/1.00  sim_bw_subset_subsumed:                 25
% 3.22/1.00  sim_fw_subsumed:                        18
% 3.22/1.00  sim_bw_subsumed:                        7
% 3.22/1.00  sim_fw_subsumption_res:                 5
% 3.22/1.00  sim_bw_subsumption_res:                 0
% 3.22/1.00  sim_tautology_del:                      8
% 3.22/1.00  sim_eq_tautology_del:                   51
% 3.22/1.00  sim_eq_res_simp:                        0
% 3.22/1.00  sim_fw_demodulated:                     51
% 3.22/1.00  sim_bw_demodulated:                     47
% 3.22/1.00  sim_light_normalised:                   30
% 3.22/1.00  sim_joinable_taut:                      0
% 3.22/1.00  sim_joinable_simp:                      0
% 3.22/1.00  sim_ac_normalised:                      0
% 3.22/1.00  sim_smt_subsumption:                    0
% 3.22/1.00  
%------------------------------------------------------------------------------
