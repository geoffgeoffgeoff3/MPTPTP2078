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
% DateTime   : Thu Dec  3 11:56:44 EST 2020

% Result     : Theorem 1.53s
% Output     : CNFRefutation 1.53s
% Verified   : 
% Statistics : Number of formulae       :   95 ( 181 expanded)
%              Number of clauses        :   45 (  67 expanded)
%              Number of leaves         :   16 (  38 expanded)
%              Depth                    :   13
%              Number of atoms          :  263 ( 572 expanded)
%              Number of equality atoms :   96 ( 195 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f1])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f27])).

fof(f37,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK1(X0,X1),X0)
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( r1_tarski(sK1(X0,X1),X0)
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK1(X0,X1),X0)
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( r1_tarski(sK1(X0,X1),X0)
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f31])).

fof(f39,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f55,plain,(
    ! [X0,X3] :
      ( r2_hidden(X3,k1_zfmisc_1(X0))
      | ~ r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f39])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f42,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f17])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f11,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
             => ~ ( ! [X3] :
                      ( m1_subset_1(X3,X1)
                     => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
                  & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
               => ~ ( ! [X3] :
                        ( m1_subset_1(X3,X1)
                       => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
                    & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f13,plain,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
       => ~ ( ! [X3] :
                ( m1_subset_1(X3,X1)
               => ~ r2_hidden(X3,k1_relset_1(X1,X0,X2)) )
            & k1_xboole_0 != k2_relset_1(X1,X0,X2) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f25,plain,(
    ? [X0,X1,X2] :
      ( ! [X3] :
          ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
          | ~ m1_subset_1(X3,X1) )
      & k1_xboole_0 != k2_relset_1(X1,X0,X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f26,plain,(
    ? [X0,X1,X2] :
      ( ! [X3] :
          ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
          | ~ m1_subset_1(X3,X1) )
      & k1_xboole_0 != k2_relset_1(X1,X0,X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(flattening,[],[f25])).

fof(f35,plain,
    ( ? [X0,X1,X2] :
        ( ! [X3] :
            ( ~ r2_hidden(X3,k1_relset_1(X1,X0,X2))
            | ~ m1_subset_1(X3,X1) )
        & k1_xboole_0 != k2_relset_1(X1,X0,X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
   => ( ! [X3] :
          ( ~ r2_hidden(X3,k1_relset_1(sK3,sK2,sK4))
          | ~ m1_subset_1(X3,sK3) )
      & k1_xboole_0 != k2_relset_1(sK3,sK2,sK4)
      & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ! [X3] :
        ( ~ r2_hidden(X3,k1_relset_1(sK3,sK2,sK4))
        | ~ m1_subset_1(X3,sK3) )
    & k1_xboole_0 != k2_relset_1(sK3,sK2,sK4)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f26,f35])).

fof(f52,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
    inference(cnf_transformation,[],[f36])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f54,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k1_relset_1(sK3,sK2,sK4))
      | ~ m1_subset_1(X3,sK3) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f53,plain,(
    k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) ),
    inference(cnf_transformation,[],[f36])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f34,plain,(
    ! [X0] :
      ( ( ( k1_xboole_0 = k1_relat_1(X0)
          | k1_xboole_0 != k2_relat_1(X0) )
        & ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 != k1_relat_1(X0) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f46,plain,(
    ! [X0] :
      ( k1_xboole_0 = k2_relat_1(X0)
      | k1_xboole_0 != k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1439,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1436,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_5,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1434,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1606,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1436,c_1434])).

cnf(c_6,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1433,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2439,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r1_tarski(X2,X1) != iProver_top
    | r2_hidden(X0,X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1606,c_1433])).

cnf(c_2801,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(sK0(X0),X1) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1439,c_2439])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1426,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1429,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2365,plain,
    ( k1_relset_1(sK3,sK2,sK4) = k1_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1426,c_1429])).

cnf(c_15,negated_conjecture,
    ( ~ m1_subset_1(X0,sK3)
    | ~ r2_hidden(X0,k1_relset_1(sK3,sK2,sK4)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1427,plain,
    ( m1_subset_1(X0,sK3) != iProver_top
    | r2_hidden(X0,k1_relset_1(sK3,sK2,sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_1835,plain,
    ( k1_relset_1(sK3,sK2,sK4) = k1_xboole_0
    | m1_subset_1(sK0(k1_relset_1(sK3,sK2,sK4)),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1439,c_1427])).

cnf(c_2551,plain,
    ( k1_relat_1(sK4) = k1_xboole_0
    | m1_subset_1(sK0(k1_relat_1(sK4)),sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2365,c_1835])).

cnf(c_16,negated_conjecture,
    ( k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1037,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1054,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1037])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1549,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | v1_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1560,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | k2_relset_1(sK3,sK2,sK4) = k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_10,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) = k1_xboole_0
    | k1_relat_1(X0) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1574,plain,
    ( ~ v1_relat_1(sK4)
    | k2_relat_1(sK4) = k1_xboole_0
    | k1_relat_1(sK4) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1038,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1555,plain,
    ( k2_relset_1(sK3,sK2,sK4) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_1038])).

cnf(c_1618,plain,
    ( k2_relset_1(sK3,sK2,sK4) != k2_relat_1(sK4)
    | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4)
    | k1_xboole_0 != k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1555])).

cnf(c_1672,plain,
    ( k2_relat_1(sK4) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k2_relat_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1038])).

cnf(c_1673,plain,
    ( k2_relat_1(sK4) != k1_xboole_0
    | k1_xboole_0 = k2_relat_1(sK4)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1672])).

cnf(c_2729,plain,
    ( m1_subset_1(sK0(k1_relat_1(sK4)),sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2551,c_17,c_16,c_1054,c_1549,c_1560,c_1574,c_1618,c_1673])).

cnf(c_3016,plain,
    ( k1_relat_1(sK4) = k1_xboole_0
    | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2801,c_2729])).

cnf(c_12,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_8,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_243,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_12,c_8])).

cnf(c_247,plain,
    ( r1_tarski(k1_relat_1(X0),X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_243,c_11])).

cnf(c_248,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1) ),
    inference(renaming,[status(thm)],[c_247])).

cnf(c_1552,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
    | r1_tarski(k1_relat_1(sK4),sK3) ),
    inference(instantiation,[status(thm)],[c_248])).

cnf(c_1553,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
    | r1_tarski(k1_relat_1(sK4),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1552])).

cnf(c_18,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3016,c_1673,c_1618,c_1574,c_1560,c_1553,c_1549,c_1054,c_16,c_18,c_17])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:22:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.53/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.53/0.99  
% 1.53/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.53/0.99  
% 1.53/0.99  ------  iProver source info
% 1.53/0.99  
% 1.53/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.53/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.53/0.99  git: non_committed_changes: false
% 1.53/0.99  git: last_make_outside_of_git: false
% 1.53/0.99  
% 1.53/0.99  ------ 
% 1.53/0.99  
% 1.53/0.99  ------ Input Options
% 1.53/0.99  
% 1.53/0.99  --out_options                           all
% 1.53/0.99  --tptp_safe_out                         true
% 1.53/0.99  --problem_path                          ""
% 1.53/0.99  --include_path                          ""
% 1.53/0.99  --clausifier                            res/vclausify_rel
% 1.53/0.99  --clausifier_options                    --mode clausify
% 1.53/0.99  --stdin                                 false
% 1.53/0.99  --stats_out                             all
% 1.53/0.99  
% 1.53/0.99  ------ General Options
% 1.53/0.99  
% 1.53/0.99  --fof                                   false
% 1.53/0.99  --time_out_real                         305.
% 1.53/0.99  --time_out_virtual                      -1.
% 1.53/0.99  --symbol_type_check                     false
% 1.53/0.99  --clausify_out                          false
% 1.53/0.99  --sig_cnt_out                           false
% 1.53/0.99  --trig_cnt_out                          false
% 1.53/0.99  --trig_cnt_out_tolerance                1.
% 1.53/0.99  --trig_cnt_out_sk_spl                   false
% 1.53/0.99  --abstr_cl_out                          false
% 1.53/0.99  
% 1.53/0.99  ------ Global Options
% 1.53/0.99  
% 1.53/0.99  --schedule                              default
% 1.53/0.99  --add_important_lit                     false
% 1.53/0.99  --prop_solver_per_cl                    1000
% 1.53/0.99  --min_unsat_core                        false
% 1.53/0.99  --soft_assumptions                      false
% 1.53/0.99  --soft_lemma_size                       3
% 1.53/0.99  --prop_impl_unit_size                   0
% 1.53/0.99  --prop_impl_unit                        []
% 1.53/0.99  --share_sel_clauses                     true
% 1.53/0.99  --reset_solvers                         false
% 1.53/0.99  --bc_imp_inh                            [conj_cone]
% 1.53/0.99  --conj_cone_tolerance                   3.
% 1.53/0.99  --extra_neg_conj                        none
% 1.53/0.99  --large_theory_mode                     true
% 1.53/0.99  --prolific_symb_bound                   200
% 1.53/0.99  --lt_threshold                          2000
% 1.53/0.99  --clause_weak_htbl                      true
% 1.53/0.99  --gc_record_bc_elim                     false
% 1.53/0.99  
% 1.53/0.99  ------ Preprocessing Options
% 1.53/0.99  
% 1.53/0.99  --preprocessing_flag                    true
% 1.53/0.99  --time_out_prep_mult                    0.1
% 1.53/0.99  --splitting_mode                        input
% 1.53/0.99  --splitting_grd                         true
% 1.53/0.99  --splitting_cvd                         false
% 1.53/0.99  --splitting_cvd_svl                     false
% 1.53/0.99  --splitting_nvd                         32
% 1.53/0.99  --sub_typing                            true
% 1.53/0.99  --prep_gs_sim                           true
% 1.53/0.99  --prep_unflatten                        true
% 1.53/0.99  --prep_res_sim                          true
% 1.53/0.99  --prep_upred                            true
% 1.53/0.99  --prep_sem_filter                       exhaustive
% 1.53/0.99  --prep_sem_filter_out                   false
% 1.53/0.99  --pred_elim                             true
% 1.53/0.99  --res_sim_input                         true
% 1.53/0.99  --eq_ax_congr_red                       true
% 1.53/0.99  --pure_diseq_elim                       true
% 1.53/0.99  --brand_transform                       false
% 1.53/0.99  --non_eq_to_eq                          false
% 1.53/0.99  --prep_def_merge                        true
% 1.53/0.99  --prep_def_merge_prop_impl              false
% 1.53/0.99  --prep_def_merge_mbd                    true
% 1.53/0.99  --prep_def_merge_tr_red                 false
% 1.53/0.99  --prep_def_merge_tr_cl                  false
% 1.53/0.99  --smt_preprocessing                     true
% 1.53/0.99  --smt_ac_axioms                         fast
% 1.53/0.99  --preprocessed_out                      false
% 1.53/0.99  --preprocessed_stats                    false
% 1.53/0.99  
% 1.53/0.99  ------ Abstraction refinement Options
% 1.53/0.99  
% 1.53/0.99  --abstr_ref                             []
% 1.53/0.99  --abstr_ref_prep                        false
% 1.53/0.99  --abstr_ref_until_sat                   false
% 1.53/0.99  --abstr_ref_sig_restrict                funpre
% 1.53/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.53/0.99  --abstr_ref_under                       []
% 1.53/0.99  
% 1.53/0.99  ------ SAT Options
% 1.53/0.99  
% 1.53/0.99  --sat_mode                              false
% 1.53/0.99  --sat_fm_restart_options                ""
% 1.53/0.99  --sat_gr_def                            false
% 1.53/0.99  --sat_epr_types                         true
% 1.53/0.99  --sat_non_cyclic_types                  false
% 1.53/0.99  --sat_finite_models                     false
% 1.53/0.99  --sat_fm_lemmas                         false
% 1.53/0.99  --sat_fm_prep                           false
% 1.53/0.99  --sat_fm_uc_incr                        true
% 1.53/0.99  --sat_out_model                         small
% 1.53/0.99  --sat_out_clauses                       false
% 1.53/0.99  
% 1.53/0.99  ------ QBF Options
% 1.53/0.99  
% 1.53/0.99  --qbf_mode                              false
% 1.53/0.99  --qbf_elim_univ                         false
% 1.53/0.99  --qbf_dom_inst                          none
% 1.53/0.99  --qbf_dom_pre_inst                      false
% 1.53/0.99  --qbf_sk_in                             false
% 1.53/0.99  --qbf_pred_elim                         true
% 1.53/0.99  --qbf_split                             512
% 1.53/0.99  
% 1.53/0.99  ------ BMC1 Options
% 1.53/0.99  
% 1.53/0.99  --bmc1_incremental                      false
% 1.53/0.99  --bmc1_axioms                           reachable_all
% 1.53/0.99  --bmc1_min_bound                        0
% 1.53/0.99  --bmc1_max_bound                        -1
% 1.53/0.99  --bmc1_max_bound_default                -1
% 1.53/0.99  --bmc1_symbol_reachability              true
% 1.53/0.99  --bmc1_property_lemmas                  false
% 1.53/0.99  --bmc1_k_induction                      false
% 1.53/0.99  --bmc1_non_equiv_states                 false
% 1.53/0.99  --bmc1_deadlock                         false
% 1.53/0.99  --bmc1_ucm                              false
% 1.53/0.99  --bmc1_add_unsat_core                   none
% 1.53/0.99  --bmc1_unsat_core_children              false
% 1.53/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.53/0.99  --bmc1_out_stat                         full
% 1.53/0.99  --bmc1_ground_init                      false
% 1.53/0.99  --bmc1_pre_inst_next_state              false
% 1.53/0.99  --bmc1_pre_inst_state                   false
% 1.53/0.99  --bmc1_pre_inst_reach_state             false
% 1.53/0.99  --bmc1_out_unsat_core                   false
% 1.53/0.99  --bmc1_aig_witness_out                  false
% 1.53/0.99  --bmc1_verbose                          false
% 1.53/0.99  --bmc1_dump_clauses_tptp                false
% 1.53/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.53/0.99  --bmc1_dump_file                        -
% 1.53/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.53/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.53/0.99  --bmc1_ucm_extend_mode                  1
% 1.53/0.99  --bmc1_ucm_init_mode                    2
% 1.53/0.99  --bmc1_ucm_cone_mode                    none
% 1.53/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.53/0.99  --bmc1_ucm_relax_model                  4
% 1.53/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.53/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.53/0.99  --bmc1_ucm_layered_model                none
% 1.53/0.99  --bmc1_ucm_max_lemma_size               10
% 1.53/0.99  
% 1.53/0.99  ------ AIG Options
% 1.53/0.99  
% 1.53/0.99  --aig_mode                              false
% 1.53/0.99  
% 1.53/0.99  ------ Instantiation Options
% 1.53/0.99  
% 1.53/0.99  --instantiation_flag                    true
% 1.53/0.99  --inst_sos_flag                         false
% 1.53/0.99  --inst_sos_phase                        true
% 1.53/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.53/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.53/0.99  --inst_lit_sel_side                     num_symb
% 1.53/0.99  --inst_solver_per_active                1400
% 1.53/0.99  --inst_solver_calls_frac                1.
% 1.53/0.99  --inst_passive_queue_type               priority_queues
% 1.53/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.53/0.99  --inst_passive_queues_freq              [25;2]
% 1.53/0.99  --inst_dismatching                      true
% 1.53/0.99  --inst_eager_unprocessed_to_passive     true
% 1.53/0.99  --inst_prop_sim_given                   true
% 1.53/0.99  --inst_prop_sim_new                     false
% 1.53/0.99  --inst_subs_new                         false
% 1.53/0.99  --inst_eq_res_simp                      false
% 1.53/0.99  --inst_subs_given                       false
% 1.53/0.99  --inst_orphan_elimination               true
% 1.53/0.99  --inst_learning_loop_flag               true
% 1.53/0.99  --inst_learning_start                   3000
% 1.53/0.99  --inst_learning_factor                  2
% 1.53/0.99  --inst_start_prop_sim_after_learn       3
% 1.53/0.99  --inst_sel_renew                        solver
% 1.53/0.99  --inst_lit_activity_flag                true
% 1.53/0.99  --inst_restr_to_given                   false
% 1.53/0.99  --inst_activity_threshold               500
% 1.53/0.99  --inst_out_proof                        true
% 1.53/0.99  
% 1.53/0.99  ------ Resolution Options
% 1.53/0.99  
% 1.53/0.99  --resolution_flag                       true
% 1.53/0.99  --res_lit_sel                           adaptive
% 1.53/0.99  --res_lit_sel_side                      none
% 1.53/0.99  --res_ordering                          kbo
% 1.53/0.99  --res_to_prop_solver                    active
% 1.53/0.99  --res_prop_simpl_new                    false
% 1.53/0.99  --res_prop_simpl_given                  true
% 1.53/0.99  --res_passive_queue_type                priority_queues
% 1.53/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.53/0.99  --res_passive_queues_freq               [15;5]
% 1.53/0.99  --res_forward_subs                      full
% 1.53/0.99  --res_backward_subs                     full
% 1.53/0.99  --res_forward_subs_resolution           true
% 1.53/0.99  --res_backward_subs_resolution          true
% 1.53/0.99  --res_orphan_elimination                true
% 1.53/0.99  --res_time_limit                        2.
% 1.53/0.99  --res_out_proof                         true
% 1.53/0.99  
% 1.53/0.99  ------ Superposition Options
% 1.53/0.99  
% 1.53/0.99  --superposition_flag                    true
% 1.53/0.99  --sup_passive_queue_type                priority_queues
% 1.53/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.53/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.53/0.99  --demod_completeness_check              fast
% 1.53/0.99  --demod_use_ground                      true
% 1.53/0.99  --sup_to_prop_solver                    passive
% 1.53/0.99  --sup_prop_simpl_new                    true
% 1.53/0.99  --sup_prop_simpl_given                  true
% 1.53/0.99  --sup_fun_splitting                     false
% 1.53/0.99  --sup_smt_interval                      50000
% 1.53/0.99  
% 1.53/0.99  ------ Superposition Simplification Setup
% 1.53/0.99  
% 1.53/0.99  --sup_indices_passive                   []
% 1.53/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.53/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.99  --sup_full_bw                           [BwDemod]
% 1.53/0.99  --sup_immed_triv                        [TrivRules]
% 1.53/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.53/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.99  --sup_immed_bw_main                     []
% 1.53/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.53/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.99  
% 1.53/0.99  ------ Combination Options
% 1.53/0.99  
% 1.53/0.99  --comb_res_mult                         3
% 1.53/0.99  --comb_sup_mult                         2
% 1.53/0.99  --comb_inst_mult                        10
% 1.53/0.99  
% 1.53/0.99  ------ Debug Options
% 1.53/0.99  
% 1.53/0.99  --dbg_backtrace                         false
% 1.53/0.99  --dbg_dump_prop_clauses                 false
% 1.53/0.99  --dbg_dump_prop_clauses_file            -
% 1.53/0.99  --dbg_out_stat                          false
% 1.53/0.99  ------ Parsing...
% 1.53/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.53/0.99  
% 1.53/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.53/0.99  
% 1.53/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.53/0.99  
% 1.53/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.53/0.99  ------ Proving...
% 1.53/0.99  ------ Problem Properties 
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  clauses                                 16
% 1.53/0.99  conjectures                             3
% 1.53/0.99  EPR                                     1
% 1.53/0.99  Horn                                    14
% 1.53/0.99  unary                                   2
% 1.53/0.99  binary                                  9
% 1.53/0.99  lits                                    35
% 1.53/0.99  lits eq                                 10
% 1.53/0.99  fd_pure                                 0
% 1.53/0.99  fd_pseudo                               0
% 1.53/0.99  fd_cond                                 1
% 1.53/0.99  fd_pseudo_cond                          2
% 1.53/0.99  AC symbols                              0
% 1.53/0.99  
% 1.53/0.99  ------ Schedule dynamic 5 is on 
% 1.53/0.99  
% 1.53/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  ------ 
% 1.53/0.99  Current options:
% 1.53/0.99  ------ 
% 1.53/0.99  
% 1.53/0.99  ------ Input Options
% 1.53/0.99  
% 1.53/0.99  --out_options                           all
% 1.53/0.99  --tptp_safe_out                         true
% 1.53/0.99  --problem_path                          ""
% 1.53/0.99  --include_path                          ""
% 1.53/0.99  --clausifier                            res/vclausify_rel
% 1.53/0.99  --clausifier_options                    --mode clausify
% 1.53/0.99  --stdin                                 false
% 1.53/0.99  --stats_out                             all
% 1.53/0.99  
% 1.53/0.99  ------ General Options
% 1.53/0.99  
% 1.53/0.99  --fof                                   false
% 1.53/0.99  --time_out_real                         305.
% 1.53/0.99  --time_out_virtual                      -1.
% 1.53/0.99  --symbol_type_check                     false
% 1.53/0.99  --clausify_out                          false
% 1.53/0.99  --sig_cnt_out                           false
% 1.53/0.99  --trig_cnt_out                          false
% 1.53/0.99  --trig_cnt_out_tolerance                1.
% 1.53/0.99  --trig_cnt_out_sk_spl                   false
% 1.53/0.99  --abstr_cl_out                          false
% 1.53/0.99  
% 1.53/0.99  ------ Global Options
% 1.53/0.99  
% 1.53/0.99  --schedule                              default
% 1.53/0.99  --add_important_lit                     false
% 1.53/0.99  --prop_solver_per_cl                    1000
% 1.53/0.99  --min_unsat_core                        false
% 1.53/0.99  --soft_assumptions                      false
% 1.53/0.99  --soft_lemma_size                       3
% 1.53/0.99  --prop_impl_unit_size                   0
% 1.53/0.99  --prop_impl_unit                        []
% 1.53/0.99  --share_sel_clauses                     true
% 1.53/0.99  --reset_solvers                         false
% 1.53/0.99  --bc_imp_inh                            [conj_cone]
% 1.53/0.99  --conj_cone_tolerance                   3.
% 1.53/0.99  --extra_neg_conj                        none
% 1.53/0.99  --large_theory_mode                     true
% 1.53/0.99  --prolific_symb_bound                   200
% 1.53/0.99  --lt_threshold                          2000
% 1.53/0.99  --clause_weak_htbl                      true
% 1.53/0.99  --gc_record_bc_elim                     false
% 1.53/0.99  
% 1.53/0.99  ------ Preprocessing Options
% 1.53/0.99  
% 1.53/0.99  --preprocessing_flag                    true
% 1.53/0.99  --time_out_prep_mult                    0.1
% 1.53/0.99  --splitting_mode                        input
% 1.53/0.99  --splitting_grd                         true
% 1.53/0.99  --splitting_cvd                         false
% 1.53/0.99  --splitting_cvd_svl                     false
% 1.53/0.99  --splitting_nvd                         32
% 1.53/0.99  --sub_typing                            true
% 1.53/0.99  --prep_gs_sim                           true
% 1.53/0.99  --prep_unflatten                        true
% 1.53/0.99  --prep_res_sim                          true
% 1.53/0.99  --prep_upred                            true
% 1.53/0.99  --prep_sem_filter                       exhaustive
% 1.53/0.99  --prep_sem_filter_out                   false
% 1.53/0.99  --pred_elim                             true
% 1.53/0.99  --res_sim_input                         true
% 1.53/0.99  --eq_ax_congr_red                       true
% 1.53/0.99  --pure_diseq_elim                       true
% 1.53/0.99  --brand_transform                       false
% 1.53/0.99  --non_eq_to_eq                          false
% 1.53/0.99  --prep_def_merge                        true
% 1.53/0.99  --prep_def_merge_prop_impl              false
% 1.53/0.99  --prep_def_merge_mbd                    true
% 1.53/0.99  --prep_def_merge_tr_red                 false
% 1.53/0.99  --prep_def_merge_tr_cl                  false
% 1.53/0.99  --smt_preprocessing                     true
% 1.53/0.99  --smt_ac_axioms                         fast
% 1.53/0.99  --preprocessed_out                      false
% 1.53/0.99  --preprocessed_stats                    false
% 1.53/0.99  
% 1.53/0.99  ------ Abstraction refinement Options
% 1.53/0.99  
% 1.53/0.99  --abstr_ref                             []
% 1.53/0.99  --abstr_ref_prep                        false
% 1.53/0.99  --abstr_ref_until_sat                   false
% 1.53/0.99  --abstr_ref_sig_restrict                funpre
% 1.53/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.53/0.99  --abstr_ref_under                       []
% 1.53/0.99  
% 1.53/0.99  ------ SAT Options
% 1.53/0.99  
% 1.53/0.99  --sat_mode                              false
% 1.53/0.99  --sat_fm_restart_options                ""
% 1.53/0.99  --sat_gr_def                            false
% 1.53/0.99  --sat_epr_types                         true
% 1.53/0.99  --sat_non_cyclic_types                  false
% 1.53/0.99  --sat_finite_models                     false
% 1.53/0.99  --sat_fm_lemmas                         false
% 1.53/0.99  --sat_fm_prep                           false
% 1.53/0.99  --sat_fm_uc_incr                        true
% 1.53/0.99  --sat_out_model                         small
% 1.53/0.99  --sat_out_clauses                       false
% 1.53/0.99  
% 1.53/0.99  ------ QBF Options
% 1.53/0.99  
% 1.53/0.99  --qbf_mode                              false
% 1.53/0.99  --qbf_elim_univ                         false
% 1.53/0.99  --qbf_dom_inst                          none
% 1.53/0.99  --qbf_dom_pre_inst                      false
% 1.53/0.99  --qbf_sk_in                             false
% 1.53/0.99  --qbf_pred_elim                         true
% 1.53/0.99  --qbf_split                             512
% 1.53/0.99  
% 1.53/0.99  ------ BMC1 Options
% 1.53/0.99  
% 1.53/0.99  --bmc1_incremental                      false
% 1.53/0.99  --bmc1_axioms                           reachable_all
% 1.53/0.99  --bmc1_min_bound                        0
% 1.53/0.99  --bmc1_max_bound                        -1
% 1.53/0.99  --bmc1_max_bound_default                -1
% 1.53/0.99  --bmc1_symbol_reachability              true
% 1.53/0.99  --bmc1_property_lemmas                  false
% 1.53/0.99  --bmc1_k_induction                      false
% 1.53/0.99  --bmc1_non_equiv_states                 false
% 1.53/0.99  --bmc1_deadlock                         false
% 1.53/0.99  --bmc1_ucm                              false
% 1.53/0.99  --bmc1_add_unsat_core                   none
% 1.53/0.99  --bmc1_unsat_core_children              false
% 1.53/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.53/0.99  --bmc1_out_stat                         full
% 1.53/0.99  --bmc1_ground_init                      false
% 1.53/0.99  --bmc1_pre_inst_next_state              false
% 1.53/0.99  --bmc1_pre_inst_state                   false
% 1.53/0.99  --bmc1_pre_inst_reach_state             false
% 1.53/0.99  --bmc1_out_unsat_core                   false
% 1.53/0.99  --bmc1_aig_witness_out                  false
% 1.53/0.99  --bmc1_verbose                          false
% 1.53/0.99  --bmc1_dump_clauses_tptp                false
% 1.53/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.53/0.99  --bmc1_dump_file                        -
% 1.53/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.53/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.53/0.99  --bmc1_ucm_extend_mode                  1
% 1.53/0.99  --bmc1_ucm_init_mode                    2
% 1.53/0.99  --bmc1_ucm_cone_mode                    none
% 1.53/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.53/0.99  --bmc1_ucm_relax_model                  4
% 1.53/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.53/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.53/0.99  --bmc1_ucm_layered_model                none
% 1.53/0.99  --bmc1_ucm_max_lemma_size               10
% 1.53/0.99  
% 1.53/0.99  ------ AIG Options
% 1.53/0.99  
% 1.53/0.99  --aig_mode                              false
% 1.53/0.99  
% 1.53/0.99  ------ Instantiation Options
% 1.53/0.99  
% 1.53/0.99  --instantiation_flag                    true
% 1.53/0.99  --inst_sos_flag                         false
% 1.53/0.99  --inst_sos_phase                        true
% 1.53/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.53/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.53/0.99  --inst_lit_sel_side                     none
% 1.53/0.99  --inst_solver_per_active                1400
% 1.53/0.99  --inst_solver_calls_frac                1.
% 1.53/0.99  --inst_passive_queue_type               priority_queues
% 1.53/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.53/0.99  --inst_passive_queues_freq              [25;2]
% 1.53/0.99  --inst_dismatching                      true
% 1.53/0.99  --inst_eager_unprocessed_to_passive     true
% 1.53/0.99  --inst_prop_sim_given                   true
% 1.53/0.99  --inst_prop_sim_new                     false
% 1.53/0.99  --inst_subs_new                         false
% 1.53/0.99  --inst_eq_res_simp                      false
% 1.53/0.99  --inst_subs_given                       false
% 1.53/0.99  --inst_orphan_elimination               true
% 1.53/0.99  --inst_learning_loop_flag               true
% 1.53/0.99  --inst_learning_start                   3000
% 1.53/0.99  --inst_learning_factor                  2
% 1.53/0.99  --inst_start_prop_sim_after_learn       3
% 1.53/0.99  --inst_sel_renew                        solver
% 1.53/0.99  --inst_lit_activity_flag                true
% 1.53/0.99  --inst_restr_to_given                   false
% 1.53/0.99  --inst_activity_threshold               500
% 1.53/0.99  --inst_out_proof                        true
% 1.53/0.99  
% 1.53/0.99  ------ Resolution Options
% 1.53/0.99  
% 1.53/0.99  --resolution_flag                       false
% 1.53/0.99  --res_lit_sel                           adaptive
% 1.53/0.99  --res_lit_sel_side                      none
% 1.53/0.99  --res_ordering                          kbo
% 1.53/0.99  --res_to_prop_solver                    active
% 1.53/0.99  --res_prop_simpl_new                    false
% 1.53/0.99  --res_prop_simpl_given                  true
% 1.53/0.99  --res_passive_queue_type                priority_queues
% 1.53/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.53/0.99  --res_passive_queues_freq               [15;5]
% 1.53/0.99  --res_forward_subs                      full
% 1.53/0.99  --res_backward_subs                     full
% 1.53/0.99  --res_forward_subs_resolution           true
% 1.53/0.99  --res_backward_subs_resolution          true
% 1.53/0.99  --res_orphan_elimination                true
% 1.53/0.99  --res_time_limit                        2.
% 1.53/0.99  --res_out_proof                         true
% 1.53/0.99  
% 1.53/0.99  ------ Superposition Options
% 1.53/0.99  
% 1.53/0.99  --superposition_flag                    true
% 1.53/0.99  --sup_passive_queue_type                priority_queues
% 1.53/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.53/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.53/0.99  --demod_completeness_check              fast
% 1.53/0.99  --demod_use_ground                      true
% 1.53/0.99  --sup_to_prop_solver                    passive
% 1.53/0.99  --sup_prop_simpl_new                    true
% 1.53/0.99  --sup_prop_simpl_given                  true
% 1.53/0.99  --sup_fun_splitting                     false
% 1.53/0.99  --sup_smt_interval                      50000
% 1.53/0.99  
% 1.53/0.99  ------ Superposition Simplification Setup
% 1.53/0.99  
% 1.53/0.99  --sup_indices_passive                   []
% 1.53/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.53/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.53/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.99  --sup_full_bw                           [BwDemod]
% 1.53/0.99  --sup_immed_triv                        [TrivRules]
% 1.53/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.53/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.99  --sup_immed_bw_main                     []
% 1.53/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.53/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.53/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.53/0.99  
% 1.53/0.99  ------ Combination Options
% 1.53/0.99  
% 1.53/0.99  --comb_res_mult                         3
% 1.53/0.99  --comb_sup_mult                         2
% 1.53/0.99  --comb_inst_mult                        10
% 1.53/0.99  
% 1.53/0.99  ------ Debug Options
% 1.53/0.99  
% 1.53/0.99  --dbg_backtrace                         false
% 1.53/0.99  --dbg_dump_prop_clauses                 false
% 1.53/0.99  --dbg_dump_prop_clauses_file            -
% 1.53/0.99  --dbg_out_stat                          false
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  ------ Proving...
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  % SZS status Theorem for theBenchmark.p
% 1.53/0.99  
% 1.53/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.53/0.99  
% 1.53/0.99  fof(f1,axiom,(
% 1.53/0.99    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f15,plain,(
% 1.53/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 1.53/0.99    inference(ennf_transformation,[],[f1])).
% 1.53/0.99  
% 1.53/0.99  fof(f27,plain,(
% 1.53/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 1.53/0.99    introduced(choice_axiom,[])).
% 1.53/0.99  
% 1.53/0.99  fof(f28,plain,(
% 1.53/0.99    ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0)),
% 1.53/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f27])).
% 1.53/0.99  
% 1.53/0.99  fof(f37,plain,(
% 1.53/0.99    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 1.53/0.99    inference(cnf_transformation,[],[f28])).
% 1.53/0.99  
% 1.53/0.99  fof(f2,axiom,(
% 1.53/0.99    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f29,plain,(
% 1.53/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.53/0.99    inference(nnf_transformation,[],[f2])).
% 1.53/0.99  
% 1.53/0.99  fof(f30,plain,(
% 1.53/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.53/0.99    inference(rectify,[],[f29])).
% 1.53/0.99  
% 1.53/0.99  fof(f31,plain,(
% 1.53/0.99    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK1(X0,X1),X0) | ~r2_hidden(sK1(X0,X1),X1)) & (r1_tarski(sK1(X0,X1),X0) | r2_hidden(sK1(X0,X1),X1))))),
% 1.53/0.99    introduced(choice_axiom,[])).
% 1.53/0.99  
% 1.53/0.99  fof(f32,plain,(
% 1.53/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK1(X0,X1),X0) | ~r2_hidden(sK1(X0,X1),X1)) & (r1_tarski(sK1(X0,X1),X0) | r2_hidden(sK1(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 1.53/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f30,f31])).
% 1.53/0.99  
% 1.53/0.99  fof(f39,plain,(
% 1.53/0.99    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k1_zfmisc_1(X0) != X1) )),
% 1.53/0.99    inference(cnf_transformation,[],[f32])).
% 1.53/0.99  
% 1.53/0.99  fof(f55,plain,(
% 1.53/0.99    ( ! [X0,X3] : (r2_hidden(X3,k1_zfmisc_1(X0)) | ~r1_tarski(X3,X0)) )),
% 1.53/0.99    inference(equality_resolution,[],[f39])).
% 1.53/0.99  
% 1.53/0.99  fof(f3,axiom,(
% 1.53/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f16,plain,(
% 1.53/0.99    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 1.53/0.99    inference(ennf_transformation,[],[f3])).
% 1.53/0.99  
% 1.53/0.99  fof(f42,plain,(
% 1.53/0.99    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 1.53/0.99    inference(cnf_transformation,[],[f16])).
% 1.53/0.99  
% 1.53/0.99  fof(f4,axiom,(
% 1.53/0.99    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f17,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 1.53/0.99    inference(ennf_transformation,[],[f4])).
% 1.53/0.99  
% 1.53/0.99  fof(f18,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 1.53/0.99    inference(flattening,[],[f17])).
% 1.53/0.99  
% 1.53/0.99  fof(f43,plain,(
% 1.53/0.99    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 1.53/0.99    inference(cnf_transformation,[],[f18])).
% 1.53/0.99  
% 1.53/0.99  fof(f11,conjecture,(
% 1.53/0.99    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f12,negated_conjecture,(
% 1.53/0.99    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))))),
% 1.53/0.99    inference(negated_conjecture,[],[f11])).
% 1.53/0.99  
% 1.53/0.99  fof(f13,plain,(
% 1.53/0.99    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k1_relset_1(X1,X0,X2))) & k1_xboole_0 != k2_relset_1(X1,X0,X2)))),
% 1.53/0.99    inference(pure_predicate_removal,[],[f12])).
% 1.53/0.99  
% 1.53/0.99  fof(f25,plain,(
% 1.53/0.99    ? [X0,X1,X2] : ((! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.53/0.99    inference(ennf_transformation,[],[f13])).
% 1.53/0.99  
% 1.53/0.99  fof(f26,plain,(
% 1.53/0.99    ? [X0,X1,X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.53/0.99    inference(flattening,[],[f25])).
% 1.53/0.99  
% 1.53/0.99  fof(f35,plain,(
% 1.53/0.99    ? [X0,X1,X2] : (! [X3] : (~r2_hidden(X3,k1_relset_1(X1,X0,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k2_relset_1(X1,X0,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => (! [X3] : (~r2_hidden(X3,k1_relset_1(sK3,sK2,sK4)) | ~m1_subset_1(X3,sK3)) & k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))))),
% 1.53/0.99    introduced(choice_axiom,[])).
% 1.53/0.99  
% 1.53/0.99  fof(f36,plain,(
% 1.53/0.99    ! [X3] : (~r2_hidden(X3,k1_relset_1(sK3,sK2,sK4)) | ~m1_subset_1(X3,sK3)) & k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))),
% 1.53/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f26,f35])).
% 1.53/0.99  
% 1.53/0.99  fof(f52,plain,(
% 1.53/0.99    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))),
% 1.53/0.99    inference(cnf_transformation,[],[f36])).
% 1.53/0.99  
% 1.53/0.99  fof(f9,axiom,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f23,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.53/0.99    inference(ennf_transformation,[],[f9])).
% 1.53/0.99  
% 1.53/0.99  fof(f50,plain,(
% 1.53/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.53/0.99    inference(cnf_transformation,[],[f23])).
% 1.53/0.99  
% 1.53/0.99  fof(f54,plain,(
% 1.53/0.99    ( ! [X3] : (~r2_hidden(X3,k1_relset_1(sK3,sK2,sK4)) | ~m1_subset_1(X3,sK3)) )),
% 1.53/0.99    inference(cnf_transformation,[],[f36])).
% 1.53/0.99  
% 1.53/0.99  fof(f53,plain,(
% 1.53/0.99    k1_xboole_0 != k2_relset_1(sK3,sK2,sK4)),
% 1.53/0.99    inference(cnf_transformation,[],[f36])).
% 1.53/0.99  
% 1.53/0.99  fof(f7,axiom,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f21,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.53/0.99    inference(ennf_transformation,[],[f7])).
% 1.53/0.99  
% 1.53/0.99  fof(f48,plain,(
% 1.53/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.53/0.99    inference(cnf_transformation,[],[f21])).
% 1.53/0.99  
% 1.53/0.99  fof(f10,axiom,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f24,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.53/0.99    inference(ennf_transformation,[],[f10])).
% 1.53/0.99  
% 1.53/0.99  fof(f51,plain,(
% 1.53/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.53/0.99    inference(cnf_transformation,[],[f24])).
% 1.53/0.99  
% 1.53/0.99  fof(f6,axiom,(
% 1.53/0.99    ! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f20,plain,(
% 1.53/0.99    ! [X0] : ((k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 1.53/0.99    inference(ennf_transformation,[],[f6])).
% 1.53/0.99  
% 1.53/0.99  fof(f34,plain,(
% 1.53/0.99    ! [X0] : (((k1_xboole_0 = k1_relat_1(X0) | k1_xboole_0 != k2_relat_1(X0)) & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 1.53/0.99    inference(nnf_transformation,[],[f20])).
% 1.53/0.99  
% 1.53/0.99  fof(f46,plain,(
% 1.53/0.99    ( ! [X0] : (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 != k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 1.53/0.99    inference(cnf_transformation,[],[f34])).
% 1.53/0.99  
% 1.53/0.99  fof(f8,axiom,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f14,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.53/0.99    inference(pure_predicate_removal,[],[f8])).
% 1.53/0.99  
% 1.53/0.99  fof(f22,plain,(
% 1.53/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.53/0.99    inference(ennf_transformation,[],[f14])).
% 1.53/0.99  
% 1.53/0.99  fof(f49,plain,(
% 1.53/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.53/0.99    inference(cnf_transformation,[],[f22])).
% 1.53/0.99  
% 1.53/0.99  fof(f5,axiom,(
% 1.53/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.53/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.53/0.99  
% 1.53/0.99  fof(f19,plain,(
% 1.53/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.53/0.99    inference(ennf_transformation,[],[f5])).
% 1.53/0.99  
% 1.53/0.99  fof(f33,plain,(
% 1.53/0.99    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.53/0.99    inference(nnf_transformation,[],[f19])).
% 1.53/0.99  
% 1.53/0.99  fof(f44,plain,(
% 1.53/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.53/0.99    inference(cnf_transformation,[],[f33])).
% 1.53/0.99  
% 1.53/0.99  cnf(c_0,plain,
% 1.53/0.99      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 1.53/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1439,plain,
% 1.53/0.99      ( k1_xboole_0 = X0 | r2_hidden(sK0(X0),X0) = iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_3,plain,
% 1.53/0.99      ( ~ r1_tarski(X0,X1) | r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 1.53/0.99      inference(cnf_transformation,[],[f55]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1436,plain,
% 1.53/0.99      ( r1_tarski(X0,X1) != iProver_top
% 1.53/0.99      | r2_hidden(X0,k1_zfmisc_1(X1)) = iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_5,plain,
% 1.53/0.99      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 1.53/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1434,plain,
% 1.53/0.99      ( m1_subset_1(X0,X1) = iProver_top
% 1.53/0.99      | r2_hidden(X0,X1) != iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1606,plain,
% 1.53/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 1.53/0.99      | r1_tarski(X0,X1) != iProver_top ),
% 1.53/0.99      inference(superposition,[status(thm)],[c_1436,c_1434]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_6,plain,
% 1.53/0.99      ( m1_subset_1(X0,X1)
% 1.53/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 1.53/0.99      | ~ r2_hidden(X0,X2) ),
% 1.53/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1433,plain,
% 1.53/0.99      ( m1_subset_1(X0,X1) = iProver_top
% 1.53/0.99      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 1.53/0.99      | r2_hidden(X0,X2) != iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_2439,plain,
% 1.53/0.99      ( m1_subset_1(X0,X1) = iProver_top
% 1.53/0.99      | r1_tarski(X2,X1) != iProver_top
% 1.53/0.99      | r2_hidden(X0,X2) != iProver_top ),
% 1.53/0.99      inference(superposition,[status(thm)],[c_1606,c_1433]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_2801,plain,
% 1.53/0.99      ( k1_xboole_0 = X0
% 1.53/0.99      | m1_subset_1(sK0(X0),X1) = iProver_top
% 1.53/0.99      | r1_tarski(X0,X1) != iProver_top ),
% 1.53/0.99      inference(superposition,[status(thm)],[c_1439,c_2439]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_17,negated_conjecture,
% 1.53/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) ),
% 1.53/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1426,plain,
% 1.53/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_13,plain,
% 1.53/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.53/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.53/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1429,plain,
% 1.53/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.53/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_2365,plain,
% 1.53/0.99      ( k1_relset_1(sK3,sK2,sK4) = k1_relat_1(sK4) ),
% 1.53/0.99      inference(superposition,[status(thm)],[c_1426,c_1429]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_15,negated_conjecture,
% 1.53/0.99      ( ~ m1_subset_1(X0,sK3)
% 1.53/0.99      | ~ r2_hidden(X0,k1_relset_1(sK3,sK2,sK4)) ),
% 1.53/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1427,plain,
% 1.53/0.99      ( m1_subset_1(X0,sK3) != iProver_top
% 1.53/0.99      | r2_hidden(X0,k1_relset_1(sK3,sK2,sK4)) != iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1835,plain,
% 1.53/0.99      ( k1_relset_1(sK3,sK2,sK4) = k1_xboole_0
% 1.53/0.99      | m1_subset_1(sK0(k1_relset_1(sK3,sK2,sK4)),sK3) != iProver_top ),
% 1.53/0.99      inference(superposition,[status(thm)],[c_1439,c_1427]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_2551,plain,
% 1.53/0.99      ( k1_relat_1(sK4) = k1_xboole_0
% 1.53/0.99      | m1_subset_1(sK0(k1_relat_1(sK4)),sK3) != iProver_top ),
% 1.53/0.99      inference(demodulation,[status(thm)],[c_2365,c_1835]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_16,negated_conjecture,
% 1.53/0.99      ( k1_xboole_0 != k2_relset_1(sK3,sK2,sK4) ),
% 1.53/0.99      inference(cnf_transformation,[],[f53]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1037,plain,( X0 = X0 ),theory(equality) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1054,plain,
% 1.53/0.99      ( k1_xboole_0 = k1_xboole_0 ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_1037]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_11,plain,
% 1.53/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.53/0.99      | v1_relat_1(X0) ),
% 1.53/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1549,plain,
% 1.53/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 1.53/0.99      | v1_relat_1(sK4) ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_11]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_14,plain,
% 1.53/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.53/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 1.53/0.99      inference(cnf_transformation,[],[f51]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1560,plain,
% 1.53/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 1.53/0.99      | k2_relset_1(sK3,sK2,sK4) = k2_relat_1(sK4) ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_14]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_10,plain,
% 1.53/0.99      ( ~ v1_relat_1(X0)
% 1.53/0.99      | k2_relat_1(X0) = k1_xboole_0
% 1.53/0.99      | k1_relat_1(X0) != k1_xboole_0 ),
% 1.53/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1574,plain,
% 1.53/0.99      ( ~ v1_relat_1(sK4)
% 1.53/0.99      | k2_relat_1(sK4) = k1_xboole_0
% 1.53/0.99      | k1_relat_1(sK4) != k1_xboole_0 ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_10]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1038,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1555,plain,
% 1.53/0.99      ( k2_relset_1(sK3,sK2,sK4) != X0
% 1.53/0.99      | k1_xboole_0 != X0
% 1.53/0.99      | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4) ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_1038]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1618,plain,
% 1.53/0.99      ( k2_relset_1(sK3,sK2,sK4) != k2_relat_1(sK4)
% 1.53/0.99      | k1_xboole_0 = k2_relset_1(sK3,sK2,sK4)
% 1.53/0.99      | k1_xboole_0 != k2_relat_1(sK4) ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_1555]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1672,plain,
% 1.53/0.99      ( k2_relat_1(sK4) != X0
% 1.53/0.99      | k1_xboole_0 != X0
% 1.53/0.99      | k1_xboole_0 = k2_relat_1(sK4) ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_1038]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1673,plain,
% 1.53/0.99      ( k2_relat_1(sK4) != k1_xboole_0
% 1.53/0.99      | k1_xboole_0 = k2_relat_1(sK4)
% 1.53/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_1672]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_2729,plain,
% 1.53/0.99      ( m1_subset_1(sK0(k1_relat_1(sK4)),sK3) != iProver_top ),
% 1.53/0.99      inference(global_propositional_subsumption,
% 1.53/0.99                [status(thm)],
% 1.53/0.99                [c_2551,c_17,c_16,c_1054,c_1549,c_1560,c_1574,c_1618,
% 1.53/0.99                 c_1673]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_3016,plain,
% 1.53/0.99      ( k1_relat_1(sK4) = k1_xboole_0
% 1.53/0.99      | r1_tarski(k1_relat_1(sK4),sK3) != iProver_top ),
% 1.53/0.99      inference(superposition,[status(thm)],[c_2801,c_2729]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_12,plain,
% 1.53/0.99      ( v4_relat_1(X0,X1)
% 1.53/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.53/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_8,plain,
% 1.53/0.99      ( ~ v4_relat_1(X0,X1)
% 1.53/0.99      | r1_tarski(k1_relat_1(X0),X1)
% 1.53/0.99      | ~ v1_relat_1(X0) ),
% 1.53/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_243,plain,
% 1.53/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.53/0.99      | r1_tarski(k1_relat_1(X0),X1)
% 1.53/0.99      | ~ v1_relat_1(X0) ),
% 1.53/0.99      inference(resolution,[status(thm)],[c_12,c_8]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_247,plain,
% 1.53/0.99      ( r1_tarski(k1_relat_1(X0),X1)
% 1.53/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.53/0.99      inference(global_propositional_subsumption,
% 1.53/0.99                [status(thm)],
% 1.53/0.99                [c_243,c_11]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_248,plain,
% 1.53/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.53/0.99      | r1_tarski(k1_relat_1(X0),X1) ),
% 1.53/0.99      inference(renaming,[status(thm)],[c_247]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1552,plain,
% 1.53/0.99      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2)))
% 1.53/0.99      | r1_tarski(k1_relat_1(sK4),sK3) ),
% 1.53/0.99      inference(instantiation,[status(thm)],[c_248]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_1553,plain,
% 1.53/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) != iProver_top
% 1.53/0.99      | r1_tarski(k1_relat_1(sK4),sK3) = iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_1552]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(c_18,plain,
% 1.53/0.99      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK3,sK2))) = iProver_top ),
% 1.53/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.53/0.99  
% 1.53/0.99  cnf(contradiction,plain,
% 1.53/0.99      ( $false ),
% 1.53/0.99      inference(minisat,
% 1.53/0.99                [status(thm)],
% 1.53/0.99                [c_3016,c_1673,c_1618,c_1574,c_1560,c_1553,c_1549,c_1054,
% 1.53/0.99                 c_16,c_18,c_17]) ).
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.53/0.99  
% 1.53/0.99  ------                               Statistics
% 1.53/0.99  
% 1.53/0.99  ------ General
% 1.53/0.99  
% 1.53/0.99  abstr_ref_over_cycles:                  0
% 1.53/0.99  abstr_ref_under_cycles:                 0
% 1.53/0.99  gc_basic_clause_elim:                   0
% 1.53/0.99  forced_gc_time:                         0
% 1.53/0.99  parsing_time:                           0.01
% 1.53/0.99  unif_index_cands_time:                  0.
% 1.53/0.99  unif_index_add_time:                    0.
% 1.53/0.99  orderings_time:                         0.
% 1.53/0.99  out_proof_time:                         0.013
% 1.53/0.99  total_time:                             0.128
% 1.53/0.99  num_of_symbols:                         48
% 1.53/0.99  num_of_terms:                           2118
% 1.53/0.99  
% 1.53/0.99  ------ Preprocessing
% 1.53/0.99  
% 1.53/0.99  num_of_splits:                          0
% 1.53/0.99  num_of_split_atoms:                     0
% 1.53/0.99  num_of_reused_defs:                     0
% 1.53/0.99  num_eq_ax_congr_red:                    23
% 1.53/0.99  num_of_sem_filtered_clauses:            1
% 1.53/0.99  num_of_subtypes:                        0
% 1.53/0.99  monotx_restored_types:                  0
% 1.53/0.99  sat_num_of_epr_types:                   0
% 1.53/0.99  sat_num_of_non_cyclic_types:            0
% 1.53/0.99  sat_guarded_non_collapsed_types:        0
% 1.53/0.99  num_pure_diseq_elim:                    0
% 1.53/0.99  simp_replaced_by:                       0
% 1.53/0.99  res_preprocessed:                       85
% 1.53/0.99  prep_upred:                             0
% 1.53/0.99  prep_unflattend:                        62
% 1.53/0.99  smt_new_axioms:                         0
% 1.53/0.99  pred_elim_cands:                        4
% 1.53/0.99  pred_elim:                              1
% 1.53/0.99  pred_elim_cl:                           2
% 1.53/0.99  pred_elim_cycles:                       7
% 1.53/0.99  merged_defs:                            8
% 1.53/0.99  merged_defs_ncl:                        0
% 1.53/0.99  bin_hyper_res:                          8
% 1.53/0.99  prep_cycles:                            4
% 1.53/0.99  pred_elim_time:                         0.016
% 1.53/0.99  splitting_time:                         0.
% 1.53/0.99  sem_filter_time:                        0.
% 1.53/0.99  monotx_time:                            0.001
% 1.53/0.99  subtype_inf_time:                       0.
% 1.53/0.99  
% 1.53/0.99  ------ Problem properties
% 1.53/0.99  
% 1.53/0.99  clauses:                                16
% 1.53/0.99  conjectures:                            3
% 1.53/0.99  epr:                                    1
% 1.53/0.99  horn:                                   14
% 1.53/0.99  ground:                                 2
% 1.53/0.99  unary:                                  2
% 1.53/0.99  binary:                                 9
% 1.53/0.99  lits:                                   35
% 1.53/0.99  lits_eq:                                10
% 1.53/0.99  fd_pure:                                0
% 1.53/0.99  fd_pseudo:                              0
% 1.53/0.99  fd_cond:                                1
% 1.53/0.99  fd_pseudo_cond:                         2
% 1.53/0.99  ac_symbols:                             0
% 1.53/0.99  
% 1.53/0.99  ------ Propositional Solver
% 1.53/0.99  
% 1.53/0.99  prop_solver_calls:                      28
% 1.53/0.99  prop_fast_solver_calls:                 599
% 1.53/0.99  smt_solver_calls:                       0
% 1.53/0.99  smt_fast_solver_calls:                  0
% 1.53/0.99  prop_num_of_clauses:                    857
% 1.53/0.99  prop_preprocess_simplified:             3413
% 1.53/0.99  prop_fo_subsumed:                       2
% 1.53/0.99  prop_solver_time:                       0.
% 1.53/0.99  smt_solver_time:                        0.
% 1.53/0.99  smt_fast_solver_time:                   0.
% 1.53/0.99  prop_fast_solver_time:                  0.
% 1.53/0.99  prop_unsat_core_time:                   0.
% 1.53/0.99  
% 1.53/0.99  ------ QBF
% 1.53/0.99  
% 1.53/0.99  qbf_q_res:                              0
% 1.53/0.99  qbf_num_tautologies:                    0
% 1.53/0.99  qbf_prep_cycles:                        0
% 1.53/0.99  
% 1.53/0.99  ------ BMC1
% 1.53/0.99  
% 1.53/0.99  bmc1_current_bound:                     -1
% 1.53/0.99  bmc1_last_solved_bound:                 -1
% 1.53/0.99  bmc1_unsat_core_size:                   -1
% 1.53/0.99  bmc1_unsat_core_parents_size:           -1
% 1.53/0.99  bmc1_merge_next_fun:                    0
% 1.53/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.53/0.99  
% 1.53/0.99  ------ Instantiation
% 1.53/0.99  
% 1.53/0.99  inst_num_of_clauses:                    257
% 1.53/0.99  inst_num_in_passive:                    63
% 1.53/0.99  inst_num_in_active:                     151
% 1.53/0.99  inst_num_in_unprocessed:                43
% 1.53/0.99  inst_num_of_loops:                      180
% 1.53/0.99  inst_num_of_learning_restarts:          0
% 1.53/0.99  inst_num_moves_active_passive:          25
% 1.53/0.99  inst_lit_activity:                      0
% 1.53/0.99  inst_lit_activity_moves:                0
% 1.53/0.99  inst_num_tautologies:                   0
% 1.53/0.99  inst_num_prop_implied:                  0
% 1.53/0.99  inst_num_existing_simplified:           0
% 1.53/0.99  inst_num_eq_res_simplified:             0
% 1.53/0.99  inst_num_child_elim:                    0
% 1.53/0.99  inst_num_of_dismatching_blockings:      39
% 1.53/0.99  inst_num_of_non_proper_insts:           223
% 1.53/0.99  inst_num_of_duplicates:                 0
% 1.53/0.99  inst_inst_num_from_inst_to_res:         0
% 1.53/0.99  inst_dismatching_checking_time:         0.
% 1.53/0.99  
% 1.53/0.99  ------ Resolution
% 1.53/0.99  
% 1.53/0.99  res_num_of_clauses:                     0
% 1.53/0.99  res_num_in_passive:                     0
% 1.53/0.99  res_num_in_active:                      0
% 1.53/0.99  res_num_of_loops:                       89
% 1.53/0.99  res_forward_subset_subsumed:            20
% 1.53/0.99  res_backward_subset_subsumed:           0
% 1.53/0.99  res_forward_subsumed:                   0
% 1.53/0.99  res_backward_subsumed:                  0
% 1.53/0.99  res_forward_subsumption_resolution:     0
% 1.53/0.99  res_backward_subsumption_resolution:    0
% 1.53/0.99  res_clause_to_clause_subsumption:       94
% 1.53/0.99  res_orphan_elimination:                 0
% 1.53/0.99  res_tautology_del:                      53
% 1.53/0.99  res_num_eq_res_simplified:              0
% 1.53/0.99  res_num_sel_changes:                    0
% 1.53/0.99  res_moves_from_active_to_pass:          0
% 1.53/0.99  
% 1.53/0.99  ------ Superposition
% 1.53/0.99  
% 1.53/0.99  sup_time_total:                         0.
% 1.53/0.99  sup_time_generating:                    0.
% 1.53/0.99  sup_time_sim_full:                      0.
% 1.53/0.99  sup_time_sim_immed:                     0.
% 1.53/0.99  
% 1.53/0.99  sup_num_of_clauses:                     53
% 1.53/0.99  sup_num_in_active:                      33
% 1.53/0.99  sup_num_in_passive:                     20
% 1.53/0.99  sup_num_of_loops:                       35
% 1.53/0.99  sup_fw_superposition:                   17
% 1.53/0.99  sup_bw_superposition:                   26
% 1.53/0.99  sup_immediate_simplified:               0
% 1.53/0.99  sup_given_eliminated:                   0
% 1.53/0.99  comparisons_done:                       0
% 1.53/0.99  comparisons_avoided:                    0
% 1.53/0.99  
% 1.53/0.99  ------ Simplifications
% 1.53/0.99  
% 1.53/0.99  
% 1.53/0.99  sim_fw_subset_subsumed:                 0
% 1.53/0.99  sim_bw_subset_subsumed:                 0
% 1.53/0.99  sim_fw_subsumed:                        0
% 1.53/0.99  sim_bw_subsumed:                        0
% 1.53/0.99  sim_fw_subsumption_res:                 0
% 1.53/0.99  sim_bw_subsumption_res:                 0
% 1.53/0.99  sim_tautology_del:                      1
% 1.53/0.99  sim_eq_tautology_del:                   0
% 1.53/0.99  sim_eq_res_simp:                        0
% 1.53/0.99  sim_fw_demodulated:                     1
% 1.53/0.99  sim_bw_demodulated:                     3
% 1.53/0.99  sim_light_normalised:                   1
% 1.53/0.99  sim_joinable_taut:                      0
% 1.53/0.99  sim_joinable_simp:                      0
% 1.53/0.99  sim_ac_normalised:                      0
% 1.53/0.99  sim_smt_subsumption:                    0
% 1.53/0.99  
%------------------------------------------------------------------------------
