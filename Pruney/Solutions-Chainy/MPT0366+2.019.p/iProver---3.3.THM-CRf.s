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
% DateTime   : Thu Dec  3 11:40:50 EST 2020

% Result     : Theorem 2.52s
% Output     : CNFRefutation 2.52s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 254 expanded)
%              Number of clauses        :   75 (  94 expanded)
%              Number of leaves         :   10 (  60 expanded)
%              Depth                    :   19
%              Number of atoms          :  361 (1103 expanded)
%              Number of equality atoms :  111 ( 125 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   12 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(X0))
             => ( ( r1_xboole_0(X3,X2)
                  & r1_tarski(X1,X2) )
               => r1_tarski(X1,k3_subset_1(X0,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(X0))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(X0))
               => ( ( r1_xboole_0(X3,X2)
                    & r1_tarski(X1,X2) )
                 => r1_tarski(X1,k3_subset_1(X0,X3)) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f14,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r1_tarski(X1,k3_subset_1(X0,X3))
              & r1_xboole_0(X3,X2)
              & r1_tarski(X1,X2)
              & m1_subset_1(X3,k1_zfmisc_1(X0)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f15,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r1_tarski(X1,k3_subset_1(X0,X3))
              & r1_xboole_0(X3,X2)
              & r1_tarski(X1,X2)
              & m1_subset_1(X3,k1_zfmisc_1(X0)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f14])).

fof(f22,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r1_tarski(X1,k3_subset_1(X0,X3))
          & r1_xboole_0(X3,X2)
          & r1_tarski(X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(X0)) )
     => ( ~ r1_tarski(X1,k3_subset_1(X0,sK3))
        & r1_xboole_0(sK3,X2)
        & r1_tarski(X1,X2)
        & m1_subset_1(sK3,k1_zfmisc_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r1_tarski(X1,k3_subset_1(X0,X3))
              & r1_xboole_0(X3,X2)
              & r1_tarski(X1,X2)
              & m1_subset_1(X3,k1_zfmisc_1(X0)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
     => ( ? [X3] :
            ( ~ r1_tarski(X1,k3_subset_1(X0,X3))
            & r1_xboole_0(X3,sK2)
            & r1_tarski(X1,sK2)
            & m1_subset_1(X3,k1_zfmisc_1(X0)) )
        & m1_subset_1(sK2,k1_zfmisc_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ? [X3] :
                ( ~ r1_tarski(X1,k3_subset_1(X0,X3))
                & r1_xboole_0(X3,X2)
                & r1_tarski(X1,X2)
                & m1_subset_1(X3,k1_zfmisc_1(X0)) )
            & m1_subset_1(X2,k1_zfmisc_1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ? [X2] :
          ( ? [X3] :
              ( ~ r1_tarski(sK1,k3_subset_1(sK0,X3))
              & r1_xboole_0(X3,X2)
              & r1_tarski(sK1,X2)
              & m1_subset_1(X3,k1_zfmisc_1(sK0)) )
          & m1_subset_1(X2,k1_zfmisc_1(sK0)) )
      & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ~ r1_tarski(sK1,k3_subset_1(sK0,sK3))
    & r1_xboole_0(sK3,sK2)
    & r1_tarski(sK1,sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(sK0))
    & m1_subset_1(sK2,k1_zfmisc_1(sK0))
    & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f15,f22,f21,f20])).

fof(f38,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f23])).

fof(f37,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f23])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_xboole_0(X1,X2)
          <=> r1_tarski(X1,k3_subset_1(X0,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_xboole_0(X1,X2)
          <=> r1_tarski(X1,k3_subset_1(X0,X2)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_xboole_0(X1,X2)
              | ~ r1_tarski(X1,k3_subset_1(X0,X2)) )
            & ( r1_tarski(X1,k3_subset_1(X0,X2))
              | ~ r1_xboole_0(X1,X2) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X1,k3_subset_1(X0,X2))
      | ~ r1_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f28,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f36,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_xboole_0(X1,k3_subset_1(X0,X2))
          <=> r1_tarski(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_xboole_0(X1,k3_subset_1(X0,X2))
          <=> r1_tarski(X1,X2) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_xboole_0(X1,k3_subset_1(X0,X2))
              | ~ r1_tarski(X1,X2) )
            & ( r1_tarski(X1,X2)
              | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X1,k3_subset_1(X0,X2))
      | ~ r1_tarski(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f39,plain,(
    r1_xboole_0(sK3,sK2) ),
    inference(cnf_transformation,[],[f23])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X1,X2)
      | ~ r1_tarski(X1,k3_subset_1(X0,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_tarski(X1,X2)
          <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_tarski(X1,X2)
          <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_tarski(X1,X2)
              | ~ r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) )
            & ( r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
              | ~ r1_tarski(X1,X2) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
      | ~ r1_tarski(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X1,X2)
      | ~ r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X1,X2)
      | ~ r1_xboole_0(X1,k3_subset_1(X0,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) != X0 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f40,plain,(
    ~ r1_tarski(sK1,k3_subset_1(sK0,sK3)) ),
    inference(cnf_transformation,[],[f23])).

fof(f35,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_13,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_895,plain,
    ( r1_tarski(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_894,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | r1_tarski(X0,k3_subset_1(X1,X2))
    | ~ r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_900,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,k3_subset_1(X1,X2)) = iProver_top
    | r1_xboole_0(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_904,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_893,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X2)
    | r1_xboole_0(X0,k3_subset_1(X1,X2)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_899,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X2) != iProver_top
    | r1_xboole_0(X0,k3_subset_1(X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_905,plain,
    ( k4_xboole_0(X0,X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1692,plain,
    ( k4_xboole_0(X0,k3_subset_1(X1,X2)) = X0
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_899,c_905])).

cnf(c_1992,plain,
    ( k4_xboole_0(sK2,k3_subset_1(sK0,X0)) = sK2
    | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(sK2,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_893,c_1692])).

cnf(c_2119,plain,
    ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
    | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(sK2,k3_subset_1(sK0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_904,c_1992])).

cnf(c_2833,plain,
    ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
    | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
    | r1_xboole_0(sK2,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_900,c_2119])).

cnf(c_18,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_3639,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
    | k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
    | r1_xboole_0(sK2,X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2833,c_18])).

cnf(c_3640,plain,
    ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
    | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
    | r1_xboole_0(sK2,X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_3639])).

cnf(c_3649,plain,
    ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = sK2
    | r1_xboole_0(sK2,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_894,c_3640])).

cnf(c_19,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_12,negated_conjecture,
    ( r1_xboole_0(sK3,sK2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_414,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | r1_tarski(X0,k3_subset_1(X1,X2))
    | sK2 != X2
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_12])).

cnf(c_415,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(X0))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(X0))
    | r1_tarski(sK3,k3_subset_1(X0,sK2)) ),
    inference(unflattening,[status(thm)],[c_414])).

cnf(c_416,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(X0)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(X0)) != iProver_top
    | r1_tarski(sK3,k3_subset_1(X0,sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_415])).

cnf(c_418,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(sK3,k3_subset_1(sK0,sK2)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_416])).

cnf(c_1033,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1034,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1033])).

cnf(c_1036,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1037,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1036])).

cnf(c_1135,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1136,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0)) = iProver_top
    | m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1135])).

cnf(c_1163,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1164,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0)) = iProver_top
    | m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1163])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,k3_subset_1(X1,X2))
    | r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_1072,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
    | ~ r1_tarski(sK2,k3_subset_1(sK0,X0))
    | r1_xboole_0(sK2,X0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1226,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(sK0))
    | ~ r1_tarski(sK2,k3_subset_1(sK0,sK3))
    | r1_xboole_0(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_1072])).

cnf(c_1227,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(sK2,k3_subset_1(sK0,sK3)) != iProver_top
    | r1_xboole_0(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1226])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X2)
    | r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_1260,plain,
    ( ~ m1_subset_1(k3_subset_1(X0,sK2),k1_zfmisc_1(X1))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(X1))
    | r1_tarski(k3_subset_1(X1,k3_subset_1(X0,sK2)),k3_subset_1(X1,sK3))
    | ~ r1_tarski(sK3,k3_subset_1(X0,sK2)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1266,plain,
    ( m1_subset_1(k3_subset_1(X0,sK2),k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(k3_subset_1(X1,k3_subset_1(X0,sK2)),k3_subset_1(X1,sK3)) = iProver_top
    | r1_tarski(sK3,k3_subset_1(X0,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1260])).

cnf(c_1268,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k3_subset_1(sK0,sK3)) = iProver_top
    | r1_tarski(sK3,k3_subset_1(sK0,sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1266])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | r1_tarski(X0,X2)
    | ~ r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_1115,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
    | ~ r1_tarski(k3_subset_1(sK0,X0),k3_subset_1(sK0,sK2))
    | r1_tarski(sK2,X0) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_1449,plain,
    ( ~ m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
    | ~ r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2))
    | r1_tarski(sK2,k3_subset_1(sK0,sK3)) ),
    inference(instantiation,[status(thm)],[c_1115])).

cnf(c_1450,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2)) != iProver_top
    | r1_tarski(sK2,k3_subset_1(sK0,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1449])).

cnf(c_2516,plain,
    ( ~ m1_subset_1(k3_subset_1(X0,k3_subset_1(X1,sK2)),k1_zfmisc_1(X2))
    | ~ m1_subset_1(k3_subset_1(X0,sK3),k1_zfmisc_1(X2))
    | ~ r1_tarski(k3_subset_1(X0,k3_subset_1(X1,sK2)),k3_subset_1(X0,sK3))
    | r1_tarski(k3_subset_1(X2,k3_subset_1(X0,sK3)),k3_subset_1(X2,k3_subset_1(X0,k3_subset_1(X1,sK2)))) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_2522,plain,
    ( m1_subset_1(k3_subset_1(X0,k3_subset_1(X1,sK2)),k1_zfmisc_1(X2)) != iProver_top
    | m1_subset_1(k3_subset_1(X0,sK3),k1_zfmisc_1(X2)) != iProver_top
    | r1_tarski(k3_subset_1(X0,k3_subset_1(X1,sK2)),k3_subset_1(X0,sK3)) != iProver_top
    | r1_tarski(k3_subset_1(X2,k3_subset_1(X0,sK3)),k3_subset_1(X2,k3_subset_1(X0,k3_subset_1(X1,sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2516])).

cnf(c_2524,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k3_subset_1(sK0,sK3)) != iProver_top
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,k3_subset_1(sK0,sK2)))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_2522])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | r1_tarski(X0,X2)
    | ~ r1_xboole_0(X0,k3_subset_1(X1,X2)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_1526,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),X0)
    | ~ r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,X0)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_2932,plain,
    ( ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0))
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2))
    | ~ r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) ),
    inference(instantiation,[status(thm)],[c_1526])).

cnf(c_2933,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2)) = iProver_top
    | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2932])).

cnf(c_1527,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
    | ~ r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,X0))
    | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),X0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_2977,plain,
    ( ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
    | ~ r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,k3_subset_1(sK0,sK2))))
    | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) ),
    inference(instantiation,[status(thm)],[c_1527])).

cnf(c_2978,plain,
    ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,k3_subset_1(sK0,sK2)))) != iProver_top
    | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2977])).

cnf(c_3677,plain,
    ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3649,c_18,c_19,c_418,c_1034,c_1037,c_1136,c_1164,c_1227,c_1268,c_1450,c_2524,c_2933,c_2978])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
    | r1_xboole_0(X0,X2) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_908,plain,
    ( r1_tarski(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r1_xboole_0(X0,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_3680,plain,
    ( r1_tarski(X0,sK2) != iProver_top
    | r1_xboole_0(X0,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = iProver_top ),
    inference(superposition,[status(thm)],[c_3677,c_908])).

cnf(c_3749,plain,
    ( k4_xboole_0(X0,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = X0
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3680,c_905])).

cnf(c_3831,plain,
    ( k4_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = sK1 ),
    inference(superposition,[status(thm)],[c_895,c_3749])).

cnf(c_2,plain,
    ( r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) != X0 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_906,plain,
    ( k4_xboole_0(X0,X1) != X0
    | r1_xboole_0(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3879,plain,
    ( r1_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = iProver_top ),
    inference(superposition,[status(thm)],[c_3831,c_906])).

cnf(c_1101,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(sK0))
    | r1_tarski(sK1,X0)
    | ~ r1_xboole_0(sK1,k3_subset_1(sK0,X0)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1333,plain,
    ( ~ m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(sK0))
    | r1_tarski(sK1,k3_subset_1(sK0,sK3))
    | ~ r1_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) ),
    inference(instantiation,[status(thm)],[c_1101])).

cnf(c_1334,plain,
    ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(sK0)) != iProver_top
    | r1_tarski(sK1,k3_subset_1(sK0,sK3)) = iProver_top
    | r1_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1333])).

cnf(c_11,negated_conjecture,
    ( ~ r1_tarski(sK1,k3_subset_1(sK0,sK3)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_22,plain,
    ( r1_tarski(sK1,k3_subset_1(sK0,sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_17,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3879,c_1334,c_1034,c_22,c_19,c_17])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:13:57 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.52/1.08  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.52/1.08  
% 2.52/1.08  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.52/1.08  
% 2.52/1.08  ------  iProver source info
% 2.52/1.08  
% 2.52/1.08  git: date: 2020-06-30 10:37:57 +0100
% 2.52/1.08  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.52/1.08  git: non_committed_changes: false
% 2.52/1.08  git: last_make_outside_of_git: false
% 2.52/1.08  
% 2.52/1.08  ------ 
% 2.52/1.08  
% 2.52/1.08  ------ Input Options
% 2.52/1.08  
% 2.52/1.08  --out_options                           all
% 2.52/1.08  --tptp_safe_out                         true
% 2.52/1.08  --problem_path                          ""
% 2.52/1.08  --include_path                          ""
% 2.52/1.08  --clausifier                            res/vclausify_rel
% 2.52/1.08  --clausifier_options                    --mode clausify
% 2.52/1.08  --stdin                                 false
% 2.52/1.08  --stats_out                             all
% 2.52/1.08  
% 2.52/1.08  ------ General Options
% 2.52/1.08  
% 2.52/1.08  --fof                                   false
% 2.52/1.08  --time_out_real                         305.
% 2.52/1.08  --time_out_virtual                      -1.
% 2.52/1.08  --symbol_type_check                     false
% 2.52/1.08  --clausify_out                          false
% 2.52/1.08  --sig_cnt_out                           false
% 2.52/1.08  --trig_cnt_out                          false
% 2.52/1.08  --trig_cnt_out_tolerance                1.
% 2.52/1.08  --trig_cnt_out_sk_spl                   false
% 2.52/1.08  --abstr_cl_out                          false
% 2.52/1.08  
% 2.52/1.08  ------ Global Options
% 2.52/1.08  
% 2.52/1.08  --schedule                              default
% 2.52/1.08  --add_important_lit                     false
% 2.52/1.08  --prop_solver_per_cl                    1000
% 2.52/1.08  --min_unsat_core                        false
% 2.52/1.08  --soft_assumptions                      false
% 2.52/1.08  --soft_lemma_size                       3
% 2.52/1.08  --prop_impl_unit_size                   0
% 2.52/1.08  --prop_impl_unit                        []
% 2.52/1.08  --share_sel_clauses                     true
% 2.52/1.08  --reset_solvers                         false
% 2.52/1.08  --bc_imp_inh                            [conj_cone]
% 2.52/1.08  --conj_cone_tolerance                   3.
% 2.52/1.08  --extra_neg_conj                        none
% 2.52/1.08  --large_theory_mode                     true
% 2.52/1.08  --prolific_symb_bound                   200
% 2.52/1.08  --lt_threshold                          2000
% 2.52/1.08  --clause_weak_htbl                      true
% 2.52/1.08  --gc_record_bc_elim                     false
% 2.52/1.08  
% 2.52/1.08  ------ Preprocessing Options
% 2.52/1.08  
% 2.52/1.08  --preprocessing_flag                    true
% 2.52/1.08  --time_out_prep_mult                    0.1
% 2.52/1.08  --splitting_mode                        input
% 2.52/1.08  --splitting_grd                         true
% 2.52/1.08  --splitting_cvd                         false
% 2.52/1.08  --splitting_cvd_svl                     false
% 2.52/1.08  --splitting_nvd                         32
% 2.52/1.08  --sub_typing                            true
% 2.52/1.08  --prep_gs_sim                           true
% 2.52/1.08  --prep_unflatten                        true
% 2.52/1.08  --prep_res_sim                          true
% 2.52/1.08  --prep_upred                            true
% 2.52/1.08  --prep_sem_filter                       exhaustive
% 2.52/1.08  --prep_sem_filter_out                   false
% 2.52/1.08  --pred_elim                             true
% 2.52/1.08  --res_sim_input                         true
% 2.52/1.08  --eq_ax_congr_red                       true
% 2.52/1.08  --pure_diseq_elim                       true
% 2.52/1.08  --brand_transform                       false
% 2.52/1.08  --non_eq_to_eq                          false
% 2.52/1.08  --prep_def_merge                        true
% 2.52/1.08  --prep_def_merge_prop_impl              false
% 2.52/1.08  --prep_def_merge_mbd                    true
% 2.52/1.08  --prep_def_merge_tr_red                 false
% 2.52/1.08  --prep_def_merge_tr_cl                  false
% 2.52/1.08  --smt_preprocessing                     true
% 2.52/1.08  --smt_ac_axioms                         fast
% 2.52/1.08  --preprocessed_out                      false
% 2.52/1.08  --preprocessed_stats                    false
% 2.52/1.08  
% 2.52/1.08  ------ Abstraction refinement Options
% 2.52/1.08  
% 2.52/1.08  --abstr_ref                             []
% 2.52/1.08  --abstr_ref_prep                        false
% 2.52/1.08  --abstr_ref_until_sat                   false
% 2.52/1.08  --abstr_ref_sig_restrict                funpre
% 2.52/1.08  --abstr_ref_af_restrict_to_split_sk     false
% 2.52/1.08  --abstr_ref_under                       []
% 2.52/1.08  
% 2.52/1.08  ------ SAT Options
% 2.52/1.08  
% 2.52/1.08  --sat_mode                              false
% 2.52/1.08  --sat_fm_restart_options                ""
% 2.52/1.08  --sat_gr_def                            false
% 2.52/1.08  --sat_epr_types                         true
% 2.52/1.08  --sat_non_cyclic_types                  false
% 2.52/1.08  --sat_finite_models                     false
% 2.52/1.08  --sat_fm_lemmas                         false
% 2.52/1.08  --sat_fm_prep                           false
% 2.52/1.08  --sat_fm_uc_incr                        true
% 2.52/1.08  --sat_out_model                         small
% 2.52/1.08  --sat_out_clauses                       false
% 2.52/1.08  
% 2.52/1.08  ------ QBF Options
% 2.52/1.08  
% 2.52/1.08  --qbf_mode                              false
% 2.52/1.08  --qbf_elim_univ                         false
% 2.52/1.08  --qbf_dom_inst                          none
% 2.52/1.08  --qbf_dom_pre_inst                      false
% 2.52/1.08  --qbf_sk_in                             false
% 2.52/1.08  --qbf_pred_elim                         true
% 2.52/1.08  --qbf_split                             512
% 2.52/1.08  
% 2.52/1.08  ------ BMC1 Options
% 2.52/1.08  
% 2.52/1.08  --bmc1_incremental                      false
% 2.52/1.08  --bmc1_axioms                           reachable_all
% 2.52/1.08  --bmc1_min_bound                        0
% 2.52/1.08  --bmc1_max_bound                        -1
% 2.52/1.08  --bmc1_max_bound_default                -1
% 2.52/1.08  --bmc1_symbol_reachability              true
% 2.52/1.08  --bmc1_property_lemmas                  false
% 2.52/1.08  --bmc1_k_induction                      false
% 2.52/1.08  --bmc1_non_equiv_states                 false
% 2.52/1.08  --bmc1_deadlock                         false
% 2.52/1.08  --bmc1_ucm                              false
% 2.52/1.08  --bmc1_add_unsat_core                   none
% 2.52/1.08  --bmc1_unsat_core_children              false
% 2.52/1.08  --bmc1_unsat_core_extrapolate_axioms    false
% 2.52/1.08  --bmc1_out_stat                         full
% 2.52/1.08  --bmc1_ground_init                      false
% 2.52/1.08  --bmc1_pre_inst_next_state              false
% 2.52/1.08  --bmc1_pre_inst_state                   false
% 2.52/1.08  --bmc1_pre_inst_reach_state             false
% 2.52/1.08  --bmc1_out_unsat_core                   false
% 2.52/1.08  --bmc1_aig_witness_out                  false
% 2.52/1.08  --bmc1_verbose                          false
% 2.52/1.08  --bmc1_dump_clauses_tptp                false
% 2.52/1.08  --bmc1_dump_unsat_core_tptp             false
% 2.52/1.08  --bmc1_dump_file                        -
% 2.52/1.08  --bmc1_ucm_expand_uc_limit              128
% 2.52/1.08  --bmc1_ucm_n_expand_iterations          6
% 2.52/1.08  --bmc1_ucm_extend_mode                  1
% 2.52/1.08  --bmc1_ucm_init_mode                    2
% 2.52/1.08  --bmc1_ucm_cone_mode                    none
% 2.52/1.08  --bmc1_ucm_reduced_relation_type        0
% 2.52/1.08  --bmc1_ucm_relax_model                  4
% 2.52/1.08  --bmc1_ucm_full_tr_after_sat            true
% 2.52/1.08  --bmc1_ucm_expand_neg_assumptions       false
% 2.52/1.08  --bmc1_ucm_layered_model                none
% 2.52/1.08  --bmc1_ucm_max_lemma_size               10
% 2.52/1.08  
% 2.52/1.08  ------ AIG Options
% 2.52/1.08  
% 2.52/1.08  --aig_mode                              false
% 2.52/1.08  
% 2.52/1.08  ------ Instantiation Options
% 2.52/1.08  
% 2.52/1.08  --instantiation_flag                    true
% 2.52/1.08  --inst_sos_flag                         false
% 2.52/1.08  --inst_sos_phase                        true
% 2.52/1.08  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.52/1.08  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.52/1.08  --inst_lit_sel_side                     num_symb
% 2.52/1.08  --inst_solver_per_active                1400
% 2.52/1.08  --inst_solver_calls_frac                1.
% 2.52/1.08  --inst_passive_queue_type               priority_queues
% 2.52/1.08  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.52/1.08  --inst_passive_queues_freq              [25;2]
% 2.52/1.08  --inst_dismatching                      true
% 2.52/1.08  --inst_eager_unprocessed_to_passive     true
% 2.52/1.08  --inst_prop_sim_given                   true
% 2.52/1.08  --inst_prop_sim_new                     false
% 2.52/1.08  --inst_subs_new                         false
% 2.52/1.08  --inst_eq_res_simp                      false
% 2.52/1.08  --inst_subs_given                       false
% 2.52/1.08  --inst_orphan_elimination               true
% 2.52/1.08  --inst_learning_loop_flag               true
% 2.52/1.08  --inst_learning_start                   3000
% 2.52/1.08  --inst_learning_factor                  2
% 2.52/1.08  --inst_start_prop_sim_after_learn       3
% 2.52/1.08  --inst_sel_renew                        solver
% 2.52/1.08  --inst_lit_activity_flag                true
% 2.52/1.08  --inst_restr_to_given                   false
% 2.52/1.08  --inst_activity_threshold               500
% 2.52/1.08  --inst_out_proof                        true
% 2.52/1.08  
% 2.52/1.08  ------ Resolution Options
% 2.52/1.08  
% 2.52/1.08  --resolution_flag                       true
% 2.52/1.08  --res_lit_sel                           adaptive
% 2.52/1.08  --res_lit_sel_side                      none
% 2.52/1.08  --res_ordering                          kbo
% 2.52/1.08  --res_to_prop_solver                    active
% 2.52/1.08  --res_prop_simpl_new                    false
% 2.52/1.08  --res_prop_simpl_given                  true
% 2.52/1.08  --res_passive_queue_type                priority_queues
% 2.52/1.08  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.52/1.08  --res_passive_queues_freq               [15;5]
% 2.52/1.08  --res_forward_subs                      full
% 2.52/1.08  --res_backward_subs                     full
% 2.52/1.08  --res_forward_subs_resolution           true
% 2.52/1.08  --res_backward_subs_resolution          true
% 2.52/1.08  --res_orphan_elimination                true
% 2.52/1.08  --res_time_limit                        2.
% 2.52/1.08  --res_out_proof                         true
% 2.52/1.08  
% 2.52/1.08  ------ Superposition Options
% 2.52/1.08  
% 2.52/1.08  --superposition_flag                    true
% 2.52/1.08  --sup_passive_queue_type                priority_queues
% 2.52/1.08  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.52/1.08  --sup_passive_queues_freq               [8;1;4]
% 2.52/1.08  --demod_completeness_check              fast
% 2.52/1.08  --demod_use_ground                      true
% 2.52/1.08  --sup_to_prop_solver                    passive
% 2.52/1.08  --sup_prop_simpl_new                    true
% 2.52/1.08  --sup_prop_simpl_given                  true
% 2.52/1.08  --sup_fun_splitting                     false
% 2.52/1.08  --sup_smt_interval                      50000
% 2.52/1.08  
% 2.52/1.08  ------ Superposition Simplification Setup
% 2.52/1.08  
% 2.52/1.08  --sup_indices_passive                   []
% 2.52/1.08  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.08  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.08  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.08  --sup_full_triv                         [TrivRules;PropSubs]
% 2.52/1.08  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.08  --sup_full_bw                           [BwDemod]
% 2.52/1.08  --sup_immed_triv                        [TrivRules]
% 2.52/1.08  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.52/1.08  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.08  --sup_immed_bw_main                     []
% 2.52/1.08  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.08  --sup_input_triv                        [Unflattening;TrivRules]
% 2.52/1.08  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.08  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.08  
% 2.52/1.08  ------ Combination Options
% 2.52/1.08  
% 2.52/1.08  --comb_res_mult                         3
% 2.52/1.08  --comb_sup_mult                         2
% 2.52/1.08  --comb_inst_mult                        10
% 2.52/1.08  
% 2.52/1.08  ------ Debug Options
% 2.52/1.08  
% 2.52/1.08  --dbg_backtrace                         false
% 2.52/1.08  --dbg_dump_prop_clauses                 false
% 2.52/1.08  --dbg_dump_prop_clauses_file            -
% 2.52/1.08  --dbg_out_stat                          false
% 2.52/1.08  ------ Parsing...
% 2.52/1.08  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.52/1.08  
% 2.52/1.08  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.52/1.08  
% 2.52/1.08  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.52/1.08  
% 2.52/1.08  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.52/1.08  ------ Proving...
% 2.52/1.08  ------ Problem Properties 
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  clauses                                 17
% 2.52/1.08  conjectures                             6
% 2.52/1.08  EPR                                     2
% 2.52/1.08  Horn                                    17
% 2.52/1.08  unary                                   6
% 2.52/1.08  binary                                  5
% 2.52/1.08  lits                                    40
% 2.52/1.08  lits eq                                 2
% 2.52/1.08  fd_pure                                 0
% 2.52/1.08  fd_pseudo                               0
% 2.52/1.08  fd_cond                                 0
% 2.52/1.08  fd_pseudo_cond                          0
% 2.52/1.08  AC symbols                              0
% 2.52/1.08  
% 2.52/1.08  ------ Schedule dynamic 5 is on 
% 2.52/1.08  
% 2.52/1.08  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  ------ 
% 2.52/1.08  Current options:
% 2.52/1.08  ------ 
% 2.52/1.08  
% 2.52/1.08  ------ Input Options
% 2.52/1.08  
% 2.52/1.08  --out_options                           all
% 2.52/1.08  --tptp_safe_out                         true
% 2.52/1.08  --problem_path                          ""
% 2.52/1.08  --include_path                          ""
% 2.52/1.08  --clausifier                            res/vclausify_rel
% 2.52/1.08  --clausifier_options                    --mode clausify
% 2.52/1.08  --stdin                                 false
% 2.52/1.08  --stats_out                             all
% 2.52/1.08  
% 2.52/1.08  ------ General Options
% 2.52/1.08  
% 2.52/1.08  --fof                                   false
% 2.52/1.08  --time_out_real                         305.
% 2.52/1.08  --time_out_virtual                      -1.
% 2.52/1.08  --symbol_type_check                     false
% 2.52/1.08  --clausify_out                          false
% 2.52/1.08  --sig_cnt_out                           false
% 2.52/1.08  --trig_cnt_out                          false
% 2.52/1.08  --trig_cnt_out_tolerance                1.
% 2.52/1.08  --trig_cnt_out_sk_spl                   false
% 2.52/1.08  --abstr_cl_out                          false
% 2.52/1.08  
% 2.52/1.08  ------ Global Options
% 2.52/1.08  
% 2.52/1.08  --schedule                              default
% 2.52/1.08  --add_important_lit                     false
% 2.52/1.08  --prop_solver_per_cl                    1000
% 2.52/1.08  --min_unsat_core                        false
% 2.52/1.08  --soft_assumptions                      false
% 2.52/1.08  --soft_lemma_size                       3
% 2.52/1.08  --prop_impl_unit_size                   0
% 2.52/1.08  --prop_impl_unit                        []
% 2.52/1.08  --share_sel_clauses                     true
% 2.52/1.08  --reset_solvers                         false
% 2.52/1.08  --bc_imp_inh                            [conj_cone]
% 2.52/1.08  --conj_cone_tolerance                   3.
% 2.52/1.08  --extra_neg_conj                        none
% 2.52/1.08  --large_theory_mode                     true
% 2.52/1.08  --prolific_symb_bound                   200
% 2.52/1.08  --lt_threshold                          2000
% 2.52/1.08  --clause_weak_htbl                      true
% 2.52/1.08  --gc_record_bc_elim                     false
% 2.52/1.08  
% 2.52/1.08  ------ Preprocessing Options
% 2.52/1.08  
% 2.52/1.08  --preprocessing_flag                    true
% 2.52/1.08  --time_out_prep_mult                    0.1
% 2.52/1.08  --splitting_mode                        input
% 2.52/1.08  --splitting_grd                         true
% 2.52/1.08  --splitting_cvd                         false
% 2.52/1.08  --splitting_cvd_svl                     false
% 2.52/1.08  --splitting_nvd                         32
% 2.52/1.08  --sub_typing                            true
% 2.52/1.08  --prep_gs_sim                           true
% 2.52/1.08  --prep_unflatten                        true
% 2.52/1.08  --prep_res_sim                          true
% 2.52/1.08  --prep_upred                            true
% 2.52/1.08  --prep_sem_filter                       exhaustive
% 2.52/1.08  --prep_sem_filter_out                   false
% 2.52/1.08  --pred_elim                             true
% 2.52/1.08  --res_sim_input                         true
% 2.52/1.08  --eq_ax_congr_red                       true
% 2.52/1.08  --pure_diseq_elim                       true
% 2.52/1.08  --brand_transform                       false
% 2.52/1.08  --non_eq_to_eq                          false
% 2.52/1.08  --prep_def_merge                        true
% 2.52/1.08  --prep_def_merge_prop_impl              false
% 2.52/1.08  --prep_def_merge_mbd                    true
% 2.52/1.08  --prep_def_merge_tr_red                 false
% 2.52/1.08  --prep_def_merge_tr_cl                  false
% 2.52/1.08  --smt_preprocessing                     true
% 2.52/1.08  --smt_ac_axioms                         fast
% 2.52/1.08  --preprocessed_out                      false
% 2.52/1.08  --preprocessed_stats                    false
% 2.52/1.08  
% 2.52/1.08  ------ Abstraction refinement Options
% 2.52/1.08  
% 2.52/1.08  --abstr_ref                             []
% 2.52/1.08  --abstr_ref_prep                        false
% 2.52/1.08  --abstr_ref_until_sat                   false
% 2.52/1.08  --abstr_ref_sig_restrict                funpre
% 2.52/1.08  --abstr_ref_af_restrict_to_split_sk     false
% 2.52/1.08  --abstr_ref_under                       []
% 2.52/1.08  
% 2.52/1.08  ------ SAT Options
% 2.52/1.08  
% 2.52/1.08  --sat_mode                              false
% 2.52/1.08  --sat_fm_restart_options                ""
% 2.52/1.08  --sat_gr_def                            false
% 2.52/1.08  --sat_epr_types                         true
% 2.52/1.08  --sat_non_cyclic_types                  false
% 2.52/1.08  --sat_finite_models                     false
% 2.52/1.08  --sat_fm_lemmas                         false
% 2.52/1.08  --sat_fm_prep                           false
% 2.52/1.08  --sat_fm_uc_incr                        true
% 2.52/1.08  --sat_out_model                         small
% 2.52/1.08  --sat_out_clauses                       false
% 2.52/1.08  
% 2.52/1.08  ------ QBF Options
% 2.52/1.08  
% 2.52/1.08  --qbf_mode                              false
% 2.52/1.08  --qbf_elim_univ                         false
% 2.52/1.08  --qbf_dom_inst                          none
% 2.52/1.08  --qbf_dom_pre_inst                      false
% 2.52/1.08  --qbf_sk_in                             false
% 2.52/1.08  --qbf_pred_elim                         true
% 2.52/1.08  --qbf_split                             512
% 2.52/1.08  
% 2.52/1.08  ------ BMC1 Options
% 2.52/1.08  
% 2.52/1.08  --bmc1_incremental                      false
% 2.52/1.08  --bmc1_axioms                           reachable_all
% 2.52/1.08  --bmc1_min_bound                        0
% 2.52/1.08  --bmc1_max_bound                        -1
% 2.52/1.08  --bmc1_max_bound_default                -1
% 2.52/1.08  --bmc1_symbol_reachability              true
% 2.52/1.08  --bmc1_property_lemmas                  false
% 2.52/1.08  --bmc1_k_induction                      false
% 2.52/1.08  --bmc1_non_equiv_states                 false
% 2.52/1.08  --bmc1_deadlock                         false
% 2.52/1.08  --bmc1_ucm                              false
% 2.52/1.08  --bmc1_add_unsat_core                   none
% 2.52/1.08  --bmc1_unsat_core_children              false
% 2.52/1.08  --bmc1_unsat_core_extrapolate_axioms    false
% 2.52/1.08  --bmc1_out_stat                         full
% 2.52/1.08  --bmc1_ground_init                      false
% 2.52/1.08  --bmc1_pre_inst_next_state              false
% 2.52/1.08  --bmc1_pre_inst_state                   false
% 2.52/1.08  --bmc1_pre_inst_reach_state             false
% 2.52/1.08  --bmc1_out_unsat_core                   false
% 2.52/1.08  --bmc1_aig_witness_out                  false
% 2.52/1.08  --bmc1_verbose                          false
% 2.52/1.08  --bmc1_dump_clauses_tptp                false
% 2.52/1.08  --bmc1_dump_unsat_core_tptp             false
% 2.52/1.08  --bmc1_dump_file                        -
% 2.52/1.08  --bmc1_ucm_expand_uc_limit              128
% 2.52/1.08  --bmc1_ucm_n_expand_iterations          6
% 2.52/1.08  --bmc1_ucm_extend_mode                  1
% 2.52/1.08  --bmc1_ucm_init_mode                    2
% 2.52/1.08  --bmc1_ucm_cone_mode                    none
% 2.52/1.08  --bmc1_ucm_reduced_relation_type        0
% 2.52/1.08  --bmc1_ucm_relax_model                  4
% 2.52/1.08  --bmc1_ucm_full_tr_after_sat            true
% 2.52/1.08  --bmc1_ucm_expand_neg_assumptions       false
% 2.52/1.08  --bmc1_ucm_layered_model                none
% 2.52/1.08  --bmc1_ucm_max_lemma_size               10
% 2.52/1.08  
% 2.52/1.08  ------ AIG Options
% 2.52/1.08  
% 2.52/1.08  --aig_mode                              false
% 2.52/1.08  
% 2.52/1.08  ------ Instantiation Options
% 2.52/1.08  
% 2.52/1.08  --instantiation_flag                    true
% 2.52/1.08  --inst_sos_flag                         false
% 2.52/1.08  --inst_sos_phase                        true
% 2.52/1.08  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.52/1.08  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.52/1.08  --inst_lit_sel_side                     none
% 2.52/1.08  --inst_solver_per_active                1400
% 2.52/1.08  --inst_solver_calls_frac                1.
% 2.52/1.08  --inst_passive_queue_type               priority_queues
% 2.52/1.08  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.52/1.08  --inst_passive_queues_freq              [25;2]
% 2.52/1.08  --inst_dismatching                      true
% 2.52/1.08  --inst_eager_unprocessed_to_passive     true
% 2.52/1.08  --inst_prop_sim_given                   true
% 2.52/1.08  --inst_prop_sim_new                     false
% 2.52/1.08  --inst_subs_new                         false
% 2.52/1.08  --inst_eq_res_simp                      false
% 2.52/1.08  --inst_subs_given                       false
% 2.52/1.08  --inst_orphan_elimination               true
% 2.52/1.08  --inst_learning_loop_flag               true
% 2.52/1.08  --inst_learning_start                   3000
% 2.52/1.08  --inst_learning_factor                  2
% 2.52/1.08  --inst_start_prop_sim_after_learn       3
% 2.52/1.08  --inst_sel_renew                        solver
% 2.52/1.08  --inst_lit_activity_flag                true
% 2.52/1.08  --inst_restr_to_given                   false
% 2.52/1.08  --inst_activity_threshold               500
% 2.52/1.08  --inst_out_proof                        true
% 2.52/1.08  
% 2.52/1.08  ------ Resolution Options
% 2.52/1.08  
% 2.52/1.08  --resolution_flag                       false
% 2.52/1.08  --res_lit_sel                           adaptive
% 2.52/1.08  --res_lit_sel_side                      none
% 2.52/1.08  --res_ordering                          kbo
% 2.52/1.08  --res_to_prop_solver                    active
% 2.52/1.08  --res_prop_simpl_new                    false
% 2.52/1.08  --res_prop_simpl_given                  true
% 2.52/1.08  --res_passive_queue_type                priority_queues
% 2.52/1.08  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.52/1.08  --res_passive_queues_freq               [15;5]
% 2.52/1.08  --res_forward_subs                      full
% 2.52/1.08  --res_backward_subs                     full
% 2.52/1.08  --res_forward_subs_resolution           true
% 2.52/1.08  --res_backward_subs_resolution          true
% 2.52/1.08  --res_orphan_elimination                true
% 2.52/1.08  --res_time_limit                        2.
% 2.52/1.08  --res_out_proof                         true
% 2.52/1.08  
% 2.52/1.08  ------ Superposition Options
% 2.52/1.08  
% 2.52/1.08  --superposition_flag                    true
% 2.52/1.08  --sup_passive_queue_type                priority_queues
% 2.52/1.08  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.52/1.08  --sup_passive_queues_freq               [8;1;4]
% 2.52/1.08  --demod_completeness_check              fast
% 2.52/1.08  --demod_use_ground                      true
% 2.52/1.08  --sup_to_prop_solver                    passive
% 2.52/1.08  --sup_prop_simpl_new                    true
% 2.52/1.08  --sup_prop_simpl_given                  true
% 2.52/1.08  --sup_fun_splitting                     false
% 2.52/1.08  --sup_smt_interval                      50000
% 2.52/1.08  
% 2.52/1.08  ------ Superposition Simplification Setup
% 2.52/1.08  
% 2.52/1.08  --sup_indices_passive                   []
% 2.52/1.08  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.08  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.08  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.08  --sup_full_triv                         [TrivRules;PropSubs]
% 2.52/1.08  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.08  --sup_full_bw                           [BwDemod]
% 2.52/1.08  --sup_immed_triv                        [TrivRules]
% 2.52/1.08  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.52/1.08  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.08  --sup_immed_bw_main                     []
% 2.52/1.08  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.08  --sup_input_triv                        [Unflattening;TrivRules]
% 2.52/1.08  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.08  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.08  
% 2.52/1.08  ------ Combination Options
% 2.52/1.08  
% 2.52/1.08  --comb_res_mult                         3
% 2.52/1.08  --comb_sup_mult                         2
% 2.52/1.08  --comb_inst_mult                        10
% 2.52/1.08  
% 2.52/1.08  ------ Debug Options
% 2.52/1.08  
% 2.52/1.08  --dbg_backtrace                         false
% 2.52/1.08  --dbg_dump_prop_clauses                 false
% 2.52/1.08  --dbg_dump_prop_clauses_file            -
% 2.52/1.08  --dbg_out_stat                          false
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  ------ Proving...
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  % SZS status Theorem for theBenchmark.p
% 2.52/1.08  
% 2.52/1.08  % SZS output start CNFRefutation for theBenchmark.p
% 2.52/1.08  
% 2.52/1.08  fof(f7,conjecture,(
% 2.52/1.08    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(X0)) => ((r1_xboole_0(X3,X2) & r1_tarski(X1,X2)) => r1_tarski(X1,k3_subset_1(X0,X3))))))),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f8,negated_conjecture,(
% 2.52/1.08    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(X0)) => ((r1_xboole_0(X3,X2) & r1_tarski(X1,X2)) => r1_tarski(X1,k3_subset_1(X0,X3))))))),
% 2.52/1.08    inference(negated_conjecture,[],[f7])).
% 2.52/1.08  
% 2.52/1.08  fof(f14,plain,(
% 2.52/1.08    ? [X0,X1] : (? [X2] : (? [X3] : ((~r1_tarski(X1,k3_subset_1(X0,X3)) & (r1_xboole_0(X3,X2) & r1_tarski(X1,X2))) & m1_subset_1(X3,k1_zfmisc_1(X0))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(ennf_transformation,[],[f8])).
% 2.52/1.08  
% 2.52/1.08  fof(f15,plain,(
% 2.52/1.08    ? [X0,X1] : (? [X2] : (? [X3] : (~r1_tarski(X1,k3_subset_1(X0,X3)) & r1_xboole_0(X3,X2) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(X0))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(flattening,[],[f14])).
% 2.52/1.08  
% 2.52/1.08  fof(f22,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (? [X3] : (~r1_tarski(X1,k3_subset_1(X0,X3)) & r1_xboole_0(X3,X2) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(X0))) => (~r1_tarski(X1,k3_subset_1(X0,sK3)) & r1_xboole_0(sK3,X2) & r1_tarski(X1,X2) & m1_subset_1(sK3,k1_zfmisc_1(X0)))) )),
% 2.52/1.08    introduced(choice_axiom,[])).
% 2.52/1.08  
% 2.52/1.08  fof(f21,plain,(
% 2.52/1.08    ( ! [X0,X1] : (? [X2] : (? [X3] : (~r1_tarski(X1,k3_subset_1(X0,X3)) & r1_xboole_0(X3,X2) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(X0))) & m1_subset_1(X2,k1_zfmisc_1(X0))) => (? [X3] : (~r1_tarski(X1,k3_subset_1(X0,X3)) & r1_xboole_0(X3,sK2) & r1_tarski(X1,sK2) & m1_subset_1(X3,k1_zfmisc_1(X0))) & m1_subset_1(sK2,k1_zfmisc_1(X0)))) )),
% 2.52/1.08    introduced(choice_axiom,[])).
% 2.52/1.08  
% 2.52/1.08  fof(f20,plain,(
% 2.52/1.08    ? [X0,X1] : (? [X2] : (? [X3] : (~r1_tarski(X1,k3_subset_1(X0,X3)) & r1_xboole_0(X3,X2) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(X0))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (? [X2] : (? [X3] : (~r1_tarski(sK1,k3_subset_1(sK0,X3)) & r1_xboole_0(X3,X2) & r1_tarski(sK1,X2) & m1_subset_1(X3,k1_zfmisc_1(sK0))) & m1_subset_1(X2,k1_zfmisc_1(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(sK0)))),
% 2.52/1.08    introduced(choice_axiom,[])).
% 2.52/1.08  
% 2.52/1.08  fof(f23,plain,(
% 2.52/1.08    ((~r1_tarski(sK1,k3_subset_1(sK0,sK3)) & r1_xboole_0(sK3,sK2) & r1_tarski(sK1,sK2) & m1_subset_1(sK3,k1_zfmisc_1(sK0))) & m1_subset_1(sK2,k1_zfmisc_1(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 2.52/1.08    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f15,f22,f21,f20])).
% 2.52/1.08  
% 2.52/1.08  fof(f38,plain,(
% 2.52/1.08    r1_tarski(sK1,sK2)),
% 2.52/1.08    inference(cnf_transformation,[],[f23])).
% 2.52/1.08  
% 2.52/1.08  fof(f37,plain,(
% 2.52/1.08    m1_subset_1(sK3,k1_zfmisc_1(sK0))),
% 2.52/1.08    inference(cnf_transformation,[],[f23])).
% 2.52/1.08  
% 2.52/1.08  fof(f5,axiom,(
% 2.52/1.08    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,X2) <=> r1_tarski(X1,k3_subset_1(X0,X2)))))),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f12,plain,(
% 2.52/1.08    ! [X0,X1] : (! [X2] : ((r1_xboole_0(X1,X2) <=> r1_tarski(X1,k3_subset_1(X0,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(ennf_transformation,[],[f5])).
% 2.52/1.08  
% 2.52/1.08  fof(f18,plain,(
% 2.52/1.08    ! [X0,X1] : (! [X2] : (((r1_xboole_0(X1,X2) | ~r1_tarski(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,k3_subset_1(X0,X2)) | ~r1_xboole_0(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(nnf_transformation,[],[f12])).
% 2.52/1.08  
% 2.52/1.08  fof(f31,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_tarski(X1,k3_subset_1(X0,X2)) | ~r1_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f18])).
% 2.52/1.08  
% 2.52/1.08  fof(f3,axiom,(
% 2.52/1.08    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f10,plain,(
% 2.52/1.08    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(ennf_transformation,[],[f3])).
% 2.52/1.08  
% 2.52/1.08  fof(f28,plain,(
% 2.52/1.08    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f10])).
% 2.52/1.08  
% 2.52/1.08  fof(f36,plain,(
% 2.52/1.08    m1_subset_1(sK2,k1_zfmisc_1(sK0))),
% 2.52/1.08    inference(cnf_transformation,[],[f23])).
% 2.52/1.08  
% 2.52/1.08  fof(f6,axiom,(
% 2.52/1.08    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,k3_subset_1(X0,X2)) <=> r1_tarski(X1,X2))))),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f13,plain,(
% 2.52/1.08    ! [X0,X1] : (! [X2] : ((r1_xboole_0(X1,k3_subset_1(X0,X2)) <=> r1_tarski(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(ennf_transformation,[],[f6])).
% 2.52/1.08  
% 2.52/1.08  fof(f19,plain,(
% 2.52/1.08    ! [X0,X1] : (! [X2] : (((r1_xboole_0(X1,k3_subset_1(X0,X2)) | ~r1_tarski(X1,X2)) & (r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2)))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(nnf_transformation,[],[f13])).
% 2.52/1.08  
% 2.52/1.08  fof(f34,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_xboole_0(X1,k3_subset_1(X0,X2)) | ~r1_tarski(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f19])).
% 2.52/1.08  
% 2.52/1.08  fof(f2,axiom,(
% 2.52/1.08    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f16,plain,(
% 2.52/1.08    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 2.52/1.08    inference(nnf_transformation,[],[f2])).
% 2.52/1.08  
% 2.52/1.08  fof(f26,plain,(
% 2.52/1.08    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 2.52/1.08    inference(cnf_transformation,[],[f16])).
% 2.52/1.08  
% 2.52/1.08  fof(f39,plain,(
% 2.52/1.08    r1_xboole_0(sK3,sK2)),
% 2.52/1.08    inference(cnf_transformation,[],[f23])).
% 2.52/1.08  
% 2.52/1.08  fof(f32,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_xboole_0(X1,X2) | ~r1_tarski(X1,k3_subset_1(X0,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f18])).
% 2.52/1.08  
% 2.52/1.08  fof(f4,axiom,(
% 2.52/1.08    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_tarski(X1,X2) <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)))))),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f11,plain,(
% 2.52/1.08    ! [X0,X1] : (! [X2] : ((r1_tarski(X1,X2) <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(ennf_transformation,[],[f4])).
% 2.52/1.08  
% 2.52/1.08  fof(f17,plain,(
% 2.52/1.08    ! [X0,X1] : (! [X2] : (((r1_tarski(X1,X2) | ~r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))) & (r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~r1_tarski(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.52/1.08    inference(nnf_transformation,[],[f11])).
% 2.52/1.08  
% 2.52/1.08  fof(f29,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~r1_tarski(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f17])).
% 2.52/1.08  
% 2.52/1.08  fof(f30,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_tarski(X1,X2) | ~r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f17])).
% 2.52/1.08  
% 2.52/1.08  fof(f33,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f19])).
% 2.52/1.08  
% 2.52/1.08  fof(f1,axiom,(
% 2.52/1.08    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 2.52/1.08    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.52/1.08  
% 2.52/1.08  fof(f9,plain,(
% 2.52/1.08    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) | ~r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 2.52/1.08    inference(ennf_transformation,[],[f1])).
% 2.52/1.08  
% 2.52/1.08  fof(f25,plain,(
% 2.52/1.08    ( ! [X2,X0,X1] : (r1_xboole_0(X0,X2) | ~r1_tarski(X0,k4_xboole_0(X1,X2))) )),
% 2.52/1.08    inference(cnf_transformation,[],[f9])).
% 2.52/1.08  
% 2.52/1.08  fof(f27,plain,(
% 2.52/1.08    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) )),
% 2.52/1.08    inference(cnf_transformation,[],[f16])).
% 2.52/1.08  
% 2.52/1.08  fof(f40,plain,(
% 2.52/1.08    ~r1_tarski(sK1,k3_subset_1(sK0,sK3))),
% 2.52/1.08    inference(cnf_transformation,[],[f23])).
% 2.52/1.08  
% 2.52/1.08  fof(f35,plain,(
% 2.52/1.08    m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 2.52/1.08    inference(cnf_transformation,[],[f23])).
% 2.52/1.08  
% 2.52/1.08  cnf(c_13,negated_conjecture,
% 2.52/1.08      ( r1_tarski(sK1,sK2) ),
% 2.52/1.08      inference(cnf_transformation,[],[f38]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_895,plain,
% 2.52/1.08      ( r1_tarski(sK1,sK2) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_14,negated_conjecture,
% 2.52/1.08      ( m1_subset_1(sK3,k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f37]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_894,plain,
% 2.52/1.08      ( m1_subset_1(sK3,k1_zfmisc_1(sK0)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_8,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | r1_tarski(X0,k3_subset_1(X1,X2))
% 2.52/1.08      | ~ r1_xboole_0(X0,X2) ),
% 2.52/1.08      inference(cnf_transformation,[],[f31]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_900,plain,
% 2.52/1.08      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | r1_tarski(X0,k3_subset_1(X1,X2)) = iProver_top
% 2.52/1.08      | r1_xboole_0(X0,X2) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_4,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f28]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_904,plain,
% 2.52/1.08      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_15,negated_conjecture,
% 2.52/1.08      ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f36]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_893,plain,
% 2.52/1.08      ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_9,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ r1_tarski(X0,X2)
% 2.52/1.08      | r1_xboole_0(X0,k3_subset_1(X1,X2)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f34]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_899,plain,
% 2.52/1.08      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | r1_tarski(X0,X2) != iProver_top
% 2.52/1.08      | r1_xboole_0(X0,k3_subset_1(X1,X2)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3,plain,
% 2.52/1.08      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0 ),
% 2.52/1.08      inference(cnf_transformation,[],[f26]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_905,plain,
% 2.52/1.08      ( k4_xboole_0(X0,X1) = X0 | r1_xboole_0(X0,X1) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1692,plain,
% 2.52/1.08      ( k4_xboole_0(X0,k3_subset_1(X1,X2)) = X0
% 2.52/1.08      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | r1_tarski(X0,X2) != iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_899,c_905]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1992,plain,
% 2.52/1.08      ( k4_xboole_0(sK2,k3_subset_1(sK0,X0)) = sK2
% 2.52/1.08      | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(sK2,X0) != iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_893,c_1692]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2119,plain,
% 2.52/1.08      ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
% 2.52/1.08      | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(sK2,k3_subset_1(sK0,X0)) != iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_904,c_1992]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2833,plain,
% 2.52/1.08      ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
% 2.52/1.08      | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_xboole_0(sK2,X0) != iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_900,c_2119]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_18,plain,
% 2.52/1.08      ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3639,plain,
% 2.52/1.08      ( m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
% 2.52/1.08      | r1_xboole_0(sK2,X0) != iProver_top ),
% 2.52/1.08      inference(global_propositional_subsumption,
% 2.52/1.08                [status(thm)],
% 2.52/1.08                [c_2833,c_18]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3640,plain,
% 2.52/1.08      ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,X0))) = sK2
% 2.52/1.08      | m1_subset_1(X0,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_xboole_0(sK2,X0) != iProver_top ),
% 2.52/1.08      inference(renaming,[status(thm)],[c_3639]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3649,plain,
% 2.52/1.08      ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = sK2
% 2.52/1.08      | r1_xboole_0(sK2,sK3) != iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_894,c_3640]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_19,plain,
% 2.52/1.08      ( m1_subset_1(sK3,k1_zfmisc_1(sK0)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_12,negated_conjecture,
% 2.52/1.08      ( r1_xboole_0(sK3,sK2) ),
% 2.52/1.08      inference(cnf_transformation,[],[f39]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_414,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | r1_tarski(X0,k3_subset_1(X1,X2))
% 2.52/1.08      | sK2 != X2
% 2.52/1.08      | sK3 != X0 ),
% 2.52/1.08      inference(resolution_lifted,[status(thm)],[c_8,c_12]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_415,plain,
% 2.52/1.08      ( ~ m1_subset_1(sK2,k1_zfmisc_1(X0))
% 2.52/1.08      | ~ m1_subset_1(sK3,k1_zfmisc_1(X0))
% 2.52/1.08      | r1_tarski(sK3,k3_subset_1(X0,sK2)) ),
% 2.52/1.08      inference(unflattening,[status(thm)],[c_414]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_416,plain,
% 2.52/1.08      ( m1_subset_1(sK2,k1_zfmisc_1(X0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK3,k1_zfmisc_1(X0)) != iProver_top
% 2.52/1.08      | r1_tarski(sK3,k3_subset_1(X0,sK2)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_415]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_418,plain,
% 2.52/1.08      ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(sK3,k3_subset_1(sK0,sK2)) = iProver_top ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_416]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1033,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK3,k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_4]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1034,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) = iProver_top
% 2.52/1.08      | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1033]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1036,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_4]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1037,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) = iProver_top
% 2.52/1.08      | m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1036]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1135,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_4]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1136,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0)) = iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1135]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1163,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_4]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1164,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0)) = iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1163]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_7,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ r1_tarski(X0,k3_subset_1(X1,X2))
% 2.52/1.08      | r1_xboole_0(X0,X2) ),
% 2.52/1.08      inference(cnf_transformation,[],[f32]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1072,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ r1_tarski(sK2,k3_subset_1(sK0,X0))
% 2.52/1.08      | r1_xboole_0(sK2,X0) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_7]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1226,plain,
% 2.52/1.08      ( ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK3,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ r1_tarski(sK2,k3_subset_1(sK0,sK3))
% 2.52/1.08      | r1_xboole_0(sK2,sK3) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_1072]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1227,plain,
% 2.52/1.08      ( m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(sK2,k3_subset_1(sK0,sK3)) != iProver_top
% 2.52/1.08      | r1_xboole_0(sK2,sK3) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1226]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_6,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ r1_tarski(X0,X2)
% 2.52/1.08      | r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f29]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1260,plain,
% 2.52/1.08      ( ~ m1_subset_1(k3_subset_1(X0,sK2),k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(sK3,k1_zfmisc_1(X1))
% 2.52/1.08      | r1_tarski(k3_subset_1(X1,k3_subset_1(X0,sK2)),k3_subset_1(X1,sK3))
% 2.52/1.08      | ~ r1_tarski(sK3,k3_subset_1(X0,sK2)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_6]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1266,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(X0,sK2),k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK3,k1_zfmisc_1(X1)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(X1,k3_subset_1(X0,sK2)),k3_subset_1(X1,sK3)) = iProver_top
% 2.52/1.08      | r1_tarski(sK3,k3_subset_1(X0,sK2)) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1260]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1268,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK3,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k3_subset_1(sK0,sK3)) = iProver_top
% 2.52/1.08      | r1_tarski(sK3,k3_subset_1(sK0,sK2)) != iProver_top ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_1266]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_5,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | r1_tarski(X0,X2)
% 2.52/1.08      | ~ r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f30]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1115,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ r1_tarski(k3_subset_1(sK0,X0),k3_subset_1(sK0,sK2))
% 2.52/1.08      | r1_tarski(sK2,X0) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_5]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1449,plain,
% 2.52/1.08      ( ~ m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK2,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2))
% 2.52/1.08      | r1_tarski(sK2,k3_subset_1(sK0,sK3)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_1115]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1450,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK2,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2)) != iProver_top
% 2.52/1.08      | r1_tarski(sK2,k3_subset_1(sK0,sK3)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1449]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2516,plain,
% 2.52/1.08      ( ~ m1_subset_1(k3_subset_1(X0,k3_subset_1(X1,sK2)),k1_zfmisc_1(X2))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(X0,sK3),k1_zfmisc_1(X2))
% 2.52/1.08      | ~ r1_tarski(k3_subset_1(X0,k3_subset_1(X1,sK2)),k3_subset_1(X0,sK3))
% 2.52/1.08      | r1_tarski(k3_subset_1(X2,k3_subset_1(X0,sK3)),k3_subset_1(X2,k3_subset_1(X0,k3_subset_1(X1,sK2)))) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_6]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2522,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(X0,k3_subset_1(X1,sK2)),k1_zfmisc_1(X2)) != iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(X0,sK3),k1_zfmisc_1(X2)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(X0,k3_subset_1(X1,sK2)),k3_subset_1(X0,sK3)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(X2,k3_subset_1(X0,sK3)),k3_subset_1(X2,k3_subset_1(X0,k3_subset_1(X1,sK2)))) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_2516]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2524,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k3_subset_1(sK0,sK3)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,k3_subset_1(sK0,sK2)))) = iProver_top ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_2522]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_10,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.52/1.08      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.08      | r1_tarski(X0,X2)
% 2.52/1.08      | ~ r1_xboole_0(X0,k3_subset_1(X1,X2)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f33]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1526,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),X0)
% 2.52/1.08      | ~ r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,X0)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_10]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2932,plain,
% 2.52/1.08      ( ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0))
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2))
% 2.52/1.08      | ~ r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_1526]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2933,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(sK0,sK2),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,sK2)) = iProver_top
% 2.52/1.08      | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_2932]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1527,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,X0))
% 2.52/1.08      | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),X0) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_7]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2977,plain,
% 2.52/1.08      ( ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,k3_subset_1(sK0,sK2))))
% 2.52/1.08      | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_1527]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2978,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK2)),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,k3_subset_1(sK0,sK2)))) != iProver_top
% 2.52/1.08      | r1_xboole_0(k3_subset_1(sK0,k3_subset_1(sK0,sK3)),k3_subset_1(sK0,k3_subset_1(sK0,sK2))) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_2977]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3677,plain,
% 2.52/1.08      ( k4_xboole_0(sK2,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = sK2 ),
% 2.52/1.08      inference(global_propositional_subsumption,
% 2.52/1.08                [status(thm)],
% 2.52/1.08                [c_3649,c_18,c_19,c_418,c_1034,c_1037,c_1136,c_1164,
% 2.52/1.08                 c_1227,c_1268,c_1450,c_2524,c_2933,c_2978]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_0,plain,
% 2.52/1.08      ( ~ r1_tarski(X0,k4_xboole_0(X1,X2)) | r1_xboole_0(X0,X2) ),
% 2.52/1.08      inference(cnf_transformation,[],[f25]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_908,plain,
% 2.52/1.08      ( r1_tarski(X0,k4_xboole_0(X1,X2)) != iProver_top
% 2.52/1.08      | r1_xboole_0(X0,X2) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3680,plain,
% 2.52/1.08      ( r1_tarski(X0,sK2) != iProver_top
% 2.52/1.08      | r1_xboole_0(X0,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_3677,c_908]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3749,plain,
% 2.52/1.08      ( k4_xboole_0(X0,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = X0
% 2.52/1.08      | r1_tarski(X0,sK2) != iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_3680,c_905]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3831,plain,
% 2.52/1.08      ( k4_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = sK1 ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_895,c_3749]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_2,plain,
% 2.52/1.08      ( r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0 ),
% 2.52/1.08      inference(cnf_transformation,[],[f27]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_906,plain,
% 2.52/1.08      ( k4_xboole_0(X0,X1) != X0 | r1_xboole_0(X0,X1) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_3879,plain,
% 2.52/1.08      ( r1_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) = iProver_top ),
% 2.52/1.08      inference(superposition,[status(thm)],[c_3831,c_906]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1101,plain,
% 2.52/1.08      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK1,k1_zfmisc_1(sK0))
% 2.52/1.08      | r1_tarski(sK1,X0)
% 2.52/1.08      | ~ r1_xboole_0(sK1,k3_subset_1(sK0,X0)) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_10]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1333,plain,
% 2.52/1.08      ( ~ m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0))
% 2.52/1.08      | ~ m1_subset_1(sK1,k1_zfmisc_1(sK0))
% 2.52/1.08      | r1_tarski(sK1,k3_subset_1(sK0,sK3))
% 2.52/1.08      | ~ r1_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) ),
% 2.52/1.08      inference(instantiation,[status(thm)],[c_1101]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_1334,plain,
% 2.52/1.08      ( m1_subset_1(k3_subset_1(sK0,sK3),k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | m1_subset_1(sK1,k1_zfmisc_1(sK0)) != iProver_top
% 2.52/1.08      | r1_tarski(sK1,k3_subset_1(sK0,sK3)) = iProver_top
% 2.52/1.08      | r1_xboole_0(sK1,k3_subset_1(sK0,k3_subset_1(sK0,sK3))) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_1333]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_11,negated_conjecture,
% 2.52/1.08      ( ~ r1_tarski(sK1,k3_subset_1(sK0,sK3)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f40]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_22,plain,
% 2.52/1.08      ( r1_tarski(sK1,k3_subset_1(sK0,sK3)) != iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_16,negated_conjecture,
% 2.52/1.08      ( m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
% 2.52/1.08      inference(cnf_transformation,[],[f35]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(c_17,plain,
% 2.52/1.08      ( m1_subset_1(sK1,k1_zfmisc_1(sK0)) = iProver_top ),
% 2.52/1.08      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.52/1.08  
% 2.52/1.08  cnf(contradiction,plain,
% 2.52/1.08      ( $false ),
% 2.52/1.08      inference(minisat,
% 2.52/1.08                [status(thm)],
% 2.52/1.08                [c_3879,c_1334,c_1034,c_22,c_19,c_17]) ).
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  % SZS output end CNFRefutation for theBenchmark.p
% 2.52/1.08  
% 2.52/1.08  ------                               Statistics
% 2.52/1.08  
% 2.52/1.08  ------ General
% 2.52/1.08  
% 2.52/1.08  abstr_ref_over_cycles:                  0
% 2.52/1.08  abstr_ref_under_cycles:                 0
% 2.52/1.08  gc_basic_clause_elim:                   0
% 2.52/1.08  forced_gc_time:                         0
% 2.52/1.08  parsing_time:                           0.01
% 2.52/1.08  unif_index_cands_time:                  0.
% 2.52/1.08  unif_index_add_time:                    0.
% 2.52/1.08  orderings_time:                         0.
% 2.52/1.08  out_proof_time:                         0.008
% 2.52/1.08  total_time:                             0.149
% 2.52/1.08  num_of_symbols:                         41
% 2.52/1.08  num_of_terms:                           3275
% 2.52/1.08  
% 2.52/1.08  ------ Preprocessing
% 2.52/1.08  
% 2.52/1.08  num_of_splits:                          0
% 2.52/1.08  num_of_split_atoms:                     0
% 2.52/1.08  num_of_reused_defs:                     0
% 2.52/1.08  num_eq_ax_congr_red:                    4
% 2.52/1.08  num_of_sem_filtered_clauses:            1
% 2.52/1.08  num_of_subtypes:                        0
% 2.52/1.08  monotx_restored_types:                  0
% 2.52/1.08  sat_num_of_epr_types:                   0
% 2.52/1.08  sat_num_of_non_cyclic_types:            0
% 2.52/1.08  sat_guarded_non_collapsed_types:        0
% 2.52/1.08  num_pure_diseq_elim:                    0
% 2.52/1.08  simp_replaced_by:                       0
% 2.52/1.08  res_preprocessed:                       66
% 2.52/1.08  prep_upred:                             0
% 2.52/1.08  prep_unflattend:                        21
% 2.52/1.08  smt_new_axioms:                         0
% 2.52/1.08  pred_elim_cands:                        3
% 2.52/1.08  pred_elim:                              0
% 2.52/1.08  pred_elim_cl:                           0
% 2.52/1.08  pred_elim_cycles:                       1
% 2.52/1.08  merged_defs:                            6
% 2.52/1.08  merged_defs_ncl:                        0
% 2.52/1.08  bin_hyper_res:                          6
% 2.52/1.08  prep_cycles:                            3
% 2.52/1.08  pred_elim_time:                         0.007
% 2.52/1.08  splitting_time:                         0.
% 2.52/1.08  sem_filter_time:                        0.
% 2.52/1.08  monotx_time:                            0.001
% 2.52/1.08  subtype_inf_time:                       0.
% 2.52/1.08  
% 2.52/1.08  ------ Problem properties
% 2.52/1.08  
% 2.52/1.08  clauses:                                17
% 2.52/1.08  conjectures:                            6
% 2.52/1.08  epr:                                    2
% 2.52/1.08  horn:                                   17
% 2.52/1.08  ground:                                 6
% 2.52/1.08  unary:                                  6
% 2.52/1.08  binary:                                 5
% 2.52/1.08  lits:                                   40
% 2.52/1.08  lits_eq:                                2
% 2.52/1.08  fd_pure:                                0
% 2.52/1.08  fd_pseudo:                              0
% 2.52/1.08  fd_cond:                                0
% 2.52/1.08  fd_pseudo_cond:                         0
% 2.52/1.08  ac_symbols:                             0
% 2.52/1.08  
% 2.52/1.08  ------ Propositional Solver
% 2.52/1.08  
% 2.52/1.08  prop_solver_calls:                      22
% 2.52/1.08  prop_fast_solver_calls:                 547
% 2.52/1.08  smt_solver_calls:                       0
% 2.52/1.08  smt_fast_solver_calls:                  0
% 2.52/1.08  prop_num_of_clauses:                    1503
% 2.52/1.08  prop_preprocess_simplified:             4163
% 2.52/1.08  prop_fo_subsumed:                       11
% 2.52/1.08  prop_solver_time:                       0.
% 2.52/1.08  smt_solver_time:                        0.
% 2.52/1.08  smt_fast_solver_time:                   0.
% 2.52/1.08  prop_fast_solver_time:                  0.
% 2.52/1.08  prop_unsat_core_time:                   0.
% 2.52/1.08  
% 2.52/1.08  ------ QBF
% 2.52/1.08  
% 2.52/1.08  qbf_q_res:                              0
% 2.52/1.08  qbf_num_tautologies:                    0
% 2.52/1.08  qbf_prep_cycles:                        0
% 2.52/1.08  
% 2.52/1.08  ------ BMC1
% 2.52/1.08  
% 2.52/1.08  bmc1_current_bound:                     -1
% 2.52/1.08  bmc1_last_solved_bound:                 -1
% 2.52/1.08  bmc1_unsat_core_size:                   -1
% 2.52/1.08  bmc1_unsat_core_parents_size:           -1
% 2.52/1.08  bmc1_merge_next_fun:                    0
% 2.52/1.08  bmc1_unsat_core_clauses_time:           0.
% 2.52/1.08  
% 2.52/1.08  ------ Instantiation
% 2.52/1.08  
% 2.52/1.08  inst_num_of_clauses:                    503
% 2.52/1.08  inst_num_in_passive:                    149
% 2.52/1.08  inst_num_in_active:                     307
% 2.52/1.08  inst_num_in_unprocessed:                47
% 2.52/1.08  inst_num_of_loops:                      310
% 2.52/1.08  inst_num_of_learning_restarts:          0
% 2.52/1.08  inst_num_moves_active_passive:          2
% 2.52/1.08  inst_lit_activity:                      0
% 2.52/1.08  inst_lit_activity_moves:                0
% 2.52/1.08  inst_num_tautologies:                   0
% 2.52/1.08  inst_num_prop_implied:                  0
% 2.52/1.08  inst_num_existing_simplified:           0
% 2.52/1.08  inst_num_eq_res_simplified:             0
% 2.52/1.08  inst_num_child_elim:                    0
% 2.52/1.08  inst_num_of_dismatching_blockings:      15
% 2.52/1.08  inst_num_of_non_proper_insts:           372
% 2.52/1.08  inst_num_of_duplicates:                 0
% 2.52/1.08  inst_inst_num_from_inst_to_res:         0
% 2.52/1.08  inst_dismatching_checking_time:         0.
% 2.52/1.08  
% 2.52/1.08  ------ Resolution
% 2.52/1.08  
% 2.52/1.08  res_num_of_clauses:                     0
% 2.52/1.08  res_num_in_passive:                     0
% 2.52/1.08  res_num_in_active:                      0
% 2.52/1.08  res_num_of_loops:                       69
% 2.52/1.08  res_forward_subset_subsumed:            11
% 2.52/1.08  res_backward_subset_subsumed:           0
% 2.52/1.08  res_forward_subsumed:                   0
% 2.52/1.08  res_backward_subsumed:                  0
% 2.52/1.08  res_forward_subsumption_resolution:     0
% 2.52/1.08  res_backward_subsumption_resolution:    0
% 2.52/1.08  res_clause_to_clause_subsumption:       199
% 2.52/1.08  res_orphan_elimination:                 0
% 2.52/1.08  res_tautology_del:                      22
% 2.52/1.08  res_num_eq_res_simplified:              0
% 2.52/1.08  res_num_sel_changes:                    0
% 2.52/1.08  res_moves_from_active_to_pass:          0
% 2.52/1.08  
% 2.52/1.08  ------ Superposition
% 2.52/1.08  
% 2.52/1.08  sup_time_total:                         0.
% 2.52/1.08  sup_time_generating:                    0.
% 2.52/1.08  sup_time_sim_full:                      0.
% 2.52/1.08  sup_time_sim_immed:                     0.
% 2.52/1.08  
% 2.52/1.08  sup_num_of_clauses:                     79
% 2.52/1.08  sup_num_in_active:                      61
% 2.52/1.08  sup_num_in_passive:                     18
% 2.52/1.08  sup_num_of_loops:                       60
% 2.52/1.08  sup_fw_superposition:                   46
% 2.52/1.08  sup_bw_superposition:                   32
% 2.52/1.08  sup_immediate_simplified:               4
% 2.52/1.08  sup_given_eliminated:                   0
% 2.52/1.08  comparisons_done:                       0
% 2.52/1.08  comparisons_avoided:                    0
% 2.52/1.08  
% 2.52/1.08  ------ Simplifications
% 2.52/1.08  
% 2.52/1.08  
% 2.52/1.08  sim_fw_subset_subsumed:                 4
% 2.52/1.08  sim_bw_subset_subsumed:                 0
% 2.52/1.08  sim_fw_subsumed:                        0
% 2.52/1.08  sim_bw_subsumed:                        0
% 2.52/1.08  sim_fw_subsumption_res:                 1
% 2.52/1.08  sim_bw_subsumption_res:                 0
% 2.52/1.08  sim_tautology_del:                      8
% 2.52/1.08  sim_eq_tautology_del:                   0
% 2.52/1.08  sim_eq_res_simp:                        0
% 2.52/1.08  sim_fw_demodulated:                     0
% 2.52/1.08  sim_bw_demodulated:                     0
% 2.52/1.08  sim_light_normalised:                   0
% 2.52/1.08  sim_joinable_taut:                      0
% 2.52/1.08  sim_joinable_simp:                      0
% 2.52/1.08  sim_ac_normalised:                      0
% 2.52/1.08  sim_smt_subsumption:                    0
% 2.52/1.08  
%------------------------------------------------------------------------------
