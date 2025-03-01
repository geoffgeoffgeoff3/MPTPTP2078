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
% DateTime   : Thu Dec  3 12:12:21 EST 2020

% Result     : Theorem 0.95s
% Output     : CNFRefutation 1.07s
% Verified   : 
% Statistics : Number of formulae       :  106 ( 414 expanded)
%              Number of clauses        :   61 ( 133 expanded)
%              Number of leaves         :   12 (  99 expanded)
%              Depth                    :   17
%              Number of atoms          :  327 (1812 expanded)
%              Number of equality atoms :   68 ( 130 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ~ r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ~ r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( r2_hidden(sK1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),sK1)))
        & m1_subset_1(sK1,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),X1)))
          & m1_subset_1(X1,u1_struct_0(sK0)) )
      & l1_orders_2(sK0)
      & v5_orders_2(sK0)
      & v4_orders_2(sK0)
      & v3_orders_2(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1)))
    & m1_subset_1(sK1,u1_struct_0(sK0))
    & l1_orders_2(sK0)
    & v5_orders_2(sK0)
    & v4_orders_2(sK0)
    & v3_orders_2(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f28,f27])).

fof(f46,plain,(
    m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f37,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = u1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f35,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = u1_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f45,plain,(
    l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f36,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f41,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f47,plain,(
    r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) ),
    inference(cnf_transformation,[],[f29])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ~ ( r2_hidden(X1,k1_orders_2(X0,X2))
                  & r2_hidden(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ r2_hidden(X1,k1_orders_2(X0,X2))
              | ~ r2_hidden(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ r2_hidden(X1,k1_orders_2(X0,X2))
              | ~ r2_hidden(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X1,k1_orders_2(X0,X2))
      | ~ r2_hidden(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f44,plain,(
    v5_orders_2(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f42,plain,(
    v3_orders_2(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f43,plain,(
    v4_orders_2(sK0) ),
    inference(cnf_transformation,[],[f29])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(k6_domain_1(u1_struct_0(X0),X1),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f39,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f24])).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
      | k1_tarski(X1) != X0 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f48,plain,(
    ! [X1] : r1_tarski(k1_tarski(X1),k1_tarski(X1)) ),
    inference(equality_resolution,[],[f32])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_12,negated_conjecture,
    ( m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_529,negated_conjecture,
    ( m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_708,plain,
    ( m1_subset_1(sK1,u1_struct_0(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_529])).

cnf(c_7,plain,
    ( ~ l1_orders_2(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_5,plain,
    ( ~ l1_struct_0(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_282,plain,
    ( ~ l1_orders_2(X0)
    | u1_struct_0(X0) = k2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_7,c_5])).

cnf(c_13,negated_conjecture,
    ( l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_385,plain,
    ( u1_struct_0(X0) = k2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_282,c_13])).

cnf(c_386,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_385])).

cnf(c_526,plain,
    ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_386])).

cnf(c_717,plain,
    ( m1_subset_1(sK1,k2_struct_0(sK0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_708,c_526])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_6,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(k2_struct_0(X0))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_268,plain,
    ( ~ l1_orders_2(X0)
    | v2_struct_0(X0)
    | ~ v1_xboole_0(k2_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_7,c_6])).

cnf(c_17,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_372,plain,
    ( ~ l1_orders_2(X0)
    | ~ v1_xboole_0(k2_struct_0(X0))
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_268,c_17])).

cnf(c_373,plain,
    ( ~ l1_orders_2(sK0)
    | ~ v1_xboole_0(k2_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_372])).

cnf(c_35,plain,
    ( ~ l1_orders_2(sK0)
    | l1_struct_0(sK0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_38,plain,
    ( v2_struct_0(sK0)
    | ~ v1_xboole_0(k2_struct_0(sK0))
    | ~ l1_struct_0(sK0) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_375,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_373,c_17,c_13,c_35,c_38])).

cnf(c_391,plain,
    ( ~ m1_subset_1(X0,X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0)
    | k2_struct_0(sK0) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_375])).

cnf(c_392,plain,
    ( ~ m1_subset_1(X0,k2_struct_0(sK0))
    | k6_domain_1(k2_struct_0(sK0),X0) = k1_tarski(X0) ),
    inference(unflattening,[status(thm)],[c_391])).

cnf(c_525,plain,
    ( ~ m1_subset_1(X0_47,k2_struct_0(sK0))
    | k6_domain_1(k2_struct_0(sK0),X0_47) = k1_tarski(X0_47) ),
    inference(subtyping,[status(esa)],[c_392])).

cnf(c_711,plain,
    ( k6_domain_1(k2_struct_0(sK0),X0_47) = k1_tarski(X0_47)
    | m1_subset_1(X0_47,k2_struct_0(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_525])).

cnf(c_886,plain,
    ( k6_domain_1(k2_struct_0(sK0),sK1) = k1_tarski(sK1) ),
    inference(superposition,[status(thm)],[c_717,c_711])).

cnf(c_11,negated_conjecture,
    ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_530,negated_conjecture,
    ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_707,plain,
    ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_530])).

cnf(c_720,plain,
    ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(k2_struct_0(sK0),sK1))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_707,c_526])).

cnf(c_922,plain,
    ( r2_hidden(sK1,k1_orders_2(sK0,k1_tarski(sK1))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_886,c_720])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ r2_hidden(X2,X0)
    | ~ r2_hidden(X2,k1_orders_2(X1,X0))
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_14,negated_conjecture,
    ( v5_orders_2(sK0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_322,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ r2_hidden(X2,X0)
    | ~ r2_hidden(X2,k1_orders_2(X1,X0))
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | v2_struct_0(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_14])).

cnf(c_323,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | ~ r2_hidden(X1,X0)
    | ~ r2_hidden(X1,k1_orders_2(sK0,X0))
    | ~ v4_orders_2(sK0)
    | ~ v3_orders_2(sK0)
    | ~ l1_orders_2(sK0)
    | v2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_322])).

cnf(c_16,negated_conjecture,
    ( v3_orders_2(sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_15,negated_conjecture,
    ( v4_orders_2(sK0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_327,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | ~ r2_hidden(X1,X0)
    | ~ r2_hidden(X1,k1_orders_2(sK0,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_323,c_17,c_16,c_15,c_13])).

cnf(c_528,plain,
    ( ~ m1_subset_1(X0_47,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(X1_47,u1_struct_0(sK0))
    | ~ r2_hidden(X1_47,X0_47)
    | ~ r2_hidden(X1_47,k1_orders_2(sK0,X0_47)) ),
    inference(subtyping,[status(esa)],[c_327])).

cnf(c_709,plain,
    ( m1_subset_1(X0_47,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X1_47,u1_struct_0(sK0)) != iProver_top
    | r2_hidden(X1_47,X0_47) != iProver_top
    | r2_hidden(X1_47,k1_orders_2(sK0,X0_47)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_528])).

cnf(c_746,plain,
    ( m1_subset_1(X0_47,k1_zfmisc_1(k2_struct_0(sK0))) != iProver_top
    | m1_subset_1(X1_47,k2_struct_0(sK0)) != iProver_top
    | r2_hidden(X1_47,X0_47) != iProver_top
    | r2_hidden(X1_47,k1_orders_2(sK0,X0_47)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_709,c_526])).

cnf(c_928,plain,
    ( m1_subset_1(k1_tarski(sK1),k1_zfmisc_1(k2_struct_0(sK0))) != iProver_top
    | m1_subset_1(sK1,k2_struct_0(sK0)) != iProver_top
    | r2_hidden(sK1,k1_tarski(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_922,c_746])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_351,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_orders_2(X1)
    | v2_struct_0(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_16])).

cnf(c_352,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_orders_2(sK0)
    | v2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_351])).

cnf(c_356,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_352,c_17,c_13])).

cnf(c_527,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK0))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0_47),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_356])).

cnf(c_710,plain,
    ( m1_subset_1(X0_47,u1_struct_0(sK0)) != iProver_top
    | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0_47),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_527])).

cnf(c_735,plain,
    ( m1_subset_1(X0_47,k2_struct_0(sK0)) != iProver_top
    | m1_subset_1(k6_domain_1(k2_struct_0(sK0),X0_47),k1_zfmisc_1(k2_struct_0(sK0))) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_710,c_526])).

cnf(c_924,plain,
    ( m1_subset_1(k1_tarski(sK1),k1_zfmisc_1(k2_struct_0(sK0))) = iProver_top
    | m1_subset_1(sK1,k2_struct_0(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_886,c_735])).

cnf(c_532,plain,
    ( X0_47 = X0_47 ),
    theory(equality)).

cnf(c_800,plain,
    ( k1_tarski(X0_47) = k1_tarski(X0_47) ),
    inference(instantiation,[status(thm)],[c_532])).

cnf(c_801,plain,
    ( k1_tarski(sK1) = k1_tarski(sK1) ),
    inference(instantiation,[status(thm)],[c_800])).

cnf(c_0,plain,
    ( r1_tarski(k1_tarski(X0),k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_4,plain,
    ( r2_hidden(X0,X1)
    | ~ r1_tarski(k1_tarski(X0),X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_134,plain,
    ( r2_hidden(X0,X1)
    | ~ r1_tarski(k1_tarski(X0),X1) ),
    inference(prop_impl,[status(thm)],[c_4])).

cnf(c_409,plain,
    ( r2_hidden(X0,X1)
    | k1_tarski(X2) != X1
    | k1_tarski(X0) != k1_tarski(X2) ),
    inference(resolution_lifted,[status(thm)],[c_0,c_134])).

cnf(c_410,plain,
    ( r2_hidden(X0,k1_tarski(X1))
    | k1_tarski(X0) != k1_tarski(X1) ),
    inference(unflattening,[status(thm)],[c_409])).

cnf(c_524,plain,
    ( r2_hidden(X0_47,k1_tarski(X1_47))
    | k1_tarski(X0_47) != k1_tarski(X1_47) ),
    inference(subtyping,[status(esa)],[c_410])).

cnf(c_560,plain,
    ( k1_tarski(X0_47) != k1_tarski(X1_47)
    | r2_hidden(X0_47,k1_tarski(X1_47)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_524])).

cnf(c_562,plain,
    ( k1_tarski(sK1) != k1_tarski(sK1)
    | r2_hidden(sK1,k1_tarski(sK1)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_560])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_928,c_924,c_801,c_717,c_562])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 17:09:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 0.95/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.95/1.01  
% 0.95/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.95/1.01  
% 0.95/1.01  ------  iProver source info
% 0.95/1.01  
% 0.95/1.01  git: date: 2020-06-30 10:37:57 +0100
% 0.95/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.95/1.01  git: non_committed_changes: false
% 0.95/1.01  git: last_make_outside_of_git: false
% 0.95/1.01  
% 0.95/1.01  ------ 
% 0.95/1.01  
% 0.95/1.01  ------ Input Options
% 0.95/1.01  
% 0.95/1.01  --out_options                           all
% 0.95/1.01  --tptp_safe_out                         true
% 0.95/1.01  --problem_path                          ""
% 0.95/1.01  --include_path                          ""
% 0.95/1.01  --clausifier                            res/vclausify_rel
% 0.95/1.01  --clausifier_options                    --mode clausify
% 0.95/1.01  --stdin                                 false
% 0.95/1.01  --stats_out                             all
% 0.95/1.01  
% 0.95/1.01  ------ General Options
% 0.95/1.01  
% 0.95/1.01  --fof                                   false
% 0.95/1.01  --time_out_real                         305.
% 0.95/1.01  --time_out_virtual                      -1.
% 0.95/1.01  --symbol_type_check                     false
% 0.95/1.01  --clausify_out                          false
% 0.95/1.01  --sig_cnt_out                           false
% 0.95/1.01  --trig_cnt_out                          false
% 0.95/1.01  --trig_cnt_out_tolerance                1.
% 0.95/1.01  --trig_cnt_out_sk_spl                   false
% 0.95/1.01  --abstr_cl_out                          false
% 0.95/1.01  
% 0.95/1.01  ------ Global Options
% 0.95/1.01  
% 0.95/1.01  --schedule                              default
% 0.95/1.01  --add_important_lit                     false
% 0.95/1.01  --prop_solver_per_cl                    1000
% 0.95/1.01  --min_unsat_core                        false
% 0.95/1.01  --soft_assumptions                      false
% 0.95/1.01  --soft_lemma_size                       3
% 0.95/1.01  --prop_impl_unit_size                   0
% 0.95/1.01  --prop_impl_unit                        []
% 0.95/1.01  --share_sel_clauses                     true
% 0.95/1.01  --reset_solvers                         false
% 0.95/1.01  --bc_imp_inh                            [conj_cone]
% 0.95/1.01  --conj_cone_tolerance                   3.
% 0.95/1.01  --extra_neg_conj                        none
% 0.95/1.01  --large_theory_mode                     true
% 0.95/1.01  --prolific_symb_bound                   200
% 0.95/1.01  --lt_threshold                          2000
% 0.95/1.01  --clause_weak_htbl                      true
% 0.95/1.01  --gc_record_bc_elim                     false
% 0.95/1.01  
% 0.95/1.01  ------ Preprocessing Options
% 0.95/1.01  
% 0.95/1.01  --preprocessing_flag                    true
% 0.95/1.01  --time_out_prep_mult                    0.1
% 0.95/1.01  --splitting_mode                        input
% 0.95/1.01  --splitting_grd                         true
% 0.95/1.01  --splitting_cvd                         false
% 0.95/1.01  --splitting_cvd_svl                     false
% 0.95/1.01  --splitting_nvd                         32
% 0.95/1.01  --sub_typing                            true
% 0.95/1.01  --prep_gs_sim                           true
% 0.95/1.01  --prep_unflatten                        true
% 0.95/1.01  --prep_res_sim                          true
% 0.95/1.01  --prep_upred                            true
% 0.95/1.01  --prep_sem_filter                       exhaustive
% 0.95/1.01  --prep_sem_filter_out                   false
% 0.95/1.01  --pred_elim                             true
% 0.95/1.01  --res_sim_input                         true
% 0.95/1.01  --eq_ax_congr_red                       true
% 0.95/1.01  --pure_diseq_elim                       true
% 0.95/1.01  --brand_transform                       false
% 0.95/1.01  --non_eq_to_eq                          false
% 0.95/1.01  --prep_def_merge                        true
% 0.95/1.01  --prep_def_merge_prop_impl              false
% 0.95/1.01  --prep_def_merge_mbd                    true
% 0.95/1.01  --prep_def_merge_tr_red                 false
% 0.95/1.01  --prep_def_merge_tr_cl                  false
% 0.95/1.01  --smt_preprocessing                     true
% 0.95/1.01  --smt_ac_axioms                         fast
% 0.95/1.01  --preprocessed_out                      false
% 0.95/1.01  --preprocessed_stats                    false
% 0.95/1.01  
% 0.95/1.01  ------ Abstraction refinement Options
% 0.95/1.01  
% 0.95/1.01  --abstr_ref                             []
% 0.95/1.01  --abstr_ref_prep                        false
% 0.95/1.01  --abstr_ref_until_sat                   false
% 0.95/1.01  --abstr_ref_sig_restrict                funpre
% 0.95/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 0.95/1.01  --abstr_ref_under                       []
% 0.95/1.01  
% 0.95/1.01  ------ SAT Options
% 0.95/1.01  
% 0.95/1.01  --sat_mode                              false
% 0.95/1.01  --sat_fm_restart_options                ""
% 0.95/1.01  --sat_gr_def                            false
% 0.95/1.01  --sat_epr_types                         true
% 0.95/1.01  --sat_non_cyclic_types                  false
% 0.95/1.01  --sat_finite_models                     false
% 0.95/1.01  --sat_fm_lemmas                         false
% 0.95/1.01  --sat_fm_prep                           false
% 0.95/1.01  --sat_fm_uc_incr                        true
% 0.95/1.01  --sat_out_model                         small
% 0.95/1.01  --sat_out_clauses                       false
% 0.95/1.01  
% 0.95/1.01  ------ QBF Options
% 0.95/1.01  
% 0.95/1.01  --qbf_mode                              false
% 0.95/1.01  --qbf_elim_univ                         false
% 0.95/1.01  --qbf_dom_inst                          none
% 0.95/1.01  --qbf_dom_pre_inst                      false
% 0.95/1.01  --qbf_sk_in                             false
% 0.95/1.01  --qbf_pred_elim                         true
% 0.95/1.01  --qbf_split                             512
% 0.95/1.01  
% 0.95/1.01  ------ BMC1 Options
% 0.95/1.01  
% 0.95/1.01  --bmc1_incremental                      false
% 0.95/1.01  --bmc1_axioms                           reachable_all
% 0.95/1.01  --bmc1_min_bound                        0
% 0.95/1.01  --bmc1_max_bound                        -1
% 0.95/1.01  --bmc1_max_bound_default                -1
% 0.95/1.01  --bmc1_symbol_reachability              true
% 0.95/1.01  --bmc1_property_lemmas                  false
% 0.95/1.01  --bmc1_k_induction                      false
% 0.95/1.01  --bmc1_non_equiv_states                 false
% 0.95/1.01  --bmc1_deadlock                         false
% 0.95/1.01  --bmc1_ucm                              false
% 0.95/1.01  --bmc1_add_unsat_core                   none
% 0.95/1.01  --bmc1_unsat_core_children              false
% 0.95/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 0.95/1.01  --bmc1_out_stat                         full
% 0.95/1.01  --bmc1_ground_init                      false
% 0.95/1.01  --bmc1_pre_inst_next_state              false
% 0.95/1.01  --bmc1_pre_inst_state                   false
% 0.95/1.01  --bmc1_pre_inst_reach_state             false
% 0.95/1.01  --bmc1_out_unsat_core                   false
% 0.95/1.01  --bmc1_aig_witness_out                  false
% 0.95/1.01  --bmc1_verbose                          false
% 0.95/1.01  --bmc1_dump_clauses_tptp                false
% 0.95/1.01  --bmc1_dump_unsat_core_tptp             false
% 0.95/1.01  --bmc1_dump_file                        -
% 0.95/1.01  --bmc1_ucm_expand_uc_limit              128
% 0.95/1.01  --bmc1_ucm_n_expand_iterations          6
% 0.95/1.01  --bmc1_ucm_extend_mode                  1
% 0.95/1.01  --bmc1_ucm_init_mode                    2
% 0.95/1.01  --bmc1_ucm_cone_mode                    none
% 0.95/1.01  --bmc1_ucm_reduced_relation_type        0
% 0.95/1.01  --bmc1_ucm_relax_model                  4
% 0.95/1.01  --bmc1_ucm_full_tr_after_sat            true
% 0.95/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 0.95/1.01  --bmc1_ucm_layered_model                none
% 0.95/1.01  --bmc1_ucm_max_lemma_size               10
% 0.95/1.01  
% 0.95/1.01  ------ AIG Options
% 0.95/1.01  
% 0.95/1.01  --aig_mode                              false
% 0.95/1.01  
% 0.95/1.01  ------ Instantiation Options
% 0.95/1.01  
% 0.95/1.01  --instantiation_flag                    true
% 0.95/1.01  --inst_sos_flag                         false
% 0.95/1.01  --inst_sos_phase                        true
% 0.95/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.95/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.95/1.01  --inst_lit_sel_side                     num_symb
% 0.95/1.01  --inst_solver_per_active                1400
% 0.95/1.01  --inst_solver_calls_frac                1.
% 0.95/1.01  --inst_passive_queue_type               priority_queues
% 0.95/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.95/1.01  --inst_passive_queues_freq              [25;2]
% 0.95/1.01  --inst_dismatching                      true
% 0.95/1.01  --inst_eager_unprocessed_to_passive     true
% 0.95/1.01  --inst_prop_sim_given                   true
% 0.95/1.01  --inst_prop_sim_new                     false
% 0.95/1.01  --inst_subs_new                         false
% 0.95/1.01  --inst_eq_res_simp                      false
% 0.95/1.01  --inst_subs_given                       false
% 0.95/1.01  --inst_orphan_elimination               true
% 0.95/1.01  --inst_learning_loop_flag               true
% 0.95/1.01  --inst_learning_start                   3000
% 0.95/1.01  --inst_learning_factor                  2
% 0.95/1.01  --inst_start_prop_sim_after_learn       3
% 0.95/1.01  --inst_sel_renew                        solver
% 0.95/1.01  --inst_lit_activity_flag                true
% 0.95/1.01  --inst_restr_to_given                   false
% 0.95/1.01  --inst_activity_threshold               500
% 0.95/1.01  --inst_out_proof                        true
% 0.95/1.01  
% 0.95/1.01  ------ Resolution Options
% 0.95/1.01  
% 0.95/1.01  --resolution_flag                       true
% 0.95/1.01  --res_lit_sel                           adaptive
% 0.95/1.01  --res_lit_sel_side                      none
% 0.95/1.01  --res_ordering                          kbo
% 0.95/1.01  --res_to_prop_solver                    active
% 0.95/1.01  --res_prop_simpl_new                    false
% 0.95/1.01  --res_prop_simpl_given                  true
% 0.95/1.01  --res_passive_queue_type                priority_queues
% 0.95/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.95/1.01  --res_passive_queues_freq               [15;5]
% 0.95/1.01  --res_forward_subs                      full
% 0.95/1.01  --res_backward_subs                     full
% 0.95/1.01  --res_forward_subs_resolution           true
% 0.95/1.01  --res_backward_subs_resolution          true
% 0.95/1.01  --res_orphan_elimination                true
% 0.95/1.01  --res_time_limit                        2.
% 0.95/1.01  --res_out_proof                         true
% 0.95/1.01  
% 0.95/1.01  ------ Superposition Options
% 0.95/1.01  
% 0.95/1.01  --superposition_flag                    true
% 0.95/1.01  --sup_passive_queue_type                priority_queues
% 0.95/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.95/1.01  --sup_passive_queues_freq               [8;1;4]
% 0.95/1.01  --demod_completeness_check              fast
% 0.95/1.01  --demod_use_ground                      true
% 0.95/1.01  --sup_to_prop_solver                    passive
% 0.95/1.01  --sup_prop_simpl_new                    true
% 0.95/1.01  --sup_prop_simpl_given                  true
% 0.95/1.01  --sup_fun_splitting                     false
% 0.95/1.01  --sup_smt_interval                      50000
% 0.95/1.01  
% 0.95/1.01  ------ Superposition Simplification Setup
% 0.95/1.01  
% 0.95/1.01  --sup_indices_passive                   []
% 0.95/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 0.95/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.01  --sup_full_bw                           [BwDemod]
% 0.95/1.01  --sup_immed_triv                        [TrivRules]
% 0.95/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.95/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.01  --sup_immed_bw_main                     []
% 0.95/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 0.95/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.01  
% 0.95/1.01  ------ Combination Options
% 0.95/1.01  
% 0.95/1.01  --comb_res_mult                         3
% 0.95/1.01  --comb_sup_mult                         2
% 0.95/1.01  --comb_inst_mult                        10
% 0.95/1.01  
% 0.95/1.01  ------ Debug Options
% 0.95/1.01  
% 0.95/1.01  --dbg_backtrace                         false
% 0.95/1.01  --dbg_dump_prop_clauses                 false
% 0.95/1.01  --dbg_dump_prop_clauses_file            -
% 0.95/1.01  --dbg_out_stat                          false
% 0.95/1.01  ------ Parsing...
% 0.95/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.95/1.01  
% 0.95/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 0.95/1.01  
% 0.95/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.95/1.01  
% 0.95/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.95/1.01  ------ Proving...
% 0.95/1.01  ------ Problem Properties 
% 0.95/1.01  
% 0.95/1.01  
% 0.95/1.01  clauses                                 9
% 0.95/1.01  conjectures                             2
% 0.95/1.01  EPR                                     0
% 0.95/1.01  Horn                                    8
% 0.95/1.01  unary                                   3
% 0.95/1.01  binary                                  4
% 0.95/1.01  lits                                    18
% 0.95/1.01  lits eq                                 6
% 0.95/1.01  fd_pure                                 0
% 0.95/1.01  fd_pseudo                               0
% 0.95/1.01  fd_cond                                 0
% 0.95/1.01  fd_pseudo_cond                          0
% 0.95/1.01  AC symbols                              0
% 0.95/1.01  
% 0.95/1.01  ------ Schedule dynamic 5 is on 
% 0.95/1.01  
% 0.95/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.95/1.01  
% 0.95/1.01  
% 0.95/1.01  ------ 
% 0.95/1.01  Current options:
% 0.95/1.01  ------ 
% 0.95/1.01  
% 0.95/1.01  ------ Input Options
% 0.95/1.01  
% 0.95/1.01  --out_options                           all
% 0.95/1.01  --tptp_safe_out                         true
% 0.95/1.01  --problem_path                          ""
% 0.95/1.01  --include_path                          ""
% 0.95/1.01  --clausifier                            res/vclausify_rel
% 0.95/1.01  --clausifier_options                    --mode clausify
% 0.95/1.01  --stdin                                 false
% 0.95/1.01  --stats_out                             all
% 0.95/1.01  
% 0.95/1.01  ------ General Options
% 0.95/1.01  
% 0.95/1.01  --fof                                   false
% 0.95/1.01  --time_out_real                         305.
% 0.95/1.01  --time_out_virtual                      -1.
% 0.95/1.01  --symbol_type_check                     false
% 0.95/1.01  --clausify_out                          false
% 0.95/1.01  --sig_cnt_out                           false
% 0.95/1.01  --trig_cnt_out                          false
% 0.95/1.01  --trig_cnt_out_tolerance                1.
% 0.95/1.01  --trig_cnt_out_sk_spl                   false
% 0.95/1.01  --abstr_cl_out                          false
% 0.95/1.01  
% 0.95/1.01  ------ Global Options
% 0.95/1.01  
% 0.95/1.01  --schedule                              default
% 0.95/1.01  --add_important_lit                     false
% 0.95/1.01  --prop_solver_per_cl                    1000
% 0.95/1.01  --min_unsat_core                        false
% 0.95/1.01  --soft_assumptions                      false
% 0.95/1.01  --soft_lemma_size                       3
% 0.95/1.01  --prop_impl_unit_size                   0
% 0.95/1.01  --prop_impl_unit                        []
% 0.95/1.01  --share_sel_clauses                     true
% 0.95/1.01  --reset_solvers                         false
% 0.95/1.01  --bc_imp_inh                            [conj_cone]
% 0.95/1.01  --conj_cone_tolerance                   3.
% 0.95/1.01  --extra_neg_conj                        none
% 0.95/1.01  --large_theory_mode                     true
% 0.95/1.01  --prolific_symb_bound                   200
% 0.95/1.01  --lt_threshold                          2000
% 0.95/1.01  --clause_weak_htbl                      true
% 0.95/1.01  --gc_record_bc_elim                     false
% 0.95/1.01  
% 0.95/1.01  ------ Preprocessing Options
% 0.95/1.01  
% 0.95/1.01  --preprocessing_flag                    true
% 0.95/1.01  --time_out_prep_mult                    0.1
% 0.95/1.01  --splitting_mode                        input
% 0.95/1.01  --splitting_grd                         true
% 0.95/1.01  --splitting_cvd                         false
% 0.95/1.01  --splitting_cvd_svl                     false
% 0.95/1.01  --splitting_nvd                         32
% 0.95/1.01  --sub_typing                            true
% 0.95/1.01  --prep_gs_sim                           true
% 0.95/1.01  --prep_unflatten                        true
% 0.95/1.01  --prep_res_sim                          true
% 0.95/1.01  --prep_upred                            true
% 0.95/1.01  --prep_sem_filter                       exhaustive
% 0.95/1.01  --prep_sem_filter_out                   false
% 0.95/1.01  --pred_elim                             true
% 0.95/1.01  --res_sim_input                         true
% 0.95/1.01  --eq_ax_congr_red                       true
% 0.95/1.01  --pure_diseq_elim                       true
% 0.95/1.01  --brand_transform                       false
% 0.95/1.01  --non_eq_to_eq                          false
% 0.95/1.01  --prep_def_merge                        true
% 0.95/1.01  --prep_def_merge_prop_impl              false
% 0.95/1.01  --prep_def_merge_mbd                    true
% 0.95/1.01  --prep_def_merge_tr_red                 false
% 0.95/1.01  --prep_def_merge_tr_cl                  false
% 0.95/1.01  --smt_preprocessing                     true
% 0.95/1.01  --smt_ac_axioms                         fast
% 0.95/1.01  --preprocessed_out                      false
% 0.95/1.01  --preprocessed_stats                    false
% 0.95/1.01  
% 0.95/1.01  ------ Abstraction refinement Options
% 0.95/1.01  
% 0.95/1.01  --abstr_ref                             []
% 0.95/1.01  --abstr_ref_prep                        false
% 0.95/1.01  --abstr_ref_until_sat                   false
% 0.95/1.01  --abstr_ref_sig_restrict                funpre
% 0.95/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 0.95/1.01  --abstr_ref_under                       []
% 0.95/1.01  
% 0.95/1.01  ------ SAT Options
% 0.95/1.01  
% 0.95/1.01  --sat_mode                              false
% 0.95/1.01  --sat_fm_restart_options                ""
% 0.95/1.01  --sat_gr_def                            false
% 0.95/1.01  --sat_epr_types                         true
% 0.95/1.01  --sat_non_cyclic_types                  false
% 0.95/1.01  --sat_finite_models                     false
% 0.95/1.01  --sat_fm_lemmas                         false
% 0.95/1.01  --sat_fm_prep                           false
% 0.95/1.01  --sat_fm_uc_incr                        true
% 0.95/1.01  --sat_out_model                         small
% 0.95/1.01  --sat_out_clauses                       false
% 0.95/1.01  
% 0.95/1.01  ------ QBF Options
% 0.95/1.01  
% 0.95/1.01  --qbf_mode                              false
% 0.95/1.01  --qbf_elim_univ                         false
% 0.95/1.01  --qbf_dom_inst                          none
% 0.95/1.01  --qbf_dom_pre_inst                      false
% 0.95/1.01  --qbf_sk_in                             false
% 0.95/1.01  --qbf_pred_elim                         true
% 0.95/1.01  --qbf_split                             512
% 0.95/1.01  
% 0.95/1.01  ------ BMC1 Options
% 0.95/1.01  
% 0.95/1.01  --bmc1_incremental                      false
% 0.95/1.01  --bmc1_axioms                           reachable_all
% 0.95/1.01  --bmc1_min_bound                        0
% 0.95/1.01  --bmc1_max_bound                        -1
% 0.95/1.01  --bmc1_max_bound_default                -1
% 0.95/1.01  --bmc1_symbol_reachability              true
% 0.95/1.01  --bmc1_property_lemmas                  false
% 0.95/1.01  --bmc1_k_induction                      false
% 0.95/1.01  --bmc1_non_equiv_states                 false
% 0.95/1.01  --bmc1_deadlock                         false
% 0.95/1.01  --bmc1_ucm                              false
% 0.95/1.01  --bmc1_add_unsat_core                   none
% 0.95/1.01  --bmc1_unsat_core_children              false
% 0.95/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 0.95/1.01  --bmc1_out_stat                         full
% 0.95/1.01  --bmc1_ground_init                      false
% 0.95/1.01  --bmc1_pre_inst_next_state              false
% 0.95/1.01  --bmc1_pre_inst_state                   false
% 0.95/1.01  --bmc1_pre_inst_reach_state             false
% 0.95/1.01  --bmc1_out_unsat_core                   false
% 0.95/1.01  --bmc1_aig_witness_out                  false
% 0.95/1.01  --bmc1_verbose                          false
% 0.95/1.01  --bmc1_dump_clauses_tptp                false
% 0.95/1.01  --bmc1_dump_unsat_core_tptp             false
% 0.95/1.01  --bmc1_dump_file                        -
% 0.95/1.01  --bmc1_ucm_expand_uc_limit              128
% 0.95/1.01  --bmc1_ucm_n_expand_iterations          6
% 0.95/1.01  --bmc1_ucm_extend_mode                  1
% 0.95/1.01  --bmc1_ucm_init_mode                    2
% 0.95/1.01  --bmc1_ucm_cone_mode                    none
% 0.95/1.01  --bmc1_ucm_reduced_relation_type        0
% 0.95/1.01  --bmc1_ucm_relax_model                  4
% 0.95/1.01  --bmc1_ucm_full_tr_after_sat            true
% 0.95/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 0.95/1.01  --bmc1_ucm_layered_model                none
% 0.95/1.01  --bmc1_ucm_max_lemma_size               10
% 0.95/1.01  
% 0.95/1.01  ------ AIG Options
% 0.95/1.01  
% 0.95/1.01  --aig_mode                              false
% 0.95/1.01  
% 0.95/1.01  ------ Instantiation Options
% 0.95/1.01  
% 0.95/1.01  --instantiation_flag                    true
% 0.95/1.01  --inst_sos_flag                         false
% 0.95/1.01  --inst_sos_phase                        true
% 0.95/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.95/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.95/1.01  --inst_lit_sel_side                     none
% 0.95/1.01  --inst_solver_per_active                1400
% 0.95/1.01  --inst_solver_calls_frac                1.
% 0.95/1.01  --inst_passive_queue_type               priority_queues
% 0.95/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.95/1.01  --inst_passive_queues_freq              [25;2]
% 0.95/1.01  --inst_dismatching                      true
% 0.95/1.01  --inst_eager_unprocessed_to_passive     true
% 0.95/1.01  --inst_prop_sim_given                   true
% 0.95/1.01  --inst_prop_sim_new                     false
% 0.95/1.01  --inst_subs_new                         false
% 0.95/1.01  --inst_eq_res_simp                      false
% 0.95/1.01  --inst_subs_given                       false
% 0.95/1.01  --inst_orphan_elimination               true
% 0.95/1.01  --inst_learning_loop_flag               true
% 0.95/1.01  --inst_learning_start                   3000
% 0.95/1.01  --inst_learning_factor                  2
% 0.95/1.01  --inst_start_prop_sim_after_learn       3
% 0.95/1.01  --inst_sel_renew                        solver
% 0.95/1.01  --inst_lit_activity_flag                true
% 0.95/1.01  --inst_restr_to_given                   false
% 0.95/1.01  --inst_activity_threshold               500
% 0.95/1.01  --inst_out_proof                        true
% 0.95/1.01  
% 0.95/1.01  ------ Resolution Options
% 0.95/1.01  
% 0.95/1.01  --resolution_flag                       false
% 0.95/1.01  --res_lit_sel                           adaptive
% 0.95/1.01  --res_lit_sel_side                      none
% 0.95/1.01  --res_ordering                          kbo
% 0.95/1.01  --res_to_prop_solver                    active
% 0.95/1.01  --res_prop_simpl_new                    false
% 0.95/1.01  --res_prop_simpl_given                  true
% 0.95/1.01  --res_passive_queue_type                priority_queues
% 0.95/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.95/1.01  --res_passive_queues_freq               [15;5]
% 0.95/1.01  --res_forward_subs                      full
% 0.95/1.01  --res_backward_subs                     full
% 0.95/1.01  --res_forward_subs_resolution           true
% 0.95/1.01  --res_backward_subs_resolution          true
% 0.95/1.01  --res_orphan_elimination                true
% 0.95/1.01  --res_time_limit                        2.
% 0.95/1.01  --res_out_proof                         true
% 0.95/1.01  
% 0.95/1.01  ------ Superposition Options
% 0.95/1.01  
% 0.95/1.01  --superposition_flag                    true
% 0.95/1.01  --sup_passive_queue_type                priority_queues
% 0.95/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.95/1.01  --sup_passive_queues_freq               [8;1;4]
% 0.95/1.01  --demod_completeness_check              fast
% 0.95/1.01  --demod_use_ground                      true
% 0.95/1.01  --sup_to_prop_solver                    passive
% 0.95/1.01  --sup_prop_simpl_new                    true
% 0.95/1.01  --sup_prop_simpl_given                  true
% 0.95/1.01  --sup_fun_splitting                     false
% 0.95/1.01  --sup_smt_interval                      50000
% 0.95/1.01  
% 0.95/1.01  ------ Superposition Simplification Setup
% 0.95/1.01  
% 0.95/1.01  --sup_indices_passive                   []
% 0.95/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 0.95/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.01  --sup_full_bw                           [BwDemod]
% 0.95/1.01  --sup_immed_triv                        [TrivRules]
% 0.95/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.95/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.01  --sup_immed_bw_main                     []
% 0.95/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 0.95/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.01  
% 0.95/1.01  ------ Combination Options
% 0.95/1.01  
% 0.95/1.01  --comb_res_mult                         3
% 0.95/1.01  --comb_sup_mult                         2
% 0.95/1.01  --comb_inst_mult                        10
% 0.95/1.01  
% 0.95/1.01  ------ Debug Options
% 0.95/1.01  
% 0.95/1.01  --dbg_backtrace                         false
% 0.95/1.01  --dbg_dump_prop_clauses                 false
% 0.95/1.01  --dbg_dump_prop_clauses_file            -
% 0.95/1.01  --dbg_out_stat                          false
% 0.95/1.01  
% 0.95/1.01  
% 0.95/1.01  
% 0.95/1.01  
% 0.95/1.01  ------ Proving...
% 0.95/1.01  
% 0.95/1.01  
% 0.95/1.01  % SZS status Theorem for theBenchmark.p
% 0.95/1.01  
% 0.95/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 0.95/1.01  
% 0.95/1.01  fof(f9,conjecture,(
% 0.95/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ~r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f10,negated_conjecture,(
% 0.95/1.01    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ~r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))))),
% 0.95/1.01    inference(negated_conjecture,[],[f9])).
% 0.95/1.01  
% 0.95/1.01  fof(f22,plain,(
% 0.95/1.01    ? [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 0.95/1.01    inference(ennf_transformation,[],[f10])).
% 0.95/1.01  
% 0.95/1.01  fof(f23,plain,(
% 0.95/1.01    ? [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 0.95/1.01    inference(flattening,[],[f22])).
% 0.95/1.01  
% 0.95/1.01  fof(f28,plain,(
% 0.95/1.01    ( ! [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) => (r2_hidden(sK1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),sK1))) & m1_subset_1(sK1,u1_struct_0(X0)))) )),
% 0.95/1.01    introduced(choice_axiom,[])).
% 0.95/1.01  
% 0.95/1.01  fof(f27,plain,(
% 0.95/1.01    ? [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (r2_hidden(X1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),X1))) & m1_subset_1(X1,u1_struct_0(sK0))) & l1_orders_2(sK0) & v5_orders_2(sK0) & v4_orders_2(sK0) & v3_orders_2(sK0) & ~v2_struct_0(sK0))),
% 0.95/1.01    introduced(choice_axiom,[])).
% 0.95/1.01  
% 0.95/1.01  fof(f29,plain,(
% 0.95/1.01    (r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) & m1_subset_1(sK1,u1_struct_0(sK0))) & l1_orders_2(sK0) & v5_orders_2(sK0) & v4_orders_2(sK0) & v3_orders_2(sK0) & ~v2_struct_0(sK0)),
% 0.95/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f28,f27])).
% 0.95/1.01  
% 0.95/1.01  fof(f46,plain,(
% 0.95/1.01    m1_subset_1(sK1,u1_struct_0(sK0))),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f5,axiom,(
% 0.95/1.01    ! [X0] : (l1_orders_2(X0) => l1_struct_0(X0))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f15,plain,(
% 0.95/1.01    ! [X0] : (l1_struct_0(X0) | ~l1_orders_2(X0))),
% 0.95/1.01    inference(ennf_transformation,[],[f5])).
% 0.95/1.01  
% 0.95/1.01  fof(f37,plain,(
% 0.95/1.01    ( ! [X0] : (l1_struct_0(X0) | ~l1_orders_2(X0)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f15])).
% 0.95/1.01  
% 0.95/1.01  fof(f3,axiom,(
% 0.95/1.01    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = u1_struct_0(X0))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f12,plain,(
% 0.95/1.01    ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0))),
% 0.95/1.01    inference(ennf_transformation,[],[f3])).
% 0.95/1.01  
% 0.95/1.01  fof(f35,plain,(
% 0.95/1.01    ( ! [X0] : (k2_struct_0(X0) = u1_struct_0(X0) | ~l1_struct_0(X0)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f12])).
% 0.95/1.01  
% 0.95/1.01  fof(f45,plain,(
% 0.95/1.01    l1_orders_2(sK0)),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f6,axiom,(
% 0.95/1.01    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f16,plain,(
% 0.95/1.01    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 0.95/1.01    inference(ennf_transformation,[],[f6])).
% 0.95/1.01  
% 0.95/1.01  fof(f17,plain,(
% 0.95/1.01    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 0.95/1.01    inference(flattening,[],[f16])).
% 0.95/1.01  
% 0.95/1.01  fof(f38,plain,(
% 0.95/1.01    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f17])).
% 0.95/1.01  
% 0.95/1.01  fof(f4,axiom,(
% 0.95/1.01    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k2_struct_0(X0)))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f13,plain,(
% 0.95/1.01    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 0.95/1.01    inference(ennf_transformation,[],[f4])).
% 0.95/1.01  
% 0.95/1.01  fof(f14,plain,(
% 0.95/1.01    ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 0.95/1.01    inference(flattening,[],[f13])).
% 0.95/1.01  
% 0.95/1.01  fof(f36,plain,(
% 0.95/1.01    ( ! [X0] : (~v1_xboole_0(k2_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f14])).
% 0.95/1.01  
% 0.95/1.01  fof(f41,plain,(
% 0.95/1.01    ~v2_struct_0(sK0)),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f47,plain,(
% 0.95/1.01    r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1)))),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f8,axiom,(
% 0.95/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ~(r2_hidden(X1,k1_orders_2(X0,X2)) & r2_hidden(X1,X2)))))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f20,plain,(
% 0.95/1.01    ! [X0] : (! [X1] : (! [X2] : ((~r2_hidden(X1,k1_orders_2(X0,X2)) | ~r2_hidden(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 0.95/1.01    inference(ennf_transformation,[],[f8])).
% 0.95/1.01  
% 0.95/1.01  fof(f21,plain,(
% 0.95/1.01    ! [X0] : (! [X1] : (! [X2] : (~r2_hidden(X1,k1_orders_2(X0,X2)) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 0.95/1.01    inference(flattening,[],[f20])).
% 0.95/1.01  
% 0.95/1.01  fof(f40,plain,(
% 0.95/1.01    ( ! [X2,X0,X1] : (~r2_hidden(X1,k1_orders_2(X0,X2)) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f21])).
% 0.95/1.01  
% 0.95/1.01  fof(f44,plain,(
% 0.95/1.01    v5_orders_2(sK0)),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f42,plain,(
% 0.95/1.01    v3_orders_2(sK0)),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f43,plain,(
% 0.95/1.01    v4_orders_2(sK0)),
% 0.95/1.01    inference(cnf_transformation,[],[f29])).
% 0.95/1.01  
% 0.95/1.01  fof(f7,axiom,(
% 0.95/1.01    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(k6_domain_1(u1_struct_0(X0),X1),X0))))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f11,plain,(
% 0.95/1.01    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 0.95/1.01    inference(pure_predicate_removal,[],[f7])).
% 0.95/1.01  
% 0.95/1.01  fof(f18,plain,(
% 0.95/1.01    ! [X0] : (! [X1] : (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 0.95/1.01    inference(ennf_transformation,[],[f11])).
% 0.95/1.01  
% 0.95/1.01  fof(f19,plain,(
% 0.95/1.01    ! [X0] : (! [X1] : (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 0.95/1.01    inference(flattening,[],[f18])).
% 0.95/1.01  
% 0.95/1.01  fof(f39,plain,(
% 0.95/1.01    ( ! [X0,X1] : (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f19])).
% 0.95/1.01  
% 0.95/1.01  fof(f1,axiom,(
% 0.95/1.01    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f24,plain,(
% 0.95/1.01    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 0.95/1.01    inference(nnf_transformation,[],[f1])).
% 0.95/1.01  
% 0.95/1.01  fof(f25,plain,(
% 0.95/1.01    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 0.95/1.01    inference(flattening,[],[f24])).
% 0.95/1.01  
% 0.95/1.01  fof(f32,plain,(
% 0.95/1.01    ( ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) | k1_tarski(X1) != X0) )),
% 0.95/1.01    inference(cnf_transformation,[],[f25])).
% 0.95/1.01  
% 0.95/1.01  fof(f48,plain,(
% 0.95/1.01    ( ! [X1] : (r1_tarski(k1_tarski(X1),k1_tarski(X1))) )),
% 0.95/1.01    inference(equality_resolution,[],[f32])).
% 0.95/1.01  
% 0.95/1.01  fof(f2,axiom,(
% 0.95/1.01    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.95/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.01  
% 0.95/1.01  fof(f26,plain,(
% 0.95/1.01    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 0.95/1.01    inference(nnf_transformation,[],[f2])).
% 0.95/1.01  
% 0.95/1.01  fof(f33,plain,(
% 0.95/1.01    ( ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)) )),
% 0.95/1.01    inference(cnf_transformation,[],[f26])).
% 0.95/1.01  
% 0.95/1.01  cnf(c_12,negated_conjecture,
% 0.95/1.01      ( m1_subset_1(sK1,u1_struct_0(sK0)) ),
% 0.95/1.01      inference(cnf_transformation,[],[f46]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_529,negated_conjecture,
% 0.95/1.01      ( m1_subset_1(sK1,u1_struct_0(sK0)) ),
% 0.95/1.01      inference(subtyping,[status(esa)],[c_12]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_708,plain,
% 0.95/1.01      ( m1_subset_1(sK1,u1_struct_0(sK0)) = iProver_top ),
% 0.95/1.01      inference(predicate_to_equality,[status(thm)],[c_529]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_7,plain,
% 0.95/1.01      ( ~ l1_orders_2(X0) | l1_struct_0(X0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f37]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_5,plain,
% 0.95/1.01      ( ~ l1_struct_0(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f35]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_282,plain,
% 0.95/1.01      ( ~ l1_orders_2(X0) | u1_struct_0(X0) = k2_struct_0(X0) ),
% 0.95/1.01      inference(resolution,[status(thm)],[c_7,c_5]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_13,negated_conjecture,
% 0.95/1.01      ( l1_orders_2(sK0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f45]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_385,plain,
% 0.95/1.01      ( u1_struct_0(X0) = k2_struct_0(X0) | sK0 != X0 ),
% 0.95/1.01      inference(resolution_lifted,[status(thm)],[c_282,c_13]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_386,plain,
% 0.95/1.01      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 0.95/1.01      inference(unflattening,[status(thm)],[c_385]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_526,plain,
% 0.95/1.01      ( u1_struct_0(sK0) = k2_struct_0(sK0) ),
% 0.95/1.01      inference(subtyping,[status(esa)],[c_386]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_717,plain,
% 0.95/1.01      ( m1_subset_1(sK1,k2_struct_0(sK0)) = iProver_top ),
% 0.95/1.01      inference(light_normalisation,[status(thm)],[c_708,c_526]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_8,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,X1)
% 0.95/1.01      | v1_xboole_0(X1)
% 0.95/1.01      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f38]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_6,plain,
% 0.95/1.01      ( v2_struct_0(X0)
% 0.95/1.01      | ~ v1_xboole_0(k2_struct_0(X0))
% 0.95/1.01      | ~ l1_struct_0(X0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f36]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_268,plain,
% 0.95/1.01      ( ~ l1_orders_2(X0)
% 0.95/1.01      | v2_struct_0(X0)
% 0.95/1.01      | ~ v1_xboole_0(k2_struct_0(X0)) ),
% 0.95/1.01      inference(resolution,[status(thm)],[c_7,c_6]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_17,negated_conjecture,
% 0.95/1.01      ( ~ v2_struct_0(sK0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f41]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_372,plain,
% 0.95/1.01      ( ~ l1_orders_2(X0) | ~ v1_xboole_0(k2_struct_0(X0)) | sK0 != X0 ),
% 0.95/1.01      inference(resolution_lifted,[status(thm)],[c_268,c_17]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_373,plain,
% 0.95/1.01      ( ~ l1_orders_2(sK0) | ~ v1_xboole_0(k2_struct_0(sK0)) ),
% 0.95/1.01      inference(unflattening,[status(thm)],[c_372]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_35,plain,
% 0.95/1.01      ( ~ l1_orders_2(sK0) | l1_struct_0(sK0) ),
% 0.95/1.01      inference(instantiation,[status(thm)],[c_7]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_38,plain,
% 0.95/1.01      ( v2_struct_0(sK0)
% 0.95/1.01      | ~ v1_xboole_0(k2_struct_0(sK0))
% 0.95/1.01      | ~ l1_struct_0(sK0) ),
% 0.95/1.01      inference(instantiation,[status(thm)],[c_6]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_375,plain,
% 0.95/1.01      ( ~ v1_xboole_0(k2_struct_0(sK0)) ),
% 0.95/1.01      inference(global_propositional_subsumption,
% 0.95/1.01                [status(thm)],
% 0.95/1.01                [c_373,c_17,c_13,c_35,c_38]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_391,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,X1)
% 0.95/1.01      | k6_domain_1(X1,X0) = k1_tarski(X0)
% 0.95/1.01      | k2_struct_0(sK0) != X1 ),
% 0.95/1.01      inference(resolution_lifted,[status(thm)],[c_8,c_375]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_392,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,k2_struct_0(sK0))
% 0.95/1.01      | k6_domain_1(k2_struct_0(sK0),X0) = k1_tarski(X0) ),
% 0.95/1.01      inference(unflattening,[status(thm)],[c_391]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_525,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0_47,k2_struct_0(sK0))
% 0.95/1.01      | k6_domain_1(k2_struct_0(sK0),X0_47) = k1_tarski(X0_47) ),
% 0.95/1.01      inference(subtyping,[status(esa)],[c_392]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_711,plain,
% 0.95/1.01      ( k6_domain_1(k2_struct_0(sK0),X0_47) = k1_tarski(X0_47)
% 0.95/1.01      | m1_subset_1(X0_47,k2_struct_0(sK0)) != iProver_top ),
% 0.95/1.01      inference(predicate_to_equality,[status(thm)],[c_525]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_886,plain,
% 0.95/1.01      ( k6_domain_1(k2_struct_0(sK0),sK1) = k1_tarski(sK1) ),
% 0.95/1.01      inference(superposition,[status(thm)],[c_717,c_711]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_11,negated_conjecture,
% 0.95/1.01      ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) ),
% 0.95/1.01      inference(cnf_transformation,[],[f47]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_530,negated_conjecture,
% 0.95/1.01      ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) ),
% 0.95/1.01      inference(subtyping,[status(esa)],[c_11]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_707,plain,
% 0.95/1.01      ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(u1_struct_0(sK0),sK1))) = iProver_top ),
% 0.95/1.01      inference(predicate_to_equality,[status(thm)],[c_530]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_720,plain,
% 0.95/1.01      ( r2_hidden(sK1,k1_orders_2(sK0,k6_domain_1(k2_struct_0(sK0),sK1))) = iProver_top ),
% 0.95/1.01      inference(light_normalisation,[status(thm)],[c_707,c_526]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_922,plain,
% 0.95/1.01      ( r2_hidden(sK1,k1_orders_2(sK0,k1_tarski(sK1))) = iProver_top ),
% 0.95/1.01      inference(demodulation,[status(thm)],[c_886,c_720]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_10,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 0.95/1.01      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 0.95/1.01      | ~ r2_hidden(X2,X0)
% 0.95/1.01      | ~ r2_hidden(X2,k1_orders_2(X1,X0))
% 0.95/1.01      | ~ v4_orders_2(X1)
% 0.95/1.01      | ~ v5_orders_2(X1)
% 0.95/1.01      | ~ v3_orders_2(X1)
% 0.95/1.01      | ~ l1_orders_2(X1)
% 0.95/1.01      | v2_struct_0(X1) ),
% 0.95/1.01      inference(cnf_transformation,[],[f40]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_14,negated_conjecture,
% 0.95/1.01      ( v5_orders_2(sK0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f44]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_322,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 0.95/1.01      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 0.95/1.01      | ~ r2_hidden(X2,X0)
% 0.95/1.01      | ~ r2_hidden(X2,k1_orders_2(X1,X0))
% 0.95/1.01      | ~ v4_orders_2(X1)
% 0.95/1.01      | ~ v3_orders_2(X1)
% 0.95/1.01      | ~ l1_orders_2(X1)
% 0.95/1.01      | v2_struct_0(X1)
% 0.95/1.01      | sK0 != X1 ),
% 0.95/1.01      inference(resolution_lifted,[status(thm)],[c_10,c_14]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_323,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 0.95/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 0.95/1.01      | ~ r2_hidden(X1,X0)
% 0.95/1.01      | ~ r2_hidden(X1,k1_orders_2(sK0,X0))
% 0.95/1.01      | ~ v4_orders_2(sK0)
% 0.95/1.01      | ~ v3_orders_2(sK0)
% 0.95/1.01      | ~ l1_orders_2(sK0)
% 0.95/1.01      | v2_struct_0(sK0) ),
% 0.95/1.01      inference(unflattening,[status(thm)],[c_322]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_16,negated_conjecture,
% 0.95/1.01      ( v3_orders_2(sK0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f42]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_15,negated_conjecture,
% 0.95/1.01      ( v4_orders_2(sK0) ),
% 0.95/1.01      inference(cnf_transformation,[],[f43]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_327,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 0.95/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 0.95/1.01      | ~ r2_hidden(X1,X0)
% 0.95/1.01      | ~ r2_hidden(X1,k1_orders_2(sK0,X0)) ),
% 0.95/1.01      inference(global_propositional_subsumption,
% 0.95/1.01                [status(thm)],
% 0.95/1.01                [c_323,c_17,c_16,c_15,c_13]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_528,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0_47,k1_zfmisc_1(u1_struct_0(sK0)))
% 0.95/1.01      | ~ m1_subset_1(X1_47,u1_struct_0(sK0))
% 0.95/1.01      | ~ r2_hidden(X1_47,X0_47)
% 0.95/1.01      | ~ r2_hidden(X1_47,k1_orders_2(sK0,X0_47)) ),
% 0.95/1.01      inference(subtyping,[status(esa)],[c_327]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_709,plain,
% 0.95/1.01      ( m1_subset_1(X0_47,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 0.95/1.01      | m1_subset_1(X1_47,u1_struct_0(sK0)) != iProver_top
% 0.95/1.01      | r2_hidden(X1_47,X0_47) != iProver_top
% 0.95/1.01      | r2_hidden(X1_47,k1_orders_2(sK0,X0_47)) != iProver_top ),
% 0.95/1.01      inference(predicate_to_equality,[status(thm)],[c_528]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_746,plain,
% 0.95/1.01      ( m1_subset_1(X0_47,k1_zfmisc_1(k2_struct_0(sK0))) != iProver_top
% 0.95/1.01      | m1_subset_1(X1_47,k2_struct_0(sK0)) != iProver_top
% 0.95/1.01      | r2_hidden(X1_47,X0_47) != iProver_top
% 0.95/1.01      | r2_hidden(X1_47,k1_orders_2(sK0,X0_47)) != iProver_top ),
% 0.95/1.01      inference(light_normalisation,[status(thm)],[c_709,c_526]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_928,plain,
% 0.95/1.01      ( m1_subset_1(k1_tarski(sK1),k1_zfmisc_1(k2_struct_0(sK0))) != iProver_top
% 0.95/1.01      | m1_subset_1(sK1,k2_struct_0(sK0)) != iProver_top
% 0.95/1.01      | r2_hidden(sK1,k1_tarski(sK1)) != iProver_top ),
% 0.95/1.01      inference(superposition,[status(thm)],[c_922,c_746]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_9,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 0.95/1.01      | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
% 0.95/1.01      | ~ v3_orders_2(X1)
% 0.95/1.01      | ~ l1_orders_2(X1)
% 0.95/1.01      | v2_struct_0(X1) ),
% 0.95/1.01      inference(cnf_transformation,[],[f39]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_351,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 0.95/1.01      | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
% 0.95/1.01      | ~ l1_orders_2(X1)
% 0.95/1.01      | v2_struct_0(X1)
% 0.95/1.01      | sK0 != X1 ),
% 0.95/1.01      inference(resolution_lifted,[status(thm)],[c_9,c_16]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_352,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 0.95/1.01      | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0),k1_zfmisc_1(u1_struct_0(sK0)))
% 0.95/1.01      | ~ l1_orders_2(sK0)
% 0.95/1.01      | v2_struct_0(sK0) ),
% 0.95/1.01      inference(unflattening,[status(thm)],[c_351]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_356,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 0.95/1.01      | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 0.95/1.01      inference(global_propositional_subsumption,
% 0.95/1.01                [status(thm)],
% 0.95/1.01                [c_352,c_17,c_13]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_527,plain,
% 0.95/1.01      ( ~ m1_subset_1(X0_47,u1_struct_0(sK0))
% 0.95/1.01      | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0_47),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 0.95/1.01      inference(subtyping,[status(esa)],[c_356]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_710,plain,
% 0.95/1.01      ( m1_subset_1(X0_47,u1_struct_0(sK0)) != iProver_top
% 0.95/1.01      | m1_subset_1(k6_domain_1(u1_struct_0(sK0),X0_47),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 0.95/1.01      inference(predicate_to_equality,[status(thm)],[c_527]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_735,plain,
% 0.95/1.01      ( m1_subset_1(X0_47,k2_struct_0(sK0)) != iProver_top
% 0.95/1.01      | m1_subset_1(k6_domain_1(k2_struct_0(sK0),X0_47),k1_zfmisc_1(k2_struct_0(sK0))) = iProver_top ),
% 0.95/1.01      inference(light_normalisation,[status(thm)],[c_710,c_526]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_924,plain,
% 0.95/1.01      ( m1_subset_1(k1_tarski(sK1),k1_zfmisc_1(k2_struct_0(sK0))) = iProver_top
% 0.95/1.01      | m1_subset_1(sK1,k2_struct_0(sK0)) != iProver_top ),
% 0.95/1.01      inference(superposition,[status(thm)],[c_886,c_735]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_532,plain,( X0_47 = X0_47 ),theory(equality) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_800,plain,
% 0.95/1.01      ( k1_tarski(X0_47) = k1_tarski(X0_47) ),
% 0.95/1.01      inference(instantiation,[status(thm)],[c_532]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_801,plain,
% 0.95/1.01      ( k1_tarski(sK1) = k1_tarski(sK1) ),
% 0.95/1.01      inference(instantiation,[status(thm)],[c_800]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_0,plain,
% 0.95/1.01      ( r1_tarski(k1_tarski(X0),k1_tarski(X0)) ),
% 0.95/1.01      inference(cnf_transformation,[],[f48]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_4,plain,
% 0.95/1.01      ( r2_hidden(X0,X1) | ~ r1_tarski(k1_tarski(X0),X1) ),
% 0.95/1.01      inference(cnf_transformation,[],[f33]) ).
% 0.95/1.01  
% 0.95/1.01  cnf(c_134,plain,
% 0.95/1.01      ( r2_hidden(X0,X1) | ~ r1_tarski(k1_tarski(X0),X1) ),
% 0.95/1.01      inference(prop_impl,[status(thm)],[c_4]) ).
% 1.07/1.01  
% 1.07/1.01  cnf(c_409,plain,
% 1.07/1.01      ( r2_hidden(X0,X1)
% 1.07/1.01      | k1_tarski(X2) != X1
% 1.07/1.01      | k1_tarski(X0) != k1_tarski(X2) ),
% 1.07/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_134]) ).
% 1.07/1.01  
% 1.07/1.01  cnf(c_410,plain,
% 1.07/1.01      ( r2_hidden(X0,k1_tarski(X1)) | k1_tarski(X0) != k1_tarski(X1) ),
% 1.07/1.01      inference(unflattening,[status(thm)],[c_409]) ).
% 1.07/1.01  
% 1.07/1.01  cnf(c_524,plain,
% 1.07/1.01      ( r2_hidden(X0_47,k1_tarski(X1_47))
% 1.07/1.01      | k1_tarski(X0_47) != k1_tarski(X1_47) ),
% 1.07/1.01      inference(subtyping,[status(esa)],[c_410]) ).
% 1.07/1.01  
% 1.07/1.01  cnf(c_560,plain,
% 1.07/1.01      ( k1_tarski(X0_47) != k1_tarski(X1_47)
% 1.07/1.01      | r2_hidden(X0_47,k1_tarski(X1_47)) = iProver_top ),
% 1.07/1.01      inference(predicate_to_equality,[status(thm)],[c_524]) ).
% 1.07/1.01  
% 1.07/1.01  cnf(c_562,plain,
% 1.07/1.01      ( k1_tarski(sK1) != k1_tarski(sK1)
% 1.07/1.01      | r2_hidden(sK1,k1_tarski(sK1)) = iProver_top ),
% 1.07/1.01      inference(instantiation,[status(thm)],[c_560]) ).
% 1.07/1.01  
% 1.07/1.01  cnf(contradiction,plain,
% 1.07/1.01      ( $false ),
% 1.07/1.01      inference(minisat,[status(thm)],[c_928,c_924,c_801,c_717,c_562]) ).
% 1.07/1.01  
% 1.07/1.01  
% 1.07/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.07/1.01  
% 1.07/1.01  ------                               Statistics
% 1.07/1.01  
% 1.07/1.01  ------ General
% 1.07/1.01  
% 1.07/1.01  abstr_ref_over_cycles:                  0
% 1.07/1.01  abstr_ref_under_cycles:                 0
% 1.07/1.01  gc_basic_clause_elim:                   0
% 1.07/1.01  forced_gc_time:                         0
% 1.07/1.01  parsing_time:                           0.01
% 1.07/1.01  unif_index_cands_time:                  0.
% 1.07/1.01  unif_index_add_time:                    0.
% 1.07/1.01  orderings_time:                         0.
% 1.07/1.01  out_proof_time:                         0.011
% 1.07/1.01  total_time:                             0.064
% 1.07/1.01  num_of_symbols:                         50
% 1.07/1.01  num_of_terms:                           998
% 1.07/1.01  
% 1.07/1.01  ------ Preprocessing
% 1.07/1.01  
% 1.07/1.01  num_of_splits:                          0
% 1.07/1.01  num_of_split_atoms:                     0
% 1.07/1.01  num_of_reused_defs:                     0
% 1.07/1.01  num_eq_ax_congr_red:                    8
% 1.07/1.01  num_of_sem_filtered_clauses:            1
% 1.07/1.01  num_of_subtypes:                        3
% 1.07/1.01  monotx_restored_types:                  0
% 1.07/1.01  sat_num_of_epr_types:                   0
% 1.07/1.01  sat_num_of_non_cyclic_types:            0
% 1.07/1.01  sat_guarded_non_collapsed_types:        0
% 1.07/1.01  num_pure_diseq_elim:                    0
% 1.07/1.01  simp_replaced_by:                       0
% 1.07/1.01  res_preprocessed:                       64
% 1.07/1.01  prep_upred:                             0
% 1.07/1.01  prep_unflattend:                        13
% 1.07/1.01  smt_new_axioms:                         0
% 1.07/1.01  pred_elim_cands:                        2
% 1.07/1.01  pred_elim:                              8
% 1.07/1.01  pred_elim_cl:                           9
% 1.07/1.01  pred_elim_cycles:                       12
% 1.07/1.01  merged_defs:                            2
% 1.07/1.01  merged_defs_ncl:                        0
% 1.07/1.01  bin_hyper_res:                          2
% 1.07/1.01  prep_cycles:                            4
% 1.07/1.01  pred_elim_time:                         0.004
% 1.07/1.01  splitting_time:                         0.
% 1.07/1.01  sem_filter_time:                        0.
% 1.07/1.01  monotx_time:                            0.
% 1.07/1.01  subtype_inf_time:                       0.
% 1.07/1.01  
% 1.07/1.01  ------ Problem properties
% 1.07/1.01  
% 1.07/1.01  clauses:                                9
% 1.07/1.01  conjectures:                            2
% 1.07/1.01  epr:                                    0
% 1.07/1.01  horn:                                   8
% 1.07/1.01  ground:                                 3
% 1.07/1.01  unary:                                  3
% 1.07/1.01  binary:                                 4
% 1.07/1.01  lits:                                   18
% 1.07/1.01  lits_eq:                                6
% 1.07/1.01  fd_pure:                                0
% 1.07/1.01  fd_pseudo:                              0
% 1.07/1.01  fd_cond:                                0
% 1.07/1.01  fd_pseudo_cond:                         0
% 1.07/1.01  ac_symbols:                             0
% 1.07/1.01  
% 1.07/1.01  ------ Propositional Solver
% 1.07/1.01  
% 1.07/1.01  prop_solver_calls:                      24
% 1.07/1.01  prop_fast_solver_calls:                 339
% 1.07/1.01  smt_solver_calls:                       0
% 1.07/1.01  smt_fast_solver_calls:                  0
% 1.07/1.01  prop_num_of_clauses:                    257
% 1.07/1.01  prop_preprocess_simplified:             1658
% 1.07/1.01  prop_fo_subsumed:                       7
% 1.07/1.01  prop_solver_time:                       0.
% 1.07/1.01  smt_solver_time:                        0.
% 1.07/1.01  smt_fast_solver_time:                   0.
% 1.07/1.01  prop_fast_solver_time:                  0.
% 1.07/1.01  prop_unsat_core_time:                   0.
% 1.07/1.01  
% 1.07/1.01  ------ QBF
% 1.07/1.01  
% 1.07/1.01  qbf_q_res:                              0
% 1.07/1.01  qbf_num_tautologies:                    0
% 1.07/1.01  qbf_prep_cycles:                        0
% 1.07/1.01  
% 1.07/1.01  ------ BMC1
% 1.07/1.01  
% 1.07/1.01  bmc1_current_bound:                     -1
% 1.07/1.01  bmc1_last_solved_bound:                 -1
% 1.07/1.01  bmc1_unsat_core_size:                   -1
% 1.07/1.01  bmc1_unsat_core_parents_size:           -1
% 1.07/1.01  bmc1_merge_next_fun:                    0
% 1.07/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.07/1.01  
% 1.07/1.01  ------ Instantiation
% 1.07/1.01  
% 1.07/1.01  inst_num_of_clauses:                    56
% 1.07/1.01  inst_num_in_passive:                    1
% 1.07/1.01  inst_num_in_active:                     37
% 1.07/1.01  inst_num_in_unprocessed:                18
% 1.07/1.01  inst_num_of_loops:                      40
% 1.07/1.01  inst_num_of_learning_restarts:          0
% 1.07/1.01  inst_num_moves_active_passive:          2
% 1.07/1.01  inst_lit_activity:                      0
% 1.07/1.01  inst_lit_activity_moves:                0
% 1.07/1.01  inst_num_tautologies:                   0
% 1.07/1.01  inst_num_prop_implied:                  0
% 1.07/1.01  inst_num_existing_simplified:           0
% 1.07/1.01  inst_num_eq_res_simplified:             0
% 1.07/1.01  inst_num_child_elim:                    0
% 1.07/1.01  inst_num_of_dismatching_blockings:      2
% 1.07/1.01  inst_num_of_non_proper_insts:           28
% 1.07/1.01  inst_num_of_duplicates:                 0
% 1.07/1.01  inst_inst_num_from_inst_to_res:         0
% 1.07/1.01  inst_dismatching_checking_time:         0.
% 1.07/1.01  
% 1.07/1.01  ------ Resolution
% 1.07/1.01  
% 1.07/1.01  res_num_of_clauses:                     0
% 1.07/1.01  res_num_in_passive:                     0
% 1.07/1.01  res_num_in_active:                      0
% 1.07/1.01  res_num_of_loops:                       68
% 1.07/1.01  res_forward_subset_subsumed:            3
% 1.07/1.01  res_backward_subset_subsumed:           0
% 1.07/1.01  res_forward_subsumed:                   0
% 1.07/1.01  res_backward_subsumed:                  0
% 1.07/1.01  res_forward_subsumption_resolution:     0
% 1.07/1.01  res_backward_subsumption_resolution:    0
% 1.07/1.01  res_clause_to_clause_subsumption:       12
% 1.07/1.01  res_orphan_elimination:                 0
% 1.07/1.01  res_tautology_del:                      15
% 1.07/1.01  res_num_eq_res_simplified:              0
% 1.07/1.01  res_num_sel_changes:                    0
% 1.07/1.01  res_moves_from_active_to_pass:          0
% 1.07/1.01  
% 1.07/1.01  ------ Superposition
% 1.07/1.01  
% 1.07/1.01  sup_time_total:                         0.
% 1.07/1.01  sup_time_generating:                    0.
% 1.07/1.01  sup_time_sim_full:                      0.
% 1.07/1.01  sup_time_sim_immed:                     0.
% 1.07/1.01  
% 1.07/1.01  sup_num_of_clauses:                     13
% 1.07/1.01  sup_num_in_active:                      7
% 1.07/1.01  sup_num_in_passive:                     6
% 1.07/1.01  sup_num_of_loops:                       7
% 1.07/1.01  sup_fw_superposition:                   2
% 1.07/1.01  sup_bw_superposition:                   2
% 1.07/1.01  sup_immediate_simplified:               0
% 1.07/1.01  sup_given_eliminated:                   0
% 1.07/1.01  comparisons_done:                       0
% 1.07/1.01  comparisons_avoided:                    0
% 1.07/1.01  
% 1.07/1.01  ------ Simplifications
% 1.07/1.01  
% 1.07/1.01  
% 1.07/1.01  sim_fw_subset_subsumed:                 0
% 1.07/1.01  sim_bw_subset_subsumed:                 0
% 1.07/1.01  sim_fw_subsumed:                        0
% 1.07/1.01  sim_bw_subsumed:                        0
% 1.07/1.01  sim_fw_subsumption_res:                 0
% 1.07/1.01  sim_bw_subsumption_res:                 0
% 1.07/1.01  sim_tautology_del:                      0
% 1.07/1.01  sim_eq_tautology_del:                   0
% 1.07/1.01  sim_eq_res_simp:                        0
% 1.07/1.01  sim_fw_demodulated:                     0
% 1.07/1.01  sim_bw_demodulated:                     1
% 1.07/1.01  sim_light_normalised:                   4
% 1.07/1.01  sim_joinable_taut:                      0
% 1.07/1.01  sim_joinable_simp:                      0
% 1.07/1.01  sim_ac_normalised:                      0
% 1.07/1.01  sim_smt_subsumption:                    0
% 1.07/1.01  
%------------------------------------------------------------------------------
