%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:56:41 EST 2020

% Result     : Theorem 0.95s
% Output     : CNFRefutation 0.95s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 142 expanded)
%              Number of clauses        :   46 (  54 expanded)
%              Number of leaves         :   18 (  30 expanded)
%              Depth                    :   15
%              Number of atoms          :  244 ( 445 expanded)
%              Number of equality atoms :   94 ( 145 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0) )
            & ( ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(rectify,[],[f25])).

fof(f29,plain,(
    ! [X5,X0] :
      ( ? [X7] : r2_hidden(k4_tarski(X5,X7),X0)
     => r2_hidden(k4_tarski(X5,sK2(X0,X5)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
     => r2_hidden(k4_tarski(X2,sK1(X0,X1)),X0) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] : ~ r2_hidden(k4_tarski(X2,X3),X0)
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] : r2_hidden(k4_tarski(X2,X4),X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK0(X0,X1),X3),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( ? [X4] : r2_hidden(k4_tarski(sK0(X0,X1),X4),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k1_relat_1(X0) = X1
        | ( ( ! [X3] : ~ r2_hidden(k4_tarski(sK0(X0,X1),X3),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X5,X6),X0) )
            & ( r2_hidden(k4_tarski(X5,sK2(X0,X5)),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k1_relat_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f29,f28,f27])).

fof(f39,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X0) = X1
      | r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
      | r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f6,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f6])).

fof(f12,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
             => ~ ( ! [X3] :
                      ( m1_subset_1(X3,X1)
                     => ~ r2_hidden(X3,k2_relset_1(X0,X1,X2)) )
                  & k1_xboole_0 != k1_relset_1(X0,X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
               => ~ ( ! [X3] :
                        ( m1_subset_1(X3,X1)
                       => ~ r2_hidden(X3,k2_relset_1(X0,X1,X2)) )
                    & k1_xboole_0 != k1_relset_1(X0,X1,X2) ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f14,plain,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
       => ~ ( ! [X3] :
                ( m1_subset_1(X3,X1)
               => ~ r2_hidden(X3,k2_relset_1(X0,X1,X2)) )
            & k1_xboole_0 != k1_relset_1(X0,X1,X2) ) ) ),
    inference(pure_predicate_removal,[],[f13])).

fof(f23,plain,(
    ? [X0,X1,X2] :
      ( ! [X3] :
          ( ~ r2_hidden(X3,k2_relset_1(X0,X1,X2))
          | ~ m1_subset_1(X3,X1) )
      & k1_xboole_0 != k1_relset_1(X0,X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f24,plain,(
    ? [X0,X1,X2] :
      ( ! [X3] :
          ( ~ r2_hidden(X3,k2_relset_1(X0,X1,X2))
          | ~ m1_subset_1(X3,X1) )
      & k1_xboole_0 != k1_relset_1(X0,X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f23])).

fof(f32,plain,
    ( ? [X0,X1,X2] :
        ( ! [X3] :
            ( ~ r2_hidden(X3,k2_relset_1(X0,X1,X2))
            | ~ m1_subset_1(X3,X1) )
        & k1_xboole_0 != k1_relset_1(X0,X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
   => ( ! [X3] :
          ( ~ r2_hidden(X3,k2_relset_1(sK3,sK4,sK5))
          | ~ m1_subset_1(X3,sK4) )
      & k1_xboole_0 != k1_relset_1(sK3,sK4,sK5)
      & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ! [X3] :
        ( ~ r2_hidden(X3,k2_relset_1(sK3,sK4,sK5))
        | ~ m1_subset_1(X3,sK4) )
    & k1_xboole_0 != k1_relset_1(sK3,sK4,sK5)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f24,f32])).

fof(f50,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f33])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f15])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f52,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k2_relset_1(sK3,sK4,sK5))
      | ~ m1_subset_1(X3,sK4) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ( k1_xboole_0 = k1_relat_1(X0)
      <=> k1_xboole_0 = k2_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f31,plain,(
    ! [X0] :
      ( ( ( k1_xboole_0 = k1_relat_1(X0)
          | k1_xboole_0 != k2_relat_1(X0) )
        & ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 != k1_relat_1(X0) ) )
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f45,plain,(
    ! [X0] :
      ( k1_xboole_0 = k1_relat_1(X0)
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f5,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f36,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f51,plain,(
    k1_xboole_0 != k1_relset_1(sK3,sK4,sK5) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_4,plain,
    ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
    | r2_hidden(sK0(X0,X1),X1)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_609,plain,
    ( k1_relat_1(X0) = X1
    | r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) = iProver_top
    | r2_hidden(sK0(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_192,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_12])).

cnf(c_193,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_192])).

cnf(c_598,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_193])).

cnf(c_1529,plain,
    ( k1_relat_1(k1_xboole_0) = X0
    | r2_hidden(sK0(k1_xboole_0,X0),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_609,c_598])).

cnf(c_9,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1539,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK0(k1_xboole_0,X0),X0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1529,c_9])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_599,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_601,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_920,plain,
    ( k2_relset_1(sK3,sK4,sK5) = k2_relat_1(sK5) ),
    inference(superposition,[status(thm)],[c_599,c_601])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_603,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1400,plain,
    ( m1_subset_1(k2_relat_1(sK5),k1_zfmisc_1(sK4)) = iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_920,c_603])).

cnf(c_19,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_1773,plain,
    ( m1_subset_1(k2_relat_1(sK5),k1_zfmisc_1(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1400,c_19])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_612,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | m1_subset_1(X0,X2) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1778,plain,
    ( r2_hidden(X0,k2_relat_1(sK5)) != iProver_top
    | m1_subset_1(X0,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1773,c_612])).

cnf(c_16,negated_conjecture,
    ( ~ r2_hidden(X0,k2_relset_1(sK3,sK4,sK5))
    | ~ m1_subset_1(X0,sK4) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_600,plain,
    ( r2_hidden(X0,k2_relset_1(sK3,sK4,sK5)) != iProver_top
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1072,plain,
    ( r2_hidden(X0,k2_relat_1(sK5)) != iProver_top
    | m1_subset_1(X0,sK4) != iProver_top ),
    inference(demodulation,[status(thm)],[c_920,c_600])).

cnf(c_2014,plain,
    ( r2_hidden(X0,k2_relat_1(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1778,c_1072])).

cnf(c_2023,plain,
    ( k2_relat_1(sK5) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1539,c_2014])).

cnf(c_10,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_relat_1(X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_959,plain,
    ( ~ v1_relat_1(sK5)
    | k2_relat_1(sK5) != k1_xboole_0
    | k1_relat_1(sK5) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_7,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_862,plain,
    ( v1_relat_1(k2_zfmisc_1(sK3,sK4)) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_314,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_828,plain,
    ( k1_relat_1(sK5) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_314])).

cnf(c_829,plain,
    ( k1_relat_1(sK5) != k1_xboole_0
    | k1_xboole_0 = k1_relat_1(sK5)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_828])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_721,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_789,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | ~ v1_relat_1(k2_zfmisc_1(sK3,sK4))
    | v1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_721])).

cnf(c_731,plain,
    ( k1_relset_1(sK3,sK4,sK5) != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = k1_relset_1(sK3,sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_314])).

cnf(c_765,plain,
    ( k1_relset_1(sK3,sK4,sK5) != k1_relat_1(sK5)
    | k1_xboole_0 = k1_relset_1(sK3,sK4,sK5)
    | k1_xboole_0 != k1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_731])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_740,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | k1_relset_1(sK3,sK4,sK5) = k1_relat_1(sK5) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_313,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_336,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_313])).

cnf(c_17,negated_conjecture,
    ( k1_xboole_0 != k1_relset_1(sK3,sK4,sK5) ),
    inference(cnf_transformation,[],[f51])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2023,c_959,c_862,c_829,c_789,c_765,c_740,c_336,c_17,c_18])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 11:57:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 0.95/1.05  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.95/1.05  
% 0.95/1.05  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.95/1.05  
% 0.95/1.05  ------  iProver source info
% 0.95/1.05  
% 0.95/1.05  git: date: 2020-06-30 10:37:57 +0100
% 0.95/1.05  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.95/1.05  git: non_committed_changes: false
% 0.95/1.05  git: last_make_outside_of_git: false
% 0.95/1.05  
% 0.95/1.05  ------ 
% 0.95/1.05  
% 0.95/1.05  ------ Input Options
% 0.95/1.05  
% 0.95/1.05  --out_options                           all
% 0.95/1.05  --tptp_safe_out                         true
% 0.95/1.05  --problem_path                          ""
% 0.95/1.05  --include_path                          ""
% 0.95/1.05  --clausifier                            res/vclausify_rel
% 0.95/1.05  --clausifier_options                    --mode clausify
% 0.95/1.05  --stdin                                 false
% 0.95/1.05  --stats_out                             all
% 0.95/1.05  
% 0.95/1.05  ------ General Options
% 0.95/1.05  
% 0.95/1.05  --fof                                   false
% 0.95/1.05  --time_out_real                         305.
% 0.95/1.05  --time_out_virtual                      -1.
% 0.95/1.05  --symbol_type_check                     false
% 0.95/1.05  --clausify_out                          false
% 0.95/1.05  --sig_cnt_out                           false
% 0.95/1.05  --trig_cnt_out                          false
% 0.95/1.05  --trig_cnt_out_tolerance                1.
% 0.95/1.05  --trig_cnt_out_sk_spl                   false
% 0.95/1.05  --abstr_cl_out                          false
% 0.95/1.05  
% 0.95/1.05  ------ Global Options
% 0.95/1.05  
% 0.95/1.05  --schedule                              default
% 0.95/1.05  --add_important_lit                     false
% 0.95/1.05  --prop_solver_per_cl                    1000
% 0.95/1.05  --min_unsat_core                        false
% 0.95/1.05  --soft_assumptions                      false
% 0.95/1.05  --soft_lemma_size                       3
% 0.95/1.05  --prop_impl_unit_size                   0
% 0.95/1.05  --prop_impl_unit                        []
% 0.95/1.05  --share_sel_clauses                     true
% 0.95/1.05  --reset_solvers                         false
% 0.95/1.05  --bc_imp_inh                            [conj_cone]
% 0.95/1.05  --conj_cone_tolerance                   3.
% 0.95/1.05  --extra_neg_conj                        none
% 0.95/1.05  --large_theory_mode                     true
% 0.95/1.05  --prolific_symb_bound                   200
% 0.95/1.05  --lt_threshold                          2000
% 0.95/1.05  --clause_weak_htbl                      true
% 0.95/1.05  --gc_record_bc_elim                     false
% 0.95/1.05  
% 0.95/1.05  ------ Preprocessing Options
% 0.95/1.05  
% 0.95/1.05  --preprocessing_flag                    true
% 0.95/1.05  --time_out_prep_mult                    0.1
% 0.95/1.05  --splitting_mode                        input
% 0.95/1.05  --splitting_grd                         true
% 0.95/1.05  --splitting_cvd                         false
% 0.95/1.05  --splitting_cvd_svl                     false
% 0.95/1.05  --splitting_nvd                         32
% 0.95/1.05  --sub_typing                            true
% 0.95/1.05  --prep_gs_sim                           true
% 0.95/1.05  --prep_unflatten                        true
% 0.95/1.05  --prep_res_sim                          true
% 0.95/1.05  --prep_upred                            true
% 0.95/1.05  --prep_sem_filter                       exhaustive
% 0.95/1.05  --prep_sem_filter_out                   false
% 0.95/1.05  --pred_elim                             true
% 0.95/1.05  --res_sim_input                         true
% 0.95/1.05  --eq_ax_congr_red                       true
% 0.95/1.05  --pure_diseq_elim                       true
% 0.95/1.05  --brand_transform                       false
% 0.95/1.05  --non_eq_to_eq                          false
% 0.95/1.05  --prep_def_merge                        true
% 0.95/1.05  --prep_def_merge_prop_impl              false
% 0.95/1.05  --prep_def_merge_mbd                    true
% 0.95/1.05  --prep_def_merge_tr_red                 false
% 0.95/1.05  --prep_def_merge_tr_cl                  false
% 0.95/1.05  --smt_preprocessing                     true
% 0.95/1.05  --smt_ac_axioms                         fast
% 0.95/1.05  --preprocessed_out                      false
% 0.95/1.05  --preprocessed_stats                    false
% 0.95/1.05  
% 0.95/1.05  ------ Abstraction refinement Options
% 0.95/1.05  
% 0.95/1.05  --abstr_ref                             []
% 0.95/1.05  --abstr_ref_prep                        false
% 0.95/1.05  --abstr_ref_until_sat                   false
% 0.95/1.05  --abstr_ref_sig_restrict                funpre
% 0.95/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 0.95/1.05  --abstr_ref_under                       []
% 0.95/1.05  
% 0.95/1.05  ------ SAT Options
% 0.95/1.05  
% 0.95/1.05  --sat_mode                              false
% 0.95/1.05  --sat_fm_restart_options                ""
% 0.95/1.05  --sat_gr_def                            false
% 0.95/1.05  --sat_epr_types                         true
% 0.95/1.05  --sat_non_cyclic_types                  false
% 0.95/1.05  --sat_finite_models                     false
% 0.95/1.05  --sat_fm_lemmas                         false
% 0.95/1.05  --sat_fm_prep                           false
% 0.95/1.05  --sat_fm_uc_incr                        true
% 0.95/1.05  --sat_out_model                         small
% 0.95/1.05  --sat_out_clauses                       false
% 0.95/1.05  
% 0.95/1.05  ------ QBF Options
% 0.95/1.05  
% 0.95/1.05  --qbf_mode                              false
% 0.95/1.05  --qbf_elim_univ                         false
% 0.95/1.05  --qbf_dom_inst                          none
% 0.95/1.05  --qbf_dom_pre_inst                      false
% 0.95/1.05  --qbf_sk_in                             false
% 0.95/1.05  --qbf_pred_elim                         true
% 0.95/1.05  --qbf_split                             512
% 0.95/1.05  
% 0.95/1.05  ------ BMC1 Options
% 0.95/1.05  
% 0.95/1.05  --bmc1_incremental                      false
% 0.95/1.05  --bmc1_axioms                           reachable_all
% 0.95/1.05  --bmc1_min_bound                        0
% 0.95/1.05  --bmc1_max_bound                        -1
% 0.95/1.05  --bmc1_max_bound_default                -1
% 0.95/1.05  --bmc1_symbol_reachability              true
% 0.95/1.05  --bmc1_property_lemmas                  false
% 0.95/1.05  --bmc1_k_induction                      false
% 0.95/1.05  --bmc1_non_equiv_states                 false
% 0.95/1.05  --bmc1_deadlock                         false
% 0.95/1.05  --bmc1_ucm                              false
% 0.95/1.05  --bmc1_add_unsat_core                   none
% 0.95/1.05  --bmc1_unsat_core_children              false
% 0.95/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 0.95/1.05  --bmc1_out_stat                         full
% 0.95/1.05  --bmc1_ground_init                      false
% 0.95/1.05  --bmc1_pre_inst_next_state              false
% 0.95/1.05  --bmc1_pre_inst_state                   false
% 0.95/1.05  --bmc1_pre_inst_reach_state             false
% 0.95/1.05  --bmc1_out_unsat_core                   false
% 0.95/1.05  --bmc1_aig_witness_out                  false
% 0.95/1.05  --bmc1_verbose                          false
% 0.95/1.05  --bmc1_dump_clauses_tptp                false
% 0.95/1.05  --bmc1_dump_unsat_core_tptp             false
% 0.95/1.05  --bmc1_dump_file                        -
% 0.95/1.05  --bmc1_ucm_expand_uc_limit              128
% 0.95/1.05  --bmc1_ucm_n_expand_iterations          6
% 0.95/1.05  --bmc1_ucm_extend_mode                  1
% 0.95/1.05  --bmc1_ucm_init_mode                    2
% 0.95/1.05  --bmc1_ucm_cone_mode                    none
% 0.95/1.05  --bmc1_ucm_reduced_relation_type        0
% 0.95/1.05  --bmc1_ucm_relax_model                  4
% 0.95/1.05  --bmc1_ucm_full_tr_after_sat            true
% 0.95/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 0.95/1.05  --bmc1_ucm_layered_model                none
% 0.95/1.05  --bmc1_ucm_max_lemma_size               10
% 0.95/1.05  
% 0.95/1.05  ------ AIG Options
% 0.95/1.05  
% 0.95/1.05  --aig_mode                              false
% 0.95/1.05  
% 0.95/1.05  ------ Instantiation Options
% 0.95/1.05  
% 0.95/1.05  --instantiation_flag                    true
% 0.95/1.05  --inst_sos_flag                         false
% 0.95/1.05  --inst_sos_phase                        true
% 0.95/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.95/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.95/1.05  --inst_lit_sel_side                     num_symb
% 0.95/1.05  --inst_solver_per_active                1400
% 0.95/1.05  --inst_solver_calls_frac                1.
% 0.95/1.05  --inst_passive_queue_type               priority_queues
% 0.95/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.95/1.05  --inst_passive_queues_freq              [25;2]
% 0.95/1.05  --inst_dismatching                      true
% 0.95/1.05  --inst_eager_unprocessed_to_passive     true
% 0.95/1.05  --inst_prop_sim_given                   true
% 0.95/1.05  --inst_prop_sim_new                     false
% 0.95/1.05  --inst_subs_new                         false
% 0.95/1.05  --inst_eq_res_simp                      false
% 0.95/1.05  --inst_subs_given                       false
% 0.95/1.05  --inst_orphan_elimination               true
% 0.95/1.05  --inst_learning_loop_flag               true
% 0.95/1.05  --inst_learning_start                   3000
% 0.95/1.05  --inst_learning_factor                  2
% 0.95/1.05  --inst_start_prop_sim_after_learn       3
% 0.95/1.05  --inst_sel_renew                        solver
% 0.95/1.05  --inst_lit_activity_flag                true
% 0.95/1.05  --inst_restr_to_given                   false
% 0.95/1.05  --inst_activity_threshold               500
% 0.95/1.05  --inst_out_proof                        true
% 0.95/1.05  
% 0.95/1.05  ------ Resolution Options
% 0.95/1.05  
% 0.95/1.05  --resolution_flag                       true
% 0.95/1.05  --res_lit_sel                           adaptive
% 0.95/1.05  --res_lit_sel_side                      none
% 0.95/1.05  --res_ordering                          kbo
% 0.95/1.05  --res_to_prop_solver                    active
% 0.95/1.05  --res_prop_simpl_new                    false
% 0.95/1.05  --res_prop_simpl_given                  true
% 0.95/1.05  --res_passive_queue_type                priority_queues
% 0.95/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.95/1.05  --res_passive_queues_freq               [15;5]
% 0.95/1.05  --res_forward_subs                      full
% 0.95/1.05  --res_backward_subs                     full
% 0.95/1.05  --res_forward_subs_resolution           true
% 0.95/1.05  --res_backward_subs_resolution          true
% 0.95/1.05  --res_orphan_elimination                true
% 0.95/1.05  --res_time_limit                        2.
% 0.95/1.05  --res_out_proof                         true
% 0.95/1.05  
% 0.95/1.05  ------ Superposition Options
% 0.95/1.05  
% 0.95/1.05  --superposition_flag                    true
% 0.95/1.05  --sup_passive_queue_type                priority_queues
% 0.95/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.95/1.05  --sup_passive_queues_freq               [8;1;4]
% 0.95/1.05  --demod_completeness_check              fast
% 0.95/1.05  --demod_use_ground                      true
% 0.95/1.05  --sup_to_prop_solver                    passive
% 0.95/1.05  --sup_prop_simpl_new                    true
% 0.95/1.05  --sup_prop_simpl_given                  true
% 0.95/1.05  --sup_fun_splitting                     false
% 0.95/1.05  --sup_smt_interval                      50000
% 0.95/1.05  
% 0.95/1.05  ------ Superposition Simplification Setup
% 0.95/1.05  
% 0.95/1.05  --sup_indices_passive                   []
% 0.95/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 0.95/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.05  --sup_full_bw                           [BwDemod]
% 0.95/1.05  --sup_immed_triv                        [TrivRules]
% 0.95/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.95/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.05  --sup_immed_bw_main                     []
% 0.95/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 0.95/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.05  
% 0.95/1.05  ------ Combination Options
% 0.95/1.05  
% 0.95/1.05  --comb_res_mult                         3
% 0.95/1.05  --comb_sup_mult                         2
% 0.95/1.05  --comb_inst_mult                        10
% 0.95/1.05  
% 0.95/1.05  ------ Debug Options
% 0.95/1.05  
% 0.95/1.05  --dbg_backtrace                         false
% 0.95/1.05  --dbg_dump_prop_clauses                 false
% 0.95/1.05  --dbg_dump_prop_clauses_file            -
% 0.95/1.05  --dbg_out_stat                          false
% 0.95/1.05  ------ Parsing...
% 0.95/1.05  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.95/1.05  
% 0.95/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.95/1.05  
% 0.95/1.05  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.95/1.05  
% 0.95/1.05  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.95/1.05  ------ Proving...
% 0.95/1.05  ------ Problem Properties 
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  clauses                                 18
% 0.95/1.05  conjectures                             3
% 0.95/1.05  EPR                                     1
% 0.95/1.05  Horn                                    17
% 0.95/1.05  unary                                   6
% 0.95/1.05  binary                                  6
% 0.95/1.05  lits                                    36
% 0.95/1.05  lits eq                                 11
% 0.95/1.05  fd_pure                                 0
% 0.95/1.05  fd_pseudo                               0
% 0.95/1.05  fd_cond                                 0
% 0.95/1.05  fd_pseudo_cond                          2
% 0.95/1.05  AC symbols                              0
% 0.95/1.05  
% 0.95/1.05  ------ Schedule dynamic 5 is on 
% 0.95/1.05  
% 0.95/1.05  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  ------ 
% 0.95/1.05  Current options:
% 0.95/1.05  ------ 
% 0.95/1.05  
% 0.95/1.05  ------ Input Options
% 0.95/1.05  
% 0.95/1.05  --out_options                           all
% 0.95/1.05  --tptp_safe_out                         true
% 0.95/1.05  --problem_path                          ""
% 0.95/1.05  --include_path                          ""
% 0.95/1.05  --clausifier                            res/vclausify_rel
% 0.95/1.05  --clausifier_options                    --mode clausify
% 0.95/1.05  --stdin                                 false
% 0.95/1.05  --stats_out                             all
% 0.95/1.05  
% 0.95/1.05  ------ General Options
% 0.95/1.05  
% 0.95/1.05  --fof                                   false
% 0.95/1.05  --time_out_real                         305.
% 0.95/1.05  --time_out_virtual                      -1.
% 0.95/1.05  --symbol_type_check                     false
% 0.95/1.05  --clausify_out                          false
% 0.95/1.05  --sig_cnt_out                           false
% 0.95/1.05  --trig_cnt_out                          false
% 0.95/1.05  --trig_cnt_out_tolerance                1.
% 0.95/1.05  --trig_cnt_out_sk_spl                   false
% 0.95/1.05  --abstr_cl_out                          false
% 0.95/1.05  
% 0.95/1.05  ------ Global Options
% 0.95/1.05  
% 0.95/1.05  --schedule                              default
% 0.95/1.05  --add_important_lit                     false
% 0.95/1.05  --prop_solver_per_cl                    1000
% 0.95/1.05  --min_unsat_core                        false
% 0.95/1.05  --soft_assumptions                      false
% 0.95/1.05  --soft_lemma_size                       3
% 0.95/1.05  --prop_impl_unit_size                   0
% 0.95/1.05  --prop_impl_unit                        []
% 0.95/1.05  --share_sel_clauses                     true
% 0.95/1.05  --reset_solvers                         false
% 0.95/1.05  --bc_imp_inh                            [conj_cone]
% 0.95/1.05  --conj_cone_tolerance                   3.
% 0.95/1.05  --extra_neg_conj                        none
% 0.95/1.05  --large_theory_mode                     true
% 0.95/1.05  --prolific_symb_bound                   200
% 0.95/1.05  --lt_threshold                          2000
% 0.95/1.05  --clause_weak_htbl                      true
% 0.95/1.05  --gc_record_bc_elim                     false
% 0.95/1.05  
% 0.95/1.05  ------ Preprocessing Options
% 0.95/1.05  
% 0.95/1.05  --preprocessing_flag                    true
% 0.95/1.05  --time_out_prep_mult                    0.1
% 0.95/1.05  --splitting_mode                        input
% 0.95/1.05  --splitting_grd                         true
% 0.95/1.05  --splitting_cvd                         false
% 0.95/1.05  --splitting_cvd_svl                     false
% 0.95/1.05  --splitting_nvd                         32
% 0.95/1.05  --sub_typing                            true
% 0.95/1.05  --prep_gs_sim                           true
% 0.95/1.05  --prep_unflatten                        true
% 0.95/1.05  --prep_res_sim                          true
% 0.95/1.05  --prep_upred                            true
% 0.95/1.05  --prep_sem_filter                       exhaustive
% 0.95/1.05  --prep_sem_filter_out                   false
% 0.95/1.05  --pred_elim                             true
% 0.95/1.05  --res_sim_input                         true
% 0.95/1.05  --eq_ax_congr_red                       true
% 0.95/1.05  --pure_diseq_elim                       true
% 0.95/1.05  --brand_transform                       false
% 0.95/1.05  --non_eq_to_eq                          false
% 0.95/1.05  --prep_def_merge                        true
% 0.95/1.05  --prep_def_merge_prop_impl              false
% 0.95/1.05  --prep_def_merge_mbd                    true
% 0.95/1.05  --prep_def_merge_tr_red                 false
% 0.95/1.05  --prep_def_merge_tr_cl                  false
% 0.95/1.05  --smt_preprocessing                     true
% 0.95/1.05  --smt_ac_axioms                         fast
% 0.95/1.05  --preprocessed_out                      false
% 0.95/1.05  --preprocessed_stats                    false
% 0.95/1.05  
% 0.95/1.05  ------ Abstraction refinement Options
% 0.95/1.05  
% 0.95/1.05  --abstr_ref                             []
% 0.95/1.05  --abstr_ref_prep                        false
% 0.95/1.05  --abstr_ref_until_sat                   false
% 0.95/1.05  --abstr_ref_sig_restrict                funpre
% 0.95/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 0.95/1.05  --abstr_ref_under                       []
% 0.95/1.05  
% 0.95/1.05  ------ SAT Options
% 0.95/1.05  
% 0.95/1.05  --sat_mode                              false
% 0.95/1.05  --sat_fm_restart_options                ""
% 0.95/1.05  --sat_gr_def                            false
% 0.95/1.05  --sat_epr_types                         true
% 0.95/1.05  --sat_non_cyclic_types                  false
% 0.95/1.05  --sat_finite_models                     false
% 0.95/1.05  --sat_fm_lemmas                         false
% 0.95/1.05  --sat_fm_prep                           false
% 0.95/1.05  --sat_fm_uc_incr                        true
% 0.95/1.05  --sat_out_model                         small
% 0.95/1.05  --sat_out_clauses                       false
% 0.95/1.05  
% 0.95/1.05  ------ QBF Options
% 0.95/1.05  
% 0.95/1.05  --qbf_mode                              false
% 0.95/1.05  --qbf_elim_univ                         false
% 0.95/1.05  --qbf_dom_inst                          none
% 0.95/1.05  --qbf_dom_pre_inst                      false
% 0.95/1.05  --qbf_sk_in                             false
% 0.95/1.05  --qbf_pred_elim                         true
% 0.95/1.05  --qbf_split                             512
% 0.95/1.05  
% 0.95/1.05  ------ BMC1 Options
% 0.95/1.05  
% 0.95/1.05  --bmc1_incremental                      false
% 0.95/1.05  --bmc1_axioms                           reachable_all
% 0.95/1.05  --bmc1_min_bound                        0
% 0.95/1.05  --bmc1_max_bound                        -1
% 0.95/1.05  --bmc1_max_bound_default                -1
% 0.95/1.05  --bmc1_symbol_reachability              true
% 0.95/1.05  --bmc1_property_lemmas                  false
% 0.95/1.05  --bmc1_k_induction                      false
% 0.95/1.05  --bmc1_non_equiv_states                 false
% 0.95/1.05  --bmc1_deadlock                         false
% 0.95/1.05  --bmc1_ucm                              false
% 0.95/1.05  --bmc1_add_unsat_core                   none
% 0.95/1.05  --bmc1_unsat_core_children              false
% 0.95/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 0.95/1.05  --bmc1_out_stat                         full
% 0.95/1.05  --bmc1_ground_init                      false
% 0.95/1.05  --bmc1_pre_inst_next_state              false
% 0.95/1.05  --bmc1_pre_inst_state                   false
% 0.95/1.05  --bmc1_pre_inst_reach_state             false
% 0.95/1.05  --bmc1_out_unsat_core                   false
% 0.95/1.05  --bmc1_aig_witness_out                  false
% 0.95/1.05  --bmc1_verbose                          false
% 0.95/1.05  --bmc1_dump_clauses_tptp                false
% 0.95/1.05  --bmc1_dump_unsat_core_tptp             false
% 0.95/1.05  --bmc1_dump_file                        -
% 0.95/1.05  --bmc1_ucm_expand_uc_limit              128
% 0.95/1.05  --bmc1_ucm_n_expand_iterations          6
% 0.95/1.05  --bmc1_ucm_extend_mode                  1
% 0.95/1.05  --bmc1_ucm_init_mode                    2
% 0.95/1.05  --bmc1_ucm_cone_mode                    none
% 0.95/1.05  --bmc1_ucm_reduced_relation_type        0
% 0.95/1.05  --bmc1_ucm_relax_model                  4
% 0.95/1.05  --bmc1_ucm_full_tr_after_sat            true
% 0.95/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 0.95/1.05  --bmc1_ucm_layered_model                none
% 0.95/1.05  --bmc1_ucm_max_lemma_size               10
% 0.95/1.05  
% 0.95/1.05  ------ AIG Options
% 0.95/1.05  
% 0.95/1.05  --aig_mode                              false
% 0.95/1.05  
% 0.95/1.05  ------ Instantiation Options
% 0.95/1.05  
% 0.95/1.05  --instantiation_flag                    true
% 0.95/1.05  --inst_sos_flag                         false
% 0.95/1.05  --inst_sos_phase                        true
% 0.95/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.95/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.95/1.05  --inst_lit_sel_side                     none
% 0.95/1.05  --inst_solver_per_active                1400
% 0.95/1.05  --inst_solver_calls_frac                1.
% 0.95/1.05  --inst_passive_queue_type               priority_queues
% 0.95/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.95/1.05  --inst_passive_queues_freq              [25;2]
% 0.95/1.05  --inst_dismatching                      true
% 0.95/1.05  --inst_eager_unprocessed_to_passive     true
% 0.95/1.05  --inst_prop_sim_given                   true
% 0.95/1.05  --inst_prop_sim_new                     false
% 0.95/1.05  --inst_subs_new                         false
% 0.95/1.05  --inst_eq_res_simp                      false
% 0.95/1.05  --inst_subs_given                       false
% 0.95/1.05  --inst_orphan_elimination               true
% 0.95/1.05  --inst_learning_loop_flag               true
% 0.95/1.05  --inst_learning_start                   3000
% 0.95/1.05  --inst_learning_factor                  2
% 0.95/1.05  --inst_start_prop_sim_after_learn       3
% 0.95/1.05  --inst_sel_renew                        solver
% 0.95/1.05  --inst_lit_activity_flag                true
% 0.95/1.05  --inst_restr_to_given                   false
% 0.95/1.05  --inst_activity_threshold               500
% 0.95/1.05  --inst_out_proof                        true
% 0.95/1.05  
% 0.95/1.05  ------ Resolution Options
% 0.95/1.05  
% 0.95/1.05  --resolution_flag                       false
% 0.95/1.05  --res_lit_sel                           adaptive
% 0.95/1.05  --res_lit_sel_side                      none
% 0.95/1.05  --res_ordering                          kbo
% 0.95/1.05  --res_to_prop_solver                    active
% 0.95/1.05  --res_prop_simpl_new                    false
% 0.95/1.05  --res_prop_simpl_given                  true
% 0.95/1.05  --res_passive_queue_type                priority_queues
% 0.95/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.95/1.05  --res_passive_queues_freq               [15;5]
% 0.95/1.05  --res_forward_subs                      full
% 0.95/1.05  --res_backward_subs                     full
% 0.95/1.05  --res_forward_subs_resolution           true
% 0.95/1.05  --res_backward_subs_resolution          true
% 0.95/1.05  --res_orphan_elimination                true
% 0.95/1.05  --res_time_limit                        2.
% 0.95/1.05  --res_out_proof                         true
% 0.95/1.05  
% 0.95/1.05  ------ Superposition Options
% 0.95/1.05  
% 0.95/1.05  --superposition_flag                    true
% 0.95/1.05  --sup_passive_queue_type                priority_queues
% 0.95/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.95/1.05  --sup_passive_queues_freq               [8;1;4]
% 0.95/1.05  --demod_completeness_check              fast
% 0.95/1.05  --demod_use_ground                      true
% 0.95/1.05  --sup_to_prop_solver                    passive
% 0.95/1.05  --sup_prop_simpl_new                    true
% 0.95/1.05  --sup_prop_simpl_given                  true
% 0.95/1.05  --sup_fun_splitting                     false
% 0.95/1.05  --sup_smt_interval                      50000
% 0.95/1.05  
% 0.95/1.05  ------ Superposition Simplification Setup
% 0.95/1.05  
% 0.95/1.05  --sup_indices_passive                   []
% 0.95/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 0.95/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.05  --sup_full_bw                           [BwDemod]
% 0.95/1.05  --sup_immed_triv                        [TrivRules]
% 0.95/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.95/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.05  --sup_immed_bw_main                     []
% 0.95/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 0.95/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.05  
% 0.95/1.05  ------ Combination Options
% 0.95/1.05  
% 0.95/1.05  --comb_res_mult                         3
% 0.95/1.05  --comb_sup_mult                         2
% 0.95/1.05  --comb_inst_mult                        10
% 0.95/1.05  
% 0.95/1.05  ------ Debug Options
% 0.95/1.05  
% 0.95/1.05  --dbg_backtrace                         false
% 0.95/1.05  --dbg_dump_prop_clauses                 false
% 0.95/1.05  --dbg_dump_prop_clauses_file            -
% 0.95/1.05  --dbg_out_stat                          false
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  ------ Proving...
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  % SZS status Theorem for theBenchmark.p
% 0.95/1.05  
% 0.95/1.05  % SZS output start CNFRefutation for theBenchmark.p
% 0.95/1.05  
% 0.95/1.05  fof(f4,axiom,(
% 0.95/1.05    ! [X0,X1] : (k1_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : r2_hidden(k4_tarski(X2,X3),X0)))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f25,plain,(
% 0.95/1.05    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X3] : r2_hidden(k4_tarski(X2,X3),X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0)) & (? [X3] : r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1))) | k1_relat_1(X0) != X1))),
% 0.95/1.05    inference(nnf_transformation,[],[f4])).
% 0.95/1.05  
% 0.95/1.05  fof(f26,plain,(
% 0.95/1.05    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X5,X6),X0)) & (? [X7] : r2_hidden(k4_tarski(X5,X7),X0) | ~r2_hidden(X5,X1))) | k1_relat_1(X0) != X1))),
% 0.95/1.05    inference(rectify,[],[f25])).
% 0.95/1.05  
% 0.95/1.05  fof(f29,plain,(
% 0.95/1.05    ! [X5,X0] : (? [X7] : r2_hidden(k4_tarski(X5,X7),X0) => r2_hidden(k4_tarski(X5,sK2(X0,X5)),X0))),
% 0.95/1.05    introduced(choice_axiom,[])).
% 0.95/1.05  
% 0.95/1.05  fof(f28,plain,(
% 0.95/1.05    ( ! [X2] : (! [X1,X0] : (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) => r2_hidden(k4_tarski(X2,sK1(X0,X1)),X0))) )),
% 0.95/1.05    introduced(choice_axiom,[])).
% 0.95/1.05  
% 0.95/1.05  fof(f27,plain,(
% 0.95/1.05    ! [X1,X0] : (? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X2,X3),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X2,X4),X0) | r2_hidden(X2,X1))) => ((! [X3] : ~r2_hidden(k4_tarski(sK0(X0,X1),X3),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (? [X4] : r2_hidden(k4_tarski(sK0(X0,X1),X4),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 0.95/1.05    introduced(choice_axiom,[])).
% 0.95/1.05  
% 0.95/1.05  fof(f30,plain,(
% 0.95/1.05    ! [X0,X1] : ((k1_relat_1(X0) = X1 | ((! [X3] : ~r2_hidden(k4_tarski(sK0(X0,X1),X3),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X5,X6),X0)) & (r2_hidden(k4_tarski(X5,sK2(X0,X5)),X0) | ~r2_hidden(X5,X1))) | k1_relat_1(X0) != X1))),
% 0.95/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f29,f28,f27])).
% 0.95/1.05  
% 0.95/1.05  fof(f39,plain,(
% 0.95/1.05    ( ! [X0,X1] : (k1_relat_1(X0) = X1 | r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) | r2_hidden(sK0(X0,X1),X1)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f30])).
% 0.95/1.05  
% 0.95/1.05  fof(f1,axiom,(
% 0.95/1.05    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f34,plain,(
% 0.95/1.05    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f1])).
% 0.95/1.05  
% 0.95/1.05  fof(f8,axiom,(
% 0.95/1.05    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f19,plain,(
% 0.95/1.05    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 0.95/1.05    inference(ennf_transformation,[],[f8])).
% 0.95/1.05  
% 0.95/1.05  fof(f46,plain,(
% 0.95/1.05    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f19])).
% 0.95/1.05  
% 0.95/1.05  fof(f6,axiom,(
% 0.95/1.05    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f42,plain,(
% 0.95/1.05    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.95/1.05    inference(cnf_transformation,[],[f6])).
% 0.95/1.05  
% 0.95/1.05  fof(f12,conjecture,(
% 0.95/1.05    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k2_relset_1(X0,X1,X2))) & k1_xboole_0 != k1_relset_1(X0,X1,X2)))))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f13,negated_conjecture,(
% 0.95/1.05    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k2_relset_1(X0,X1,X2))) & k1_xboole_0 != k1_relset_1(X0,X1,X2)))))),
% 0.95/1.05    inference(negated_conjecture,[],[f12])).
% 0.95/1.05  
% 0.95/1.05  fof(f14,plain,(
% 0.95/1.05    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ~(! [X3] : (m1_subset_1(X3,X1) => ~r2_hidden(X3,k2_relset_1(X0,X1,X2))) & k1_xboole_0 != k1_relset_1(X0,X1,X2)))),
% 0.95/1.05    inference(pure_predicate_removal,[],[f13])).
% 0.95/1.05  
% 0.95/1.05  fof(f23,plain,(
% 0.95/1.05    ? [X0,X1,X2] : ((! [X3] : (~r2_hidden(X3,k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k1_relset_1(X0,X1,X2)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.95/1.05    inference(ennf_transformation,[],[f14])).
% 0.95/1.05  
% 0.95/1.05  fof(f24,plain,(
% 0.95/1.05    ? [X0,X1,X2] : (! [X3] : (~r2_hidden(X3,k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k1_relset_1(X0,X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.95/1.05    inference(flattening,[],[f23])).
% 0.95/1.05  
% 0.95/1.05  fof(f32,plain,(
% 0.95/1.05    ? [X0,X1,X2] : (! [X3] : (~r2_hidden(X3,k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X3,X1)) & k1_xboole_0 != k1_relset_1(X0,X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (! [X3] : (~r2_hidden(X3,k2_relset_1(sK3,sK4,sK5)) | ~m1_subset_1(X3,sK4)) & k1_xboole_0 != k1_relset_1(sK3,sK4,sK5) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))))),
% 0.95/1.05    introduced(choice_axiom,[])).
% 0.95/1.05  
% 0.95/1.05  fof(f33,plain,(
% 0.95/1.05    ! [X3] : (~r2_hidden(X3,k2_relset_1(sK3,sK4,sK5)) | ~m1_subset_1(X3,sK4)) & k1_xboole_0 != k1_relset_1(sK3,sK4,sK5) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))),
% 0.95/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f24,f32])).
% 0.95/1.05  
% 0.95/1.05  fof(f50,plain,(
% 0.95/1.05    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))),
% 0.95/1.05    inference(cnf_transformation,[],[f33])).
% 0.95/1.05  
% 0.95/1.05  fof(f11,axiom,(
% 0.95/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f22,plain,(
% 0.95/1.05    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.95/1.05    inference(ennf_transformation,[],[f11])).
% 0.95/1.05  
% 0.95/1.05  fof(f49,plain,(
% 0.95/1.05    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.95/1.05    inference(cnf_transformation,[],[f22])).
% 0.95/1.05  
% 0.95/1.05  fof(f9,axiom,(
% 0.95/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f20,plain,(
% 0.95/1.05    ! [X0,X1,X2] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.95/1.05    inference(ennf_transformation,[],[f9])).
% 0.95/1.05  
% 0.95/1.05  fof(f47,plain,(
% 0.95/1.05    ( ! [X2,X0,X1] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.95/1.05    inference(cnf_transformation,[],[f20])).
% 0.95/1.05  
% 0.95/1.05  fof(f2,axiom,(
% 0.95/1.05    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f15,plain,(
% 0.95/1.05    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 0.95/1.05    inference(ennf_transformation,[],[f2])).
% 0.95/1.05  
% 0.95/1.05  fof(f16,plain,(
% 0.95/1.05    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 0.95/1.05    inference(flattening,[],[f15])).
% 0.95/1.05  
% 0.95/1.05  fof(f35,plain,(
% 0.95/1.05    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f16])).
% 0.95/1.05  
% 0.95/1.05  fof(f52,plain,(
% 0.95/1.05    ( ! [X3] : (~r2_hidden(X3,k2_relset_1(sK3,sK4,sK5)) | ~m1_subset_1(X3,sK4)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f33])).
% 0.95/1.05  
% 0.95/1.05  fof(f7,axiom,(
% 0.95/1.05    ! [X0] : (v1_relat_1(X0) => (k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f18,plain,(
% 0.95/1.05    ! [X0] : ((k1_xboole_0 = k1_relat_1(X0) <=> k1_xboole_0 = k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 0.95/1.05    inference(ennf_transformation,[],[f7])).
% 0.95/1.05  
% 0.95/1.05  fof(f31,plain,(
% 0.95/1.05    ! [X0] : (((k1_xboole_0 = k1_relat_1(X0) | k1_xboole_0 != k2_relat_1(X0)) & (k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 0.95/1.05    inference(nnf_transformation,[],[f18])).
% 0.95/1.05  
% 0.95/1.05  fof(f45,plain,(
% 0.95/1.05    ( ! [X0] : (k1_xboole_0 = k1_relat_1(X0) | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f31])).
% 0.95/1.05  
% 0.95/1.05  fof(f5,axiom,(
% 0.95/1.05    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f41,plain,(
% 0.95/1.05    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 0.95/1.05    inference(cnf_transformation,[],[f5])).
% 0.95/1.05  
% 0.95/1.05  fof(f3,axiom,(
% 0.95/1.05    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f17,plain,(
% 0.95/1.05    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 0.95/1.05    inference(ennf_transformation,[],[f3])).
% 0.95/1.05  
% 0.95/1.05  fof(f36,plain,(
% 0.95/1.05    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 0.95/1.05    inference(cnf_transformation,[],[f17])).
% 0.95/1.05  
% 0.95/1.05  fof(f10,axiom,(
% 0.95/1.05    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 0.95/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.95/1.05  
% 0.95/1.05  fof(f21,plain,(
% 0.95/1.05    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 0.95/1.05    inference(ennf_transformation,[],[f10])).
% 0.95/1.05  
% 0.95/1.05  fof(f48,plain,(
% 0.95/1.05    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 0.95/1.05    inference(cnf_transformation,[],[f21])).
% 0.95/1.05  
% 0.95/1.05  fof(f51,plain,(
% 0.95/1.05    k1_xboole_0 != k1_relset_1(sK3,sK4,sK5)),
% 0.95/1.05    inference(cnf_transformation,[],[f33])).
% 0.95/1.05  
% 0.95/1.05  cnf(c_4,plain,
% 0.95/1.05      ( r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0)
% 0.95/1.05      | r2_hidden(sK0(X0,X1),X1)
% 0.95/1.05      | k1_relat_1(X0) = X1 ),
% 0.95/1.05      inference(cnf_transformation,[],[f39]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_609,plain,
% 0.95/1.05      ( k1_relat_1(X0) = X1
% 0.95/1.05      | r2_hidden(k4_tarski(sK0(X0,X1),sK1(X0,X1)),X0) = iProver_top
% 0.95/1.05      | r2_hidden(sK0(X0,X1),X1) = iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_0,plain,
% 0.95/1.05      ( r1_tarski(k1_xboole_0,X0) ),
% 0.95/1.05      inference(cnf_transformation,[],[f34]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_12,plain,
% 0.95/1.05      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 0.95/1.05      inference(cnf_transformation,[],[f46]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_192,plain,
% 0.95/1.05      ( ~ r2_hidden(X0,X1) | X0 != X2 | k1_xboole_0 != X1 ),
% 0.95/1.05      inference(resolution_lifted,[status(thm)],[c_0,c_12]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_193,plain,
% 0.95/1.05      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 0.95/1.05      inference(unflattening,[status(thm)],[c_192]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_598,plain,
% 0.95/1.05      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_193]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1529,plain,
% 0.95/1.05      ( k1_relat_1(k1_xboole_0) = X0
% 0.95/1.05      | r2_hidden(sK0(k1_xboole_0,X0),X0) = iProver_top ),
% 0.95/1.05      inference(superposition,[status(thm)],[c_609,c_598]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_9,plain,
% 0.95/1.05      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 0.95/1.05      inference(cnf_transformation,[],[f42]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1539,plain,
% 0.95/1.05      ( k1_xboole_0 = X0
% 0.95/1.05      | r2_hidden(sK0(k1_xboole_0,X0),X0) = iProver_top ),
% 0.95/1.05      inference(demodulation,[status(thm)],[c_1529,c_9]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_18,negated_conjecture,
% 0.95/1.05      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 0.95/1.05      inference(cnf_transformation,[],[f50]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_599,plain,
% 0.95/1.05      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_15,plain,
% 0.95/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.95/1.05      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 0.95/1.05      inference(cnf_transformation,[],[f49]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_601,plain,
% 0.95/1.05      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 0.95/1.05      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_920,plain,
% 0.95/1.05      ( k2_relset_1(sK3,sK4,sK5) = k2_relat_1(sK5) ),
% 0.95/1.05      inference(superposition,[status(thm)],[c_599,c_601]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_13,plain,
% 0.95/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.95/1.05      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
% 0.95/1.05      inference(cnf_transformation,[],[f47]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_603,plain,
% 0.95/1.05      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 0.95/1.05      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1400,plain,
% 0.95/1.05      ( m1_subset_1(k2_relat_1(sK5),k1_zfmisc_1(sK4)) = iProver_top
% 0.95/1.05      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) != iProver_top ),
% 0.95/1.05      inference(superposition,[status(thm)],[c_920,c_603]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_19,plain,
% 0.95/1.05      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1773,plain,
% 0.95/1.05      ( m1_subset_1(k2_relat_1(sK5),k1_zfmisc_1(sK4)) = iProver_top ),
% 0.95/1.05      inference(global_propositional_subsumption,
% 0.95/1.05                [status(thm)],
% 0.95/1.05                [c_1400,c_19]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1,plain,
% 0.95/1.05      ( ~ r2_hidden(X0,X1)
% 0.95/1.05      | m1_subset_1(X0,X2)
% 0.95/1.05      | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
% 0.95/1.05      inference(cnf_transformation,[],[f35]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_612,plain,
% 0.95/1.05      ( r2_hidden(X0,X1) != iProver_top
% 0.95/1.05      | m1_subset_1(X0,X2) = iProver_top
% 0.95/1.05      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1778,plain,
% 0.95/1.05      ( r2_hidden(X0,k2_relat_1(sK5)) != iProver_top
% 0.95/1.05      | m1_subset_1(X0,sK4) = iProver_top ),
% 0.95/1.05      inference(superposition,[status(thm)],[c_1773,c_612]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_16,negated_conjecture,
% 0.95/1.05      ( ~ r2_hidden(X0,k2_relset_1(sK3,sK4,sK5))
% 0.95/1.05      | ~ m1_subset_1(X0,sK4) ),
% 0.95/1.05      inference(cnf_transformation,[],[f52]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_600,plain,
% 0.95/1.05      ( r2_hidden(X0,k2_relset_1(sK3,sK4,sK5)) != iProver_top
% 0.95/1.05      | m1_subset_1(X0,sK4) != iProver_top ),
% 0.95/1.05      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_1072,plain,
% 0.95/1.05      ( r2_hidden(X0,k2_relat_1(sK5)) != iProver_top
% 0.95/1.05      | m1_subset_1(X0,sK4) != iProver_top ),
% 0.95/1.05      inference(demodulation,[status(thm)],[c_920,c_600]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_2014,plain,
% 0.95/1.05      ( r2_hidden(X0,k2_relat_1(sK5)) != iProver_top ),
% 0.95/1.05      inference(global_propositional_subsumption,
% 0.95/1.05                [status(thm)],
% 0.95/1.05                [c_1778,c_1072]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_2023,plain,
% 0.95/1.05      ( k2_relat_1(sK5) = k1_xboole_0 ),
% 0.95/1.05      inference(superposition,[status(thm)],[c_1539,c_2014]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_10,plain,
% 0.95/1.05      ( ~ v1_relat_1(X0)
% 0.95/1.05      | k2_relat_1(X0) != k1_xboole_0
% 0.95/1.05      | k1_relat_1(X0) = k1_xboole_0 ),
% 0.95/1.05      inference(cnf_transformation,[],[f45]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_959,plain,
% 0.95/1.05      ( ~ v1_relat_1(sK5)
% 0.95/1.05      | k2_relat_1(sK5) != k1_xboole_0
% 0.95/1.05      | k1_relat_1(sK5) = k1_xboole_0 ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_10]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_7,plain,
% 0.95/1.05      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 0.95/1.05      inference(cnf_transformation,[],[f41]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_862,plain,
% 0.95/1.05      ( v1_relat_1(k2_zfmisc_1(sK3,sK4)) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_7]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_314,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_828,plain,
% 0.95/1.05      ( k1_relat_1(sK5) != X0
% 0.95/1.05      | k1_xboole_0 != X0
% 0.95/1.05      | k1_xboole_0 = k1_relat_1(sK5) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_314]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_829,plain,
% 0.95/1.05      ( k1_relat_1(sK5) != k1_xboole_0
% 0.95/1.05      | k1_xboole_0 = k1_relat_1(sK5)
% 0.95/1.05      | k1_xboole_0 != k1_xboole_0 ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_828]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_2,plain,
% 0.95/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.95/1.05      | ~ v1_relat_1(X1)
% 0.95/1.05      | v1_relat_1(X0) ),
% 0.95/1.05      inference(cnf_transformation,[],[f36]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_721,plain,
% 0.95/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.95/1.05      | v1_relat_1(X0)
% 0.95/1.05      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_2]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_789,plain,
% 0.95/1.05      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 0.95/1.05      | ~ v1_relat_1(k2_zfmisc_1(sK3,sK4))
% 0.95/1.05      | v1_relat_1(sK5) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_721]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_731,plain,
% 0.95/1.05      ( k1_relset_1(sK3,sK4,sK5) != X0
% 0.95/1.05      | k1_xboole_0 != X0
% 0.95/1.05      | k1_xboole_0 = k1_relset_1(sK3,sK4,sK5) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_314]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_765,plain,
% 0.95/1.05      ( k1_relset_1(sK3,sK4,sK5) != k1_relat_1(sK5)
% 0.95/1.05      | k1_xboole_0 = k1_relset_1(sK3,sK4,sK5)
% 0.95/1.05      | k1_xboole_0 != k1_relat_1(sK5) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_731]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_14,plain,
% 0.95/1.05      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 0.95/1.05      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 0.95/1.05      inference(cnf_transformation,[],[f48]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_740,plain,
% 0.95/1.05      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 0.95/1.05      | k1_relset_1(sK3,sK4,sK5) = k1_relat_1(sK5) ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_14]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_313,plain,( X0 = X0 ),theory(equality) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_336,plain,
% 0.95/1.05      ( k1_xboole_0 = k1_xboole_0 ),
% 0.95/1.05      inference(instantiation,[status(thm)],[c_313]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(c_17,negated_conjecture,
% 0.95/1.05      ( k1_xboole_0 != k1_relset_1(sK3,sK4,sK5) ),
% 0.95/1.05      inference(cnf_transformation,[],[f51]) ).
% 0.95/1.05  
% 0.95/1.05  cnf(contradiction,plain,
% 0.95/1.05      ( $false ),
% 0.95/1.05      inference(minisat,
% 0.95/1.05                [status(thm)],
% 0.95/1.05                [c_2023,c_959,c_862,c_829,c_789,c_765,c_740,c_336,c_17,
% 0.95/1.05                 c_18]) ).
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 0.95/1.05  
% 0.95/1.05  ------                               Statistics
% 0.95/1.05  
% 0.95/1.05  ------ General
% 0.95/1.05  
% 0.95/1.05  abstr_ref_over_cycles:                  0
% 0.95/1.05  abstr_ref_under_cycles:                 0
% 0.95/1.05  gc_basic_clause_elim:                   0
% 0.95/1.05  forced_gc_time:                         0
% 0.95/1.05  parsing_time:                           0.029
% 0.95/1.05  unif_index_cands_time:                  0.
% 0.95/1.05  unif_index_add_time:                    0.
% 0.95/1.05  orderings_time:                         0.
% 0.95/1.05  out_proof_time:                         0.007
% 0.95/1.05  total_time:                             0.098
% 0.95/1.05  num_of_symbols:                         49
% 0.95/1.05  num_of_terms:                           2206
% 0.95/1.05  
% 0.95/1.05  ------ Preprocessing
% 0.95/1.05  
% 0.95/1.05  num_of_splits:                          0
% 0.95/1.05  num_of_split_atoms:                     0
% 0.95/1.05  num_of_reused_defs:                     0
% 0.95/1.05  num_eq_ax_congr_red:                    19
% 0.95/1.05  num_of_sem_filtered_clauses:            1
% 0.95/1.05  num_of_subtypes:                        0
% 0.95/1.05  monotx_restored_types:                  0
% 0.95/1.05  sat_num_of_epr_types:                   0
% 0.95/1.05  sat_num_of_non_cyclic_types:            0
% 0.95/1.05  sat_guarded_non_collapsed_types:        0
% 0.95/1.05  num_pure_diseq_elim:                    0
% 0.95/1.05  simp_replaced_by:                       0
% 0.95/1.05  res_preprocessed:                       98
% 0.95/1.05  prep_upred:                             0
% 0.95/1.05  prep_unflattend:                        2
% 0.95/1.05  smt_new_axioms:                         0
% 0.95/1.05  pred_elim_cands:                        3
% 0.95/1.05  pred_elim:                              1
% 0.95/1.05  pred_elim_cl:                           1
% 0.95/1.05  pred_elim_cycles:                       3
% 0.95/1.05  merged_defs:                            0
% 0.95/1.05  merged_defs_ncl:                        0
% 0.95/1.05  bin_hyper_res:                          0
% 0.95/1.05  prep_cycles:                            4
% 0.95/1.05  pred_elim_time:                         0.
% 0.95/1.05  splitting_time:                         0.
% 0.95/1.05  sem_filter_time:                        0.
% 0.95/1.05  monotx_time:                            0.
% 0.95/1.05  subtype_inf_time:                       0.
% 0.95/1.05  
% 0.95/1.05  ------ Problem properties
% 0.95/1.05  
% 0.95/1.05  clauses:                                18
% 0.95/1.05  conjectures:                            3
% 0.95/1.05  epr:                                    1
% 0.95/1.05  horn:                                   17
% 0.95/1.05  ground:                                 4
% 0.95/1.05  unary:                                  6
% 0.95/1.05  binary:                                 6
% 0.95/1.05  lits:                                   36
% 0.95/1.05  lits_eq:                                11
% 0.95/1.05  fd_pure:                                0
% 0.95/1.05  fd_pseudo:                              0
% 0.95/1.05  fd_cond:                                0
% 0.95/1.05  fd_pseudo_cond:                         2
% 0.95/1.05  ac_symbols:                             0
% 0.95/1.05  
% 0.95/1.05  ------ Propositional Solver
% 0.95/1.05  
% 0.95/1.05  prop_solver_calls:                      29
% 0.95/1.05  prop_fast_solver_calls:                 501
% 0.95/1.05  smt_solver_calls:                       0
% 0.95/1.05  smt_fast_solver_calls:                  0
% 0.95/1.05  prop_num_of_clauses:                    737
% 0.95/1.05  prop_preprocess_simplified:             3340
% 0.95/1.05  prop_fo_subsumed:                       4
% 0.95/1.05  prop_solver_time:                       0.
% 0.95/1.05  smt_solver_time:                        0.
% 0.95/1.05  smt_fast_solver_time:                   0.
% 0.95/1.05  prop_fast_solver_time:                  0.
% 0.95/1.05  prop_unsat_core_time:                   0.
% 0.95/1.05  
% 0.95/1.05  ------ QBF
% 0.95/1.05  
% 0.95/1.05  qbf_q_res:                              0
% 0.95/1.05  qbf_num_tautologies:                    0
% 0.95/1.05  qbf_prep_cycles:                        0
% 0.95/1.05  
% 0.95/1.05  ------ BMC1
% 0.95/1.05  
% 0.95/1.05  bmc1_current_bound:                     -1
% 0.95/1.05  bmc1_last_solved_bound:                 -1
% 0.95/1.05  bmc1_unsat_core_size:                   -1
% 0.95/1.05  bmc1_unsat_core_parents_size:           -1
% 0.95/1.05  bmc1_merge_next_fun:                    0
% 0.95/1.05  bmc1_unsat_core_clauses_time:           0.
% 0.95/1.05  
% 0.95/1.05  ------ Instantiation
% 0.95/1.05  
% 0.95/1.05  inst_num_of_clauses:                    260
% 0.95/1.05  inst_num_in_passive:                    122
% 0.95/1.05  inst_num_in_active:                     138
% 0.95/1.05  inst_num_in_unprocessed:                0
% 0.95/1.05  inst_num_of_loops:                      160
% 0.95/1.05  inst_num_of_learning_restarts:          0
% 0.95/1.05  inst_num_moves_active_passive:          18
% 0.95/1.05  inst_lit_activity:                      0
% 0.95/1.05  inst_lit_activity_moves:                0
% 0.95/1.05  inst_num_tautologies:                   0
% 0.95/1.05  inst_num_prop_implied:                  0
% 0.95/1.05  inst_num_existing_simplified:           0
% 0.95/1.05  inst_num_eq_res_simplified:             0
% 0.95/1.05  inst_num_child_elim:                    0
% 0.95/1.05  inst_num_of_dismatching_blockings:      40
% 0.95/1.05  inst_num_of_non_proper_insts:           191
% 0.95/1.05  inst_num_of_duplicates:                 0
% 0.95/1.05  inst_inst_num_from_inst_to_res:         0
% 0.95/1.05  inst_dismatching_checking_time:         0.
% 0.95/1.05  
% 0.95/1.05  ------ Resolution
% 0.95/1.05  
% 0.95/1.05  res_num_of_clauses:                     0
% 0.95/1.05  res_num_in_passive:                     0
% 0.95/1.05  res_num_in_active:                      0
% 0.95/1.05  res_num_of_loops:                       102
% 0.95/1.05  res_forward_subset_subsumed:            19
% 0.95/1.05  res_backward_subset_subsumed:           2
% 0.95/1.05  res_forward_subsumed:                   0
% 0.95/1.05  res_backward_subsumed:                  0
% 0.95/1.05  res_forward_subsumption_resolution:     0
% 0.95/1.05  res_backward_subsumption_resolution:    0
% 0.95/1.05  res_clause_to_clause_subsumption:       39
% 0.95/1.05  res_orphan_elimination:                 0
% 0.95/1.05  res_tautology_del:                      31
% 0.95/1.05  res_num_eq_res_simplified:              0
% 0.95/1.05  res_num_sel_changes:                    0
% 0.95/1.05  res_moves_from_active_to_pass:          0
% 0.95/1.05  
% 0.95/1.05  ------ Superposition
% 0.95/1.05  
% 0.95/1.05  sup_time_total:                         0.
% 0.95/1.05  sup_time_generating:                    0.
% 0.95/1.05  sup_time_sim_full:                      0.
% 0.95/1.05  sup_time_sim_immed:                     0.
% 0.95/1.05  
% 0.95/1.05  sup_num_of_clauses:                     36
% 0.95/1.05  sup_num_in_active:                      28
% 0.95/1.05  sup_num_in_passive:                     8
% 0.95/1.05  sup_num_of_loops:                       30
% 0.95/1.05  sup_fw_superposition:                   14
% 0.95/1.05  sup_bw_superposition:                   13
% 0.95/1.05  sup_immediate_simplified:               4
% 0.95/1.05  sup_given_eliminated:                   1
% 0.95/1.05  comparisons_done:                       0
% 0.95/1.05  comparisons_avoided:                    0
% 0.95/1.05  
% 0.95/1.05  ------ Simplifications
% 0.95/1.05  
% 0.95/1.05  
% 0.95/1.05  sim_fw_subset_subsumed:                 2
% 0.95/1.05  sim_bw_subset_subsumed:                 1
% 0.95/1.05  sim_fw_subsumed:                        0
% 0.95/1.05  sim_bw_subsumed:                        0
% 0.95/1.05  sim_fw_subsumption_res:                 0
% 0.95/1.05  sim_bw_subsumption_res:                 0
% 0.95/1.05  sim_tautology_del:                      2
% 0.95/1.05  sim_eq_tautology_del:                   1
% 0.95/1.05  sim_eq_res_simp:                        0
% 0.95/1.05  sim_fw_demodulated:                     1
% 0.95/1.05  sim_bw_demodulated:                     3
% 0.95/1.05  sim_light_normalised:                   2
% 0.95/1.05  sim_joinable_taut:                      0
% 0.95/1.05  sim_joinable_simp:                      0
% 0.95/1.05  sim_ac_normalised:                      0
% 0.95/1.05  sim_smt_subsumption:                    0
% 0.95/1.05  
%------------------------------------------------------------------------------
