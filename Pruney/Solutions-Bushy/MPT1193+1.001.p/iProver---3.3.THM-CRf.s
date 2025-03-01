%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT1193+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n028.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:45:07 EST 2020

% Result     : Theorem 1.00s
% Output     : CNFRefutation 1.00s
% Verified   : 
% Statistics : Number of formulae       :   78 ( 206 expanded)
%              Number of clauses        :   43 (  57 expanded)
%              Number of leaves         :   11 (  57 expanded)
%              Depth                    :   16
%              Number of atoms          :  310 (1130 expanded)
%              Number of equality atoms :   84 ( 224 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f5,conjecture,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => k4_lattices(X0,X1,X1) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0] :
        ( ( l3_lattices(X0)
          & v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => k4_lattices(X0,X1,X1) = X1 ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k4_lattices(X0,X1,X1) != X1
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v9_lattices(X0)
      & v8_lattices(X0)
      & v6_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k4_lattices(X0,X1,X1) != X1
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v9_lattices(X0)
      & v8_lattices(X0)
      & v6_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f15])).

fof(f23,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k4_lattices(X0,X1,X1) != X1
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( k4_lattices(X0,sK3,sK3) != sK3
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k4_lattices(X0,X1,X1) != X1
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l3_lattices(X0)
        & v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( k4_lattices(sK2,X1,X1) != X1
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l3_lattices(sK2)
      & v9_lattices(sK2)
      & v8_lattices(sK2)
      & v6_lattices(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( k4_lattices(sK2,sK3,sK3) != sK3
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l3_lattices(sK2)
    & v9_lattices(sK2)
    & v8_lattices(sK2)
    & v6_lattices(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f16,f23,f22])).

fof(f37,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v9_lattices(X0)
      <=> ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
      <=> ! [X1] :
            ( ! [X2] :
                ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ m1_subset_1(X1,u1_struct_0(X0)) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f9,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
      <=> ! [X1] :
            ( ! [X2] :
                ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ m1_subset_1(X1,u1_struct_0(X0)) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f8])).

fof(f17,plain,(
    ! [X0] :
      ( ( ( v9_lattices(X0)
          | ? [X1] :
              ( ? [X2] :
                  ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
                  & m1_subset_1(X2,u1_struct_0(X0)) )
              & m1_subset_1(X1,u1_struct_0(X0)) ) )
        & ( ! [X1] :
              ( ! [X2] :
                  ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) = X1
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | ~ m1_subset_1(X1,u1_struct_0(X0)) )
          | ~ v9_lattices(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f18,plain,(
    ! [X0] :
      ( ( ( v9_lattices(X0)
          | ? [X1] :
              ( ? [X2] :
                  ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
                  & m1_subset_1(X2,u1_struct_0(X0)) )
              & m1_subset_1(X1,u1_struct_0(X0)) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ v9_lattices(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f17])).

fof(f20,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( k2_lattices(X0,X1,k1_lattices(X0,X1,sK1(X0))) != X1
        & m1_subset_1(sK1(X0),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_lattices(X0,X1,k1_lattices(X0,X1,X2)) != X1
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k2_lattices(X0,sK0(X0),k1_lattices(X0,sK0(X0),X2)) != sK0(X0)
            & m1_subset_1(X2,u1_struct_0(X0)) )
        & m1_subset_1(sK0(X0),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0] :
      ( ( ( v9_lattices(X0)
          | ( k2_lattices(X0,sK0(X0),k1_lattices(X0,sK0(X0),sK1(X0))) != sK0(X0)
            & m1_subset_1(sK1(X0),u1_struct_0(X0))
            & m1_subset_1(sK0(X0),u1_struct_0(X0)) ) )
        & ( ! [X3] :
              ( ! [X4] :
                  ( k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ m1_subset_1(X3,u1_struct_0(X0)) )
          | ~ v9_lattices(X0) ) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f18,f20,f19])).

fof(f25,plain,(
    ! [X4,X0,X3] :
      ( k2_lattices(X0,X3,k1_lattices(X0,X3,X4)) = X3
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ v9_lattices(X0)
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f36,plain,(
    l3_lattices(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f32,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f35,plain,(
    v9_lattices(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => k1_lattices(X0,X1,X1) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_lattices(X0,X1,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_lattices(X0,X1,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k1_lattices(X0,X1,X1) = X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f34,plain,(
    v8_lattices(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f33,plain,(
    v6_lattices(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f2,axiom,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( l2_lattices(X0)
        & l1_lattices(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => l1_lattices(X0) ) ),
    inference(pure_predicate_removal,[],[f2])).

fof(f10,plain,(
    ! [X0] :
      ( l1_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f29,plain,(
    ! [X0] :
      ( l1_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f11])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( k2_lattices(X0,X1,X2) = k4_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f38,plain,(
    k4_lattices(sK2,sK3,sK3) != sK3 ),
    inference(cnf_transformation,[],[f24])).

cnf(c_8,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_284,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_374,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_284])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ l3_lattices(X1)
    | ~ v9_lattices(X1)
    | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2 ),
    inference(cnf_transformation,[],[f25])).

cnf(c_9,negated_conjecture,
    ( l3_lattices(sK2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_223,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v9_lattices(X1)
    | k2_lattices(X1,X2,k1_lattices(X1,X2,X0)) = X2
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_9])).

cnf(c_224,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | v2_struct_0(sK2)
    | ~ v9_lattices(sK2)
    | k2_lattices(sK2,X1,k1_lattices(sK2,X1,X0)) = X1 ),
    inference(unflattening,[status(thm)],[c_223])).

cnf(c_13,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_10,negated_conjecture,
    ( v9_lattices(sK2) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_228,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | k2_lattices(sK2,X1,k1_lattices(sK2,X1,X0)) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_224,c_13,c_10])).

cnf(c_281,plain,
    ( ~ m1_subset_1(X0_43,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_43,u1_struct_0(sK2))
    | k2_lattices(sK2,X1_43,k1_lattices(sK2,X1_43,X0_43)) = X1_43 ),
    inference(subtyping,[status(esa)],[c_228])).

cnf(c_377,plain,
    ( k2_lattices(sK2,X0_43,k1_lattices(sK2,X0_43,X1_43)) = X0_43
    | m1_subset_1(X1_43,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_43,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_281])).

cnf(c_623,plain,
    ( k2_lattices(sK2,sK3,k1_lattices(sK2,sK3,X0_43)) = sK3
    | m1_subset_1(X0_43,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_374,c_377])).

cnf(c_628,plain,
    ( k2_lattices(sK2,sK3,k1_lattices(sK2,sK3,sK3)) = sK3 ),
    inference(superposition,[status(thm)],[c_374,c_623])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ v8_lattices(X1)
    | ~ v6_lattices(X1)
    | v2_struct_0(X1)
    | ~ l3_lattices(X1)
    | ~ v9_lattices(X1)
    | k1_lattices(X1,X0,X0) = X0 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_11,negated_conjecture,
    ( v8_lattices(sK2) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_171,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | v2_struct_0(X1)
    | ~ l3_lattices(X1)
    | ~ v9_lattices(X1)
    | k1_lattices(X1,X0,X0) = X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_11])).

cnf(c_172,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ v6_lattices(sK2)
    | v2_struct_0(sK2)
    | ~ l3_lattices(sK2)
    | ~ v9_lattices(sK2)
    | k1_lattices(sK2,X0,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_171])).

cnf(c_12,negated_conjecture,
    ( v6_lattices(sK2) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_176,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | k1_lattices(sK2,X0,X0) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_172,c_13,c_12,c_10,c_9])).

cnf(c_283,plain,
    ( ~ m1_subset_1(X0_43,u1_struct_0(sK2))
    | k1_lattices(sK2,X0_43,X0_43) = X0_43 ),
    inference(subtyping,[status(esa)],[c_176])).

cnf(c_375,plain,
    ( k1_lattices(sK2,X0_43,X0_43) = X0_43
    | m1_subset_1(X0_43,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_283])).

cnf(c_444,plain,
    ( k1_lattices(sK2,sK3,sK3) = sK3 ),
    inference(superposition,[status(thm)],[c_374,c_375])).

cnf(c_629,plain,
    ( k2_lattices(sK2,sK3,sK3) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_628,c_444])).

cnf(c_288,plain,
    ( X0_43 != X1_43
    | X2_43 != X1_43
    | X2_43 = X0_43 ),
    theory(equality)).

cnf(c_426,plain,
    ( k2_lattices(sK2,sK3,sK3) != X0_43
    | sK3 != X0_43
    | sK3 = k2_lattices(sK2,sK3,sK3) ),
    inference(instantiation,[status(thm)],[c_288])).

cnf(c_427,plain,
    ( k2_lattices(sK2,sK3,sK3) != sK3
    | sK3 = k2_lattices(sK2,sK3,sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_426])).

cnf(c_407,plain,
    ( k4_lattices(sK2,sK3,sK3) != X0_43
    | k4_lattices(sK2,sK3,sK3) = sK3
    | sK3 != X0_43 ),
    inference(instantiation,[status(thm)],[c_288])).

cnf(c_414,plain,
    ( k4_lattices(sK2,sK3,sK3) != k2_lattices(sK2,sK3,sK3)
    | k4_lattices(sK2,sK3,sK3) = sK3
    | sK3 != k2_lattices(sK2,sK3,sK3) ),
    inference(instantiation,[status(thm)],[c_407])).

cnf(c_4,plain,
    ( l1_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | ~ l1_lattices(X1)
    | v2_struct_0(X1)
    | k4_lattices(X1,X2,X0) = k2_lattices(X1,X2,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_140,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | v2_struct_0(X1)
    | ~ l3_lattices(X3)
    | X1 != X3
    | k4_lattices(X1,X2,X0) = k2_lattices(X1,X2,X0) ),
    inference(resolution_lifted,[status(thm)],[c_4,c_5])).

cnf(c_141,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v6_lattices(X1)
    | v2_struct_0(X1)
    | ~ l3_lattices(X1)
    | k4_lattices(X1,X2,X0) = k2_lattices(X1,X2,X0) ),
    inference(unflattening,[status(thm)],[c_140])).

cnf(c_192,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ l3_lattices(X1)
    | k4_lattices(X1,X2,X0) = k2_lattices(X1,X2,X0)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_141,c_12])).

cnf(c_193,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | v2_struct_0(sK2)
    | ~ l3_lattices(sK2)
    | k4_lattices(sK2,X1,X0) = k2_lattices(sK2,X1,X0) ),
    inference(unflattening,[status(thm)],[c_192])).

cnf(c_197,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | k4_lattices(sK2,X1,X0) = k2_lattices(sK2,X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_193,c_13,c_9])).

cnf(c_282,plain,
    ( ~ m1_subset_1(X0_43,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_43,u1_struct_0(sK2))
    | k4_lattices(sK2,X1_43,X0_43) = k2_lattices(sK2,X1_43,X0_43) ),
    inference(subtyping,[status(esa)],[c_197])).

cnf(c_302,plain,
    ( ~ m1_subset_1(sK3,u1_struct_0(sK2))
    | k4_lattices(sK2,sK3,sK3) = k2_lattices(sK2,sK3,sK3) ),
    inference(instantiation,[status(thm)],[c_282])).

cnf(c_7,negated_conjecture,
    ( k4_lattices(sK2,sK3,sK3) != sK3 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_285,negated_conjecture,
    ( k4_lattices(sK2,sK3,sK3) != sK3 ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_287,plain,
    ( X0_43 = X0_43 ),
    theory(equality)).

cnf(c_296,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_287])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_629,c_427,c_414,c_302,c_285,c_296,c_8])).


%------------------------------------------------------------------------------
