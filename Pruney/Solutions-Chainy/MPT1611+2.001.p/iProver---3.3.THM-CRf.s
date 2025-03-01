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
% DateTime   : Thu Dec  3 12:20:20 EST 2020

% Result     : Theorem 2.31s
% Output     : CNFRefutation 2.31s
% Verified   : 
% Statistics : Number of formulae       :   94 ( 138 expanded)
%              Number of clauses        :   29 (  34 expanded)
%              Number of leaves         :   20 (  35 expanded)
%              Depth                    :   17
%              Number of atoms          :  197 ( 297 expanded)
%              Number of equality atoms :  109 ( 154 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f37])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f120,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f52])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
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
    inference(nnf_transformation,[],[f12])).

fof(f40,plain,(
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
    inference(rectify,[],[f39])).

fof(f41,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK0(X0,X1),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( r1_tarski(sK0(X0,X1),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK0(X0,X1),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r1_tarski(sK0(X0,X1),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f40,f41])).

fof(f63,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f42])).

fof(f21,axiom,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f83,plain,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    inference(cnf_transformation,[],[f21])).

fof(f97,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k9_setfam_1(X0) != X1 ) ),
    inference(definition_unfolding,[],[f63,f83])).

fof(f121,plain,(
    ! [X0,X3] :
      ( r2_hidden(X3,k9_setfam_1(X0))
      | ~ r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f97])).

fof(f15,axiom,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f70,plain,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f15])).

fof(f103,plain,(
    ! [X0] : k3_tarski(k9_setfam_1(X0)) = X0 ),
    inference(definition_unfolding,[],[f70,f83])).

fof(f24,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ( r2_hidden(k3_tarski(X0),X0)
       => k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f35,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f86,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f22,axiom,(
    ! [X0] : k2_yellow_1(X0) = g1_orders_2(X0,k1_yellow_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f84,plain,(
    ! [X0] : k2_yellow_1(X0) = g1_orders_2(X0,k1_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f22])).

fof(f116,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0)))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f86,f84])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f51,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f2,axiom,(
    k1_xboole_0 = o_0_0_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    k1_xboole_0 = o_0_0_xboole_0 ),
    inference(cnf_transformation,[],[f2])).

fof(f92,plain,(
    ! [X0] :
      ( o_0_0_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f51,f50])).

fof(f25,axiom,(
    ! [X0] : k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f87,plain,(
    ! [X0] : k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0) ),
    inference(cnf_transformation,[],[f25])).

fof(f23,axiom,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f85,plain,(
    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0)) ),
    inference(cnf_transformation,[],[f23])).

fof(f117,plain,(
    ! [X0] : g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0))) = k3_lattice3(k1_lattice3(X0)) ),
    inference(definition_unfolding,[],[f87,f84,f85])).

fof(f26,conjecture,(
    ! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,negated_conjecture,(
    ~ ! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0 ),
    inference(negated_conjecture,[],[f26])).

fof(f36,plain,(
    ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0 ),
    inference(ennf_transformation,[],[f27])).

fof(f47,plain,
    ( ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0
   => k4_yellow_0(k3_yellow_1(sK2)) != sK2 ),
    introduced(choice_axiom,[])).

fof(f48,plain,(
    k4_yellow_0(k3_yellow_1(sK2)) != sK2 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f36,f47])).

fof(f88,plain,(
    k4_yellow_0(k3_yellow_1(sK2)) != sK2 ),
    inference(cnf_transformation,[],[f48])).

fof(f118,plain,(
    k4_yellow_0(k3_lattice3(k1_lattice3(sK2))) != sK2 ),
    inference(definition_unfolding,[],[f88,f85])).

fof(f7,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f5,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f93,plain,(
    ! [X0] : k5_xboole_0(o_0_0_xboole_0,k3_xboole_0(o_0_0_xboole_0,X0)) = o_0_0_xboole_0 ),
    inference(definition_unfolding,[],[f57,f50,f55,f50])).

fof(f16,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f71,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1) ),
    inference(cnf_transformation,[],[f16])).

fof(f104,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k6_subset_1(X0,X1) ),
    inference(definition_unfolding,[],[f71,f55])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
    <=> ( X0 != X2
        & r2_hidden(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
        | X0 = X2
        | ~ r2_hidden(X0,X1) )
      & ( ( X0 != X2
          & r2_hidden(X0,X1) )
        | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f44,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))
        | X0 = X2
        | ~ r2_hidden(X0,X1) )
      & ( ( X0 != X2
          & r2_hidden(X0,X1) )
        | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ) ),
    inference(flattening,[],[f43])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( X0 != X2
      | ~ r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f9,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f89,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f60,f61])).

fof(f90,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f59,f89])).

fof(f101,plain,(
    ! [X2,X0,X1] :
      ( X0 != X2
      | ~ r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X2,X2,X2,X2)))) ) ),
    inference(definition_unfolding,[],[f68,f55,f90])).

fof(f123,plain,(
    ! [X2,X1] : ~ r2_hidden(X2,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X2,X2,X2,X2)))) ),
    inference(equality_resolution,[],[f101])).

cnf(c_5,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f120])).

cnf(c_1031,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_10,plain,
    ( r2_hidden(X0,k9_setfam_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f121])).

cnf(c_1028,plain,
    ( r2_hidden(X0,k9_setfam_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_16,plain,
    ( k3_tarski(k9_setfam_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f103])).

cnf(c_29,plain,
    ( ~ r2_hidden(k3_tarski(X0),X0)
    | v1_xboole_0(X0)
    | k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) = k3_tarski(X0) ),
    inference(cnf_transformation,[],[f116])).

cnf(c_2,plain,
    ( ~ v1_xboole_0(X0)
    | o_0_0_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f92])).

cnf(c_292,plain,
    ( ~ r2_hidden(k3_tarski(X0),X0)
    | k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) = k3_tarski(X0)
    | o_0_0_xboole_0 = X0 ),
    inference(resolution,[status(thm)],[c_29,c_2])).

cnf(c_1017,plain,
    ( k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) = k3_tarski(X0)
    | o_0_0_xboole_0 = X0
    | r2_hidden(k3_tarski(X0),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_292])).

cnf(c_1211,plain,
    ( k4_yellow_0(g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0)))) = k3_tarski(k9_setfam_1(X0))
    | k9_setfam_1(X0) = o_0_0_xboole_0
    | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_16,c_1017])).

cnf(c_1212,plain,
    ( k4_yellow_0(g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0)))) = X0
    | k9_setfam_1(X0) = o_0_0_xboole_0
    | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1211,c_16])).

cnf(c_30,plain,
    ( g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0))) = k3_lattice3(k1_lattice3(X0)) ),
    inference(cnf_transformation,[],[f117])).

cnf(c_1724,plain,
    ( k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0
    | k9_setfam_1(X0) = o_0_0_xboole_0
    | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1212,c_30])).

cnf(c_2425,plain,
    ( k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0
    | k9_setfam_1(X0) = o_0_0_xboole_0
    | r1_tarski(X0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1028,c_1724])).

cnf(c_82,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2763,plain,
    ( k9_setfam_1(X0) = o_0_0_xboole_0
    | k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2425,c_82])).

cnf(c_2764,plain,
    ( k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0
    | k9_setfam_1(X0) = o_0_0_xboole_0 ),
    inference(renaming,[status(thm)],[c_2763])).

cnf(c_31,negated_conjecture,
    ( k4_yellow_0(k3_lattice3(k1_lattice3(sK2))) != sK2 ),
    inference(cnf_transformation,[],[f118])).

cnf(c_2768,plain,
    ( k9_setfam_1(sK2) = o_0_0_xboole_0 ),
    inference(superposition,[status(thm)],[c_2764,c_31])).

cnf(c_2773,plain,
    ( r2_hidden(X0,o_0_0_xboole_0) = iProver_top
    | r1_tarski(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2768,c_1028])).

cnf(c_6,plain,
    ( k5_xboole_0(o_0_0_xboole_0,k3_xboole_0(o_0_0_xboole_0,X0)) = o_0_0_xboole_0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_17,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k6_subset_1(X0,X1) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_1382,plain,
    ( k6_subset_1(o_0_0_xboole_0,X0) = o_0_0_xboole_0 ),
    inference(superposition,[status(thm)],[c_6,c_17])).

cnf(c_14,plain,
    ( ~ r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X0,X0,X0,X0)))) ),
    inference(cnf_transformation,[],[f123])).

cnf(c_1025,plain,
    ( r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X0,X0,X0,X0)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1086,plain,
    ( r2_hidden(X0,k6_subset_1(X1,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1025,c_17])).

cnf(c_2198,plain,
    ( r2_hidden(X0,o_0_0_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1382,c_1086])).

cnf(c_3002,plain,
    ( r1_tarski(X0,sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2773,c_2198])).

cnf(c_3009,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_1031,c_3002])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:59:07 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.31/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.31/0.99  
% 2.31/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.31/0.99  
% 2.31/0.99  ------  iProver source info
% 2.31/0.99  
% 2.31/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.31/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.31/0.99  git: non_committed_changes: false
% 2.31/0.99  git: last_make_outside_of_git: false
% 2.31/0.99  
% 2.31/0.99  ------ 
% 2.31/0.99  
% 2.31/0.99  ------ Input Options
% 2.31/0.99  
% 2.31/0.99  --out_options                           all
% 2.31/0.99  --tptp_safe_out                         true
% 2.31/0.99  --problem_path                          ""
% 2.31/0.99  --include_path                          ""
% 2.31/0.99  --clausifier                            res/vclausify_rel
% 2.31/0.99  --clausifier_options                    --mode clausify
% 2.31/0.99  --stdin                                 false
% 2.31/0.99  --stats_out                             all
% 2.31/0.99  
% 2.31/0.99  ------ General Options
% 2.31/0.99  
% 2.31/0.99  --fof                                   false
% 2.31/0.99  --time_out_real                         305.
% 2.31/0.99  --time_out_virtual                      -1.
% 2.31/0.99  --symbol_type_check                     false
% 2.31/0.99  --clausify_out                          false
% 2.31/0.99  --sig_cnt_out                           false
% 2.31/0.99  --trig_cnt_out                          false
% 2.31/0.99  --trig_cnt_out_tolerance                1.
% 2.31/0.99  --trig_cnt_out_sk_spl                   false
% 2.31/0.99  --abstr_cl_out                          false
% 2.31/0.99  
% 2.31/0.99  ------ Global Options
% 2.31/0.99  
% 2.31/0.99  --schedule                              default
% 2.31/0.99  --add_important_lit                     false
% 2.31/0.99  --prop_solver_per_cl                    1000
% 2.31/0.99  --min_unsat_core                        false
% 2.31/0.99  --soft_assumptions                      false
% 2.31/0.99  --soft_lemma_size                       3
% 2.31/0.99  --prop_impl_unit_size                   0
% 2.31/0.99  --prop_impl_unit                        []
% 2.31/0.99  --share_sel_clauses                     true
% 2.31/0.99  --reset_solvers                         false
% 2.31/0.99  --bc_imp_inh                            [conj_cone]
% 2.31/0.99  --conj_cone_tolerance                   3.
% 2.31/0.99  --extra_neg_conj                        none
% 2.31/0.99  --large_theory_mode                     true
% 2.31/0.99  --prolific_symb_bound                   200
% 2.31/0.99  --lt_threshold                          2000
% 2.31/0.99  --clause_weak_htbl                      true
% 2.31/0.99  --gc_record_bc_elim                     false
% 2.31/0.99  
% 2.31/0.99  ------ Preprocessing Options
% 2.31/0.99  
% 2.31/0.99  --preprocessing_flag                    true
% 2.31/0.99  --time_out_prep_mult                    0.1
% 2.31/0.99  --splitting_mode                        input
% 2.31/0.99  --splitting_grd                         true
% 2.31/0.99  --splitting_cvd                         false
% 2.31/0.99  --splitting_cvd_svl                     false
% 2.31/0.99  --splitting_nvd                         32
% 2.31/0.99  --sub_typing                            true
% 2.31/0.99  --prep_gs_sim                           true
% 2.31/0.99  --prep_unflatten                        true
% 2.31/0.99  --prep_res_sim                          true
% 2.31/0.99  --prep_upred                            true
% 2.31/0.99  --prep_sem_filter                       exhaustive
% 2.31/0.99  --prep_sem_filter_out                   false
% 2.31/0.99  --pred_elim                             true
% 2.31/0.99  --res_sim_input                         true
% 2.31/0.99  --eq_ax_congr_red                       true
% 2.31/0.99  --pure_diseq_elim                       true
% 2.31/0.99  --brand_transform                       false
% 2.31/0.99  --non_eq_to_eq                          false
% 2.31/0.99  --prep_def_merge                        true
% 2.31/0.99  --prep_def_merge_prop_impl              false
% 2.31/0.99  --prep_def_merge_mbd                    true
% 2.31/0.99  --prep_def_merge_tr_red                 false
% 2.31/0.99  --prep_def_merge_tr_cl                  false
% 2.31/0.99  --smt_preprocessing                     true
% 2.31/0.99  --smt_ac_axioms                         fast
% 2.31/0.99  --preprocessed_out                      false
% 2.31/0.99  --preprocessed_stats                    false
% 2.31/0.99  
% 2.31/0.99  ------ Abstraction refinement Options
% 2.31/0.99  
% 2.31/0.99  --abstr_ref                             []
% 2.31/0.99  --abstr_ref_prep                        false
% 2.31/0.99  --abstr_ref_until_sat                   false
% 2.31/0.99  --abstr_ref_sig_restrict                funpre
% 2.31/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.31/0.99  --abstr_ref_under                       []
% 2.31/0.99  
% 2.31/0.99  ------ SAT Options
% 2.31/0.99  
% 2.31/0.99  --sat_mode                              false
% 2.31/0.99  --sat_fm_restart_options                ""
% 2.31/0.99  --sat_gr_def                            false
% 2.31/0.99  --sat_epr_types                         true
% 2.31/0.99  --sat_non_cyclic_types                  false
% 2.31/0.99  --sat_finite_models                     false
% 2.31/0.99  --sat_fm_lemmas                         false
% 2.31/0.99  --sat_fm_prep                           false
% 2.31/0.99  --sat_fm_uc_incr                        true
% 2.31/0.99  --sat_out_model                         small
% 2.31/0.99  --sat_out_clauses                       false
% 2.31/0.99  
% 2.31/0.99  ------ QBF Options
% 2.31/0.99  
% 2.31/0.99  --qbf_mode                              false
% 2.31/0.99  --qbf_elim_univ                         false
% 2.31/0.99  --qbf_dom_inst                          none
% 2.31/0.99  --qbf_dom_pre_inst                      false
% 2.31/0.99  --qbf_sk_in                             false
% 2.31/0.99  --qbf_pred_elim                         true
% 2.31/0.99  --qbf_split                             512
% 2.31/0.99  
% 2.31/0.99  ------ BMC1 Options
% 2.31/0.99  
% 2.31/0.99  --bmc1_incremental                      false
% 2.31/0.99  --bmc1_axioms                           reachable_all
% 2.31/0.99  --bmc1_min_bound                        0
% 2.31/0.99  --bmc1_max_bound                        -1
% 2.31/0.99  --bmc1_max_bound_default                -1
% 2.31/0.99  --bmc1_symbol_reachability              true
% 2.31/0.99  --bmc1_property_lemmas                  false
% 2.31/0.99  --bmc1_k_induction                      false
% 2.31/0.99  --bmc1_non_equiv_states                 false
% 2.31/0.99  --bmc1_deadlock                         false
% 2.31/0.99  --bmc1_ucm                              false
% 2.31/0.99  --bmc1_add_unsat_core                   none
% 2.31/0.99  --bmc1_unsat_core_children              false
% 2.31/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.31/0.99  --bmc1_out_stat                         full
% 2.31/0.99  --bmc1_ground_init                      false
% 2.31/0.99  --bmc1_pre_inst_next_state              false
% 2.31/0.99  --bmc1_pre_inst_state                   false
% 2.31/0.99  --bmc1_pre_inst_reach_state             false
% 2.31/0.99  --bmc1_out_unsat_core                   false
% 2.31/0.99  --bmc1_aig_witness_out                  false
% 2.31/0.99  --bmc1_verbose                          false
% 2.31/0.99  --bmc1_dump_clauses_tptp                false
% 2.31/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.31/0.99  --bmc1_dump_file                        -
% 2.31/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.31/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.31/0.99  --bmc1_ucm_extend_mode                  1
% 2.31/0.99  --bmc1_ucm_init_mode                    2
% 2.31/0.99  --bmc1_ucm_cone_mode                    none
% 2.31/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.31/0.99  --bmc1_ucm_relax_model                  4
% 2.31/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.31/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.31/0.99  --bmc1_ucm_layered_model                none
% 2.31/0.99  --bmc1_ucm_max_lemma_size               10
% 2.31/0.99  
% 2.31/0.99  ------ AIG Options
% 2.31/0.99  
% 2.31/0.99  --aig_mode                              false
% 2.31/0.99  
% 2.31/0.99  ------ Instantiation Options
% 2.31/0.99  
% 2.31/0.99  --instantiation_flag                    true
% 2.31/0.99  --inst_sos_flag                         false
% 2.31/0.99  --inst_sos_phase                        true
% 2.31/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.31/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.31/0.99  --inst_lit_sel_side                     num_symb
% 2.31/0.99  --inst_solver_per_active                1400
% 2.31/0.99  --inst_solver_calls_frac                1.
% 2.31/0.99  --inst_passive_queue_type               priority_queues
% 2.31/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.31/0.99  --inst_passive_queues_freq              [25;2]
% 2.31/0.99  --inst_dismatching                      true
% 2.31/0.99  --inst_eager_unprocessed_to_passive     true
% 2.31/0.99  --inst_prop_sim_given                   true
% 2.31/0.99  --inst_prop_sim_new                     false
% 2.31/0.99  --inst_subs_new                         false
% 2.31/0.99  --inst_eq_res_simp                      false
% 2.31/0.99  --inst_subs_given                       false
% 2.31/0.99  --inst_orphan_elimination               true
% 2.31/0.99  --inst_learning_loop_flag               true
% 2.31/0.99  --inst_learning_start                   3000
% 2.31/0.99  --inst_learning_factor                  2
% 2.31/0.99  --inst_start_prop_sim_after_learn       3
% 2.31/0.99  --inst_sel_renew                        solver
% 2.31/0.99  --inst_lit_activity_flag                true
% 2.31/0.99  --inst_restr_to_given                   false
% 2.31/0.99  --inst_activity_threshold               500
% 2.31/0.99  --inst_out_proof                        true
% 2.31/0.99  
% 2.31/0.99  ------ Resolution Options
% 2.31/0.99  
% 2.31/0.99  --resolution_flag                       true
% 2.31/0.99  --res_lit_sel                           adaptive
% 2.31/0.99  --res_lit_sel_side                      none
% 2.31/0.99  --res_ordering                          kbo
% 2.31/0.99  --res_to_prop_solver                    active
% 2.31/0.99  --res_prop_simpl_new                    false
% 2.31/0.99  --res_prop_simpl_given                  true
% 2.31/0.99  --res_passive_queue_type                priority_queues
% 2.31/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.31/0.99  --res_passive_queues_freq               [15;5]
% 2.31/0.99  --res_forward_subs                      full
% 2.31/0.99  --res_backward_subs                     full
% 2.31/0.99  --res_forward_subs_resolution           true
% 2.31/0.99  --res_backward_subs_resolution          true
% 2.31/0.99  --res_orphan_elimination                true
% 2.31/0.99  --res_time_limit                        2.
% 2.31/0.99  --res_out_proof                         true
% 2.31/0.99  
% 2.31/0.99  ------ Superposition Options
% 2.31/0.99  
% 2.31/0.99  --superposition_flag                    true
% 2.31/0.99  --sup_passive_queue_type                priority_queues
% 2.31/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.31/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.31/0.99  --demod_completeness_check              fast
% 2.31/0.99  --demod_use_ground                      true
% 2.31/0.99  --sup_to_prop_solver                    passive
% 2.31/0.99  --sup_prop_simpl_new                    true
% 2.31/0.99  --sup_prop_simpl_given                  true
% 2.31/0.99  --sup_fun_splitting                     false
% 2.31/0.99  --sup_smt_interval                      50000
% 2.31/0.99  
% 2.31/0.99  ------ Superposition Simplification Setup
% 2.31/0.99  
% 2.31/0.99  --sup_indices_passive                   []
% 2.31/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.31/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.31/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.31/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.31/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.31/0.99  --sup_full_bw                           [BwDemod]
% 2.31/0.99  --sup_immed_triv                        [TrivRules]
% 2.31/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.31/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.31/0.99  --sup_immed_bw_main                     []
% 2.31/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.31/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.31/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.31/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.31/0.99  
% 2.31/0.99  ------ Combination Options
% 2.31/0.99  
% 2.31/0.99  --comb_res_mult                         3
% 2.31/0.99  --comb_sup_mult                         2
% 2.31/0.99  --comb_inst_mult                        10
% 2.31/0.99  
% 2.31/0.99  ------ Debug Options
% 2.31/0.99  
% 2.31/0.99  --dbg_backtrace                         false
% 2.31/0.99  --dbg_dump_prop_clauses                 false
% 2.31/0.99  --dbg_dump_prop_clauses_file            -
% 2.31/0.99  --dbg_out_stat                          false
% 2.31/0.99  ------ Parsing...
% 2.31/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.31/0.99  
% 2.31/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.31/0.99  
% 2.31/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.31/0.99  
% 2.31/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.31/0.99  ------ Proving...
% 2.31/0.99  ------ Problem Properties 
% 2.31/0.99  
% 2.31/0.99  
% 2.31/0.99  clauses                                 30
% 2.31/0.99  conjectures                             1
% 2.31/0.99  EPR                                     2
% 2.31/0.99  Horn                                    24
% 2.31/0.99  unary                                   17
% 2.31/0.99  binary                                  6
% 2.31/0.99  lits                                    50
% 2.31/0.99  lits eq                                 27
% 2.31/0.99  fd_pure                                 0
% 2.31/0.99  fd_pseudo                               0
% 2.31/0.99  fd_cond                                 5
% 2.31/0.99  fd_pseudo_cond                          4
% 2.31/0.99  AC symbols                              0
% 2.31/0.99  
% 2.31/0.99  ------ Schedule dynamic 5 is on 
% 2.31/0.99  
% 2.31/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.31/0.99  
% 2.31/0.99  
% 2.31/0.99  ------ 
% 2.31/0.99  Current options:
% 2.31/0.99  ------ 
% 2.31/0.99  
% 2.31/0.99  ------ Input Options
% 2.31/0.99  
% 2.31/0.99  --out_options                           all
% 2.31/0.99  --tptp_safe_out                         true
% 2.31/0.99  --problem_path                          ""
% 2.31/0.99  --include_path                          ""
% 2.31/0.99  --clausifier                            res/vclausify_rel
% 2.31/0.99  --clausifier_options                    --mode clausify
% 2.31/0.99  --stdin                                 false
% 2.31/0.99  --stats_out                             all
% 2.31/0.99  
% 2.31/0.99  ------ General Options
% 2.31/0.99  
% 2.31/0.99  --fof                                   false
% 2.31/0.99  --time_out_real                         305.
% 2.31/0.99  --time_out_virtual                      -1.
% 2.31/0.99  --symbol_type_check                     false
% 2.31/0.99  --clausify_out                          false
% 2.31/0.99  --sig_cnt_out                           false
% 2.31/0.99  --trig_cnt_out                          false
% 2.31/0.99  --trig_cnt_out_tolerance                1.
% 2.31/0.99  --trig_cnt_out_sk_spl                   false
% 2.31/0.99  --abstr_cl_out                          false
% 2.31/0.99  
% 2.31/0.99  ------ Global Options
% 2.31/0.99  
% 2.31/0.99  --schedule                              default
% 2.31/0.99  --add_important_lit                     false
% 2.31/0.99  --prop_solver_per_cl                    1000
% 2.31/0.99  --min_unsat_core                        false
% 2.31/0.99  --soft_assumptions                      false
% 2.31/0.99  --soft_lemma_size                       3
% 2.31/0.99  --prop_impl_unit_size                   0
% 2.31/0.99  --prop_impl_unit                        []
% 2.31/0.99  --share_sel_clauses                     true
% 2.31/0.99  --reset_solvers                         false
% 2.31/0.99  --bc_imp_inh                            [conj_cone]
% 2.31/0.99  --conj_cone_tolerance                   3.
% 2.31/0.99  --extra_neg_conj                        none
% 2.31/0.99  --large_theory_mode                     true
% 2.31/0.99  --prolific_symb_bound                   200
% 2.31/0.99  --lt_threshold                          2000
% 2.31/0.99  --clause_weak_htbl                      true
% 2.31/0.99  --gc_record_bc_elim                     false
% 2.31/0.99  
% 2.31/0.99  ------ Preprocessing Options
% 2.31/0.99  
% 2.31/0.99  --preprocessing_flag                    true
% 2.31/0.99  --time_out_prep_mult                    0.1
% 2.31/0.99  --splitting_mode                        input
% 2.31/0.99  --splitting_grd                         true
% 2.31/0.99  --splitting_cvd                         false
% 2.31/0.99  --splitting_cvd_svl                     false
% 2.31/0.99  --splitting_nvd                         32
% 2.31/0.99  --sub_typing                            true
% 2.31/0.99  --prep_gs_sim                           true
% 2.31/0.99  --prep_unflatten                        true
% 2.31/0.99  --prep_res_sim                          true
% 2.31/0.99  --prep_upred                            true
% 2.31/0.99  --prep_sem_filter                       exhaustive
% 2.31/0.99  --prep_sem_filter_out                   false
% 2.31/0.99  --pred_elim                             true
% 2.31/0.99  --res_sim_input                         true
% 2.31/0.99  --eq_ax_congr_red                       true
% 2.31/0.99  --pure_diseq_elim                       true
% 2.31/0.99  --brand_transform                       false
% 2.31/0.99  --non_eq_to_eq                          false
% 2.31/0.99  --prep_def_merge                        true
% 2.31/0.99  --prep_def_merge_prop_impl              false
% 2.31/0.99  --prep_def_merge_mbd                    true
% 2.31/0.99  --prep_def_merge_tr_red                 false
% 2.31/0.99  --prep_def_merge_tr_cl                  false
% 2.31/0.99  --smt_preprocessing                     true
% 2.31/0.99  --smt_ac_axioms                         fast
% 2.31/0.99  --preprocessed_out                      false
% 2.31/0.99  --preprocessed_stats                    false
% 2.31/0.99  
% 2.31/0.99  ------ Abstraction refinement Options
% 2.31/0.99  
% 2.31/0.99  --abstr_ref                             []
% 2.31/0.99  --abstr_ref_prep                        false
% 2.31/0.99  --abstr_ref_until_sat                   false
% 2.31/0.99  --abstr_ref_sig_restrict                funpre
% 2.31/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.31/0.99  --abstr_ref_under                       []
% 2.31/0.99  
% 2.31/0.99  ------ SAT Options
% 2.31/0.99  
% 2.31/0.99  --sat_mode                              false
% 2.31/0.99  --sat_fm_restart_options                ""
% 2.31/0.99  --sat_gr_def                            false
% 2.31/0.99  --sat_epr_types                         true
% 2.31/0.99  --sat_non_cyclic_types                  false
% 2.31/0.99  --sat_finite_models                     false
% 2.31/0.99  --sat_fm_lemmas                         false
% 2.31/0.99  --sat_fm_prep                           false
% 2.31/0.99  --sat_fm_uc_incr                        true
% 2.31/0.99  --sat_out_model                         small
% 2.31/0.99  --sat_out_clauses                       false
% 2.31/0.99  
% 2.31/0.99  ------ QBF Options
% 2.31/0.99  
% 2.31/0.99  --qbf_mode                              false
% 2.31/0.99  --qbf_elim_univ                         false
% 2.31/0.99  --qbf_dom_inst                          none
% 2.31/0.99  --qbf_dom_pre_inst                      false
% 2.31/0.99  --qbf_sk_in                             false
% 2.31/0.99  --qbf_pred_elim                         true
% 2.31/0.99  --qbf_split                             512
% 2.31/0.99  
% 2.31/0.99  ------ BMC1 Options
% 2.31/0.99  
% 2.31/0.99  --bmc1_incremental                      false
% 2.31/0.99  --bmc1_axioms                           reachable_all
% 2.31/0.99  --bmc1_min_bound                        0
% 2.31/0.99  --bmc1_max_bound                        -1
% 2.31/0.99  --bmc1_max_bound_default                -1
% 2.31/0.99  --bmc1_symbol_reachability              true
% 2.31/0.99  --bmc1_property_lemmas                  false
% 2.31/0.99  --bmc1_k_induction                      false
% 2.31/0.99  --bmc1_non_equiv_states                 false
% 2.31/0.99  --bmc1_deadlock                         false
% 2.31/0.99  --bmc1_ucm                              false
% 2.31/0.99  --bmc1_add_unsat_core                   none
% 2.31/0.99  --bmc1_unsat_core_children              false
% 2.31/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.31/0.99  --bmc1_out_stat                         full
% 2.31/0.99  --bmc1_ground_init                      false
% 2.31/0.99  --bmc1_pre_inst_next_state              false
% 2.31/0.99  --bmc1_pre_inst_state                   false
% 2.31/0.99  --bmc1_pre_inst_reach_state             false
% 2.31/0.99  --bmc1_out_unsat_core                   false
% 2.31/0.99  --bmc1_aig_witness_out                  false
% 2.31/0.99  --bmc1_verbose                          false
% 2.31/0.99  --bmc1_dump_clauses_tptp                false
% 2.31/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.31/0.99  --bmc1_dump_file                        -
% 2.31/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.31/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.31/0.99  --bmc1_ucm_extend_mode                  1
% 2.31/0.99  --bmc1_ucm_init_mode                    2
% 2.31/0.99  --bmc1_ucm_cone_mode                    none
% 2.31/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.31/0.99  --bmc1_ucm_relax_model                  4
% 2.31/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.31/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.31/0.99  --bmc1_ucm_layered_model                none
% 2.31/0.99  --bmc1_ucm_max_lemma_size               10
% 2.31/0.99  
% 2.31/0.99  ------ AIG Options
% 2.31/0.99  
% 2.31/0.99  --aig_mode                              false
% 2.31/0.99  
% 2.31/0.99  ------ Instantiation Options
% 2.31/0.99  
% 2.31/0.99  --instantiation_flag                    true
% 2.31/0.99  --inst_sos_flag                         false
% 2.31/0.99  --inst_sos_phase                        true
% 2.31/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.31/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.31/0.99  --inst_lit_sel_side                     none
% 2.31/0.99  --inst_solver_per_active                1400
% 2.31/0.99  --inst_solver_calls_frac                1.
% 2.31/0.99  --inst_passive_queue_type               priority_queues
% 2.31/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.31/1.00  --inst_passive_queues_freq              [25;2]
% 2.31/1.00  --inst_dismatching                      true
% 2.31/1.00  --inst_eager_unprocessed_to_passive     true
% 2.31/1.00  --inst_prop_sim_given                   true
% 2.31/1.00  --inst_prop_sim_new                     false
% 2.31/1.00  --inst_subs_new                         false
% 2.31/1.00  --inst_eq_res_simp                      false
% 2.31/1.00  --inst_subs_given                       false
% 2.31/1.00  --inst_orphan_elimination               true
% 2.31/1.00  --inst_learning_loop_flag               true
% 2.31/1.00  --inst_learning_start                   3000
% 2.31/1.00  --inst_learning_factor                  2
% 2.31/1.00  --inst_start_prop_sim_after_learn       3
% 2.31/1.00  --inst_sel_renew                        solver
% 2.31/1.00  --inst_lit_activity_flag                true
% 2.31/1.00  --inst_restr_to_given                   false
% 2.31/1.00  --inst_activity_threshold               500
% 2.31/1.00  --inst_out_proof                        true
% 2.31/1.00  
% 2.31/1.00  ------ Resolution Options
% 2.31/1.00  
% 2.31/1.00  --resolution_flag                       false
% 2.31/1.00  --res_lit_sel                           adaptive
% 2.31/1.00  --res_lit_sel_side                      none
% 2.31/1.00  --res_ordering                          kbo
% 2.31/1.00  --res_to_prop_solver                    active
% 2.31/1.00  --res_prop_simpl_new                    false
% 2.31/1.00  --res_prop_simpl_given                  true
% 2.31/1.00  --res_passive_queue_type                priority_queues
% 2.31/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.31/1.00  --res_passive_queues_freq               [15;5]
% 2.31/1.00  --res_forward_subs                      full
% 2.31/1.00  --res_backward_subs                     full
% 2.31/1.00  --res_forward_subs_resolution           true
% 2.31/1.00  --res_backward_subs_resolution          true
% 2.31/1.00  --res_orphan_elimination                true
% 2.31/1.00  --res_time_limit                        2.
% 2.31/1.00  --res_out_proof                         true
% 2.31/1.00  
% 2.31/1.00  ------ Superposition Options
% 2.31/1.00  
% 2.31/1.00  --superposition_flag                    true
% 2.31/1.00  --sup_passive_queue_type                priority_queues
% 2.31/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.31/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.31/1.00  --demod_completeness_check              fast
% 2.31/1.00  --demod_use_ground                      true
% 2.31/1.00  --sup_to_prop_solver                    passive
% 2.31/1.00  --sup_prop_simpl_new                    true
% 2.31/1.00  --sup_prop_simpl_given                  true
% 2.31/1.00  --sup_fun_splitting                     false
% 2.31/1.00  --sup_smt_interval                      50000
% 2.31/1.00  
% 2.31/1.00  ------ Superposition Simplification Setup
% 2.31/1.00  
% 2.31/1.00  --sup_indices_passive                   []
% 2.31/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.31/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.31/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.31/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.31/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.31/1.00  --sup_full_bw                           [BwDemod]
% 2.31/1.00  --sup_immed_triv                        [TrivRules]
% 2.31/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.31/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.31/1.00  --sup_immed_bw_main                     []
% 2.31/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.31/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.31/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.31/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.31/1.00  
% 2.31/1.00  ------ Combination Options
% 2.31/1.00  
% 2.31/1.00  --comb_res_mult                         3
% 2.31/1.00  --comb_sup_mult                         2
% 2.31/1.00  --comb_inst_mult                        10
% 2.31/1.00  
% 2.31/1.00  ------ Debug Options
% 2.31/1.00  
% 2.31/1.00  --dbg_backtrace                         false
% 2.31/1.00  --dbg_dump_prop_clauses                 false
% 2.31/1.00  --dbg_dump_prop_clauses_file            -
% 2.31/1.00  --dbg_out_stat                          false
% 2.31/1.00  
% 2.31/1.00  
% 2.31/1.00  
% 2.31/1.00  
% 2.31/1.00  ------ Proving...
% 2.31/1.00  
% 2.31/1.00  
% 2.31/1.00  % SZS status Theorem for theBenchmark.p
% 2.31/1.00  
% 2.31/1.00   Resolution empty clause
% 2.31/1.00  
% 2.31/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.31/1.00  
% 2.31/1.00  fof(f4,axiom,(
% 2.31/1.00    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f37,plain,(
% 2.31/1.00    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.31/1.00    inference(nnf_transformation,[],[f4])).
% 2.31/1.00  
% 2.31/1.00  fof(f38,plain,(
% 2.31/1.00    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.31/1.00    inference(flattening,[],[f37])).
% 2.31/1.00  
% 2.31/1.00  fof(f52,plain,(
% 2.31/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.31/1.00    inference(cnf_transformation,[],[f38])).
% 2.31/1.00  
% 2.31/1.00  fof(f120,plain,(
% 2.31/1.00    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.31/1.00    inference(equality_resolution,[],[f52])).
% 2.31/1.00  
% 2.31/1.00  fof(f12,axiom,(
% 2.31/1.00    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f39,plain,(
% 2.31/1.00    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.31/1.00    inference(nnf_transformation,[],[f12])).
% 2.31/1.00  
% 2.31/1.00  fof(f40,plain,(
% 2.31/1.00    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.31/1.00    inference(rectify,[],[f39])).
% 2.31/1.00  
% 2.31/1.00  fof(f41,plain,(
% 2.31/1.00    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 2.31/1.00    introduced(choice_axiom,[])).
% 2.31/1.00  
% 2.31/1.00  fof(f42,plain,(
% 2.31/1.00    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 2.31/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f40,f41])).
% 2.31/1.00  
% 2.31/1.00  fof(f63,plain,(
% 2.31/1.00    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k1_zfmisc_1(X0) != X1) )),
% 2.31/1.00    inference(cnf_transformation,[],[f42])).
% 2.31/1.00  
% 2.31/1.00  fof(f21,axiom,(
% 2.31/1.00    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f83,plain,(
% 2.31/1.00    ( ! [X0] : (k1_zfmisc_1(X0) = k9_setfam_1(X0)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f21])).
% 2.31/1.00  
% 2.31/1.00  fof(f97,plain,(
% 2.31/1.00    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k9_setfam_1(X0) != X1) )),
% 2.31/1.00    inference(definition_unfolding,[],[f63,f83])).
% 2.31/1.00  
% 2.31/1.00  fof(f121,plain,(
% 2.31/1.00    ( ! [X0,X3] : (r2_hidden(X3,k9_setfam_1(X0)) | ~r1_tarski(X3,X0)) )),
% 2.31/1.00    inference(equality_resolution,[],[f97])).
% 2.31/1.00  
% 2.31/1.00  fof(f15,axiom,(
% 2.31/1.00    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f70,plain,(
% 2.31/1.00    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 2.31/1.00    inference(cnf_transformation,[],[f15])).
% 2.31/1.00  
% 2.31/1.00  fof(f103,plain,(
% 2.31/1.00    ( ! [X0] : (k3_tarski(k9_setfam_1(X0)) = X0) )),
% 2.31/1.00    inference(definition_unfolding,[],[f70,f83])).
% 2.31/1.00  
% 2.31/1.00  fof(f24,axiom,(
% 2.31/1.00    ! [X0] : (~v1_xboole_0(X0) => (r2_hidden(k3_tarski(X0),X0) => k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))))),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f34,plain,(
% 2.31/1.00    ! [X0] : ((k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0)) | v1_xboole_0(X0))),
% 2.31/1.00    inference(ennf_transformation,[],[f24])).
% 2.31/1.00  
% 2.31/1.00  fof(f35,plain,(
% 2.31/1.00    ! [X0] : (k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0))),
% 2.31/1.00    inference(flattening,[],[f34])).
% 2.31/1.00  
% 2.31/1.00  fof(f86,plain,(
% 2.31/1.00    ( ! [X0] : (k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f35])).
% 2.31/1.00  
% 2.31/1.00  fof(f22,axiom,(
% 2.31/1.00    ! [X0] : k2_yellow_1(X0) = g1_orders_2(X0,k1_yellow_1(X0))),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f84,plain,(
% 2.31/1.00    ( ! [X0] : (k2_yellow_1(X0) = g1_orders_2(X0,k1_yellow_1(X0))) )),
% 2.31/1.00    inference(cnf_transformation,[],[f22])).
% 2.31/1.00  
% 2.31/1.00  fof(f116,plain,(
% 2.31/1.00    ( ! [X0] : (k3_tarski(X0) = k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0)) )),
% 2.31/1.00    inference(definition_unfolding,[],[f86,f84])).
% 2.31/1.00  
% 2.31/1.00  fof(f3,axiom,(
% 2.31/1.00    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f29,plain,(
% 2.31/1.00    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 2.31/1.00    inference(ennf_transformation,[],[f3])).
% 2.31/1.00  
% 2.31/1.00  fof(f51,plain,(
% 2.31/1.00    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f29])).
% 2.31/1.00  
% 2.31/1.00  fof(f2,axiom,(
% 2.31/1.00    k1_xboole_0 = o_0_0_xboole_0),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f50,plain,(
% 2.31/1.00    k1_xboole_0 = o_0_0_xboole_0),
% 2.31/1.00    inference(cnf_transformation,[],[f2])).
% 2.31/1.00  
% 2.31/1.00  fof(f92,plain,(
% 2.31/1.00    ( ! [X0] : (o_0_0_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.31/1.00    inference(definition_unfolding,[],[f51,f50])).
% 2.31/1.00  
% 2.31/1.00  fof(f25,axiom,(
% 2.31/1.00    ! [X0] : k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f87,plain,(
% 2.31/1.00    ( ! [X0] : (k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f25])).
% 2.31/1.00  
% 2.31/1.00  fof(f23,axiom,(
% 2.31/1.00    ! [X0] : k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f85,plain,(
% 2.31/1.00    ( ! [X0] : (k3_yellow_1(X0) = k3_lattice3(k1_lattice3(X0))) )),
% 2.31/1.00    inference(cnf_transformation,[],[f23])).
% 2.31/1.00  
% 2.31/1.00  fof(f117,plain,(
% 2.31/1.00    ( ! [X0] : (g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0))) = k3_lattice3(k1_lattice3(X0))) )),
% 2.31/1.00    inference(definition_unfolding,[],[f87,f84,f85])).
% 2.31/1.00  
% 2.31/1.00  fof(f26,conjecture,(
% 2.31/1.00    ! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f27,negated_conjecture,(
% 2.31/1.00    ~! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0),
% 2.31/1.00    inference(negated_conjecture,[],[f26])).
% 2.31/1.00  
% 2.31/1.00  fof(f36,plain,(
% 2.31/1.00    ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0),
% 2.31/1.00    inference(ennf_transformation,[],[f27])).
% 2.31/1.00  
% 2.31/1.00  fof(f47,plain,(
% 2.31/1.00    ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0 => k4_yellow_0(k3_yellow_1(sK2)) != sK2),
% 2.31/1.00    introduced(choice_axiom,[])).
% 2.31/1.00  
% 2.31/1.00  fof(f48,plain,(
% 2.31/1.00    k4_yellow_0(k3_yellow_1(sK2)) != sK2),
% 2.31/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f36,f47])).
% 2.31/1.00  
% 2.31/1.00  fof(f88,plain,(
% 2.31/1.00    k4_yellow_0(k3_yellow_1(sK2)) != sK2),
% 2.31/1.00    inference(cnf_transformation,[],[f48])).
% 2.31/1.00  
% 2.31/1.00  fof(f118,plain,(
% 2.31/1.00    k4_yellow_0(k3_lattice3(k1_lattice3(sK2))) != sK2),
% 2.31/1.00    inference(definition_unfolding,[],[f88,f85])).
% 2.31/1.00  
% 2.31/1.00  fof(f7,axiom,(
% 2.31/1.00    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f57,plain,(
% 2.31/1.00    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f7])).
% 2.31/1.00  
% 2.31/1.00  fof(f5,axiom,(
% 2.31/1.00    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f55,plain,(
% 2.31/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f5])).
% 2.31/1.00  
% 2.31/1.00  fof(f93,plain,(
% 2.31/1.00    ( ! [X0] : (k5_xboole_0(o_0_0_xboole_0,k3_xboole_0(o_0_0_xboole_0,X0)) = o_0_0_xboole_0) )),
% 2.31/1.00    inference(definition_unfolding,[],[f57,f50,f55,f50])).
% 2.31/1.00  
% 2.31/1.00  fof(f16,axiom,(
% 2.31/1.00    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f71,plain,(
% 2.31/1.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k6_subset_1(X0,X1)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f16])).
% 2.31/1.00  
% 2.31/1.00  fof(f104,plain,(
% 2.31/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k6_subset_1(X0,X1)) )),
% 2.31/1.00    inference(definition_unfolding,[],[f71,f55])).
% 2.31/1.00  
% 2.31/1.00  fof(f14,axiom,(
% 2.31/1.00    ! [X0,X1,X2] : (r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) <=> (X0 != X2 & r2_hidden(X0,X1)))),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f43,plain,(
% 2.31/1.00    ! [X0,X1,X2] : ((r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | (X0 = X2 | ~r2_hidden(X0,X1))) & ((X0 != X2 & r2_hidden(X0,X1)) | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))))),
% 2.31/1.00    inference(nnf_transformation,[],[f14])).
% 2.31/1.00  
% 2.31/1.00  fof(f44,plain,(
% 2.31/1.00    ! [X0,X1,X2] : ((r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2))) | X0 = X2 | ~r2_hidden(X0,X1)) & ((X0 != X2 & r2_hidden(X0,X1)) | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))))),
% 2.31/1.00    inference(flattening,[],[f43])).
% 2.31/1.00  
% 2.31/1.00  fof(f68,plain,(
% 2.31/1.00    ( ! [X2,X0,X1] : (X0 != X2 | ~r2_hidden(X0,k4_xboole_0(X1,k1_tarski(X2)))) )),
% 2.31/1.00    inference(cnf_transformation,[],[f44])).
% 2.31/1.00  
% 2.31/1.00  fof(f9,axiom,(
% 2.31/1.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f59,plain,(
% 2.31/1.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f9])).
% 2.31/1.00  
% 2.31/1.00  fof(f10,axiom,(
% 2.31/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f60,plain,(
% 2.31/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f10])).
% 2.31/1.00  
% 2.31/1.00  fof(f11,axiom,(
% 2.31/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.31/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.31/1.00  
% 2.31/1.00  fof(f61,plain,(
% 2.31/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.31/1.00    inference(cnf_transformation,[],[f11])).
% 2.31/1.00  
% 2.31/1.00  fof(f89,plain,(
% 2.31/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 2.31/1.00    inference(definition_unfolding,[],[f60,f61])).
% 2.31/1.00  
% 2.31/1.00  fof(f90,plain,(
% 2.31/1.00    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 2.31/1.00    inference(definition_unfolding,[],[f59,f89])).
% 2.31/1.00  
% 2.31/1.00  fof(f101,plain,(
% 2.31/1.00    ( ! [X2,X0,X1] : (X0 != X2 | ~r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X2,X2,X2,X2))))) )),
% 2.31/1.00    inference(definition_unfolding,[],[f68,f55,f90])).
% 2.31/1.00  
% 2.31/1.00  fof(f123,plain,(
% 2.31/1.00    ( ! [X2,X1] : (~r2_hidden(X2,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X2,X2,X2,X2))))) )),
% 2.31/1.00    inference(equality_resolution,[],[f101])).
% 2.31/1.00  
% 2.31/1.00  cnf(c_5,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f120]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1031,plain,
% 2.31/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 2.31/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_10,plain,
% 2.31/1.00      ( r2_hidden(X0,k9_setfam_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.31/1.00      inference(cnf_transformation,[],[f121]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1028,plain,
% 2.31/1.00      ( r2_hidden(X0,k9_setfam_1(X1)) = iProver_top
% 2.31/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 2.31/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_16,plain,
% 2.31/1.00      ( k3_tarski(k9_setfam_1(X0)) = X0 ),
% 2.31/1.00      inference(cnf_transformation,[],[f103]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_29,plain,
% 2.31/1.00      ( ~ r2_hidden(k3_tarski(X0),X0)
% 2.31/1.00      | v1_xboole_0(X0)
% 2.31/1.00      | k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) = k3_tarski(X0) ),
% 2.31/1.00      inference(cnf_transformation,[],[f116]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2,plain,
% 2.31/1.00      ( ~ v1_xboole_0(X0) | o_0_0_xboole_0 = X0 ),
% 2.31/1.00      inference(cnf_transformation,[],[f92]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_292,plain,
% 2.31/1.00      ( ~ r2_hidden(k3_tarski(X0),X0)
% 2.31/1.00      | k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) = k3_tarski(X0)
% 2.31/1.00      | o_0_0_xboole_0 = X0 ),
% 2.31/1.00      inference(resolution,[status(thm)],[c_29,c_2]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1017,plain,
% 2.31/1.00      ( k4_yellow_0(g1_orders_2(X0,k1_yellow_1(X0))) = k3_tarski(X0)
% 2.31/1.00      | o_0_0_xboole_0 = X0
% 2.31/1.00      | r2_hidden(k3_tarski(X0),X0) != iProver_top ),
% 2.31/1.00      inference(predicate_to_equality,[status(thm)],[c_292]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1211,plain,
% 2.31/1.00      ( k4_yellow_0(g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0)))) = k3_tarski(k9_setfam_1(X0))
% 2.31/1.00      | k9_setfam_1(X0) = o_0_0_xboole_0
% 2.31/1.00      | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_16,c_1017]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1212,plain,
% 2.31/1.00      ( k4_yellow_0(g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0)))) = X0
% 2.31/1.00      | k9_setfam_1(X0) = o_0_0_xboole_0
% 2.31/1.00      | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
% 2.31/1.00      inference(light_normalisation,[status(thm)],[c_1211,c_16]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_30,plain,
% 2.31/1.00      ( g1_orders_2(k9_setfam_1(X0),k1_yellow_1(k9_setfam_1(X0))) = k3_lattice3(k1_lattice3(X0)) ),
% 2.31/1.00      inference(cnf_transformation,[],[f117]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1724,plain,
% 2.31/1.00      ( k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0
% 2.31/1.00      | k9_setfam_1(X0) = o_0_0_xboole_0
% 2.31/1.00      | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
% 2.31/1.00      inference(light_normalisation,[status(thm)],[c_1212,c_30]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2425,plain,
% 2.31/1.00      ( k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0
% 2.31/1.00      | k9_setfam_1(X0) = o_0_0_xboole_0
% 2.31/1.00      | r1_tarski(X0,X0) != iProver_top ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_1028,c_1724]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_82,plain,
% 2.31/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 2.31/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2763,plain,
% 2.31/1.00      ( k9_setfam_1(X0) = o_0_0_xboole_0
% 2.31/1.00      | k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0 ),
% 2.31/1.00      inference(global_propositional_subsumption,[status(thm)],[c_2425,c_82]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2764,plain,
% 2.31/1.00      ( k4_yellow_0(k3_lattice3(k1_lattice3(X0))) = X0
% 2.31/1.00      | k9_setfam_1(X0) = o_0_0_xboole_0 ),
% 2.31/1.00      inference(renaming,[status(thm)],[c_2763]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_31,negated_conjecture,
% 2.31/1.00      ( k4_yellow_0(k3_lattice3(k1_lattice3(sK2))) != sK2 ),
% 2.31/1.00      inference(cnf_transformation,[],[f118]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2768,plain,
% 2.31/1.00      ( k9_setfam_1(sK2) = o_0_0_xboole_0 ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_2764,c_31]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2773,plain,
% 2.31/1.00      ( r2_hidden(X0,o_0_0_xboole_0) = iProver_top
% 2.31/1.00      | r1_tarski(X0,sK2) != iProver_top ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_2768,c_1028]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_6,plain,
% 2.31/1.00      ( k5_xboole_0(o_0_0_xboole_0,k3_xboole_0(o_0_0_xboole_0,X0)) = o_0_0_xboole_0 ),
% 2.31/1.00      inference(cnf_transformation,[],[f93]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_17,plain,
% 2.31/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k6_subset_1(X0,X1) ),
% 2.31/1.00      inference(cnf_transformation,[],[f104]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1382,plain,
% 2.31/1.00      ( k6_subset_1(o_0_0_xboole_0,X0) = o_0_0_xboole_0 ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_6,c_17]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_14,plain,
% 2.31/1.00      ( ~ r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X0,X0,X0,X0)))) ),
% 2.31/1.00      inference(cnf_transformation,[],[f123]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1025,plain,
% 2.31/1.00      ( r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,k2_enumset1(X0,X0,X0,X0)))) != iProver_top ),
% 2.31/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_1086,plain,
% 2.31/1.00      ( r2_hidden(X0,k6_subset_1(X1,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
% 2.31/1.00      inference(demodulation,[status(thm)],[c_1025,c_17]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_2198,plain,
% 2.31/1.00      ( r2_hidden(X0,o_0_0_xboole_0) != iProver_top ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_1382,c_1086]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_3002,plain,
% 2.31/1.00      ( r1_tarski(X0,sK2) != iProver_top ),
% 2.31/1.00      inference(global_propositional_subsumption,[status(thm)],[c_2773,c_2198]) ).
% 2.31/1.00  
% 2.31/1.00  cnf(c_3009,plain,
% 2.31/1.00      ( $false ),
% 2.31/1.00      inference(superposition,[status(thm)],[c_1031,c_3002]) ).
% 2.31/1.00  
% 2.31/1.00  
% 2.31/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.31/1.00  
% 2.31/1.00  ------                               Statistics
% 2.31/1.00  
% 2.31/1.00  ------ General
% 2.31/1.00  
% 2.31/1.00  abstr_ref_over_cycles:                  0
% 2.31/1.00  abstr_ref_under_cycles:                 0
% 2.31/1.00  gc_basic_clause_elim:                   0
% 2.31/1.00  forced_gc_time:                         0
% 2.31/1.00  parsing_time:                           0.01
% 2.31/1.00  unif_index_cands_time:                  0.
% 2.31/1.00  unif_index_add_time:                    0.
% 2.31/1.00  orderings_time:                         0.
% 2.31/1.00  out_proof_time:                         0.012
% 2.31/1.00  total_time:                             0.124
% 2.31/1.00  num_of_symbols:                         53
% 2.31/1.00  num_of_terms:                           2926
% 2.31/1.00  
% 2.31/1.00  ------ Preprocessing
% 2.31/1.00  
% 2.31/1.00  num_of_splits:                          0
% 2.31/1.00  num_of_split_atoms:                     0
% 2.31/1.00  num_of_reused_defs:                     0
% 2.31/1.00  num_eq_ax_congr_red:                    19
% 2.31/1.00  num_of_sem_filtered_clauses:            1
% 2.31/1.00  num_of_subtypes:                        0
% 2.31/1.00  monotx_restored_types:                  0
% 2.31/1.00  sat_num_of_epr_types:                   0
% 2.31/1.00  sat_num_of_non_cyclic_types:            0
% 2.31/1.00  sat_guarded_non_collapsed_types:        0
% 2.31/1.00  num_pure_diseq_elim:                    0
% 2.31/1.00  simp_replaced_by:                       0
% 2.31/1.00  res_preprocessed:                       160
% 2.31/1.00  prep_upred:                             0
% 2.31/1.00  prep_unflattend:                        8
% 2.31/1.00  smt_new_axioms:                         0
% 2.31/1.00  pred_elim_cands:                        3
% 2.31/1.00  pred_elim:                              1
% 2.31/1.00  pred_elim_cl:                           1
% 2.31/1.00  pred_elim_cycles:                       3
% 2.31/1.00  merged_defs:                            8
% 2.31/1.00  merged_defs_ncl:                        0
% 2.31/1.00  bin_hyper_res:                          8
% 2.31/1.00  prep_cycles:                            4
% 2.31/1.00  pred_elim_time:                         0.002
% 2.31/1.00  splitting_time:                         0.
% 2.31/1.00  sem_filter_time:                        0.
% 2.31/1.00  monotx_time:                            0.
% 2.31/1.00  subtype_inf_time:                       0.
% 2.31/1.00  
% 2.31/1.00  ------ Problem properties
% 2.31/1.00  
% 2.31/1.00  clauses:                                30
% 2.31/1.00  conjectures:                            1
% 2.31/1.00  epr:                                    2
% 2.31/1.00  horn:                                   24
% 2.31/1.00  ground:                                 4
% 2.31/1.00  unary:                                  17
% 2.31/1.00  binary:                                 6
% 2.31/1.00  lits:                                   50
% 2.31/1.00  lits_eq:                                27
% 2.31/1.00  fd_pure:                                0
% 2.31/1.00  fd_pseudo:                              0
% 2.31/1.00  fd_cond:                                5
% 2.31/1.00  fd_pseudo_cond:                         4
% 2.31/1.00  ac_symbols:                             0
% 2.31/1.00  
% 2.31/1.00  ------ Propositional Solver
% 2.31/1.00  
% 2.31/1.00  prop_solver_calls:                      27
% 2.31/1.00  prop_fast_solver_calls:                 680
% 2.31/1.00  smt_solver_calls:                       0
% 2.31/1.00  smt_fast_solver_calls:                  0
% 2.31/1.00  prop_num_of_clauses:                    1110
% 2.31/1.00  prop_preprocess_simplified:             4773
% 2.31/1.00  prop_fo_subsumed:                       4
% 2.31/1.00  prop_solver_time:                       0.
% 2.31/1.00  smt_solver_time:                        0.
% 2.31/1.00  smt_fast_solver_time:                   0.
% 2.31/1.00  prop_fast_solver_time:                  0.
% 2.31/1.00  prop_unsat_core_time:                   0.
% 2.31/1.00  
% 2.31/1.00  ------ QBF
% 2.31/1.00  
% 2.31/1.00  qbf_q_res:                              0
% 2.31/1.00  qbf_num_tautologies:                    0
% 2.31/1.00  qbf_prep_cycles:                        0
% 2.31/1.00  
% 2.31/1.00  ------ BMC1
% 2.31/1.00  
% 2.31/1.00  bmc1_current_bound:                     -1
% 2.31/1.00  bmc1_last_solved_bound:                 -1
% 2.31/1.00  bmc1_unsat_core_size:                   -1
% 2.31/1.00  bmc1_unsat_core_parents_size:           -1
% 2.31/1.00  bmc1_merge_next_fun:                    0
% 2.31/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.31/1.00  
% 2.31/1.00  ------ Instantiation
% 2.31/1.00  
% 2.31/1.00  inst_num_of_clauses:                    348
% 2.31/1.00  inst_num_in_passive:                    36
% 2.31/1.00  inst_num_in_active:                     168
% 2.31/1.00  inst_num_in_unprocessed:                144
% 2.31/1.00  inst_num_of_loops:                      200
% 2.31/1.00  inst_num_of_learning_restarts:          0
% 2.31/1.00  inst_num_moves_active_passive:          29
% 2.31/1.00  inst_lit_activity:                      0
% 2.31/1.00  inst_lit_activity_moves:                0
% 2.31/1.00  inst_num_tautologies:                   0
% 2.31/1.00  inst_num_prop_implied:                  0
% 2.31/1.00  inst_num_existing_simplified:           0
% 2.31/1.00  inst_num_eq_res_simplified:             0
% 2.31/1.00  inst_num_child_elim:                    0
% 2.31/1.00  inst_num_of_dismatching_blockings:      64
% 2.31/1.00  inst_num_of_non_proper_insts:           254
% 2.31/1.00  inst_num_of_duplicates:                 0
% 2.31/1.00  inst_inst_num_from_inst_to_res:         0
% 2.31/1.00  inst_dismatching_checking_time:         0.
% 2.31/1.00  
% 2.31/1.00  ------ Resolution
% 2.31/1.00  
% 2.31/1.00  res_num_of_clauses:                     0
% 2.31/1.00  res_num_in_passive:                     0
% 2.31/1.00  res_num_in_active:                      0
% 2.31/1.00  res_num_of_loops:                       164
% 2.31/1.00  res_forward_subset_subsumed:            37
% 2.31/1.00  res_backward_subset_subsumed:           0
% 2.31/1.00  res_forward_subsumed:                   0
% 2.31/1.00  res_backward_subsumed:                  0
% 2.31/1.00  res_forward_subsumption_resolution:     0
% 2.31/1.00  res_backward_subsumption_resolution:    0
% 2.31/1.00  res_clause_to_clause_subsumption:       91
% 2.31/1.00  res_orphan_elimination:                 0
% 2.31/1.00  res_tautology_del:                      19
% 2.31/1.00  res_num_eq_res_simplified:              0
% 2.31/1.00  res_num_sel_changes:                    0
% 2.31/1.00  res_moves_from_active_to_pass:          0
% 2.31/1.00  
% 2.31/1.00  ------ Superposition
% 2.31/1.00  
% 2.31/1.00  sup_time_total:                         0.
% 2.31/1.00  sup_time_generating:                    0.
% 2.31/1.00  sup_time_sim_full:                      0.
% 2.31/1.00  sup_time_sim_immed:                     0.
% 2.31/1.00  
% 2.31/1.00  sup_num_of_clauses:                     51
% 2.31/1.00  sup_num_in_active:                      38
% 2.31/1.00  sup_num_in_passive:                     13
% 2.31/1.00  sup_num_of_loops:                       39
% 2.31/1.00  sup_fw_superposition:                   35
% 2.31/1.00  sup_bw_superposition:                   33
% 2.31/1.00  sup_immediate_simplified:               22
% 2.31/1.00  sup_given_eliminated:                   0
% 2.31/1.00  comparisons_done:                       0
% 2.31/1.00  comparisons_avoided:                    9
% 2.31/1.00  
% 2.31/1.00  ------ Simplifications
% 2.31/1.00  
% 2.31/1.00  
% 2.31/1.00  sim_fw_subset_subsumed:                 1
% 2.31/1.00  sim_bw_subset_subsumed:                 1
% 2.31/1.00  sim_fw_subsumed:                        6
% 2.31/1.00  sim_bw_subsumed:                        0
% 2.31/1.00  sim_fw_subsumption_res:                 0
% 2.31/1.00  sim_bw_subsumption_res:                 0
% 2.31/1.00  sim_tautology_del:                      1
% 2.31/1.00  sim_eq_tautology_del:                   10
% 2.31/1.00  sim_eq_res_simp:                        0
% 2.31/1.00  sim_fw_demodulated:                     10
% 2.31/1.00  sim_bw_demodulated:                     1
% 2.31/1.00  sim_light_normalised:                   20
% 2.31/1.00  sim_joinable_taut:                      0
% 2.31/1.00  sim_joinable_simp:                      0
% 2.31/1.00  sim_ac_normalised:                      0
% 2.31/1.00  sim_smt_subsumption:                    0
% 2.31/1.00  
%------------------------------------------------------------------------------
