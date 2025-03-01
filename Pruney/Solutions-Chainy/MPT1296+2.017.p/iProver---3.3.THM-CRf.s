%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:16:16 EST 2020

% Result     : Theorem 3.51s
% Output     : CNFRefutation 3.51s
% Verified   : 
% Statistics : Number of formulae       :  109 ( 218 expanded)
%              Number of clauses        :   61 (  83 expanded)
%              Number of leaves         :   16 (  43 expanded)
%              Depth                    :   15
%              Number of atoms          :  269 ( 574 expanded)
%              Number of equality atoms :  141 ( 301 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( k1_xboole_0 != X1
       => k3_subset_1(X0,k6_setfam_1(X0,X1)) = k5_setfam_1(X0,k7_setfam_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
       => ( k1_xboole_0 != X1
         => k3_subset_1(X0,k6_setfam_1(X0,X1)) = k5_setfam_1(X0,k7_setfam_1(X0,X1)) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f24,plain,(
    ? [X0,X1] :
      ( k3_subset_1(X0,k6_setfam_1(X0,X1)) != k5_setfam_1(X0,k7_setfam_1(X0,X1))
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f25,plain,(
    ? [X0,X1] :
      ( k3_subset_1(X0,k6_setfam_1(X0,X1)) != k5_setfam_1(X0,k7_setfam_1(X0,X1))
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f24])).

fof(f30,plain,
    ( ? [X0,X1] :
        ( k3_subset_1(X0,k6_setfam_1(X0,X1)) != k5_setfam_1(X0,k7_setfam_1(X0,X1))
        & k1_xboole_0 != X1
        & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) )
   => ( k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2))
      & k1_xboole_0 != sK2
      & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2))
    & k1_xboole_0 != sK2
    & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f25,f30])).

fof(f47,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(cnf_transformation,[],[f31])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f38,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( k1_xboole_0 != X1
       => k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f23,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f22])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1))
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f39,plain,(
    ! [X0,X1] :
      ( k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f37,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f49,plain,(
    k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) ),
    inference(cnf_transformation,[],[f31])).

fof(f10,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3] :
                  ~ ( k4_tarski(X2,X3) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] :
              ( k4_tarski(X2,X3) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] :
              ( k4_tarski(X2,X3) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X3,X2] :
            ( k4_tarski(X2,X3) != sK0(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK0(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0] :
      ( ( ! [X2,X3] :
            ( k4_tarski(X2,X3) != sK0(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK0(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f28])).

fof(f43,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f19])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f48,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f31])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1))
          <=> r2_hidden(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1))
          <=> r2_hidden(X2,X1) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( ( r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1))
              | ~ r2_hidden(X2,X1) )
            & ( r2_hidden(X2,X1)
              | ~ r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)) ) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X1)
      | ~ r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1))
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f2,axiom,(
    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f2])).

fof(f1,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f1])).

fof(f50,plain,(
    ! [X0] : k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f33,f32])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
    <=> ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,k1_tarski(X1)) = X0
        | r2_hidden(X1,X0) )
      & ( ~ r2_hidden(X1,X0)
        | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) != X0 ) ),
    inference(definition_unfolding,[],[f34,f32])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_566,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | m1_subset_1(k7_setfam_1(X1,X0),k1_zfmisc_1(k1_zfmisc_1(X1))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_575,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | m1_subset_1(k7_setfam_1(X1,X0),k1_zfmisc_1(k1_zfmisc_1(X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | k6_setfam_1(X1,k7_setfam_1(X1,X0)) = k3_subset_1(X1,k5_setfam_1(X1,X0))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_567,plain,
    ( k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1))
    | k1_xboole_0 = X1
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1333,plain,
    ( k6_setfam_1(X0,k7_setfam_1(X0,k7_setfam_1(X0,X1))) = k3_subset_1(X0,k5_setfam_1(X0,k7_setfam_1(X0,X1)))
    | k7_setfam_1(X0,X1) = k1_xboole_0
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_575,c_567])).

cnf(c_5093,plain,
    ( k6_setfam_1(sK1,k7_setfam_1(sK1,k7_setfam_1(sK1,sK2))) = k3_subset_1(sK1,k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)))
    | k7_setfam_1(sK1,sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_566,c_1333])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | k7_setfam_1(X1,k7_setfam_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_574,plain,
    ( k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_857,plain,
    ( k7_setfam_1(sK1,k7_setfam_1(sK1,sK2)) = sK2 ),
    inference(superposition,[status(thm)],[c_566,c_574])).

cnf(c_5096,plain,
    ( k7_setfam_1(sK1,sK2) = k1_xboole_0
    | k3_subset_1(sK1,k5_setfam_1(sK1,k7_setfam_1(sK1,sK2))) = k6_setfam_1(sK1,sK2) ),
    inference(light_normalisation,[status(thm)],[c_5093,c_857])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | m1_subset_1(k5_setfam_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_576,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | m1_subset_1(k5_setfam_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_577,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1144,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,k5_setfam_1(X0,X1))) = k5_setfam_1(X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_576,c_577])).

cnf(c_2627,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,k5_setfam_1(X0,k7_setfam_1(X0,X1)))) = k5_setfam_1(X0,k7_setfam_1(X0,X1))
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_575,c_1144])).

cnf(c_9607,plain,
    ( k3_subset_1(sK1,k3_subset_1(sK1,k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)))) = k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) ),
    inference(superposition,[status(thm)],[c_566,c_2627])).

cnf(c_9625,plain,
    ( k7_setfam_1(sK1,sK2) = k1_xboole_0
    | k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) = k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) ),
    inference(superposition,[status(thm)],[c_5096,c_9607])).

cnf(c_14,negated_conjecture,
    ( k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_10239,plain,
    ( k7_setfam_1(sK1,sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_9625,c_14])).

cnf(c_12,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_568,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_9,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_571,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1428,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK1)) = iProver_top
    | r2_hidden(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_566,c_571])).

cnf(c_1457,plain,
    ( k3_subset_1(sK1,k3_subset_1(sK1,X0)) = X0
    | r2_hidden(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1428,c_577])).

cnf(c_1597,plain,
    ( k3_subset_1(sK1,k3_subset_1(sK1,sK0(sK2))) = sK0(sK2)
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_568,c_1457])).

cnf(c_15,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_207,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_228,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_207])).

cnf(c_208,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_726,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_208])).

cnf(c_727,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_726])).

cnf(c_1659,plain,
    ( k3_subset_1(sK1,k3_subset_1(sK1,sK0(sK2))) = sK0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1597,c_15,c_228,c_727])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | r2_hidden(X0,X2)
    | ~ r2_hidden(k3_subset_1(X1,X0),k7_setfam_1(X1,X2)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_572,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r2_hidden(k3_subset_1(X1,X0),k7_setfam_1(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1614,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK1)) != iProver_top
    | m1_subset_1(k7_setfam_1(sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top
    | r2_hidden(X0,k7_setfam_1(sK1,sK2)) = iProver_top
    | r2_hidden(k3_subset_1(sK1,X0),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_857,c_572])).

cnf(c_17,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_694,plain,
    ( m1_subset_1(k7_setfam_1(sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_695,plain,
    ( m1_subset_1(k7_setfam_1(sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_694])).

cnf(c_2069,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK1)) != iProver_top
    | r2_hidden(X0,k7_setfam_1(sK1,sK2)) = iProver_top
    | r2_hidden(k3_subset_1(sK1,X0),sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1614,c_17,c_695])).

cnf(c_2079,plain,
    ( m1_subset_1(k3_subset_1(sK1,sK0(sK2)),k1_zfmisc_1(sK1)) != iProver_top
    | r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2)) = iProver_top
    | r2_hidden(sK0(sK2),sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1659,c_2069])).

cnf(c_688,plain,
    ( r2_hidden(sK0(sK2),sK2)
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_689,plain,
    ( k1_xboole_0 = sK2
    | r2_hidden(sK0(sK2),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_688])).

cnf(c_710,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
    | ~ r2_hidden(X0,sK2) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_933,plain,
    ( m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
    | ~ r2_hidden(sK0(sK2),sK2) ),
    inference(instantiation,[status(thm)],[c_710])).

cnf(c_934,plain,
    ( m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1)) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top
    | r2_hidden(sK0(sK2),sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_933])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | ~ r2_hidden(X0,X2)
    | r2_hidden(k3_subset_1(X1,X0),k7_setfam_1(X1,X2)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_801,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(sK1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(sK1))
    | ~ r2_hidden(X1,X0)
    | r2_hidden(k3_subset_1(sK1,X1),k7_setfam_1(sK1,X0)) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1506,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
    | ~ r2_hidden(X0,sK2)
    | r2_hidden(k3_subset_1(sK1,X0),k7_setfam_1(sK1,sK2)) ),
    inference(instantiation,[status(thm)],[c_801])).

cnf(c_2101,plain,
    ( ~ m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
    | r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2))
    | ~ r2_hidden(sK0(sK2),sK2) ),
    inference(instantiation,[status(thm)],[c_1506])).

cnf(c_2102,plain,
    ( m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top
    | r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2)) = iProver_top
    | r2_hidden(sK0(sK2),sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2101])).

cnf(c_2152,plain,
    ( r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2079,c_17,c_15,c_689,c_934,c_2102])).

cnf(c_10509,plain,
    ( r2_hidden(k3_subset_1(sK1,sK0(sK2)),k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_10239,c_2152])).

cnf(c_0,plain,
    ( k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | k5_xboole_0(X1,k3_xboole_0(X1,k1_tarski(X0))) != X1 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_578,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) != X0
    | r2_hidden(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1052,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_578])).

cnf(c_11091,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_10509,c_1052])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:52:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.51/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.51/1.00  
% 3.51/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.51/1.00  
% 3.51/1.00  ------  iProver source info
% 3.51/1.00  
% 3.51/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.51/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.51/1.00  git: non_committed_changes: false
% 3.51/1.00  git: last_make_outside_of_git: false
% 3.51/1.00  
% 3.51/1.00  ------ 
% 3.51/1.00  
% 3.51/1.00  ------ Input Options
% 3.51/1.00  
% 3.51/1.00  --out_options                           all
% 3.51/1.00  --tptp_safe_out                         true
% 3.51/1.00  --problem_path                          ""
% 3.51/1.00  --include_path                          ""
% 3.51/1.00  --clausifier                            res/vclausify_rel
% 3.51/1.00  --clausifier_options                    --mode clausify
% 3.51/1.00  --stdin                                 false
% 3.51/1.00  --stats_out                             all
% 3.51/1.00  
% 3.51/1.00  ------ General Options
% 3.51/1.00  
% 3.51/1.00  --fof                                   false
% 3.51/1.00  --time_out_real                         305.
% 3.51/1.00  --time_out_virtual                      -1.
% 3.51/1.00  --symbol_type_check                     false
% 3.51/1.00  --clausify_out                          false
% 3.51/1.00  --sig_cnt_out                           false
% 3.51/1.00  --trig_cnt_out                          false
% 3.51/1.00  --trig_cnt_out_tolerance                1.
% 3.51/1.00  --trig_cnt_out_sk_spl                   false
% 3.51/1.00  --abstr_cl_out                          false
% 3.51/1.00  
% 3.51/1.00  ------ Global Options
% 3.51/1.00  
% 3.51/1.00  --schedule                              default
% 3.51/1.00  --add_important_lit                     false
% 3.51/1.00  --prop_solver_per_cl                    1000
% 3.51/1.00  --min_unsat_core                        false
% 3.51/1.00  --soft_assumptions                      false
% 3.51/1.00  --soft_lemma_size                       3
% 3.51/1.00  --prop_impl_unit_size                   0
% 3.51/1.00  --prop_impl_unit                        []
% 3.51/1.00  --share_sel_clauses                     true
% 3.51/1.00  --reset_solvers                         false
% 3.51/1.00  --bc_imp_inh                            [conj_cone]
% 3.51/1.00  --conj_cone_tolerance                   3.
% 3.51/1.00  --extra_neg_conj                        none
% 3.51/1.00  --large_theory_mode                     true
% 3.51/1.00  --prolific_symb_bound                   200
% 3.51/1.00  --lt_threshold                          2000
% 3.51/1.00  --clause_weak_htbl                      true
% 3.51/1.00  --gc_record_bc_elim                     false
% 3.51/1.00  
% 3.51/1.00  ------ Preprocessing Options
% 3.51/1.00  
% 3.51/1.00  --preprocessing_flag                    true
% 3.51/1.00  --time_out_prep_mult                    0.1
% 3.51/1.00  --splitting_mode                        input
% 3.51/1.00  --splitting_grd                         true
% 3.51/1.00  --splitting_cvd                         false
% 3.51/1.00  --splitting_cvd_svl                     false
% 3.51/1.00  --splitting_nvd                         32
% 3.51/1.00  --sub_typing                            true
% 3.51/1.00  --prep_gs_sim                           true
% 3.51/1.00  --prep_unflatten                        true
% 3.51/1.00  --prep_res_sim                          true
% 3.51/1.00  --prep_upred                            true
% 3.51/1.00  --prep_sem_filter                       exhaustive
% 3.51/1.00  --prep_sem_filter_out                   false
% 3.51/1.00  --pred_elim                             true
% 3.51/1.00  --res_sim_input                         true
% 3.51/1.00  --eq_ax_congr_red                       true
% 3.51/1.00  --pure_diseq_elim                       true
% 3.51/1.00  --brand_transform                       false
% 3.51/1.00  --non_eq_to_eq                          false
% 3.51/1.00  --prep_def_merge                        true
% 3.51/1.00  --prep_def_merge_prop_impl              false
% 3.51/1.00  --prep_def_merge_mbd                    true
% 3.51/1.00  --prep_def_merge_tr_red                 false
% 3.51/1.00  --prep_def_merge_tr_cl                  false
% 3.51/1.00  --smt_preprocessing                     true
% 3.51/1.00  --smt_ac_axioms                         fast
% 3.51/1.00  --preprocessed_out                      false
% 3.51/1.00  --preprocessed_stats                    false
% 3.51/1.00  
% 3.51/1.00  ------ Abstraction refinement Options
% 3.51/1.00  
% 3.51/1.00  --abstr_ref                             []
% 3.51/1.00  --abstr_ref_prep                        false
% 3.51/1.00  --abstr_ref_until_sat                   false
% 3.51/1.00  --abstr_ref_sig_restrict                funpre
% 3.51/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.51/1.00  --abstr_ref_under                       []
% 3.51/1.00  
% 3.51/1.00  ------ SAT Options
% 3.51/1.00  
% 3.51/1.00  --sat_mode                              false
% 3.51/1.00  --sat_fm_restart_options                ""
% 3.51/1.00  --sat_gr_def                            false
% 3.51/1.00  --sat_epr_types                         true
% 3.51/1.00  --sat_non_cyclic_types                  false
% 3.51/1.00  --sat_finite_models                     false
% 3.51/1.00  --sat_fm_lemmas                         false
% 3.51/1.00  --sat_fm_prep                           false
% 3.51/1.00  --sat_fm_uc_incr                        true
% 3.51/1.00  --sat_out_model                         small
% 3.51/1.00  --sat_out_clauses                       false
% 3.51/1.00  
% 3.51/1.00  ------ QBF Options
% 3.51/1.00  
% 3.51/1.00  --qbf_mode                              false
% 3.51/1.00  --qbf_elim_univ                         false
% 3.51/1.00  --qbf_dom_inst                          none
% 3.51/1.00  --qbf_dom_pre_inst                      false
% 3.51/1.00  --qbf_sk_in                             false
% 3.51/1.00  --qbf_pred_elim                         true
% 3.51/1.00  --qbf_split                             512
% 3.51/1.00  
% 3.51/1.00  ------ BMC1 Options
% 3.51/1.00  
% 3.51/1.00  --bmc1_incremental                      false
% 3.51/1.00  --bmc1_axioms                           reachable_all
% 3.51/1.00  --bmc1_min_bound                        0
% 3.51/1.00  --bmc1_max_bound                        -1
% 3.51/1.00  --bmc1_max_bound_default                -1
% 3.51/1.00  --bmc1_symbol_reachability              true
% 3.51/1.00  --bmc1_property_lemmas                  false
% 3.51/1.00  --bmc1_k_induction                      false
% 3.51/1.00  --bmc1_non_equiv_states                 false
% 3.51/1.00  --bmc1_deadlock                         false
% 3.51/1.00  --bmc1_ucm                              false
% 3.51/1.00  --bmc1_add_unsat_core                   none
% 3.51/1.00  --bmc1_unsat_core_children              false
% 3.51/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.51/1.00  --bmc1_out_stat                         full
% 3.51/1.00  --bmc1_ground_init                      false
% 3.51/1.00  --bmc1_pre_inst_next_state              false
% 3.51/1.00  --bmc1_pre_inst_state                   false
% 3.51/1.00  --bmc1_pre_inst_reach_state             false
% 3.51/1.00  --bmc1_out_unsat_core                   false
% 3.51/1.00  --bmc1_aig_witness_out                  false
% 3.51/1.00  --bmc1_verbose                          false
% 3.51/1.00  --bmc1_dump_clauses_tptp                false
% 3.51/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.51/1.00  --bmc1_dump_file                        -
% 3.51/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.51/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.51/1.00  --bmc1_ucm_extend_mode                  1
% 3.51/1.00  --bmc1_ucm_init_mode                    2
% 3.51/1.00  --bmc1_ucm_cone_mode                    none
% 3.51/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.51/1.00  --bmc1_ucm_relax_model                  4
% 3.51/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.51/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.51/1.00  --bmc1_ucm_layered_model                none
% 3.51/1.00  --bmc1_ucm_max_lemma_size               10
% 3.51/1.00  
% 3.51/1.00  ------ AIG Options
% 3.51/1.00  
% 3.51/1.00  --aig_mode                              false
% 3.51/1.00  
% 3.51/1.00  ------ Instantiation Options
% 3.51/1.00  
% 3.51/1.00  --instantiation_flag                    true
% 3.51/1.00  --inst_sos_flag                         false
% 3.51/1.00  --inst_sos_phase                        true
% 3.51/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.51/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.51/1.00  --inst_lit_sel_side                     num_symb
% 3.51/1.00  --inst_solver_per_active                1400
% 3.51/1.00  --inst_solver_calls_frac                1.
% 3.51/1.00  --inst_passive_queue_type               priority_queues
% 3.51/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.51/1.00  --inst_passive_queues_freq              [25;2]
% 3.51/1.00  --inst_dismatching                      true
% 3.51/1.00  --inst_eager_unprocessed_to_passive     true
% 3.51/1.00  --inst_prop_sim_given                   true
% 3.51/1.00  --inst_prop_sim_new                     false
% 3.51/1.00  --inst_subs_new                         false
% 3.51/1.00  --inst_eq_res_simp                      false
% 3.51/1.00  --inst_subs_given                       false
% 3.51/1.00  --inst_orphan_elimination               true
% 3.51/1.00  --inst_learning_loop_flag               true
% 3.51/1.00  --inst_learning_start                   3000
% 3.51/1.00  --inst_learning_factor                  2
% 3.51/1.00  --inst_start_prop_sim_after_learn       3
% 3.51/1.00  --inst_sel_renew                        solver
% 3.51/1.00  --inst_lit_activity_flag                true
% 3.51/1.00  --inst_restr_to_given                   false
% 3.51/1.00  --inst_activity_threshold               500
% 3.51/1.00  --inst_out_proof                        true
% 3.51/1.00  
% 3.51/1.00  ------ Resolution Options
% 3.51/1.00  
% 3.51/1.00  --resolution_flag                       true
% 3.51/1.00  --res_lit_sel                           adaptive
% 3.51/1.00  --res_lit_sel_side                      none
% 3.51/1.00  --res_ordering                          kbo
% 3.51/1.00  --res_to_prop_solver                    active
% 3.51/1.00  --res_prop_simpl_new                    false
% 3.51/1.00  --res_prop_simpl_given                  true
% 3.51/1.00  --res_passive_queue_type                priority_queues
% 3.51/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.51/1.00  --res_passive_queues_freq               [15;5]
% 3.51/1.00  --res_forward_subs                      full
% 3.51/1.00  --res_backward_subs                     full
% 3.51/1.00  --res_forward_subs_resolution           true
% 3.51/1.00  --res_backward_subs_resolution          true
% 3.51/1.00  --res_orphan_elimination                true
% 3.51/1.00  --res_time_limit                        2.
% 3.51/1.00  --res_out_proof                         true
% 3.51/1.00  
% 3.51/1.00  ------ Superposition Options
% 3.51/1.00  
% 3.51/1.00  --superposition_flag                    true
% 3.51/1.00  --sup_passive_queue_type                priority_queues
% 3.51/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.51/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.51/1.00  --demod_completeness_check              fast
% 3.51/1.00  --demod_use_ground                      true
% 3.51/1.00  --sup_to_prop_solver                    passive
% 3.51/1.00  --sup_prop_simpl_new                    true
% 3.51/1.00  --sup_prop_simpl_given                  true
% 3.51/1.00  --sup_fun_splitting                     false
% 3.51/1.00  --sup_smt_interval                      50000
% 3.51/1.00  
% 3.51/1.00  ------ Superposition Simplification Setup
% 3.51/1.00  
% 3.51/1.00  --sup_indices_passive                   []
% 3.51/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.51/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.51/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.51/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.51/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.51/1.00  --sup_full_bw                           [BwDemod]
% 3.51/1.00  --sup_immed_triv                        [TrivRules]
% 3.51/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.51/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.51/1.00  --sup_immed_bw_main                     []
% 3.51/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.51/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.51/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.51/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.51/1.00  
% 3.51/1.00  ------ Combination Options
% 3.51/1.00  
% 3.51/1.00  --comb_res_mult                         3
% 3.51/1.00  --comb_sup_mult                         2
% 3.51/1.00  --comb_inst_mult                        10
% 3.51/1.00  
% 3.51/1.00  ------ Debug Options
% 3.51/1.00  
% 3.51/1.00  --dbg_backtrace                         false
% 3.51/1.00  --dbg_dump_prop_clauses                 false
% 3.51/1.00  --dbg_dump_prop_clauses_file            -
% 3.51/1.00  --dbg_out_stat                          false
% 3.51/1.00  ------ Parsing...
% 3.51/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.51/1.00  
% 3.51/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.51/1.00  
% 3.51/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.51/1.00  
% 3.51/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.51/1.00  ------ Proving...
% 3.51/1.00  ------ Problem Properties 
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  clauses                                 17
% 3.51/1.00  conjectures                             3
% 3.51/1.00  EPR                                     1
% 3.51/1.00  Horn                                    14
% 3.51/1.00  unary                                   4
% 3.51/1.00  binary                                  7
% 3.51/1.00  lits                                    38
% 3.51/1.00  lits eq                                 14
% 3.51/1.00  fd_pure                                 0
% 3.51/1.00  fd_pseudo                               0
% 3.51/1.00  fd_cond                                 4
% 3.51/1.00  fd_pseudo_cond                          0
% 3.51/1.00  AC symbols                              0
% 3.51/1.00  
% 3.51/1.00  ------ Schedule dynamic 5 is on 
% 3.51/1.00  
% 3.51/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  ------ 
% 3.51/1.00  Current options:
% 3.51/1.00  ------ 
% 3.51/1.00  
% 3.51/1.00  ------ Input Options
% 3.51/1.00  
% 3.51/1.00  --out_options                           all
% 3.51/1.00  --tptp_safe_out                         true
% 3.51/1.00  --problem_path                          ""
% 3.51/1.00  --include_path                          ""
% 3.51/1.00  --clausifier                            res/vclausify_rel
% 3.51/1.00  --clausifier_options                    --mode clausify
% 3.51/1.00  --stdin                                 false
% 3.51/1.00  --stats_out                             all
% 3.51/1.00  
% 3.51/1.00  ------ General Options
% 3.51/1.00  
% 3.51/1.00  --fof                                   false
% 3.51/1.00  --time_out_real                         305.
% 3.51/1.00  --time_out_virtual                      -1.
% 3.51/1.00  --symbol_type_check                     false
% 3.51/1.00  --clausify_out                          false
% 3.51/1.00  --sig_cnt_out                           false
% 3.51/1.00  --trig_cnt_out                          false
% 3.51/1.00  --trig_cnt_out_tolerance                1.
% 3.51/1.00  --trig_cnt_out_sk_spl                   false
% 3.51/1.00  --abstr_cl_out                          false
% 3.51/1.00  
% 3.51/1.00  ------ Global Options
% 3.51/1.00  
% 3.51/1.00  --schedule                              default
% 3.51/1.00  --add_important_lit                     false
% 3.51/1.00  --prop_solver_per_cl                    1000
% 3.51/1.00  --min_unsat_core                        false
% 3.51/1.00  --soft_assumptions                      false
% 3.51/1.00  --soft_lemma_size                       3
% 3.51/1.00  --prop_impl_unit_size                   0
% 3.51/1.00  --prop_impl_unit                        []
% 3.51/1.00  --share_sel_clauses                     true
% 3.51/1.00  --reset_solvers                         false
% 3.51/1.00  --bc_imp_inh                            [conj_cone]
% 3.51/1.00  --conj_cone_tolerance                   3.
% 3.51/1.00  --extra_neg_conj                        none
% 3.51/1.00  --large_theory_mode                     true
% 3.51/1.00  --prolific_symb_bound                   200
% 3.51/1.00  --lt_threshold                          2000
% 3.51/1.00  --clause_weak_htbl                      true
% 3.51/1.00  --gc_record_bc_elim                     false
% 3.51/1.00  
% 3.51/1.00  ------ Preprocessing Options
% 3.51/1.00  
% 3.51/1.00  --preprocessing_flag                    true
% 3.51/1.00  --time_out_prep_mult                    0.1
% 3.51/1.00  --splitting_mode                        input
% 3.51/1.00  --splitting_grd                         true
% 3.51/1.00  --splitting_cvd                         false
% 3.51/1.00  --splitting_cvd_svl                     false
% 3.51/1.00  --splitting_nvd                         32
% 3.51/1.00  --sub_typing                            true
% 3.51/1.00  --prep_gs_sim                           true
% 3.51/1.00  --prep_unflatten                        true
% 3.51/1.00  --prep_res_sim                          true
% 3.51/1.00  --prep_upred                            true
% 3.51/1.00  --prep_sem_filter                       exhaustive
% 3.51/1.00  --prep_sem_filter_out                   false
% 3.51/1.00  --pred_elim                             true
% 3.51/1.00  --res_sim_input                         true
% 3.51/1.00  --eq_ax_congr_red                       true
% 3.51/1.00  --pure_diseq_elim                       true
% 3.51/1.00  --brand_transform                       false
% 3.51/1.00  --non_eq_to_eq                          false
% 3.51/1.00  --prep_def_merge                        true
% 3.51/1.00  --prep_def_merge_prop_impl              false
% 3.51/1.00  --prep_def_merge_mbd                    true
% 3.51/1.00  --prep_def_merge_tr_red                 false
% 3.51/1.00  --prep_def_merge_tr_cl                  false
% 3.51/1.00  --smt_preprocessing                     true
% 3.51/1.00  --smt_ac_axioms                         fast
% 3.51/1.00  --preprocessed_out                      false
% 3.51/1.00  --preprocessed_stats                    false
% 3.51/1.00  
% 3.51/1.00  ------ Abstraction refinement Options
% 3.51/1.00  
% 3.51/1.00  --abstr_ref                             []
% 3.51/1.00  --abstr_ref_prep                        false
% 3.51/1.00  --abstr_ref_until_sat                   false
% 3.51/1.00  --abstr_ref_sig_restrict                funpre
% 3.51/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.51/1.00  --abstr_ref_under                       []
% 3.51/1.00  
% 3.51/1.00  ------ SAT Options
% 3.51/1.00  
% 3.51/1.00  --sat_mode                              false
% 3.51/1.00  --sat_fm_restart_options                ""
% 3.51/1.00  --sat_gr_def                            false
% 3.51/1.00  --sat_epr_types                         true
% 3.51/1.00  --sat_non_cyclic_types                  false
% 3.51/1.00  --sat_finite_models                     false
% 3.51/1.00  --sat_fm_lemmas                         false
% 3.51/1.00  --sat_fm_prep                           false
% 3.51/1.00  --sat_fm_uc_incr                        true
% 3.51/1.00  --sat_out_model                         small
% 3.51/1.00  --sat_out_clauses                       false
% 3.51/1.00  
% 3.51/1.00  ------ QBF Options
% 3.51/1.00  
% 3.51/1.00  --qbf_mode                              false
% 3.51/1.00  --qbf_elim_univ                         false
% 3.51/1.00  --qbf_dom_inst                          none
% 3.51/1.00  --qbf_dom_pre_inst                      false
% 3.51/1.00  --qbf_sk_in                             false
% 3.51/1.00  --qbf_pred_elim                         true
% 3.51/1.00  --qbf_split                             512
% 3.51/1.00  
% 3.51/1.00  ------ BMC1 Options
% 3.51/1.00  
% 3.51/1.00  --bmc1_incremental                      false
% 3.51/1.00  --bmc1_axioms                           reachable_all
% 3.51/1.00  --bmc1_min_bound                        0
% 3.51/1.00  --bmc1_max_bound                        -1
% 3.51/1.00  --bmc1_max_bound_default                -1
% 3.51/1.00  --bmc1_symbol_reachability              true
% 3.51/1.00  --bmc1_property_lemmas                  false
% 3.51/1.00  --bmc1_k_induction                      false
% 3.51/1.00  --bmc1_non_equiv_states                 false
% 3.51/1.00  --bmc1_deadlock                         false
% 3.51/1.00  --bmc1_ucm                              false
% 3.51/1.00  --bmc1_add_unsat_core                   none
% 3.51/1.00  --bmc1_unsat_core_children              false
% 3.51/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.51/1.00  --bmc1_out_stat                         full
% 3.51/1.00  --bmc1_ground_init                      false
% 3.51/1.00  --bmc1_pre_inst_next_state              false
% 3.51/1.00  --bmc1_pre_inst_state                   false
% 3.51/1.00  --bmc1_pre_inst_reach_state             false
% 3.51/1.00  --bmc1_out_unsat_core                   false
% 3.51/1.00  --bmc1_aig_witness_out                  false
% 3.51/1.00  --bmc1_verbose                          false
% 3.51/1.00  --bmc1_dump_clauses_tptp                false
% 3.51/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.51/1.00  --bmc1_dump_file                        -
% 3.51/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.51/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.51/1.00  --bmc1_ucm_extend_mode                  1
% 3.51/1.00  --bmc1_ucm_init_mode                    2
% 3.51/1.00  --bmc1_ucm_cone_mode                    none
% 3.51/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.51/1.00  --bmc1_ucm_relax_model                  4
% 3.51/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.51/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.51/1.00  --bmc1_ucm_layered_model                none
% 3.51/1.00  --bmc1_ucm_max_lemma_size               10
% 3.51/1.00  
% 3.51/1.00  ------ AIG Options
% 3.51/1.00  
% 3.51/1.00  --aig_mode                              false
% 3.51/1.00  
% 3.51/1.00  ------ Instantiation Options
% 3.51/1.00  
% 3.51/1.00  --instantiation_flag                    true
% 3.51/1.00  --inst_sos_flag                         false
% 3.51/1.00  --inst_sos_phase                        true
% 3.51/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.51/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.51/1.00  --inst_lit_sel_side                     none
% 3.51/1.00  --inst_solver_per_active                1400
% 3.51/1.00  --inst_solver_calls_frac                1.
% 3.51/1.00  --inst_passive_queue_type               priority_queues
% 3.51/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.51/1.00  --inst_passive_queues_freq              [25;2]
% 3.51/1.00  --inst_dismatching                      true
% 3.51/1.00  --inst_eager_unprocessed_to_passive     true
% 3.51/1.00  --inst_prop_sim_given                   true
% 3.51/1.00  --inst_prop_sim_new                     false
% 3.51/1.00  --inst_subs_new                         false
% 3.51/1.00  --inst_eq_res_simp                      false
% 3.51/1.00  --inst_subs_given                       false
% 3.51/1.00  --inst_orphan_elimination               true
% 3.51/1.00  --inst_learning_loop_flag               true
% 3.51/1.00  --inst_learning_start                   3000
% 3.51/1.00  --inst_learning_factor                  2
% 3.51/1.00  --inst_start_prop_sim_after_learn       3
% 3.51/1.00  --inst_sel_renew                        solver
% 3.51/1.00  --inst_lit_activity_flag                true
% 3.51/1.00  --inst_restr_to_given                   false
% 3.51/1.00  --inst_activity_threshold               500
% 3.51/1.00  --inst_out_proof                        true
% 3.51/1.00  
% 3.51/1.00  ------ Resolution Options
% 3.51/1.00  
% 3.51/1.00  --resolution_flag                       false
% 3.51/1.00  --res_lit_sel                           adaptive
% 3.51/1.00  --res_lit_sel_side                      none
% 3.51/1.00  --res_ordering                          kbo
% 3.51/1.00  --res_to_prop_solver                    active
% 3.51/1.00  --res_prop_simpl_new                    false
% 3.51/1.00  --res_prop_simpl_given                  true
% 3.51/1.00  --res_passive_queue_type                priority_queues
% 3.51/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.51/1.00  --res_passive_queues_freq               [15;5]
% 3.51/1.00  --res_forward_subs                      full
% 3.51/1.00  --res_backward_subs                     full
% 3.51/1.00  --res_forward_subs_resolution           true
% 3.51/1.00  --res_backward_subs_resolution          true
% 3.51/1.00  --res_orphan_elimination                true
% 3.51/1.00  --res_time_limit                        2.
% 3.51/1.00  --res_out_proof                         true
% 3.51/1.00  
% 3.51/1.00  ------ Superposition Options
% 3.51/1.00  
% 3.51/1.00  --superposition_flag                    true
% 3.51/1.00  --sup_passive_queue_type                priority_queues
% 3.51/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.51/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.51/1.00  --demod_completeness_check              fast
% 3.51/1.00  --demod_use_ground                      true
% 3.51/1.00  --sup_to_prop_solver                    passive
% 3.51/1.00  --sup_prop_simpl_new                    true
% 3.51/1.00  --sup_prop_simpl_given                  true
% 3.51/1.00  --sup_fun_splitting                     false
% 3.51/1.00  --sup_smt_interval                      50000
% 3.51/1.00  
% 3.51/1.00  ------ Superposition Simplification Setup
% 3.51/1.00  
% 3.51/1.00  --sup_indices_passive                   []
% 3.51/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.51/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.51/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.51/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.51/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.51/1.00  --sup_full_bw                           [BwDemod]
% 3.51/1.00  --sup_immed_triv                        [TrivRules]
% 3.51/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.51/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.51/1.00  --sup_immed_bw_main                     []
% 3.51/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.51/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.51/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.51/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.51/1.00  
% 3.51/1.00  ------ Combination Options
% 3.51/1.00  
% 3.51/1.00  --comb_res_mult                         3
% 3.51/1.00  --comb_sup_mult                         2
% 3.51/1.00  --comb_inst_mult                        10
% 3.51/1.00  
% 3.51/1.00  ------ Debug Options
% 3.51/1.00  
% 3.51/1.00  --dbg_backtrace                         false
% 3.51/1.00  --dbg_dump_prop_clauses                 false
% 3.51/1.00  --dbg_dump_prop_clauses_file            -
% 3.51/1.00  --dbg_out_stat                          false
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  ------ Proving...
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  % SZS status Theorem for theBenchmark.p
% 3.51/1.00  
% 3.51/1.00   Resolution empty clause
% 3.51/1.00  
% 3.51/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.51/1.00  
% 3.51/1.00  fof(f12,conjecture,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (k1_xboole_0 != X1 => k3_subset_1(X0,k6_setfam_1(X0,X1)) = k5_setfam_1(X0,k7_setfam_1(X0,X1))))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f13,negated_conjecture,(
% 3.51/1.00    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (k1_xboole_0 != X1 => k3_subset_1(X0,k6_setfam_1(X0,X1)) = k5_setfam_1(X0,k7_setfam_1(X0,X1))))),
% 3.51/1.00    inference(negated_conjecture,[],[f12])).
% 3.51/1.00  
% 3.51/1.00  fof(f24,plain,(
% 3.51/1.00    ? [X0,X1] : ((k3_subset_1(X0,k6_setfam_1(X0,X1)) != k5_setfam_1(X0,k7_setfam_1(X0,X1)) & k1_xboole_0 != X1) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(ennf_transformation,[],[f13])).
% 3.51/1.00  
% 3.51/1.00  fof(f25,plain,(
% 3.51/1.00    ? [X0,X1] : (k3_subset_1(X0,k6_setfam_1(X0,X1)) != k5_setfam_1(X0,k7_setfam_1(X0,X1)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(flattening,[],[f24])).
% 3.51/1.00  
% 3.51/1.00  fof(f30,plain,(
% 3.51/1.00    ? [X0,X1] : (k3_subset_1(X0,k6_setfam_1(X0,X1)) != k5_setfam_1(X0,k7_setfam_1(X0,X1)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) => (k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) & k1_xboole_0 != sK2 & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))))),
% 3.51/1.00    introduced(choice_axiom,[])).
% 3.51/1.00  
% 3.51/1.00  fof(f31,plain,(
% 3.51/1.00    k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) & k1_xboole_0 != sK2 & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 3.51/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f25,f30])).
% 3.51/1.00  
% 3.51/1.00  fof(f47,plain,(
% 3.51/1.00    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))),
% 3.51/1.00    inference(cnf_transformation,[],[f31])).
% 3.51/1.00  
% 3.51/1.00  fof(f6,axiom,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f16,plain,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(ennf_transformation,[],[f6])).
% 3.51/1.00  
% 3.51/1.00  fof(f38,plain,(
% 3.51/1.00    ( ! [X0,X1] : (m1_subset_1(k7_setfam_1(X0,X1),k1_zfmisc_1(k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f16])).
% 3.51/1.00  
% 3.51/1.00  fof(f11,axiom,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => (k1_xboole_0 != X1 => k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1))))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f22,plain,(
% 3.51/1.00    ! [X0,X1] : ((k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1)) | k1_xboole_0 = X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(ennf_transformation,[],[f11])).
% 3.51/1.00  
% 3.51/1.00  fof(f23,plain,(
% 3.51/1.00    ! [X0,X1] : (k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1)) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(flattening,[],[f22])).
% 3.51/1.00  
% 3.51/1.00  fof(f46,plain,(
% 3.51/1.00    ( ! [X0,X1] : (k3_subset_1(X0,k5_setfam_1(X0,X1)) = k6_setfam_1(X0,k7_setfam_1(X0,X1)) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f23])).
% 3.51/1.00  
% 3.51/1.00  fof(f7,axiom,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1)),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f17,plain,(
% 3.51/1.00    ! [X0,X1] : (k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(ennf_transformation,[],[f7])).
% 3.51/1.00  
% 3.51/1.00  fof(f39,plain,(
% 3.51/1.00    ( ! [X0,X1] : (k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f17])).
% 3.51/1.00  
% 3.51/1.00  fof(f5,axiom,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f15,plain,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(ennf_transformation,[],[f5])).
% 3.51/1.00  
% 3.51/1.00  fof(f37,plain,(
% 3.51/1.00    ( ! [X0,X1] : (m1_subset_1(k5_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f15])).
% 3.51/1.00  
% 3.51/1.00  fof(f4,axiom,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f14,plain,(
% 3.51/1.00    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.51/1.00    inference(ennf_transformation,[],[f4])).
% 3.51/1.00  
% 3.51/1.00  fof(f36,plain,(
% 3.51/1.00    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f14])).
% 3.51/1.00  
% 3.51/1.00  fof(f49,plain,(
% 3.51/1.00    k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2))),
% 3.51/1.00    inference(cnf_transformation,[],[f31])).
% 3.51/1.00  
% 3.51/1.00  fof(f10,axiom,(
% 3.51/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3] : ~(k4_tarski(X2,X3) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f21,plain,(
% 3.51/1.00    ! [X0] : (? [X1] : (! [X2,X3] : (k4_tarski(X2,X3) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 3.51/1.00    inference(ennf_transformation,[],[f10])).
% 3.51/1.00  
% 3.51/1.00  fof(f28,plain,(
% 3.51/1.00    ! [X0] : (? [X1] : (! [X2,X3] : (k4_tarski(X2,X3) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X3,X2] : (k4_tarski(X2,X3) != sK0(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK0(X0),X0)))),
% 3.51/1.00    introduced(choice_axiom,[])).
% 3.51/1.00  
% 3.51/1.00  fof(f29,plain,(
% 3.51/1.00    ! [X0] : ((! [X2,X3] : (k4_tarski(X2,X3) != sK0(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK0(X0),X0)) | k1_xboole_0 = X0)),
% 3.51/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f28])).
% 3.51/1.00  
% 3.51/1.00  fof(f43,plain,(
% 3.51/1.00    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 3.51/1.00    inference(cnf_transformation,[],[f29])).
% 3.51/1.00  
% 3.51/1.00  fof(f9,axiom,(
% 3.51/1.00    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f19,plain,(
% 3.51/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 3.51/1.00    inference(ennf_transformation,[],[f9])).
% 3.51/1.00  
% 3.51/1.00  fof(f20,plain,(
% 3.51/1.00    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 3.51/1.00    inference(flattening,[],[f19])).
% 3.51/1.00  
% 3.51/1.00  fof(f42,plain,(
% 3.51/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 3.51/1.00    inference(cnf_transformation,[],[f20])).
% 3.51/1.00  
% 3.51/1.00  fof(f48,plain,(
% 3.51/1.00    k1_xboole_0 != sK2),
% 3.51/1.00    inference(cnf_transformation,[],[f31])).
% 3.51/1.00  
% 3.51/1.00  fof(f8,axiom,(
% 3.51/1.00    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)) <=> r2_hidden(X2,X1))))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f18,plain,(
% 3.51/1.00    ! [X0,X1] : (! [X2] : ((r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)) <=> r2_hidden(X2,X1)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(ennf_transformation,[],[f8])).
% 3.51/1.00  
% 3.51/1.00  fof(f27,plain,(
% 3.51/1.00    ! [X0,X1] : (! [X2] : (((r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)) | ~r2_hidden(X2,X1)) & (r2_hidden(X2,X1) | ~r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 3.51/1.00    inference(nnf_transformation,[],[f18])).
% 3.51/1.00  
% 3.51/1.00  fof(f40,plain,(
% 3.51/1.00    ( ! [X2,X0,X1] : (r2_hidden(X2,X1) | ~r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f27])).
% 3.51/1.00  
% 3.51/1.00  fof(f41,plain,(
% 3.51/1.00    ( ! [X2,X0,X1] : (r2_hidden(k3_subset_1(X0,X2),k7_setfam_1(X0,X1)) | ~r2_hidden(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f27])).
% 3.51/1.00  
% 3.51/1.00  fof(f2,axiom,(
% 3.51/1.00    ! [X0] : k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f33,plain,(
% 3.51/1.00    ( ! [X0] : (k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0) )),
% 3.51/1.00    inference(cnf_transformation,[],[f2])).
% 3.51/1.00  
% 3.51/1.00  fof(f1,axiom,(
% 3.51/1.00    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f32,plain,(
% 3.51/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.51/1.00    inference(cnf_transformation,[],[f1])).
% 3.51/1.00  
% 3.51/1.00  fof(f50,plain,(
% 3.51/1.00    ( ! [X0] : (k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) = k1_xboole_0) )),
% 3.51/1.00    inference(definition_unfolding,[],[f33,f32])).
% 3.51/1.00  
% 3.51/1.00  fof(f3,axiom,(
% 3.51/1.00    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 <=> ~r2_hidden(X1,X0))),
% 3.51/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.51/1.00  
% 3.51/1.00  fof(f26,plain,(
% 3.51/1.00    ! [X0,X1] : ((k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) & (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0))),
% 3.51/1.00    inference(nnf_transformation,[],[f3])).
% 3.51/1.00  
% 3.51/1.00  fof(f34,plain,(
% 3.51/1.00    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0) )),
% 3.51/1.00    inference(cnf_transformation,[],[f26])).
% 3.51/1.00  
% 3.51/1.00  fof(f52,plain,(
% 3.51/1.00    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) != X0) )),
% 3.51/1.00    inference(definition_unfolding,[],[f34,f32])).
% 3.51/1.00  
% 3.51/1.00  cnf(c_16,negated_conjecture,
% 3.51/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
% 3.51/1.00      inference(cnf_transformation,[],[f47]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_566,plain,
% 3.51/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) = iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_5,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.51/1.00      | m1_subset_1(k7_setfam_1(X1,X0),k1_zfmisc_1(k1_zfmisc_1(X1))) ),
% 3.51/1.00      inference(cnf_transformation,[],[f38]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_575,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 3.51/1.00      | m1_subset_1(k7_setfam_1(X1,X0),k1_zfmisc_1(k1_zfmisc_1(X1))) = iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_13,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.51/1.00      | k6_setfam_1(X1,k7_setfam_1(X1,X0)) = k3_subset_1(X1,k5_setfam_1(X1,X0))
% 3.51/1.00      | k1_xboole_0 = X0 ),
% 3.51/1.00      inference(cnf_transformation,[],[f46]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_567,plain,
% 3.51/1.00      ( k6_setfam_1(X0,k7_setfam_1(X0,X1)) = k3_subset_1(X0,k5_setfam_1(X0,X1))
% 3.51/1.00      | k1_xboole_0 = X1
% 3.51/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1333,plain,
% 3.51/1.00      ( k6_setfam_1(X0,k7_setfam_1(X0,k7_setfam_1(X0,X1))) = k3_subset_1(X0,k5_setfam_1(X0,k7_setfam_1(X0,X1)))
% 3.51/1.00      | k7_setfam_1(X0,X1) = k1_xboole_0
% 3.51/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_575,c_567]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_5093,plain,
% 3.51/1.00      ( k6_setfam_1(sK1,k7_setfam_1(sK1,k7_setfam_1(sK1,sK2))) = k3_subset_1(sK1,k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)))
% 3.51/1.00      | k7_setfam_1(sK1,sK2) = k1_xboole_0 ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_566,c_1333]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_6,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.51/1.00      | k7_setfam_1(X1,k7_setfam_1(X1,X0)) = X0 ),
% 3.51/1.00      inference(cnf_transformation,[],[f39]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_574,plain,
% 3.51/1.00      ( k7_setfam_1(X0,k7_setfam_1(X0,X1)) = X1
% 3.51/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_857,plain,
% 3.51/1.00      ( k7_setfam_1(sK1,k7_setfam_1(sK1,sK2)) = sK2 ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_566,c_574]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_5096,plain,
% 3.51/1.00      ( k7_setfam_1(sK1,sK2) = k1_xboole_0
% 3.51/1.00      | k3_subset_1(sK1,k5_setfam_1(sK1,k7_setfam_1(sK1,sK2))) = k6_setfam_1(sK1,sK2) ),
% 3.51/1.00      inference(light_normalisation,[status(thm)],[c_5093,c_857]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_4,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.51/1.00      | m1_subset_1(k5_setfam_1(X1,X0),k1_zfmisc_1(X1)) ),
% 3.51/1.00      inference(cnf_transformation,[],[f37]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_576,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 3.51/1.00      | m1_subset_1(k5_setfam_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_3,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.51/1.00      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 3.51/1.00      inference(cnf_transformation,[],[f36]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_577,plain,
% 3.51/1.00      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
% 3.51/1.00      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1144,plain,
% 3.51/1.00      ( k3_subset_1(X0,k3_subset_1(X0,k5_setfam_1(X0,X1))) = k5_setfam_1(X0,X1)
% 3.51/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_576,c_577]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2627,plain,
% 3.51/1.00      ( k3_subset_1(X0,k3_subset_1(X0,k5_setfam_1(X0,k7_setfam_1(X0,X1)))) = k5_setfam_1(X0,k7_setfam_1(X0,X1))
% 3.51/1.00      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_575,c_1144]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_9607,plain,
% 3.51/1.00      ( k3_subset_1(sK1,k3_subset_1(sK1,k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)))) = k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_566,c_2627]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_9625,plain,
% 3.51/1.00      ( k7_setfam_1(sK1,sK2) = k1_xboole_0
% 3.51/1.00      | k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) = k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_5096,c_9607]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_14,negated_conjecture,
% 3.51/1.00      ( k3_subset_1(sK1,k6_setfam_1(sK1,sK2)) != k5_setfam_1(sK1,k7_setfam_1(sK1,sK2)) ),
% 3.51/1.00      inference(cnf_transformation,[],[f49]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_10239,plain,
% 3.51/1.00      ( k7_setfam_1(sK1,sK2) = k1_xboole_0 ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_9625,c_14]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_12,plain,
% 3.51/1.00      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 3.51/1.00      inference(cnf_transformation,[],[f43]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_568,plain,
% 3.51/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK0(X0),X0) = iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_9,plain,
% 3.51/1.00      ( m1_subset_1(X0,X1)
% 3.51/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 3.51/1.00      | ~ r2_hidden(X0,X2) ),
% 3.51/1.00      inference(cnf_transformation,[],[f42]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_571,plain,
% 3.51/1.00      ( m1_subset_1(X0,X1) = iProver_top
% 3.51/1.00      | m1_subset_1(X2,k1_zfmisc_1(X1)) != iProver_top
% 3.51/1.00      | r2_hidden(X0,X2) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1428,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK1)) = iProver_top
% 3.51/1.00      | r2_hidden(X0,sK2) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_566,c_571]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1457,plain,
% 3.51/1.00      ( k3_subset_1(sK1,k3_subset_1(sK1,X0)) = X0
% 3.51/1.00      | r2_hidden(X0,sK2) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_1428,c_577]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1597,plain,
% 3.51/1.00      ( k3_subset_1(sK1,k3_subset_1(sK1,sK0(sK2))) = sK0(sK2)
% 3.51/1.00      | sK2 = k1_xboole_0 ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_568,c_1457]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_15,negated_conjecture,
% 3.51/1.00      ( k1_xboole_0 != sK2 ),
% 3.51/1.00      inference(cnf_transformation,[],[f48]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_207,plain,( X0 = X0 ),theory(equality) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_228,plain,
% 3.51/1.00      ( k1_xboole_0 = k1_xboole_0 ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_207]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_208,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_726,plain,
% 3.51/1.00      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_208]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_727,plain,
% 3.51/1.00      ( sK2 != k1_xboole_0 | k1_xboole_0 = sK2 | k1_xboole_0 != k1_xboole_0 ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_726]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1659,plain,
% 3.51/1.00      ( k3_subset_1(sK1,k3_subset_1(sK1,sK0(sK2))) = sK0(sK2) ),
% 3.51/1.00      inference(global_propositional_subsumption,
% 3.51/1.00                [status(thm)],
% 3.51/1.00                [c_1597,c_15,c_228,c_727]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_8,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.51/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.51/1.00      | r2_hidden(X0,X2)
% 3.51/1.00      | ~ r2_hidden(k3_subset_1(X1,X0),k7_setfam_1(X1,X2)) ),
% 3.51/1.00      inference(cnf_transformation,[],[f40]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_572,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.51/1.00      | m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 3.51/1.00      | r2_hidden(X0,X2) = iProver_top
% 3.51/1.00      | r2_hidden(k3_subset_1(X1,X0),k7_setfam_1(X1,X2)) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1614,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK1)) != iProver_top
% 3.51/1.00      | m1_subset_1(k7_setfam_1(sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top
% 3.51/1.00      | r2_hidden(X0,k7_setfam_1(sK1,sK2)) = iProver_top
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,X0),sK2) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_857,c_572]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_17,plain,
% 3.51/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) = iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_694,plain,
% 3.51/1.00      ( m1_subset_1(k7_setfam_1(sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1)))
% 3.51/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_695,plain,
% 3.51/1.00      ( m1_subset_1(k7_setfam_1(sK1,sK2),k1_zfmisc_1(k1_zfmisc_1(sK1))) = iProver_top
% 3.51/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_694]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2069,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK1)) != iProver_top
% 3.51/1.00      | r2_hidden(X0,k7_setfam_1(sK1,sK2)) = iProver_top
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,X0),sK2) != iProver_top ),
% 3.51/1.00      inference(global_propositional_subsumption,
% 3.51/1.00                [status(thm)],
% 3.51/1.00                [c_1614,c_17,c_695]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2079,plain,
% 3.51/1.00      ( m1_subset_1(k3_subset_1(sK1,sK0(sK2)),k1_zfmisc_1(sK1)) != iProver_top
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2)) = iProver_top
% 3.51/1.00      | r2_hidden(sK0(sK2),sK2) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_1659,c_2069]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_688,plain,
% 3.51/1.00      ( r2_hidden(sK0(sK2),sK2) | k1_xboole_0 = sK2 ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_689,plain,
% 3.51/1.00      ( k1_xboole_0 = sK2 | r2_hidden(sK0(sK2),sK2) = iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_688]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_710,plain,
% 3.51/1.00      ( m1_subset_1(X0,k1_zfmisc_1(sK1))
% 3.51/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
% 3.51/1.00      | ~ r2_hidden(X0,sK2) ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_9]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_933,plain,
% 3.51/1.00      ( m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1))
% 3.51/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
% 3.51/1.00      | ~ r2_hidden(sK0(sK2),sK2) ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_710]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_934,plain,
% 3.51/1.00      ( m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1)) = iProver_top
% 3.51/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top
% 3.51/1.00      | r2_hidden(sK0(sK2),sK2) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_933]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_7,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.51/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 3.51/1.00      | ~ r2_hidden(X0,X2)
% 3.51/1.00      | r2_hidden(k3_subset_1(X1,X0),k7_setfam_1(X1,X2)) ),
% 3.51/1.00      inference(cnf_transformation,[],[f41]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_801,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(sK1)))
% 3.51/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(sK1))
% 3.51/1.00      | ~ r2_hidden(X1,X0)
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,X1),k7_setfam_1(sK1,X0)) ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1506,plain,
% 3.51/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(sK1))
% 3.51/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
% 3.51/1.00      | ~ r2_hidden(X0,sK2)
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,X0),k7_setfam_1(sK1,sK2)) ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_801]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2101,plain,
% 3.51/1.00      ( ~ m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1))
% 3.51/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1)))
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2))
% 3.51/1.00      | ~ r2_hidden(sK0(sK2),sK2) ),
% 3.51/1.00      inference(instantiation,[status(thm)],[c_1506]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2102,plain,
% 3.51/1.00      ( m1_subset_1(sK0(sK2),k1_zfmisc_1(sK1)) != iProver_top
% 3.51/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK1))) != iProver_top
% 3.51/1.00      | r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2)) = iProver_top
% 3.51/1.00      | r2_hidden(sK0(sK2),sK2) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_2101]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2152,plain,
% 3.51/1.00      ( r2_hidden(k3_subset_1(sK1,sK0(sK2)),k7_setfam_1(sK1,sK2)) = iProver_top ),
% 3.51/1.00      inference(global_propositional_subsumption,
% 3.51/1.00                [status(thm)],
% 3.51/1.00                [c_2079,c_17,c_15,c_689,c_934,c_2102]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_10509,plain,
% 3.51/1.00      ( r2_hidden(k3_subset_1(sK1,sK0(sK2)),k1_xboole_0) = iProver_top ),
% 3.51/1.00      inference(demodulation,[status(thm)],[c_10239,c_2152]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_0,plain,
% 3.51/1.00      ( k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
% 3.51/1.00      inference(cnf_transformation,[],[f50]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_2,plain,
% 3.51/1.00      ( ~ r2_hidden(X0,X1)
% 3.51/1.00      | k5_xboole_0(X1,k3_xboole_0(X1,k1_tarski(X0))) != X1 ),
% 3.51/1.00      inference(cnf_transformation,[],[f52]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_578,plain,
% 3.51/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,k1_tarski(X1))) != X0
% 3.51/1.00      | r2_hidden(X1,X0) != iProver_top ),
% 3.51/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_1052,plain,
% 3.51/1.00      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 3.51/1.00      inference(superposition,[status(thm)],[c_0,c_578]) ).
% 3.51/1.00  
% 3.51/1.00  cnf(c_11091,plain,
% 3.51/1.00      ( $false ),
% 3.51/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_10509,c_1052]) ).
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.51/1.00  
% 3.51/1.00  ------                               Statistics
% 3.51/1.00  
% 3.51/1.00  ------ General
% 3.51/1.00  
% 3.51/1.00  abstr_ref_over_cycles:                  0
% 3.51/1.00  abstr_ref_under_cycles:                 0
% 3.51/1.00  gc_basic_clause_elim:                   0
% 3.51/1.00  forced_gc_time:                         0
% 3.51/1.00  parsing_time:                           0.01
% 3.51/1.00  unif_index_cands_time:                  0.
% 3.51/1.00  unif_index_add_time:                    0.
% 3.51/1.00  orderings_time:                         0.
% 3.51/1.00  out_proof_time:                         0.013
% 3.51/1.00  total_time:                             0.335
% 3.51/1.00  num_of_symbols:                         46
% 3.51/1.00  num_of_terms:                           9056
% 3.51/1.00  
% 3.51/1.00  ------ Preprocessing
% 3.51/1.00  
% 3.51/1.00  num_of_splits:                          0
% 3.51/1.00  num_of_split_atoms:                     0
% 3.51/1.00  num_of_reused_defs:                     0
% 3.51/1.00  num_eq_ax_congr_red:                    8
% 3.51/1.00  num_of_sem_filtered_clauses:            1
% 3.51/1.00  num_of_subtypes:                        0
% 3.51/1.00  monotx_restored_types:                  0
% 3.51/1.00  sat_num_of_epr_types:                   0
% 3.51/1.00  sat_num_of_non_cyclic_types:            0
% 3.51/1.00  sat_guarded_non_collapsed_types:        0
% 3.51/1.00  num_pure_diseq_elim:                    0
% 3.51/1.00  simp_replaced_by:                       0
% 3.51/1.00  res_preprocessed:                       74
% 3.51/1.00  prep_upred:                             0
% 3.51/1.00  prep_unflattend:                        0
% 3.51/1.00  smt_new_axioms:                         0
% 3.51/1.00  pred_elim_cands:                        2
% 3.51/1.00  pred_elim:                              0
% 3.51/1.00  pred_elim_cl:                           0
% 3.51/1.00  pred_elim_cycles:                       1
% 3.51/1.00  merged_defs:                            6
% 3.51/1.00  merged_defs_ncl:                        0
% 3.51/1.00  bin_hyper_res:                          6
% 3.51/1.00  prep_cycles:                            3
% 3.51/1.00  pred_elim_time:                         0.
% 3.51/1.00  splitting_time:                         0.
% 3.51/1.00  sem_filter_time:                        0.
% 3.51/1.00  monotx_time:                            0.
% 3.51/1.00  subtype_inf_time:                       0.
% 3.51/1.00  
% 3.51/1.00  ------ Problem properties
% 3.51/1.00  
% 3.51/1.00  clauses:                                17
% 3.51/1.00  conjectures:                            3
% 3.51/1.00  epr:                                    1
% 3.51/1.00  horn:                                   14
% 3.51/1.00  ground:                                 3
% 3.51/1.00  unary:                                  4
% 3.51/1.00  binary:                                 7
% 3.51/1.00  lits:                                   38
% 3.51/1.00  lits_eq:                                14
% 3.51/1.00  fd_pure:                                0
% 3.51/1.00  fd_pseudo:                              0
% 3.51/1.00  fd_cond:                                4
% 3.51/1.00  fd_pseudo_cond:                         0
% 3.51/1.00  ac_symbols:                             0
% 3.51/1.00  
% 3.51/1.00  ------ Propositional Solver
% 3.51/1.00  
% 3.51/1.00  prop_solver_calls:                      23
% 3.51/1.00  prop_fast_solver_calls:                 716
% 3.51/1.00  smt_solver_calls:                       0
% 3.51/1.00  smt_fast_solver_calls:                  0
% 3.51/1.00  prop_num_of_clauses:                    3889
% 3.51/1.00  prop_preprocess_simplified:             8145
% 3.51/1.00  prop_fo_subsumed:                       19
% 3.51/1.00  prop_solver_time:                       0.
% 3.51/1.00  smt_solver_time:                        0.
% 3.51/1.00  smt_fast_solver_time:                   0.
% 3.51/1.00  prop_fast_solver_time:                  0.
% 3.51/1.00  prop_unsat_core_time:                   0.
% 3.51/1.00  
% 3.51/1.00  ------ QBF
% 3.51/1.00  
% 3.51/1.00  qbf_q_res:                              0
% 3.51/1.00  qbf_num_tautologies:                    0
% 3.51/1.00  qbf_prep_cycles:                        0
% 3.51/1.00  
% 3.51/1.00  ------ BMC1
% 3.51/1.00  
% 3.51/1.00  bmc1_current_bound:                     -1
% 3.51/1.00  bmc1_last_solved_bound:                 -1
% 3.51/1.00  bmc1_unsat_core_size:                   -1
% 3.51/1.00  bmc1_unsat_core_parents_size:           -1
% 3.51/1.00  bmc1_merge_next_fun:                    0
% 3.51/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.51/1.00  
% 3.51/1.00  ------ Instantiation
% 3.51/1.00  
% 3.51/1.00  inst_num_of_clauses:                    1239
% 3.51/1.00  inst_num_in_passive:                    567
% 3.51/1.00  inst_num_in_active:                     508
% 3.51/1.00  inst_num_in_unprocessed:                164
% 3.51/1.00  inst_num_of_loops:                      630
% 3.51/1.00  inst_num_of_learning_restarts:          0
% 3.51/1.00  inst_num_moves_active_passive:          120
% 3.51/1.00  inst_lit_activity:                      0
% 3.51/1.00  inst_lit_activity_moves:                0
% 3.51/1.00  inst_num_tautologies:                   0
% 3.51/1.00  inst_num_prop_implied:                  0
% 3.51/1.00  inst_num_existing_simplified:           0
% 3.51/1.00  inst_num_eq_res_simplified:             0
% 3.51/1.00  inst_num_child_elim:                    0
% 3.51/1.00  inst_num_of_dismatching_blockings:      842
% 3.51/1.00  inst_num_of_non_proper_insts:           1190
% 3.51/1.00  inst_num_of_duplicates:                 0
% 3.51/1.00  inst_inst_num_from_inst_to_res:         0
% 3.51/1.00  inst_dismatching_checking_time:         0.
% 3.51/1.00  
% 3.51/1.00  ------ Resolution
% 3.51/1.00  
% 3.51/1.00  res_num_of_clauses:                     0
% 3.51/1.00  res_num_in_passive:                     0
% 3.51/1.00  res_num_in_active:                      0
% 3.51/1.00  res_num_of_loops:                       77
% 3.51/1.00  res_forward_subset_subsumed:            64
% 3.51/1.00  res_backward_subset_subsumed:           0
% 3.51/1.00  res_forward_subsumed:                   0
% 3.51/1.00  res_backward_subsumed:                  0
% 3.51/1.00  res_forward_subsumption_resolution:     0
% 3.51/1.00  res_backward_subsumption_resolution:    0
% 3.51/1.00  res_clause_to_clause_subsumption:       863
% 3.51/1.00  res_orphan_elimination:                 0
% 3.51/1.00  res_tautology_del:                      165
% 3.51/1.00  res_num_eq_res_simplified:              0
% 3.51/1.00  res_num_sel_changes:                    0
% 3.51/1.00  res_moves_from_active_to_pass:          0
% 3.51/1.00  
% 3.51/1.00  ------ Superposition
% 3.51/1.00  
% 3.51/1.00  sup_time_total:                         0.
% 3.51/1.00  sup_time_generating:                    0.
% 3.51/1.00  sup_time_sim_full:                      0.
% 3.51/1.00  sup_time_sim_immed:                     0.
% 3.51/1.00  
% 3.51/1.00  sup_num_of_clauses:                     193
% 3.51/1.00  sup_num_in_active:                      76
% 3.51/1.00  sup_num_in_passive:                     117
% 3.51/1.00  sup_num_of_loops:                       125
% 3.51/1.00  sup_fw_superposition:                   226
% 3.51/1.00  sup_bw_superposition:                   163
% 3.51/1.00  sup_immediate_simplified:               118
% 3.51/1.00  sup_given_eliminated:                   0
% 3.51/1.00  comparisons_done:                       0
% 3.51/1.00  comparisons_avoided:                    35
% 3.51/1.00  
% 3.51/1.00  ------ Simplifications
% 3.51/1.00  
% 3.51/1.00  
% 3.51/1.00  sim_fw_subset_subsumed:                 30
% 3.51/1.00  sim_bw_subset_subsumed:                 52
% 3.51/1.00  sim_fw_subsumed:                        57
% 3.51/1.00  sim_bw_subsumed:                        3
% 3.51/1.00  sim_fw_subsumption_res:                 4
% 3.51/1.00  sim_bw_subsumption_res:                 0
% 3.51/1.00  sim_tautology_del:                      28
% 3.51/1.00  sim_eq_tautology_del:                   17
% 3.51/1.00  sim_eq_res_simp:                        0
% 3.51/1.00  sim_fw_demodulated:                     9
% 3.51/1.00  sim_bw_demodulated:                     35
% 3.51/1.00  sim_light_normalised:                   30
% 3.51/1.00  sim_joinable_taut:                      0
% 3.51/1.00  sim_joinable_simp:                      0
% 3.51/1.00  sim_ac_normalised:                      0
% 3.51/1.00  sim_smt_subsumption:                    0
% 3.51/1.00  
%------------------------------------------------------------------------------
