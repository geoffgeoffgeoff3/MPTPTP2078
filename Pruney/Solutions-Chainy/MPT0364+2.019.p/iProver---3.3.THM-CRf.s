%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:40:43 EST 2020

% Result     : Theorem 1.98s
% Output     : CNFRefutation 1.98s
% Verified   : 
% Statistics : Number of formulae       :  103 ( 385 expanded)
%              Number of clauses        :   64 ( 148 expanded)
%              Number of leaves         :   10 (  77 expanded)
%              Depth                    :   17
%              Number of atoms          :  283 (1456 expanded)
%              Number of equality atoms :   81 ( 183 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f12])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
      | ~ r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f7,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_xboole_0(X1,k3_subset_1(X0,X2))
          <=> r1_tarski(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(X0))
           => ( r1_xboole_0(X1,k3_subset_1(X0,X2))
            <=> r1_tarski(X1,X2) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f16,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( r1_xboole_0(X1,k3_subset_1(X0,X2))
          <~> r1_tarski(X1,X2) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f22,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X1,X2)
            | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & ( r1_tarski(X1,X2)
            | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f23,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X1,X2)
            | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & ( r1_tarski(X1,X2)
            | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f22])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X1,X2)
            | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & ( r1_tarski(X1,X2)
            | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
     => ( ( ~ r1_tarski(X1,sK3)
          | ~ r1_xboole_0(X1,k3_subset_1(X0,sK3)) )
        & ( r1_tarski(X1,sK3)
          | r1_xboole_0(X1,k3_subset_1(X0,sK3)) )
        & m1_subset_1(sK3,k1_zfmisc_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ( ~ r1_tarski(X1,X2)
              | ~ r1_xboole_0(X1,k3_subset_1(X0,X2)) )
            & ( r1_tarski(X1,X2)
              | r1_xboole_0(X1,k3_subset_1(X0,X2)) )
            & m1_subset_1(X2,k1_zfmisc_1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ? [X2] :
          ( ( ~ r1_tarski(sK2,X2)
            | ~ r1_xboole_0(sK2,k3_subset_1(sK1,X2)) )
          & ( r1_tarski(sK2,X2)
            | r1_xboole_0(sK2,k3_subset_1(sK1,X2)) )
          & m1_subset_1(X2,k1_zfmisc_1(sK1)) )
      & m1_subset_1(sK2,k1_zfmisc_1(sK1)) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ( ~ r1_tarski(sK2,sK3)
      | ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) )
    & ( r1_tarski(sK2,sK3)
      | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) )
    & m1_subset_1(sK3,k1_zfmisc_1(sK1))
    & m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f23,f25,f24])).

fof(f37,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f38,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_tarski(X1,X2)
          <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r1_tarski(X1,X2)
          <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r1_tarski(X1,X2)
              | ~ r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) )
            & ( r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
              | ~ r1_tarski(X1,X2) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X1,X2)
      | ~ r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f39,plain,
    ( r1_tarski(sK2,sK3)
    | r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
    inference(cnf_transformation,[],[f26])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))
      | ~ r1_tarski(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) )
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f40,plain,
    ( ~ r1_tarski(sK2,sK3)
    | ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) ),
    inference(cnf_transformation,[],[f26])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f17])).

fof(f19,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f11])).

cnf(c_6,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r1_tarski(X0,X2)
    | r1_tarski(X0,k4_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_197,plain,
    ( ~ r1_xboole_0(X0_39,X1_39)
    | ~ r1_tarski(X0_39,X2_39)
    | r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_598,plain,
    ( r1_xboole_0(X0_39,X1_39) != iProver_top
    | r1_tarski(X0_39,X2_39) != iProver_top
    | r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_197])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_190,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_605,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_190])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_196,plain,
    ( ~ m1_subset_1(X0_39,k1_zfmisc_1(X1_39))
    | k3_subset_1(X1_39,X0_39) = k4_xboole_0(X1_39,X0_39) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_599,plain,
    ( k3_subset_1(X0_39,X1_39) = k4_xboole_0(X0_39,X1_39)
    | m1_subset_1(X1_39,k1_zfmisc_1(X0_39)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_196])).

cnf(c_931,plain,
    ( k3_subset_1(sK1,sK2) = k4_xboole_0(sK1,sK2) ),
    inference(superposition,[status(thm)],[c_605,c_599])).

cnf(c_12,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_191,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_604,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_191])).

cnf(c_930,plain,
    ( k3_subset_1(sK1,sK3) = k4_xboole_0(sK1,sK3) ),
    inference(superposition,[status(thm)],[c_604,c_599])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | r1_tarski(X0,X2)
    | ~ r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_195,plain,
    ( ~ m1_subset_1(X0_39,k1_zfmisc_1(X1_39))
    | ~ m1_subset_1(X2_39,k1_zfmisc_1(X1_39))
    | r1_tarski(X0_39,X2_39)
    | ~ r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_600,plain,
    ( m1_subset_1(X0_39,k1_zfmisc_1(X1_39)) != iProver_top
    | m1_subset_1(X2_39,k1_zfmisc_1(X1_39)) != iProver_top
    | r1_tarski(X0_39,X2_39) = iProver_top
    | r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_195])).

cnf(c_1329,plain,
    ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(sK1)) != iProver_top
    | r1_tarski(X0_39,sK3) = iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) != iProver_top ),
    inference(superposition,[status(thm)],[c_930,c_600])).

cnf(c_15,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1567,plain,
    ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
    | r1_tarski(X0_39,sK3) = iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1329,c_15])).

cnf(c_1577,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) != iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) != iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_931,c_1567])).

cnf(c_14,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1642,plain,
    ( r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) != iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1577,c_14])).

cnf(c_1648,plain,
    ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) != iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),sK1) != iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_598,c_1642])).

cnf(c_11,negated_conjecture,
    ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3))
    | r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_192,negated_conjecture,
    ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3))
    | r1_tarski(sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_603,plain,
    ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) = iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_192])).

cnf(c_3,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_200,plain,
    ( ~ r1_xboole_0(X0_39,X1_39)
    | r1_xboole_0(X1_39,X0_39) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_595,plain,
    ( r1_xboole_0(X0_39,X1_39) != iProver_top
    | r1_xboole_0(X1_39,X0_39) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_200])).

cnf(c_823,plain,
    ( r1_xboole_0(k3_subset_1(sK1,sK3),sK2) = iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_603,c_595])).

cnf(c_979,plain,
    ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) = iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(demodulation,[status(thm)],[c_930,c_823])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X2)
    | r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_194,plain,
    ( ~ m1_subset_1(X0_39,k1_zfmisc_1(X1_39))
    | ~ m1_subset_1(X2_39,k1_zfmisc_1(X1_39))
    | ~ r1_tarski(X0_39,X2_39)
    | r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_601,plain,
    ( m1_subset_1(X0_39,k1_zfmisc_1(X1_39)) != iProver_top
    | m1_subset_1(X2_39,k1_zfmisc_1(X1_39)) != iProver_top
    | r1_tarski(X0_39,X2_39) != iProver_top
    | r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_194])).

cnf(c_1463,plain,
    ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(sK1)) != iProver_top
    | r1_tarski(X0_39,sK3) != iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) = iProver_top ),
    inference(superposition,[status(thm)],[c_930,c_601])).

cnf(c_1809,plain,
    ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
    | r1_tarski(X0_39,sK3) != iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1463,c_15])).

cnf(c_1819,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) != iProver_top
    | r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) = iProver_top
    | r1_tarski(sK2,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_931,c_1809])).

cnf(c_1896,plain,
    ( r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) = iProver_top
    | r1_tarski(sK2,sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1819,c_14])).

cnf(c_4,plain,
    ( r1_xboole_0(X0,X1)
    | ~ r1_tarski(X0,k4_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_199,plain,
    ( r1_xboole_0(X0_39,X1_39)
    | ~ r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_596,plain,
    ( r1_xboole_0(X0_39,X1_39) = iProver_top
    | r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_199])).

cnf(c_1902,plain,
    ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) = iProver_top
    | r1_tarski(sK2,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1896,c_596])).

cnf(c_10,negated_conjecture,
    ( ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3))
    | ~ r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_193,negated_conjecture,
    ( ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3))
    | ~ r1_tarski(sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_602,plain,
    ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) != iProver_top
    | r1_tarski(sK2,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_193])).

cnf(c_981,plain,
    ( r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) != iProver_top
    | r1_tarski(sK2,sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_930,c_602])).

cnf(c_1404,plain,
    ( r1_xboole_0(X0_39,k4_xboole_0(sK1,sK3))
    | ~ r1_xboole_0(k4_xboole_0(sK1,sK3),X0_39) ),
    inference(instantiation,[status(thm)],[c_200])).

cnf(c_1405,plain,
    ( r1_xboole_0(X0_39,k4_xboole_0(sK1,sK3)) = iProver_top
    | r1_xboole_0(k4_xboole_0(sK1,sK3),X0_39) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1404])).

cnf(c_1407,plain,
    ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) != iProver_top
    | r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1405])).

cnf(c_2370,plain,
    ( r1_tarski(sK2,sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1902,c_981,c_1407])).

cnf(c_3232,plain,
    ( r1_tarski(k4_xboole_0(sK1,sK3),sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1648,c_979,c_981,c_1407,c_1902])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_202,plain,
    ( r2_hidden(sK0(X0_39,X1_39),X0_39)
    | r1_tarski(X0_39,X1_39) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_593,plain,
    ( r2_hidden(sK0(X0_39,X1_39),X0_39) = iProver_top
    | r1_tarski(X0_39,X1_39) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_202])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_203,plain,
    ( ~ r2_hidden(sK0(X0_39,X1_39),X1_39)
    | r1_tarski(X0_39,X1_39) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_592,plain,
    ( r2_hidden(sK0(X0_39,X1_39),X1_39) != iProver_top
    | r1_tarski(X0_39,X1_39) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_203])).

cnf(c_890,plain,
    ( r1_tarski(X0_39,X0_39) = iProver_top ),
    inference(superposition,[status(thm)],[c_593,c_592])).

cnf(c_5,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_198,plain,
    ( r1_tarski(X0_39,X1_39)
    | ~ r1_tarski(X0_39,k4_xboole_0(X1_39,X2_39)) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_597,plain,
    ( r1_tarski(X0_39,X1_39) = iProver_top
    | r1_tarski(X0_39,k4_xboole_0(X1_39,X2_39)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_198])).

cnf(c_1147,plain,
    ( r1_tarski(k4_xboole_0(X0_39,X1_39),X0_39) = iProver_top ),
    inference(superposition,[status(thm)],[c_890,c_597])).

cnf(c_3237,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3232,c_1147])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:10:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.98/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.98/1.00  
% 1.98/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.98/1.00  
% 1.98/1.00  ------  iProver source info
% 1.98/1.00  
% 1.98/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.98/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.98/1.00  git: non_committed_changes: false
% 1.98/1.00  git: last_make_outside_of_git: false
% 1.98/1.00  
% 1.98/1.00  ------ 
% 1.98/1.00  
% 1.98/1.00  ------ Input Options
% 1.98/1.00  
% 1.98/1.00  --out_options                           all
% 1.98/1.00  --tptp_safe_out                         true
% 1.98/1.00  --problem_path                          ""
% 1.98/1.00  --include_path                          ""
% 1.98/1.00  --clausifier                            res/vclausify_rel
% 1.98/1.00  --clausifier_options                    --mode clausify
% 1.98/1.00  --stdin                                 false
% 1.98/1.00  --stats_out                             all
% 1.98/1.00  
% 1.98/1.00  ------ General Options
% 1.98/1.00  
% 1.98/1.00  --fof                                   false
% 1.98/1.00  --time_out_real                         305.
% 1.98/1.00  --time_out_virtual                      -1.
% 1.98/1.00  --symbol_type_check                     false
% 1.98/1.00  --clausify_out                          false
% 1.98/1.00  --sig_cnt_out                           false
% 1.98/1.00  --trig_cnt_out                          false
% 1.98/1.00  --trig_cnt_out_tolerance                1.
% 1.98/1.00  --trig_cnt_out_sk_spl                   false
% 1.98/1.00  --abstr_cl_out                          false
% 1.98/1.00  
% 1.98/1.00  ------ Global Options
% 1.98/1.00  
% 1.98/1.00  --schedule                              default
% 1.98/1.00  --add_important_lit                     false
% 1.98/1.00  --prop_solver_per_cl                    1000
% 1.98/1.00  --min_unsat_core                        false
% 1.98/1.00  --soft_assumptions                      false
% 1.98/1.00  --soft_lemma_size                       3
% 1.98/1.00  --prop_impl_unit_size                   0
% 1.98/1.00  --prop_impl_unit                        []
% 1.98/1.00  --share_sel_clauses                     true
% 1.98/1.00  --reset_solvers                         false
% 1.98/1.00  --bc_imp_inh                            [conj_cone]
% 1.98/1.00  --conj_cone_tolerance                   3.
% 1.98/1.00  --extra_neg_conj                        none
% 1.98/1.00  --large_theory_mode                     true
% 1.98/1.00  --prolific_symb_bound                   200
% 1.98/1.00  --lt_threshold                          2000
% 1.98/1.00  --clause_weak_htbl                      true
% 1.98/1.00  --gc_record_bc_elim                     false
% 1.98/1.00  
% 1.98/1.00  ------ Preprocessing Options
% 1.98/1.00  
% 1.98/1.00  --preprocessing_flag                    true
% 1.98/1.00  --time_out_prep_mult                    0.1
% 1.98/1.00  --splitting_mode                        input
% 1.98/1.00  --splitting_grd                         true
% 1.98/1.00  --splitting_cvd                         false
% 1.98/1.00  --splitting_cvd_svl                     false
% 1.98/1.00  --splitting_nvd                         32
% 1.98/1.00  --sub_typing                            true
% 1.98/1.00  --prep_gs_sim                           true
% 1.98/1.00  --prep_unflatten                        true
% 1.98/1.00  --prep_res_sim                          true
% 1.98/1.00  --prep_upred                            true
% 1.98/1.00  --prep_sem_filter                       exhaustive
% 1.98/1.00  --prep_sem_filter_out                   false
% 1.98/1.00  --pred_elim                             true
% 1.98/1.00  --res_sim_input                         true
% 1.98/1.00  --eq_ax_congr_red                       true
% 1.98/1.00  --pure_diseq_elim                       true
% 1.98/1.00  --brand_transform                       false
% 1.98/1.00  --non_eq_to_eq                          false
% 1.98/1.00  --prep_def_merge                        true
% 1.98/1.00  --prep_def_merge_prop_impl              false
% 1.98/1.00  --prep_def_merge_mbd                    true
% 1.98/1.00  --prep_def_merge_tr_red                 false
% 1.98/1.00  --prep_def_merge_tr_cl                  false
% 1.98/1.00  --smt_preprocessing                     true
% 1.98/1.00  --smt_ac_axioms                         fast
% 1.98/1.00  --preprocessed_out                      false
% 1.98/1.00  --preprocessed_stats                    false
% 1.98/1.00  
% 1.98/1.00  ------ Abstraction refinement Options
% 1.98/1.00  
% 1.98/1.00  --abstr_ref                             []
% 1.98/1.00  --abstr_ref_prep                        false
% 1.98/1.00  --abstr_ref_until_sat                   false
% 1.98/1.00  --abstr_ref_sig_restrict                funpre
% 1.98/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.98/1.00  --abstr_ref_under                       []
% 1.98/1.00  
% 1.98/1.00  ------ SAT Options
% 1.98/1.00  
% 1.98/1.00  --sat_mode                              false
% 1.98/1.00  --sat_fm_restart_options                ""
% 1.98/1.00  --sat_gr_def                            false
% 1.98/1.00  --sat_epr_types                         true
% 1.98/1.00  --sat_non_cyclic_types                  false
% 1.98/1.00  --sat_finite_models                     false
% 1.98/1.00  --sat_fm_lemmas                         false
% 1.98/1.00  --sat_fm_prep                           false
% 1.98/1.01  --sat_fm_uc_incr                        true
% 1.98/1.01  --sat_out_model                         small
% 1.98/1.01  --sat_out_clauses                       false
% 1.98/1.01  
% 1.98/1.01  ------ QBF Options
% 1.98/1.01  
% 1.98/1.01  --qbf_mode                              false
% 1.98/1.01  --qbf_elim_univ                         false
% 1.98/1.01  --qbf_dom_inst                          none
% 1.98/1.01  --qbf_dom_pre_inst                      false
% 1.98/1.01  --qbf_sk_in                             false
% 1.98/1.01  --qbf_pred_elim                         true
% 1.98/1.01  --qbf_split                             512
% 1.98/1.01  
% 1.98/1.01  ------ BMC1 Options
% 1.98/1.01  
% 1.98/1.01  --bmc1_incremental                      false
% 1.98/1.01  --bmc1_axioms                           reachable_all
% 1.98/1.01  --bmc1_min_bound                        0
% 1.98/1.01  --bmc1_max_bound                        -1
% 1.98/1.01  --bmc1_max_bound_default                -1
% 1.98/1.01  --bmc1_symbol_reachability              true
% 1.98/1.01  --bmc1_property_lemmas                  false
% 1.98/1.01  --bmc1_k_induction                      false
% 1.98/1.01  --bmc1_non_equiv_states                 false
% 1.98/1.01  --bmc1_deadlock                         false
% 1.98/1.01  --bmc1_ucm                              false
% 1.98/1.01  --bmc1_add_unsat_core                   none
% 1.98/1.01  --bmc1_unsat_core_children              false
% 1.98/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.98/1.01  --bmc1_out_stat                         full
% 1.98/1.01  --bmc1_ground_init                      false
% 1.98/1.01  --bmc1_pre_inst_next_state              false
% 1.98/1.01  --bmc1_pre_inst_state                   false
% 1.98/1.01  --bmc1_pre_inst_reach_state             false
% 1.98/1.01  --bmc1_out_unsat_core                   false
% 1.98/1.01  --bmc1_aig_witness_out                  false
% 1.98/1.01  --bmc1_verbose                          false
% 1.98/1.01  --bmc1_dump_clauses_tptp                false
% 1.98/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.98/1.01  --bmc1_dump_file                        -
% 1.98/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.98/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.98/1.01  --bmc1_ucm_extend_mode                  1
% 1.98/1.01  --bmc1_ucm_init_mode                    2
% 1.98/1.01  --bmc1_ucm_cone_mode                    none
% 1.98/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.98/1.01  --bmc1_ucm_relax_model                  4
% 1.98/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.98/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.98/1.01  --bmc1_ucm_layered_model                none
% 1.98/1.01  --bmc1_ucm_max_lemma_size               10
% 1.98/1.01  
% 1.98/1.01  ------ AIG Options
% 1.98/1.01  
% 1.98/1.01  --aig_mode                              false
% 1.98/1.01  
% 1.98/1.01  ------ Instantiation Options
% 1.98/1.01  
% 1.98/1.01  --instantiation_flag                    true
% 1.98/1.01  --inst_sos_flag                         false
% 1.98/1.01  --inst_sos_phase                        true
% 1.98/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.98/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.98/1.01  --inst_lit_sel_side                     num_symb
% 1.98/1.01  --inst_solver_per_active                1400
% 1.98/1.01  --inst_solver_calls_frac                1.
% 1.98/1.01  --inst_passive_queue_type               priority_queues
% 1.98/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.98/1.01  --inst_passive_queues_freq              [25;2]
% 1.98/1.01  --inst_dismatching                      true
% 1.98/1.01  --inst_eager_unprocessed_to_passive     true
% 1.98/1.01  --inst_prop_sim_given                   true
% 1.98/1.01  --inst_prop_sim_new                     false
% 1.98/1.01  --inst_subs_new                         false
% 1.98/1.01  --inst_eq_res_simp                      false
% 1.98/1.01  --inst_subs_given                       false
% 1.98/1.01  --inst_orphan_elimination               true
% 1.98/1.01  --inst_learning_loop_flag               true
% 1.98/1.01  --inst_learning_start                   3000
% 1.98/1.01  --inst_learning_factor                  2
% 1.98/1.01  --inst_start_prop_sim_after_learn       3
% 1.98/1.01  --inst_sel_renew                        solver
% 1.98/1.01  --inst_lit_activity_flag                true
% 1.98/1.01  --inst_restr_to_given                   false
% 1.98/1.01  --inst_activity_threshold               500
% 1.98/1.01  --inst_out_proof                        true
% 1.98/1.01  
% 1.98/1.01  ------ Resolution Options
% 1.98/1.01  
% 1.98/1.01  --resolution_flag                       true
% 1.98/1.01  --res_lit_sel                           adaptive
% 1.98/1.01  --res_lit_sel_side                      none
% 1.98/1.01  --res_ordering                          kbo
% 1.98/1.01  --res_to_prop_solver                    active
% 1.98/1.01  --res_prop_simpl_new                    false
% 1.98/1.01  --res_prop_simpl_given                  true
% 1.98/1.01  --res_passive_queue_type                priority_queues
% 1.98/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.98/1.01  --res_passive_queues_freq               [15;5]
% 1.98/1.01  --res_forward_subs                      full
% 1.98/1.01  --res_backward_subs                     full
% 1.98/1.01  --res_forward_subs_resolution           true
% 1.98/1.01  --res_backward_subs_resolution          true
% 1.98/1.01  --res_orphan_elimination                true
% 1.98/1.01  --res_time_limit                        2.
% 1.98/1.01  --res_out_proof                         true
% 1.98/1.01  
% 1.98/1.01  ------ Superposition Options
% 1.98/1.01  
% 1.98/1.01  --superposition_flag                    true
% 1.98/1.01  --sup_passive_queue_type                priority_queues
% 1.98/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.98/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.98/1.01  --demod_completeness_check              fast
% 1.98/1.01  --demod_use_ground                      true
% 1.98/1.01  --sup_to_prop_solver                    passive
% 1.98/1.01  --sup_prop_simpl_new                    true
% 1.98/1.01  --sup_prop_simpl_given                  true
% 1.98/1.01  --sup_fun_splitting                     false
% 1.98/1.01  --sup_smt_interval                      50000
% 1.98/1.01  
% 1.98/1.01  ------ Superposition Simplification Setup
% 1.98/1.01  
% 1.98/1.01  --sup_indices_passive                   []
% 1.98/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.98/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.01  --sup_full_bw                           [BwDemod]
% 1.98/1.01  --sup_immed_triv                        [TrivRules]
% 1.98/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.98/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.01  --sup_immed_bw_main                     []
% 1.98/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.98/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.01  
% 1.98/1.01  ------ Combination Options
% 1.98/1.01  
% 1.98/1.01  --comb_res_mult                         3
% 1.98/1.01  --comb_sup_mult                         2
% 1.98/1.01  --comb_inst_mult                        10
% 1.98/1.01  
% 1.98/1.01  ------ Debug Options
% 1.98/1.01  
% 1.98/1.01  --dbg_backtrace                         false
% 1.98/1.01  --dbg_dump_prop_clauses                 false
% 1.98/1.01  --dbg_dump_prop_clauses_file            -
% 1.98/1.01  --dbg_out_stat                          false
% 1.98/1.01  ------ Parsing...
% 1.98/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.98/1.01  
% 1.98/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.98/1.01  
% 1.98/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.98/1.01  
% 1.98/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.98/1.01  ------ Proving...
% 1.98/1.01  ------ Problem Properties 
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  clauses                                 14
% 1.98/1.01  conjectures                             4
% 1.98/1.01  EPR                                     2
% 1.98/1.01  Horn                                    12
% 1.98/1.01  unary                                   2
% 1.98/1.01  binary                                  8
% 1.98/1.01  lits                                    32
% 1.98/1.01  lits eq                                 1
% 1.98/1.01  fd_pure                                 0
% 1.98/1.01  fd_pseudo                               0
% 1.98/1.01  fd_cond                                 0
% 1.98/1.01  fd_pseudo_cond                          0
% 1.98/1.01  AC symbols                              0
% 1.98/1.01  
% 1.98/1.01  ------ Schedule dynamic 5 is on 
% 1.98/1.01  
% 1.98/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  ------ 
% 1.98/1.01  Current options:
% 1.98/1.01  ------ 
% 1.98/1.01  
% 1.98/1.01  ------ Input Options
% 1.98/1.01  
% 1.98/1.01  --out_options                           all
% 1.98/1.01  --tptp_safe_out                         true
% 1.98/1.01  --problem_path                          ""
% 1.98/1.01  --include_path                          ""
% 1.98/1.01  --clausifier                            res/vclausify_rel
% 1.98/1.01  --clausifier_options                    --mode clausify
% 1.98/1.01  --stdin                                 false
% 1.98/1.01  --stats_out                             all
% 1.98/1.01  
% 1.98/1.01  ------ General Options
% 1.98/1.01  
% 1.98/1.01  --fof                                   false
% 1.98/1.01  --time_out_real                         305.
% 1.98/1.01  --time_out_virtual                      -1.
% 1.98/1.01  --symbol_type_check                     false
% 1.98/1.01  --clausify_out                          false
% 1.98/1.01  --sig_cnt_out                           false
% 1.98/1.01  --trig_cnt_out                          false
% 1.98/1.01  --trig_cnt_out_tolerance                1.
% 1.98/1.01  --trig_cnt_out_sk_spl                   false
% 1.98/1.01  --abstr_cl_out                          false
% 1.98/1.01  
% 1.98/1.01  ------ Global Options
% 1.98/1.01  
% 1.98/1.01  --schedule                              default
% 1.98/1.01  --add_important_lit                     false
% 1.98/1.01  --prop_solver_per_cl                    1000
% 1.98/1.01  --min_unsat_core                        false
% 1.98/1.01  --soft_assumptions                      false
% 1.98/1.01  --soft_lemma_size                       3
% 1.98/1.01  --prop_impl_unit_size                   0
% 1.98/1.01  --prop_impl_unit                        []
% 1.98/1.01  --share_sel_clauses                     true
% 1.98/1.01  --reset_solvers                         false
% 1.98/1.01  --bc_imp_inh                            [conj_cone]
% 1.98/1.01  --conj_cone_tolerance                   3.
% 1.98/1.01  --extra_neg_conj                        none
% 1.98/1.01  --large_theory_mode                     true
% 1.98/1.01  --prolific_symb_bound                   200
% 1.98/1.01  --lt_threshold                          2000
% 1.98/1.01  --clause_weak_htbl                      true
% 1.98/1.01  --gc_record_bc_elim                     false
% 1.98/1.01  
% 1.98/1.01  ------ Preprocessing Options
% 1.98/1.01  
% 1.98/1.01  --preprocessing_flag                    true
% 1.98/1.01  --time_out_prep_mult                    0.1
% 1.98/1.01  --splitting_mode                        input
% 1.98/1.01  --splitting_grd                         true
% 1.98/1.01  --splitting_cvd                         false
% 1.98/1.01  --splitting_cvd_svl                     false
% 1.98/1.01  --splitting_nvd                         32
% 1.98/1.01  --sub_typing                            true
% 1.98/1.01  --prep_gs_sim                           true
% 1.98/1.01  --prep_unflatten                        true
% 1.98/1.01  --prep_res_sim                          true
% 1.98/1.01  --prep_upred                            true
% 1.98/1.01  --prep_sem_filter                       exhaustive
% 1.98/1.01  --prep_sem_filter_out                   false
% 1.98/1.01  --pred_elim                             true
% 1.98/1.01  --res_sim_input                         true
% 1.98/1.01  --eq_ax_congr_red                       true
% 1.98/1.01  --pure_diseq_elim                       true
% 1.98/1.01  --brand_transform                       false
% 1.98/1.01  --non_eq_to_eq                          false
% 1.98/1.01  --prep_def_merge                        true
% 1.98/1.01  --prep_def_merge_prop_impl              false
% 1.98/1.01  --prep_def_merge_mbd                    true
% 1.98/1.01  --prep_def_merge_tr_red                 false
% 1.98/1.01  --prep_def_merge_tr_cl                  false
% 1.98/1.01  --smt_preprocessing                     true
% 1.98/1.01  --smt_ac_axioms                         fast
% 1.98/1.01  --preprocessed_out                      false
% 1.98/1.01  --preprocessed_stats                    false
% 1.98/1.01  
% 1.98/1.01  ------ Abstraction refinement Options
% 1.98/1.01  
% 1.98/1.01  --abstr_ref                             []
% 1.98/1.01  --abstr_ref_prep                        false
% 1.98/1.01  --abstr_ref_until_sat                   false
% 1.98/1.01  --abstr_ref_sig_restrict                funpre
% 1.98/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.98/1.01  --abstr_ref_under                       []
% 1.98/1.01  
% 1.98/1.01  ------ SAT Options
% 1.98/1.01  
% 1.98/1.01  --sat_mode                              false
% 1.98/1.01  --sat_fm_restart_options                ""
% 1.98/1.01  --sat_gr_def                            false
% 1.98/1.01  --sat_epr_types                         true
% 1.98/1.01  --sat_non_cyclic_types                  false
% 1.98/1.01  --sat_finite_models                     false
% 1.98/1.01  --sat_fm_lemmas                         false
% 1.98/1.01  --sat_fm_prep                           false
% 1.98/1.01  --sat_fm_uc_incr                        true
% 1.98/1.01  --sat_out_model                         small
% 1.98/1.01  --sat_out_clauses                       false
% 1.98/1.01  
% 1.98/1.01  ------ QBF Options
% 1.98/1.01  
% 1.98/1.01  --qbf_mode                              false
% 1.98/1.01  --qbf_elim_univ                         false
% 1.98/1.01  --qbf_dom_inst                          none
% 1.98/1.01  --qbf_dom_pre_inst                      false
% 1.98/1.01  --qbf_sk_in                             false
% 1.98/1.01  --qbf_pred_elim                         true
% 1.98/1.01  --qbf_split                             512
% 1.98/1.01  
% 1.98/1.01  ------ BMC1 Options
% 1.98/1.01  
% 1.98/1.01  --bmc1_incremental                      false
% 1.98/1.01  --bmc1_axioms                           reachable_all
% 1.98/1.01  --bmc1_min_bound                        0
% 1.98/1.01  --bmc1_max_bound                        -1
% 1.98/1.01  --bmc1_max_bound_default                -1
% 1.98/1.01  --bmc1_symbol_reachability              true
% 1.98/1.01  --bmc1_property_lemmas                  false
% 1.98/1.01  --bmc1_k_induction                      false
% 1.98/1.01  --bmc1_non_equiv_states                 false
% 1.98/1.01  --bmc1_deadlock                         false
% 1.98/1.01  --bmc1_ucm                              false
% 1.98/1.01  --bmc1_add_unsat_core                   none
% 1.98/1.01  --bmc1_unsat_core_children              false
% 1.98/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.98/1.01  --bmc1_out_stat                         full
% 1.98/1.01  --bmc1_ground_init                      false
% 1.98/1.01  --bmc1_pre_inst_next_state              false
% 1.98/1.01  --bmc1_pre_inst_state                   false
% 1.98/1.01  --bmc1_pre_inst_reach_state             false
% 1.98/1.01  --bmc1_out_unsat_core                   false
% 1.98/1.01  --bmc1_aig_witness_out                  false
% 1.98/1.01  --bmc1_verbose                          false
% 1.98/1.01  --bmc1_dump_clauses_tptp                false
% 1.98/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.98/1.01  --bmc1_dump_file                        -
% 1.98/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.98/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.98/1.01  --bmc1_ucm_extend_mode                  1
% 1.98/1.01  --bmc1_ucm_init_mode                    2
% 1.98/1.01  --bmc1_ucm_cone_mode                    none
% 1.98/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.98/1.01  --bmc1_ucm_relax_model                  4
% 1.98/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.98/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.98/1.01  --bmc1_ucm_layered_model                none
% 1.98/1.01  --bmc1_ucm_max_lemma_size               10
% 1.98/1.01  
% 1.98/1.01  ------ AIG Options
% 1.98/1.01  
% 1.98/1.01  --aig_mode                              false
% 1.98/1.01  
% 1.98/1.01  ------ Instantiation Options
% 1.98/1.01  
% 1.98/1.01  --instantiation_flag                    true
% 1.98/1.01  --inst_sos_flag                         false
% 1.98/1.01  --inst_sos_phase                        true
% 1.98/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.98/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.98/1.01  --inst_lit_sel_side                     none
% 1.98/1.01  --inst_solver_per_active                1400
% 1.98/1.01  --inst_solver_calls_frac                1.
% 1.98/1.01  --inst_passive_queue_type               priority_queues
% 1.98/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.98/1.01  --inst_passive_queues_freq              [25;2]
% 1.98/1.01  --inst_dismatching                      true
% 1.98/1.01  --inst_eager_unprocessed_to_passive     true
% 1.98/1.01  --inst_prop_sim_given                   true
% 1.98/1.01  --inst_prop_sim_new                     false
% 1.98/1.01  --inst_subs_new                         false
% 1.98/1.01  --inst_eq_res_simp                      false
% 1.98/1.01  --inst_subs_given                       false
% 1.98/1.01  --inst_orphan_elimination               true
% 1.98/1.01  --inst_learning_loop_flag               true
% 1.98/1.01  --inst_learning_start                   3000
% 1.98/1.01  --inst_learning_factor                  2
% 1.98/1.01  --inst_start_prop_sim_after_learn       3
% 1.98/1.01  --inst_sel_renew                        solver
% 1.98/1.01  --inst_lit_activity_flag                true
% 1.98/1.01  --inst_restr_to_given                   false
% 1.98/1.01  --inst_activity_threshold               500
% 1.98/1.01  --inst_out_proof                        true
% 1.98/1.01  
% 1.98/1.01  ------ Resolution Options
% 1.98/1.01  
% 1.98/1.01  --resolution_flag                       false
% 1.98/1.01  --res_lit_sel                           adaptive
% 1.98/1.01  --res_lit_sel_side                      none
% 1.98/1.01  --res_ordering                          kbo
% 1.98/1.01  --res_to_prop_solver                    active
% 1.98/1.01  --res_prop_simpl_new                    false
% 1.98/1.01  --res_prop_simpl_given                  true
% 1.98/1.01  --res_passive_queue_type                priority_queues
% 1.98/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.98/1.01  --res_passive_queues_freq               [15;5]
% 1.98/1.01  --res_forward_subs                      full
% 1.98/1.01  --res_backward_subs                     full
% 1.98/1.01  --res_forward_subs_resolution           true
% 1.98/1.01  --res_backward_subs_resolution          true
% 1.98/1.01  --res_orphan_elimination                true
% 1.98/1.01  --res_time_limit                        2.
% 1.98/1.01  --res_out_proof                         true
% 1.98/1.01  
% 1.98/1.01  ------ Superposition Options
% 1.98/1.01  
% 1.98/1.01  --superposition_flag                    true
% 1.98/1.01  --sup_passive_queue_type                priority_queues
% 1.98/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.98/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.98/1.01  --demod_completeness_check              fast
% 1.98/1.01  --demod_use_ground                      true
% 1.98/1.01  --sup_to_prop_solver                    passive
% 1.98/1.01  --sup_prop_simpl_new                    true
% 1.98/1.01  --sup_prop_simpl_given                  true
% 1.98/1.01  --sup_fun_splitting                     false
% 1.98/1.01  --sup_smt_interval                      50000
% 1.98/1.01  
% 1.98/1.01  ------ Superposition Simplification Setup
% 1.98/1.01  
% 1.98/1.01  --sup_indices_passive                   []
% 1.98/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.98/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.01  --sup_full_bw                           [BwDemod]
% 1.98/1.01  --sup_immed_triv                        [TrivRules]
% 1.98/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.98/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.01  --sup_immed_bw_main                     []
% 1.98/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.98/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.01  
% 1.98/1.01  ------ Combination Options
% 1.98/1.01  
% 1.98/1.01  --comb_res_mult                         3
% 1.98/1.01  --comb_sup_mult                         2
% 1.98/1.01  --comb_inst_mult                        10
% 1.98/1.01  
% 1.98/1.01  ------ Debug Options
% 1.98/1.01  
% 1.98/1.01  --dbg_backtrace                         false
% 1.98/1.01  --dbg_dump_prop_clauses                 false
% 1.98/1.01  --dbg_dump_prop_clauses_file            -
% 1.98/1.01  --dbg_out_stat                          false
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  ------ Proving...
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  % SZS status Theorem for theBenchmark.p
% 1.98/1.01  
% 1.98/1.01   Resolution empty clause
% 1.98/1.01  
% 1.98/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.98/1.01  
% 1.98/1.01  fof(f4,axiom,(
% 1.98/1.01    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f12,plain,(
% 1.98/1.01    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | (~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)))),
% 1.98/1.01    inference(ennf_transformation,[],[f4])).
% 1.98/1.01  
% 1.98/1.01  fof(f13,plain,(
% 1.98/1.01    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | ~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1))),
% 1.98/1.01    inference(flattening,[],[f12])).
% 1.98/1.01  
% 1.98/1.01  fof(f33,plain,(
% 1.98/1.01    ( ! [X2,X0,X1] : (r1_tarski(X0,k4_xboole_0(X1,X2)) | ~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)) )),
% 1.98/1.01    inference(cnf_transformation,[],[f13])).
% 1.98/1.01  
% 1.98/1.01  fof(f7,conjecture,(
% 1.98/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,k3_subset_1(X0,X2)) <=> r1_tarski(X1,X2))))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f8,negated_conjecture,(
% 1.98/1.01    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_xboole_0(X1,k3_subset_1(X0,X2)) <=> r1_tarski(X1,X2))))),
% 1.98/1.01    inference(negated_conjecture,[],[f7])).
% 1.98/1.01  
% 1.98/1.01  fof(f16,plain,(
% 1.98/1.01    ? [X0,X1] : (? [X2] : ((r1_xboole_0(X1,k3_subset_1(X0,X2)) <~> r1_tarski(X1,X2)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.98/1.01    inference(ennf_transformation,[],[f8])).
% 1.98/1.01  
% 1.98/1.01  fof(f22,plain,(
% 1.98/1.01    ? [X0,X1] : (? [X2] : (((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.98/1.01    inference(nnf_transformation,[],[f16])).
% 1.98/1.01  
% 1.98/1.01  fof(f23,plain,(
% 1.98/1.01    ? [X0,X1] : (? [X2] : ((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.98/1.01    inference(flattening,[],[f22])).
% 1.98/1.01  
% 1.98/1.01  fof(f25,plain,(
% 1.98/1.01    ( ! [X0,X1] : (? [X2] : ((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) => ((~r1_tarski(X1,sK3) | ~r1_xboole_0(X1,k3_subset_1(X0,sK3))) & (r1_tarski(X1,sK3) | r1_xboole_0(X1,k3_subset_1(X0,sK3))) & m1_subset_1(sK3,k1_zfmisc_1(X0)))) )),
% 1.98/1.01    introduced(choice_axiom,[])).
% 1.98/1.01  
% 1.98/1.01  fof(f24,plain,(
% 1.98/1.01    ? [X0,X1] : (? [X2] : ((~r1_tarski(X1,X2) | ~r1_xboole_0(X1,k3_subset_1(X0,X2))) & (r1_tarski(X1,X2) | r1_xboole_0(X1,k3_subset_1(X0,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (? [X2] : ((~r1_tarski(sK2,X2) | ~r1_xboole_0(sK2,k3_subset_1(sK1,X2))) & (r1_tarski(sK2,X2) | r1_xboole_0(sK2,k3_subset_1(sK1,X2))) & m1_subset_1(X2,k1_zfmisc_1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(sK1)))),
% 1.98/1.01    introduced(choice_axiom,[])).
% 1.98/1.01  
% 1.98/1.01  fof(f26,plain,(
% 1.98/1.01    ((~r1_tarski(sK2,sK3) | ~r1_xboole_0(sK2,k3_subset_1(sK1,sK3))) & (r1_tarski(sK2,sK3) | r1_xboole_0(sK2,k3_subset_1(sK1,sK3))) & m1_subset_1(sK3,k1_zfmisc_1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(sK1))),
% 1.98/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f23,f25,f24])).
% 1.98/1.01  
% 1.98/1.01  fof(f37,plain,(
% 1.98/1.01    m1_subset_1(sK2,k1_zfmisc_1(sK1))),
% 1.98/1.01    inference(cnf_transformation,[],[f26])).
% 1.98/1.01  
% 1.98/1.01  fof(f5,axiom,(
% 1.98/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f14,plain,(
% 1.98/1.01    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.98/1.01    inference(ennf_transformation,[],[f5])).
% 1.98/1.01  
% 1.98/1.01  fof(f34,plain,(
% 1.98/1.01    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.98/1.01    inference(cnf_transformation,[],[f14])).
% 1.98/1.01  
% 1.98/1.01  fof(f38,plain,(
% 1.98/1.01    m1_subset_1(sK3,k1_zfmisc_1(sK1))),
% 1.98/1.01    inference(cnf_transformation,[],[f26])).
% 1.98/1.01  
% 1.98/1.01  fof(f6,axiom,(
% 1.98/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_tarski(X1,X2) <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)))))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f15,plain,(
% 1.98/1.01    ! [X0,X1] : (! [X2] : ((r1_tarski(X1,X2) <=> r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.98/1.01    inference(ennf_transformation,[],[f6])).
% 1.98/1.01  
% 1.98/1.01  fof(f21,plain,(
% 1.98/1.01    ! [X0,X1] : (! [X2] : (((r1_tarski(X1,X2) | ~r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1))) & (r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~r1_tarski(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.98/1.01    inference(nnf_transformation,[],[f15])).
% 1.98/1.01  
% 1.98/1.01  fof(f36,plain,(
% 1.98/1.01    ( ! [X2,X0,X1] : (r1_tarski(X1,X2) | ~r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.98/1.01    inference(cnf_transformation,[],[f21])).
% 1.98/1.01  
% 1.98/1.01  fof(f39,plain,(
% 1.98/1.01    r1_tarski(sK2,sK3) | r1_xboole_0(sK2,k3_subset_1(sK1,sK3))),
% 1.98/1.01    inference(cnf_transformation,[],[f26])).
% 1.98/1.01  
% 1.98/1.01  fof(f2,axiom,(
% 1.98/1.01    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f10,plain,(
% 1.98/1.01    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 1.98/1.01    inference(ennf_transformation,[],[f2])).
% 1.98/1.01  
% 1.98/1.01  fof(f30,plain,(
% 1.98/1.01    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 1.98/1.01    inference(cnf_transformation,[],[f10])).
% 1.98/1.01  
% 1.98/1.01  fof(f35,plain,(
% 1.98/1.01    ( ! [X2,X0,X1] : (r1_tarski(k3_subset_1(X0,X2),k3_subset_1(X0,X1)) | ~r1_tarski(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.98/1.01    inference(cnf_transformation,[],[f21])).
% 1.98/1.01  
% 1.98/1.01  fof(f3,axiom,(
% 1.98/1.01    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f11,plain,(
% 1.98/1.01    ! [X0,X1,X2] : ((r1_xboole_0(X0,X2) & r1_tarski(X0,X1)) | ~r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.98/1.01    inference(ennf_transformation,[],[f3])).
% 1.98/1.01  
% 1.98/1.01  fof(f32,plain,(
% 1.98/1.01    ( ! [X2,X0,X1] : (r1_xboole_0(X0,X2) | ~r1_tarski(X0,k4_xboole_0(X1,X2))) )),
% 1.98/1.01    inference(cnf_transformation,[],[f11])).
% 1.98/1.01  
% 1.98/1.01  fof(f40,plain,(
% 1.98/1.01    ~r1_tarski(sK2,sK3) | ~r1_xboole_0(sK2,k3_subset_1(sK1,sK3))),
% 1.98/1.01    inference(cnf_transformation,[],[f26])).
% 1.98/1.01  
% 1.98/1.01  fof(f1,axiom,(
% 1.98/1.01    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.98/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.01  
% 1.98/1.01  fof(f9,plain,(
% 1.98/1.01    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.98/1.01    inference(ennf_transformation,[],[f1])).
% 1.98/1.01  
% 1.98/1.01  fof(f17,plain,(
% 1.98/1.01    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.98/1.01    inference(nnf_transformation,[],[f9])).
% 1.98/1.01  
% 1.98/1.01  fof(f18,plain,(
% 1.98/1.01    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.98/1.01    inference(rectify,[],[f17])).
% 1.98/1.01  
% 1.98/1.01  fof(f19,plain,(
% 1.98/1.01    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.98/1.01    introduced(choice_axiom,[])).
% 1.98/1.01  
% 1.98/1.01  fof(f20,plain,(
% 1.98/1.01    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.98/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).
% 1.98/1.01  
% 1.98/1.01  fof(f28,plain,(
% 1.98/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 1.98/1.01    inference(cnf_transformation,[],[f20])).
% 1.98/1.01  
% 1.98/1.01  fof(f29,plain,(
% 1.98/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 1.98/1.01    inference(cnf_transformation,[],[f20])).
% 1.98/1.01  
% 1.98/1.01  fof(f31,plain,(
% 1.98/1.01    ( ! [X2,X0,X1] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k4_xboole_0(X1,X2))) )),
% 1.98/1.01    inference(cnf_transformation,[],[f11])).
% 1.98/1.01  
% 1.98/1.01  cnf(c_6,plain,
% 1.98/1.01      ( ~ r1_xboole_0(X0,X1)
% 1.98/1.01      | ~ r1_tarski(X0,X2)
% 1.98/1.01      | r1_tarski(X0,k4_xboole_0(X2,X1)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f33]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_197,plain,
% 1.98/1.01      ( ~ r1_xboole_0(X0_39,X1_39)
% 1.98/1.01      | ~ r1_tarski(X0_39,X2_39)
% 1.98/1.01      | r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_6]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_598,plain,
% 1.98/1.01      ( r1_xboole_0(X0_39,X1_39) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,X2_39) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_197]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_13,negated_conjecture,
% 1.98/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f37]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_190,negated_conjecture,
% 1.98/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_13]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_605,plain,
% 1.98/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_190]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_7,plain,
% 1.98/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.98/1.01      | k3_subset_1(X1,X0) = k4_xboole_0(X1,X0) ),
% 1.98/1.01      inference(cnf_transformation,[],[f34]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_196,plain,
% 1.98/1.01      ( ~ m1_subset_1(X0_39,k1_zfmisc_1(X1_39))
% 1.98/1.01      | k3_subset_1(X1_39,X0_39) = k4_xboole_0(X1_39,X0_39) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_7]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_599,plain,
% 1.98/1.01      ( k3_subset_1(X0_39,X1_39) = k4_xboole_0(X0_39,X1_39)
% 1.98/1.01      | m1_subset_1(X1_39,k1_zfmisc_1(X0_39)) != iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_196]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_931,plain,
% 1.98/1.01      ( k3_subset_1(sK1,sK2) = k4_xboole_0(sK1,sK2) ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_605,c_599]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_12,negated_conjecture,
% 1.98/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f38]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_191,negated_conjecture,
% 1.98/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_12]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_604,plain,
% 1.98/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_191]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_930,plain,
% 1.98/1.01      ( k3_subset_1(sK1,sK3) = k4_xboole_0(sK1,sK3) ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_604,c_599]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_8,plain,
% 1.98/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.98/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 1.98/1.01      | r1_tarski(X0,X2)
% 1.98/1.01      | ~ r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f36]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_195,plain,
% 1.98/1.01      ( ~ m1_subset_1(X0_39,k1_zfmisc_1(X1_39))
% 1.98/1.01      | ~ m1_subset_1(X2_39,k1_zfmisc_1(X1_39))
% 1.98/1.01      | r1_tarski(X0_39,X2_39)
% 1.98/1.01      | ~ r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_8]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_600,plain,
% 1.98/1.01      ( m1_subset_1(X0_39,k1_zfmisc_1(X1_39)) != iProver_top
% 1.98/1.01      | m1_subset_1(X2_39,k1_zfmisc_1(X1_39)) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,X2_39) = iProver_top
% 1.98/1.01      | r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) != iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_195]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1329,plain,
% 1.98/1.01      ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | m1_subset_1(sK3,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,sK3) = iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) != iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_930,c_600]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_15,plain,
% 1.98/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(sK1)) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1567,plain,
% 1.98/1.01      ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,sK3) = iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) != iProver_top ),
% 1.98/1.01      inference(global_propositional_subsumption,[status(thm)],[c_1329,c_15]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1577,plain,
% 1.98/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) != iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_931,c_1567]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_14,plain,
% 1.98/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1642,plain,
% 1.98/1.01      ( r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) != iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.98/1.01      inference(global_propositional_subsumption,[status(thm)],[c_1577,c_14]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1648,plain,
% 1.98/1.01      ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) != iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),sK1) != iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_598,c_1642]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_11,negated_conjecture,
% 1.98/1.01      ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) | r1_tarski(sK2,sK3) ),
% 1.98/1.01      inference(cnf_transformation,[],[f39]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_192,negated_conjecture,
% 1.98/1.01      ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) | r1_tarski(sK2,sK3) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_11]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_603,plain,
% 1.98/1.01      ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) = iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_192]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_3,plain,
% 1.98/1.01      ( ~ r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0) ),
% 1.98/1.01      inference(cnf_transformation,[],[f30]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_200,plain,
% 1.98/1.01      ( ~ r1_xboole_0(X0_39,X1_39) | r1_xboole_0(X1_39,X0_39) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_3]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_595,plain,
% 1.98/1.01      ( r1_xboole_0(X0_39,X1_39) != iProver_top
% 1.98/1.01      | r1_xboole_0(X1_39,X0_39) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_200]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_823,plain,
% 1.98/1.01      ( r1_xboole_0(k3_subset_1(sK1,sK3),sK2) = iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_603,c_595]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_979,plain,
% 1.98/1.01      ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) = iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.98/1.01      inference(demodulation,[status(thm)],[c_930,c_823]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_9,plain,
% 1.98/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.98/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 1.98/1.01      | ~ r1_tarski(X0,X2)
% 1.98/1.01      | r1_tarski(k3_subset_1(X1,X2),k3_subset_1(X1,X0)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f35]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_194,plain,
% 1.98/1.01      ( ~ m1_subset_1(X0_39,k1_zfmisc_1(X1_39))
% 1.98/1.01      | ~ m1_subset_1(X2_39,k1_zfmisc_1(X1_39))
% 1.98/1.01      | ~ r1_tarski(X0_39,X2_39)
% 1.98/1.01      | r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_9]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_601,plain,
% 1.98/1.01      ( m1_subset_1(X0_39,k1_zfmisc_1(X1_39)) != iProver_top
% 1.98/1.01      | m1_subset_1(X2_39,k1_zfmisc_1(X1_39)) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,X2_39) != iProver_top
% 1.98/1.01      | r1_tarski(k3_subset_1(X1_39,X2_39),k3_subset_1(X1_39,X0_39)) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_194]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1463,plain,
% 1.98/1.01      ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | m1_subset_1(sK3,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,sK3) != iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) = iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_930,c_601]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1809,plain,
% 1.98/1.01      ( m1_subset_1(X0_39,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,sK3) != iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),k3_subset_1(sK1,X0_39)) = iProver_top ),
% 1.98/1.01      inference(global_propositional_subsumption,[status(thm)],[c_1463,c_15]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1819,plain,
% 1.98/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(sK1)) != iProver_top
% 1.98/1.01      | r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) = iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) != iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_931,c_1809]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1896,plain,
% 1.98/1.01      ( r1_tarski(k4_xboole_0(sK1,sK3),k4_xboole_0(sK1,sK2)) = iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) != iProver_top ),
% 1.98/1.01      inference(global_propositional_subsumption,[status(thm)],[c_1819,c_14]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_4,plain,
% 1.98/1.01      ( r1_xboole_0(X0,X1) | ~ r1_tarski(X0,k4_xboole_0(X2,X1)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f32]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_199,plain,
% 1.98/1.01      ( r1_xboole_0(X0_39,X1_39)
% 1.98/1.01      | ~ r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_4]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_596,plain,
% 1.98/1.01      ( r1_xboole_0(X0_39,X1_39) = iProver_top
% 1.98/1.01      | r1_tarski(X0_39,k4_xboole_0(X2_39,X1_39)) != iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_199]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1902,plain,
% 1.98/1.01      ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) = iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) != iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_1896,c_596]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_10,negated_conjecture,
% 1.98/1.01      ( ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) | ~ r1_tarski(sK2,sK3) ),
% 1.98/1.01      inference(cnf_transformation,[],[f40]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_193,negated_conjecture,
% 1.98/1.01      ( ~ r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) | ~ r1_tarski(sK2,sK3) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_10]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_602,plain,
% 1.98/1.01      ( r1_xboole_0(sK2,k3_subset_1(sK1,sK3)) != iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) != iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_193]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_981,plain,
% 1.98/1.01      ( r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) != iProver_top
% 1.98/1.01      | r1_tarski(sK2,sK3) != iProver_top ),
% 1.98/1.01      inference(demodulation,[status(thm)],[c_930,c_602]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1404,plain,
% 1.98/1.01      ( r1_xboole_0(X0_39,k4_xboole_0(sK1,sK3))
% 1.98/1.01      | ~ r1_xboole_0(k4_xboole_0(sK1,sK3),X0_39) ),
% 1.98/1.01      inference(instantiation,[status(thm)],[c_200]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1405,plain,
% 1.98/1.01      ( r1_xboole_0(X0_39,k4_xboole_0(sK1,sK3)) = iProver_top
% 1.98/1.01      | r1_xboole_0(k4_xboole_0(sK1,sK3),X0_39) != iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_1404]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1407,plain,
% 1.98/1.01      ( r1_xboole_0(k4_xboole_0(sK1,sK3),sK2) != iProver_top
% 1.98/1.01      | r1_xboole_0(sK2,k4_xboole_0(sK1,sK3)) = iProver_top ),
% 1.98/1.01      inference(instantiation,[status(thm)],[c_1405]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_2370,plain,
% 1.98/1.01      ( r1_tarski(sK2,sK3) != iProver_top ),
% 1.98/1.01      inference(global_propositional_subsumption,
% 1.98/1.01                [status(thm)],
% 1.98/1.01                [c_1902,c_981,c_1407]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_3232,plain,
% 1.98/1.01      ( r1_tarski(k4_xboole_0(sK1,sK3),sK1) != iProver_top ),
% 1.98/1.01      inference(global_propositional_subsumption,
% 1.98/1.01                [status(thm)],
% 1.98/1.01                [c_1648,c_979,c_981,c_1407,c_1902]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1,plain,
% 1.98/1.01      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 1.98/1.01      inference(cnf_transformation,[],[f28]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_202,plain,
% 1.98/1.01      ( r2_hidden(sK0(X0_39,X1_39),X0_39) | r1_tarski(X0_39,X1_39) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_1]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_593,plain,
% 1.98/1.01      ( r2_hidden(sK0(X0_39,X1_39),X0_39) = iProver_top
% 1.98/1.01      | r1_tarski(X0_39,X1_39) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_202]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_0,plain,
% 1.98/1.01      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 1.98/1.01      inference(cnf_transformation,[],[f29]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_203,plain,
% 1.98/1.01      ( ~ r2_hidden(sK0(X0_39,X1_39),X1_39) | r1_tarski(X0_39,X1_39) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_0]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_592,plain,
% 1.98/1.01      ( r2_hidden(sK0(X0_39,X1_39),X1_39) != iProver_top
% 1.98/1.01      | r1_tarski(X0_39,X1_39) = iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_203]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_890,plain,
% 1.98/1.01      ( r1_tarski(X0_39,X0_39) = iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_593,c_592]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_5,plain,
% 1.98/1.01      ( r1_tarski(X0,X1) | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ),
% 1.98/1.01      inference(cnf_transformation,[],[f31]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_198,plain,
% 1.98/1.01      ( r1_tarski(X0_39,X1_39) | ~ r1_tarski(X0_39,k4_xboole_0(X1_39,X2_39)) ),
% 1.98/1.01      inference(subtyping,[status(esa)],[c_5]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_597,plain,
% 1.98/1.01      ( r1_tarski(X0_39,X1_39) = iProver_top
% 1.98/1.01      | r1_tarski(X0_39,k4_xboole_0(X1_39,X2_39)) != iProver_top ),
% 1.98/1.01      inference(predicate_to_equality,[status(thm)],[c_198]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_1147,plain,
% 1.98/1.01      ( r1_tarski(k4_xboole_0(X0_39,X1_39),X0_39) = iProver_top ),
% 1.98/1.01      inference(superposition,[status(thm)],[c_890,c_597]) ).
% 1.98/1.01  
% 1.98/1.01  cnf(c_3237,plain,
% 1.98/1.01      ( $false ),
% 1.98/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_3232,c_1147]) ).
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.98/1.01  
% 1.98/1.01  ------                               Statistics
% 1.98/1.01  
% 1.98/1.01  ------ General
% 1.98/1.01  
% 1.98/1.01  abstr_ref_over_cycles:                  0
% 1.98/1.01  abstr_ref_under_cycles:                 0
% 1.98/1.01  gc_basic_clause_elim:                   0
% 1.98/1.01  forced_gc_time:                         0
% 1.98/1.01  parsing_time:                           0.01
% 1.98/1.01  unif_index_cands_time:                  0.
% 1.98/1.01  unif_index_add_time:                    0.
% 1.98/1.01  orderings_time:                         0.
% 1.98/1.01  out_proof_time:                         0.019
% 1.98/1.01  total_time:                             0.149
% 1.98/1.01  num_of_symbols:                         45
% 1.98/1.01  num_of_terms:                           2756
% 1.98/1.01  
% 1.98/1.01  ------ Preprocessing
% 1.98/1.01  
% 1.98/1.01  num_of_splits:                          0
% 1.98/1.01  num_of_split_atoms:                     0
% 1.98/1.01  num_of_reused_defs:                     0
% 1.98/1.01  num_eq_ax_congr_red:                    10
% 1.98/1.01  num_of_sem_filtered_clauses:            1
% 1.98/1.01  num_of_subtypes:                        3
% 1.98/1.01  monotx_restored_types:                  0
% 1.98/1.01  sat_num_of_epr_types:                   0
% 1.98/1.01  sat_num_of_non_cyclic_types:            0
% 1.98/1.01  sat_guarded_non_collapsed_types:        0
% 1.98/1.01  num_pure_diseq_elim:                    0
% 1.98/1.01  simp_replaced_by:                       0
% 1.98/1.01  res_preprocessed:                       63
% 1.98/1.01  prep_upred:                             0
% 1.98/1.01  prep_unflattend:                        0
% 1.98/1.01  smt_new_axioms:                         0
% 1.98/1.01  pred_elim_cands:                        4
% 1.98/1.01  pred_elim:                              0
% 1.98/1.01  pred_elim_cl:                           0
% 1.98/1.01  pred_elim_cycles:                       1
% 1.98/1.01  merged_defs:                            6
% 1.98/1.01  merged_defs_ncl:                        0
% 1.98/1.01  bin_hyper_res:                          6
% 1.98/1.01  prep_cycles:                            3
% 1.98/1.01  pred_elim_time:                         0.
% 1.98/1.01  splitting_time:                         0.
% 1.98/1.01  sem_filter_time:                        0.
% 1.98/1.01  monotx_time:                            0.
% 1.98/1.01  subtype_inf_time:                       0.
% 1.98/1.01  
% 1.98/1.01  ------ Problem properties
% 1.98/1.01  
% 1.98/1.01  clauses:                                14
% 1.98/1.01  conjectures:                            4
% 1.98/1.01  epr:                                    2
% 1.98/1.01  horn:                                   12
% 1.98/1.01  ground:                                 4
% 1.98/1.01  unary:                                  2
% 1.98/1.01  binary:                                 8
% 1.98/1.01  lits:                                   32
% 1.98/1.01  lits_eq:                                1
% 1.98/1.01  fd_pure:                                0
% 1.98/1.01  fd_pseudo:                              0
% 1.98/1.01  fd_cond:                                0
% 1.98/1.01  fd_pseudo_cond:                         0
% 1.98/1.01  ac_symbols:                             0
% 1.98/1.01  
% 1.98/1.01  ------ Propositional Solver
% 1.98/1.01  
% 1.98/1.01  prop_solver_calls:                      26
% 1.98/1.01  prop_fast_solver_calls:                 456
% 1.98/1.01  smt_solver_calls:                       0
% 1.98/1.01  smt_fast_solver_calls:                  0
% 1.98/1.01  prop_num_of_clauses:                    1167
% 1.98/1.01  prop_preprocess_simplified:             2994
% 1.98/1.01  prop_fo_subsumed:                       15
% 1.98/1.01  prop_solver_time:                       0.
% 1.98/1.01  smt_solver_time:                        0.
% 1.98/1.01  smt_fast_solver_time:                   0.
% 1.98/1.01  prop_fast_solver_time:                  0.
% 1.98/1.01  prop_unsat_core_time:                   0.
% 1.98/1.01  
% 1.98/1.01  ------ QBF
% 1.98/1.01  
% 1.98/1.01  qbf_q_res:                              0
% 1.98/1.01  qbf_num_tautologies:                    0
% 1.98/1.01  qbf_prep_cycles:                        0
% 1.98/1.01  
% 1.98/1.01  ------ BMC1
% 1.98/1.01  
% 1.98/1.01  bmc1_current_bound:                     -1
% 1.98/1.01  bmc1_last_solved_bound:                 -1
% 1.98/1.01  bmc1_unsat_core_size:                   -1
% 1.98/1.01  bmc1_unsat_core_parents_size:           -1
% 1.98/1.01  bmc1_merge_next_fun:                    0
% 1.98/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.98/1.01  
% 1.98/1.01  ------ Instantiation
% 1.98/1.01  
% 1.98/1.01  inst_num_of_clauses:                    287
% 1.98/1.01  inst_num_in_passive:                    42
% 1.98/1.01  inst_num_in_active:                     179
% 1.98/1.01  inst_num_in_unprocessed:                66
% 1.98/1.01  inst_num_of_loops:                      270
% 1.98/1.01  inst_num_of_learning_restarts:          0
% 1.98/1.01  inst_num_moves_active_passive:          86
% 1.98/1.01  inst_lit_activity:                      0
% 1.98/1.01  inst_lit_activity_moves:                0
% 1.98/1.01  inst_num_tautologies:                   0
% 1.98/1.01  inst_num_prop_implied:                  0
% 1.98/1.01  inst_num_existing_simplified:           0
% 1.98/1.01  inst_num_eq_res_simplified:             0
% 1.98/1.01  inst_num_child_elim:                    0
% 1.98/1.01  inst_num_of_dismatching_blockings:      122
% 1.98/1.01  inst_num_of_non_proper_insts:           373
% 1.98/1.01  inst_num_of_duplicates:                 0
% 1.98/1.01  inst_inst_num_from_inst_to_res:         0
% 1.98/1.01  inst_dismatching_checking_time:         0.
% 1.98/1.01  
% 1.98/1.01  ------ Resolution
% 1.98/1.01  
% 1.98/1.01  res_num_of_clauses:                     0
% 1.98/1.01  res_num_in_passive:                     0
% 1.98/1.01  res_num_in_active:                      0
% 1.98/1.01  res_num_of_loops:                       66
% 1.98/1.01  res_forward_subset_subsumed:            28
% 1.98/1.01  res_backward_subset_subsumed:           0
% 1.98/1.01  res_forward_subsumed:                   0
% 1.98/1.01  res_backward_subsumed:                  0
% 1.98/1.01  res_forward_subsumption_resolution:     0
% 1.98/1.01  res_backward_subsumption_resolution:    0
% 1.98/1.01  res_clause_to_clause_subsumption:       441
% 1.98/1.01  res_orphan_elimination:                 0
% 1.98/1.01  res_tautology_del:                      38
% 1.98/1.01  res_num_eq_res_simplified:              0
% 1.98/1.01  res_num_sel_changes:                    0
% 1.98/1.01  res_moves_from_active_to_pass:          0
% 1.98/1.01  
% 1.98/1.01  ------ Superposition
% 1.98/1.01  
% 1.98/1.01  sup_time_total:                         0.
% 1.98/1.01  sup_time_generating:                    0.
% 1.98/1.01  sup_time_sim_full:                      0.
% 1.98/1.01  sup_time_sim_immed:                     0.
% 1.98/1.01  
% 1.98/1.01  sup_num_of_clauses:                     85
% 1.98/1.01  sup_num_in_active:                      50
% 1.98/1.01  sup_num_in_passive:                     35
% 1.98/1.01  sup_num_of_loops:                       53
% 1.98/1.01  sup_fw_superposition:                   54
% 1.98/1.01  sup_bw_superposition:                   61
% 1.98/1.01  sup_immediate_simplified:               20
% 1.98/1.01  sup_given_eliminated:                   0
% 1.98/1.01  comparisons_done:                       0
% 1.98/1.01  comparisons_avoided:                    0
% 1.98/1.01  
% 1.98/1.01  ------ Simplifications
% 1.98/1.01  
% 1.98/1.01  
% 1.98/1.01  sim_fw_subset_subsumed:                 9
% 1.98/1.01  sim_bw_subset_subsumed:                 1
% 1.98/1.01  sim_fw_subsumed:                        11
% 1.98/1.01  sim_bw_subsumed:                        0
% 1.98/1.01  sim_fw_subsumption_res:                 1
% 1.98/1.01  sim_bw_subsumption_res:                 0
% 1.98/1.01  sim_tautology_del:                      10
% 1.98/1.01  sim_eq_tautology_del:                   0
% 1.98/1.01  sim_eq_res_simp:                        0
% 1.98/1.01  sim_fw_demodulated:                     0
% 1.98/1.01  sim_bw_demodulated:                     3
% 1.98/1.01  sim_light_normalised:                   0
% 1.98/1.01  sim_joinable_taut:                      0
% 1.98/1.01  sim_joinable_simp:                      0
% 1.98/1.01  sim_ac_normalised:                      0
% 1.98/1.01  sim_smt_subsumption:                    0
% 1.98/1.01  
%------------------------------------------------------------------------------
