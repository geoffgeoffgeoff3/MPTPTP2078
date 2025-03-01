%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:18 EST 2020

% Result     : Theorem 1.09s
% Output     : CNFRefutation 1.09s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 382 expanded)
%              Number of clauses        :   66 (  99 expanded)
%              Number of leaves         :   12 ( 100 expanded)
%              Depth                    :   21
%              Number of atoms          :  499 (1952 expanded)
%              Number of equality atoms :   78 (  85 expanded)
%              Maximal formula depth    :   13 (   6 average)
%              Maximal clause size      :   12 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v7_lattices(X0)
          & v6_lattices(X0)
          & v5_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & v5_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f1])).

fof(f11,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f12,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & v4_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f13,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & v4_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(flattening,[],[f12])).

fof(f33,plain,(
    ! [X0] :
      ( v4_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l2_lattices(X0)
        & v4_lattices(X0)
        & ~ v2_struct_0(X0) )
     => k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | ~ v4_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | ~ v4_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | ~ v4_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( l2_lattices(X0)
        & l1_lattices(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ( l2_lattices(X0)
        & l1_lattices(X0) )
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f41,plain,(
    ! [X0] :
      ( l2_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f8,conjecture,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v13_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => r3_lattices(X0,k5_lattices(X0),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0] :
        ( ( l3_lattices(X0)
          & v13_lattices(X0)
          & v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => r3_lattices(X0,k5_lattices(X0),X1) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r3_lattices(X0,k5_lattices(X0),X1)
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v13_lattices(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r3_lattices(X0,k5_lattices(X0),X1)
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l3_lattices(X0)
      & v13_lattices(X0)
      & v10_lattices(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f30,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r3_lattices(X0,k5_lattices(X0),X1)
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ~ r3_lattices(X0,k5_lattices(X0),sK1)
        & m1_subset_1(sK1,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r3_lattices(X0,k5_lattices(X0),X1)
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l3_lattices(X0)
        & v13_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ~ r3_lattices(sK0,k5_lattices(sK0),X1)
          & m1_subset_1(X1,u1_struct_0(sK0)) )
      & l3_lattices(sK0)
      & v13_lattices(sK0)
      & v10_lattices(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( ~ r3_lattices(sK0,k5_lattices(sK0),sK1)
    & m1_subset_1(sK1,u1_struct_0(sK0))
    & l3_lattices(sK0)
    & v13_lattices(sK0)
    & v10_lattices(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f26,f30,f29])).

fof(f47,plain,(
    v10_lattices(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f46,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f49,plain,(
    l3_lattices(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l2_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_lattices(X0,X1,X2)
              <=> k1_lattices(X0,X1,X2) = X2 )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_lattices(X0,X1,X2)
                  | k1_lattices(X0,X1,X2) != X2 )
                & ( k1_lattices(X0,X1,X2) = X2
                  | ~ r1_lattices(X0,X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( r1_lattices(X0,X1,X2)
      | k1_lattices(X0,X1,X2) != X2
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l2_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f51,plain,(
    ~ r3_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(cnf_transformation,[],[f31])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l3_lattices(X0)
        & v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( r3_lattices(X0,X1,X2)
      <=> r1_lattices(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ( r3_lattices(X0,X1,X2)
      <=> r1_lattices(X0,X1,X2) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( r3_lattices(X0,X1,X2)
      <=> r1_lattices(X0,X1,X2) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( ( r3_lattices(X0,X1,X2)
          | ~ r1_lattices(X0,X1,X2) )
        & ( r1_lattices(X0,X1,X2)
          | ~ r3_lattices(X0,X1,X2) ) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( r3_lattices(X0,X1,X2)
      | ~ r1_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f36,plain,(
    ! [X0] :
      ( v9_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f34,plain,(
    ! [X0] :
      ( v6_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f35,plain,(
    ! [X0] :
      ( v8_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f50,plain,(
    m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f31])).

fof(f40,plain,(
    ! [X0] :
      ( l1_lattices(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0] :
      ( ( l1_lattices(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f17,plain,(
    ! [X0] :
      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f39,plain,(
    ! [X0] :
      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
      | ~ l1_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v13_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => k3_lattices(X0,k5_lattices(X0),X1) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_lattices(X0,k5_lattices(X0),X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v13_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k3_lattices(X0,k5_lattices(X0),X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v13_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k3_lattices(X0,k5_lattices(X0),X1) = X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v13_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f48,plain,(
    v13_lattices(sK0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_607,plain,
    ( X0_47 != X1_47
    | X2_47 != X1_47
    | X2_47 = X0_47 ),
    theory(equality)).

cnf(c_839,plain,
    ( k3_lattices(sK0,k5_lattices(sK0),sK1) != X0_47
    | sK1 != X0_47
    | sK1 = k3_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(instantiation,[status(thm)],[c_607])).

cnf(c_840,plain,
    ( k3_lattices(sK0,k5_lattices(sK0),sK1) != sK1
    | sK1 = k3_lattices(sK0,k5_lattices(sK0),sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_839])).

cnf(c_726,plain,
    ( k1_lattices(sK0,k5_lattices(sK0),sK1) != X0_47
    | k1_lattices(sK0,k5_lattices(sK0),sK1) = sK1
    | sK1 != X0_47 ),
    inference(instantiation,[status(thm)],[c_607])).

cnf(c_792,plain,
    ( k1_lattices(sK0,k5_lattices(sK0),sK1) != k3_lattices(sK0,k5_lattices(sK0),sK1)
    | k1_lattices(sK0,k5_lattices(sK0),sK1) = sK1
    | sK1 != k3_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(instantiation,[status(thm)],[c_726])).

cnf(c_3,plain,
    ( v4_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l2_lattices(X1)
    | ~ v4_lattices(X1)
    | v2_struct_0(X1)
    | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_254,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l2_lattices(X1)
    | ~ l3_lattices(X3)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ v10_lattices(X3)
    | X1 != X3
    | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
    inference(resolution_lifted,[status(thm)],[c_3,c_10])).

cnf(c_255,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l2_lattices(X1)
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
    inference(unflattening,[status(thm)],[c_254])).

cnf(c_8,plain,
    ( l2_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_273,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_255,c_8])).

cnf(c_18,negated_conjecture,
    ( v10_lattices(sK0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_383,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_273,c_18])).

cnf(c_384,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | ~ l3_lattices(sK0)
    | v2_struct_0(sK0)
    | k3_lattices(sK0,X1,X0) = k1_lattices(sK0,X1,X0) ),
    inference(unflattening,[status(thm)],[c_383])).

cnf(c_19,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_16,negated_conjecture,
    ( l3_lattices(sK0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_388,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | k3_lattices(sK0,X1,X0) = k1_lattices(sK0,X1,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_384,c_19,c_16])).

cnf(c_602,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK0))
    | ~ m1_subset_1(X1_47,u1_struct_0(sK0))
    | k3_lattices(sK0,X1_47,X0_47) = k1_lattices(sK0,X1_47,X0_47) ),
    inference(subtyping,[status(esa)],[c_388])).

cnf(c_772,plain,
    ( ~ m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
    | ~ m1_subset_1(sK1,u1_struct_0(sK0))
    | k3_lattices(sK0,k5_lattices(sK0),sK1) = k1_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(instantiation,[status(thm)],[c_602])).

cnf(c_737,plain,
    ( X0_47 != X1_47
    | k1_lattices(sK0,k5_lattices(sK0),sK1) != X1_47
    | k1_lattices(sK0,k5_lattices(sK0),sK1) = X0_47 ),
    inference(instantiation,[status(thm)],[c_607])).

cnf(c_750,plain,
    ( X0_47 != k1_lattices(sK0,k5_lattices(sK0),sK1)
    | k1_lattices(sK0,k5_lattices(sK0),sK1) = X0_47
    | k1_lattices(sK0,k5_lattices(sK0),sK1) != k1_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(instantiation,[status(thm)],[c_737])).

cnf(c_771,plain,
    ( k3_lattices(sK0,k5_lattices(sK0),sK1) != k1_lattices(sK0,k5_lattices(sK0),sK1)
    | k1_lattices(sK0,k5_lattices(sK0),sK1) = k3_lattices(sK0,k5_lattices(sK0),sK1)
    | k1_lattices(sK0,k5_lattices(sK0),sK1) != k1_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(instantiation,[status(thm)],[c_750])).

cnf(c_606,plain,
    ( X0_47 = X0_47 ),
    theory(equality)).

cnf(c_736,plain,
    ( k1_lattices(sK0,k5_lattices(sK0),sK1) = k1_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(instantiation,[status(thm)],[c_606])).

cnf(c_5,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l2_lattices(X0)
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) != X2 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_313,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | k1_lattices(X0,X1,X2) != X2 ),
    inference(resolution,[status(thm)],[c_8,c_5])).

cnf(c_486,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | k1_lattices(X0,X1,X2) != X2
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_313,c_19])).

cnf(c_487,plain,
    ( r1_lattices(sK0,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ l3_lattices(sK0)
    | k1_lattices(sK0,X0,X1) != X1 ),
    inference(unflattening,[status(thm)],[c_486])).

cnf(c_491,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | r1_lattices(sK0,X0,X1)
    | k1_lattices(sK0,X0,X1) != X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_487,c_16])).

cnf(c_492,plain,
    ( r1_lattices(sK0,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | k1_lattices(sK0,X0,X1) != X1 ),
    inference(renaming,[status(thm)],[c_491])).

cnf(c_14,negated_conjecture,
    ( ~ r3_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_11,plain,
    ( r3_lattices(X0,X1,X2)
    | ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v9_lattices(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_0,plain,
    ( ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | v9_lattices(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_372,plain,
    ( ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | v9_lattices(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_18])).

cnf(c_373,plain,
    ( ~ l3_lattices(sK0)
    | v2_struct_0(sK0)
    | v9_lattices(sK0) ),
    inference(unflattening,[status(thm)],[c_372])).

cnf(c_64,plain,
    ( ~ l3_lattices(sK0)
    | v2_struct_0(sK0)
    | ~ v10_lattices(sK0)
    | v9_lattices(sK0) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_375,plain,
    ( v9_lattices(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_373,c_19,c_18,c_16,c_64])).

cnf(c_438,plain,
    ( r3_lattices(X0,X1,X2)
    | ~ r1_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_375])).

cnf(c_439,plain,
    ( r3_lattices(sK0,X0,X1)
    | ~ r1_lattices(sK0,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ v6_lattices(sK0)
    | ~ v8_lattices(sK0)
    | ~ l3_lattices(sK0)
    | v2_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_438])).

cnf(c_2,plain,
    ( v6_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_58,plain,
    ( v6_lattices(sK0)
    | ~ l3_lattices(sK0)
    | v2_struct_0(sK0)
    | ~ v10_lattices(sK0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1,plain,
    ( v8_lattices(X0)
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | ~ v10_lattices(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_61,plain,
    ( v8_lattices(sK0)
    | ~ l3_lattices(sK0)
    | v2_struct_0(sK0)
    | ~ v10_lattices(sK0) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_443,plain,
    ( r3_lattices(sK0,X0,X1)
    | ~ r1_lattices(sK0,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | ~ m1_subset_1(X0,u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_439,c_19,c_18,c_16,c_58,c_61])).

cnf(c_444,plain,
    ( r3_lattices(sK0,X0,X1)
    | ~ r1_lattices(sK0,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0)) ),
    inference(renaming,[status(thm)],[c_443])).

cnf(c_473,plain,
    ( ~ r1_lattices(sK0,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | k5_lattices(sK0) != X0
    | sK1 != X1
    | sK0 != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_444])).

cnf(c_474,plain,
    ( ~ r1_lattices(sK0,k5_lattices(sK0),sK1)
    | ~ m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
    | ~ m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_473])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK1,u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_9,plain,
    ( l1_lattices(X0)
    | ~ l3_lattices(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_39,plain,
    ( l1_lattices(sK0)
    | ~ l3_lattices(sK0) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_7,plain,
    ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
    | ~ l1_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_45,plain,
    ( m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
    | ~ l1_lattices(sK0)
    | v2_struct_0(sK0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_476,plain,
    ( ~ r1_lattices(sK0,k5_lattices(sK0),sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_474,c_19,c_16,c_15,c_39,c_45])).

cnf(c_558,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | k1_lattices(sK0,X0,X1) != X1
    | k5_lattices(sK0) != X0
    | sK1 != X1
    | sK0 != sK0 ),
    inference(resolution_lifted,[status(thm)],[c_492,c_476])).

cnf(c_559,plain,
    ( ~ m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
    | ~ m1_subset_1(sK1,u1_struct_0(sK0))
    | k1_lattices(sK0,k5_lattices(sK0),sK1) != sK1 ),
    inference(unflattening,[status(thm)],[c_558])).

cnf(c_561,plain,
    ( k1_lattices(sK0,k5_lattices(sK0),sK1) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_559,c_19,c_16,c_15,c_39,c_45])).

cnf(c_600,plain,
    ( k1_lattices(sK0,k5_lattices(sK0),sK1) != sK1 ),
    inference(subtyping,[status(esa)],[c_561])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ v13_lattices(X1)
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k3_lattices(X1,k5_lattices(X1),X0) = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_17,negated_conjecture,
    ( v13_lattices(sK0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_233,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | ~ v10_lattices(X1)
    | k3_lattices(X1,k5_lattices(X1),X0) = X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_17])).

cnf(c_234,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | ~ l3_lattices(sK0)
    | v2_struct_0(sK0)
    | ~ v10_lattices(sK0)
    | k3_lattices(sK0,k5_lattices(sK0),X0) = X0 ),
    inference(unflattening,[status(thm)],[c_233])).

cnf(c_238,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | k3_lattices(sK0,k5_lattices(sK0),X0) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_234,c_19,c_18,c_16])).

cnf(c_603,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK0))
    | k3_lattices(sK0,k5_lattices(sK0),X0_47) = X0_47 ),
    inference(subtyping,[status(esa)],[c_238])).

cnf(c_618,plain,
    ( ~ m1_subset_1(sK1,u1_struct_0(sK0))
    | k3_lattices(sK0,k5_lattices(sK0),sK1) = sK1 ),
    inference(instantiation,[status(thm)],[c_603])).

cnf(c_615,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_606])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_840,c_792,c_772,c_771,c_736,c_600,c_618,c_615,c_45,c_39,c_15,c_16,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n004.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:19:24 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.09/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.09/0.99  
% 1.09/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.09/0.99  
% 1.09/0.99  ------  iProver source info
% 1.09/0.99  
% 1.09/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.09/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.09/0.99  git: non_committed_changes: false
% 1.09/0.99  git: last_make_outside_of_git: false
% 1.09/0.99  
% 1.09/0.99  ------ 
% 1.09/0.99  
% 1.09/0.99  ------ Input Options
% 1.09/0.99  
% 1.09/0.99  --out_options                           all
% 1.09/0.99  --tptp_safe_out                         true
% 1.09/0.99  --problem_path                          ""
% 1.09/0.99  --include_path                          ""
% 1.09/0.99  --clausifier                            res/vclausify_rel
% 1.09/0.99  --clausifier_options                    --mode clausify
% 1.09/0.99  --stdin                                 false
% 1.09/0.99  --stats_out                             all
% 1.09/0.99  
% 1.09/0.99  ------ General Options
% 1.09/0.99  
% 1.09/0.99  --fof                                   false
% 1.09/0.99  --time_out_real                         305.
% 1.09/0.99  --time_out_virtual                      -1.
% 1.09/0.99  --symbol_type_check                     false
% 1.09/0.99  --clausify_out                          false
% 1.09/0.99  --sig_cnt_out                           false
% 1.09/0.99  --trig_cnt_out                          false
% 1.09/0.99  --trig_cnt_out_tolerance                1.
% 1.09/0.99  --trig_cnt_out_sk_spl                   false
% 1.09/0.99  --abstr_cl_out                          false
% 1.09/0.99  
% 1.09/0.99  ------ Global Options
% 1.09/0.99  
% 1.09/0.99  --schedule                              default
% 1.09/0.99  --add_important_lit                     false
% 1.09/0.99  --prop_solver_per_cl                    1000
% 1.09/0.99  --min_unsat_core                        false
% 1.09/0.99  --soft_assumptions                      false
% 1.09/0.99  --soft_lemma_size                       3
% 1.09/0.99  --prop_impl_unit_size                   0
% 1.09/0.99  --prop_impl_unit                        []
% 1.09/0.99  --share_sel_clauses                     true
% 1.09/0.99  --reset_solvers                         false
% 1.09/0.99  --bc_imp_inh                            [conj_cone]
% 1.09/0.99  --conj_cone_tolerance                   3.
% 1.09/0.99  --extra_neg_conj                        none
% 1.09/0.99  --large_theory_mode                     true
% 1.09/0.99  --prolific_symb_bound                   200
% 1.09/0.99  --lt_threshold                          2000
% 1.09/0.99  --clause_weak_htbl                      true
% 1.09/0.99  --gc_record_bc_elim                     false
% 1.09/0.99  
% 1.09/0.99  ------ Preprocessing Options
% 1.09/0.99  
% 1.09/0.99  --preprocessing_flag                    true
% 1.09/0.99  --time_out_prep_mult                    0.1
% 1.09/0.99  --splitting_mode                        input
% 1.09/0.99  --splitting_grd                         true
% 1.09/0.99  --splitting_cvd                         false
% 1.09/0.99  --splitting_cvd_svl                     false
% 1.09/0.99  --splitting_nvd                         32
% 1.09/0.99  --sub_typing                            true
% 1.09/0.99  --prep_gs_sim                           true
% 1.09/0.99  --prep_unflatten                        true
% 1.09/0.99  --prep_res_sim                          true
% 1.09/0.99  --prep_upred                            true
% 1.09/0.99  --prep_sem_filter                       exhaustive
% 1.09/0.99  --prep_sem_filter_out                   false
% 1.09/0.99  --pred_elim                             true
% 1.09/0.99  --res_sim_input                         true
% 1.09/0.99  --eq_ax_congr_red                       true
% 1.09/0.99  --pure_diseq_elim                       true
% 1.09/0.99  --brand_transform                       false
% 1.09/0.99  --non_eq_to_eq                          false
% 1.09/0.99  --prep_def_merge                        true
% 1.09/0.99  --prep_def_merge_prop_impl              false
% 1.09/0.99  --prep_def_merge_mbd                    true
% 1.09/0.99  --prep_def_merge_tr_red                 false
% 1.09/0.99  --prep_def_merge_tr_cl                  false
% 1.09/0.99  --smt_preprocessing                     true
% 1.09/0.99  --smt_ac_axioms                         fast
% 1.09/0.99  --preprocessed_out                      false
% 1.09/0.99  --preprocessed_stats                    false
% 1.09/0.99  
% 1.09/0.99  ------ Abstraction refinement Options
% 1.09/0.99  
% 1.09/0.99  --abstr_ref                             []
% 1.09/0.99  --abstr_ref_prep                        false
% 1.09/0.99  --abstr_ref_until_sat                   false
% 1.09/0.99  --abstr_ref_sig_restrict                funpre
% 1.09/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.09/0.99  --abstr_ref_under                       []
% 1.09/0.99  
% 1.09/0.99  ------ SAT Options
% 1.09/0.99  
% 1.09/0.99  --sat_mode                              false
% 1.09/0.99  --sat_fm_restart_options                ""
% 1.09/0.99  --sat_gr_def                            false
% 1.09/0.99  --sat_epr_types                         true
% 1.09/0.99  --sat_non_cyclic_types                  false
% 1.09/0.99  --sat_finite_models                     false
% 1.09/0.99  --sat_fm_lemmas                         false
% 1.09/0.99  --sat_fm_prep                           false
% 1.09/0.99  --sat_fm_uc_incr                        true
% 1.09/0.99  --sat_out_model                         small
% 1.09/0.99  --sat_out_clauses                       false
% 1.09/0.99  
% 1.09/0.99  ------ QBF Options
% 1.09/0.99  
% 1.09/0.99  --qbf_mode                              false
% 1.09/0.99  --qbf_elim_univ                         false
% 1.09/0.99  --qbf_dom_inst                          none
% 1.09/0.99  --qbf_dom_pre_inst                      false
% 1.09/0.99  --qbf_sk_in                             false
% 1.09/0.99  --qbf_pred_elim                         true
% 1.09/0.99  --qbf_split                             512
% 1.09/0.99  
% 1.09/0.99  ------ BMC1 Options
% 1.09/0.99  
% 1.09/0.99  --bmc1_incremental                      false
% 1.09/0.99  --bmc1_axioms                           reachable_all
% 1.09/0.99  --bmc1_min_bound                        0
% 1.09/0.99  --bmc1_max_bound                        -1
% 1.09/0.99  --bmc1_max_bound_default                -1
% 1.09/0.99  --bmc1_symbol_reachability              true
% 1.09/0.99  --bmc1_property_lemmas                  false
% 1.09/0.99  --bmc1_k_induction                      false
% 1.09/0.99  --bmc1_non_equiv_states                 false
% 1.09/0.99  --bmc1_deadlock                         false
% 1.09/0.99  --bmc1_ucm                              false
% 1.09/0.99  --bmc1_add_unsat_core                   none
% 1.09/0.99  --bmc1_unsat_core_children              false
% 1.09/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.09/0.99  --bmc1_out_stat                         full
% 1.09/0.99  --bmc1_ground_init                      false
% 1.09/0.99  --bmc1_pre_inst_next_state              false
% 1.09/0.99  --bmc1_pre_inst_state                   false
% 1.09/0.99  --bmc1_pre_inst_reach_state             false
% 1.09/0.99  --bmc1_out_unsat_core                   false
% 1.09/0.99  --bmc1_aig_witness_out                  false
% 1.09/0.99  --bmc1_verbose                          false
% 1.09/0.99  --bmc1_dump_clauses_tptp                false
% 1.09/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.09/0.99  --bmc1_dump_file                        -
% 1.09/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.09/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.09/0.99  --bmc1_ucm_extend_mode                  1
% 1.09/0.99  --bmc1_ucm_init_mode                    2
% 1.09/0.99  --bmc1_ucm_cone_mode                    none
% 1.09/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.09/0.99  --bmc1_ucm_relax_model                  4
% 1.09/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.09/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.09/0.99  --bmc1_ucm_layered_model                none
% 1.09/0.99  --bmc1_ucm_max_lemma_size               10
% 1.09/0.99  
% 1.09/0.99  ------ AIG Options
% 1.09/0.99  
% 1.09/0.99  --aig_mode                              false
% 1.09/0.99  
% 1.09/0.99  ------ Instantiation Options
% 1.09/0.99  
% 1.09/0.99  --instantiation_flag                    true
% 1.09/0.99  --inst_sos_flag                         false
% 1.09/0.99  --inst_sos_phase                        true
% 1.09/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.09/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.09/0.99  --inst_lit_sel_side                     num_symb
% 1.09/0.99  --inst_solver_per_active                1400
% 1.09/0.99  --inst_solver_calls_frac                1.
% 1.09/0.99  --inst_passive_queue_type               priority_queues
% 1.09/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.09/0.99  --inst_passive_queues_freq              [25;2]
% 1.09/0.99  --inst_dismatching                      true
% 1.09/0.99  --inst_eager_unprocessed_to_passive     true
% 1.09/0.99  --inst_prop_sim_given                   true
% 1.09/0.99  --inst_prop_sim_new                     false
% 1.09/0.99  --inst_subs_new                         false
% 1.09/0.99  --inst_eq_res_simp                      false
% 1.09/0.99  --inst_subs_given                       false
% 1.09/0.99  --inst_orphan_elimination               true
% 1.09/0.99  --inst_learning_loop_flag               true
% 1.09/0.99  --inst_learning_start                   3000
% 1.09/0.99  --inst_learning_factor                  2
% 1.09/0.99  --inst_start_prop_sim_after_learn       3
% 1.09/0.99  --inst_sel_renew                        solver
% 1.09/0.99  --inst_lit_activity_flag                true
% 1.09/0.99  --inst_restr_to_given                   false
% 1.09/0.99  --inst_activity_threshold               500
% 1.09/0.99  --inst_out_proof                        true
% 1.09/0.99  
% 1.09/0.99  ------ Resolution Options
% 1.09/0.99  
% 1.09/0.99  --resolution_flag                       true
% 1.09/0.99  --res_lit_sel                           adaptive
% 1.09/0.99  --res_lit_sel_side                      none
% 1.09/0.99  --res_ordering                          kbo
% 1.09/0.99  --res_to_prop_solver                    active
% 1.09/0.99  --res_prop_simpl_new                    false
% 1.09/0.99  --res_prop_simpl_given                  true
% 1.09/0.99  --res_passive_queue_type                priority_queues
% 1.09/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.09/0.99  --res_passive_queues_freq               [15;5]
% 1.09/0.99  --res_forward_subs                      full
% 1.09/0.99  --res_backward_subs                     full
% 1.09/0.99  --res_forward_subs_resolution           true
% 1.09/0.99  --res_backward_subs_resolution          true
% 1.09/0.99  --res_orphan_elimination                true
% 1.09/0.99  --res_time_limit                        2.
% 1.09/0.99  --res_out_proof                         true
% 1.09/0.99  
% 1.09/0.99  ------ Superposition Options
% 1.09/0.99  
% 1.09/0.99  --superposition_flag                    true
% 1.09/0.99  --sup_passive_queue_type                priority_queues
% 1.09/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.09/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.09/0.99  --demod_completeness_check              fast
% 1.09/0.99  --demod_use_ground                      true
% 1.09/0.99  --sup_to_prop_solver                    passive
% 1.09/0.99  --sup_prop_simpl_new                    true
% 1.09/0.99  --sup_prop_simpl_given                  true
% 1.09/0.99  --sup_fun_splitting                     false
% 1.09/0.99  --sup_smt_interval                      50000
% 1.09/0.99  
% 1.09/0.99  ------ Superposition Simplification Setup
% 1.09/0.99  
% 1.09/0.99  --sup_indices_passive                   []
% 1.09/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.09/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.99  --sup_full_bw                           [BwDemod]
% 1.09/0.99  --sup_immed_triv                        [TrivRules]
% 1.09/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.09/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.99  --sup_immed_bw_main                     []
% 1.09/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.09/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.99  
% 1.09/0.99  ------ Combination Options
% 1.09/0.99  
% 1.09/0.99  --comb_res_mult                         3
% 1.09/0.99  --comb_sup_mult                         2
% 1.09/0.99  --comb_inst_mult                        10
% 1.09/0.99  
% 1.09/0.99  ------ Debug Options
% 1.09/0.99  
% 1.09/0.99  --dbg_backtrace                         false
% 1.09/0.99  --dbg_dump_prop_clauses                 false
% 1.09/0.99  --dbg_dump_prop_clauses_file            -
% 1.09/0.99  --dbg_out_stat                          false
% 1.09/0.99  ------ Parsing...
% 1.09/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.09/0.99  
% 1.09/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 1.09/0.99  
% 1.09/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.09/0.99  
% 1.09/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.09/0.99  ------ Proving...
% 1.09/0.99  ------ Problem Properties 
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  clauses                                 5
% 1.09/0.99  conjectures                             1
% 1.09/0.99  EPR                                     0
% 1.09/0.99  Horn                                    5
% 1.09/0.99  unary                                   3
% 1.09/0.99  binary                                  1
% 1.09/0.99  lits                                    8
% 1.09/0.99  lits eq                                 3
% 1.09/0.99  fd_pure                                 0
% 1.09/0.99  fd_pseudo                               0
% 1.09/0.99  fd_cond                                 0
% 1.09/0.99  fd_pseudo_cond                          0
% 1.09/0.99  AC symbols                              0
% 1.09/0.99  
% 1.09/0.99  ------ Schedule dynamic 5 is on 
% 1.09/0.99  
% 1.09/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  ------ 
% 1.09/0.99  Current options:
% 1.09/0.99  ------ 
% 1.09/0.99  
% 1.09/0.99  ------ Input Options
% 1.09/0.99  
% 1.09/0.99  --out_options                           all
% 1.09/0.99  --tptp_safe_out                         true
% 1.09/0.99  --problem_path                          ""
% 1.09/0.99  --include_path                          ""
% 1.09/0.99  --clausifier                            res/vclausify_rel
% 1.09/0.99  --clausifier_options                    --mode clausify
% 1.09/0.99  --stdin                                 false
% 1.09/0.99  --stats_out                             all
% 1.09/0.99  
% 1.09/0.99  ------ General Options
% 1.09/0.99  
% 1.09/0.99  --fof                                   false
% 1.09/0.99  --time_out_real                         305.
% 1.09/0.99  --time_out_virtual                      -1.
% 1.09/0.99  --symbol_type_check                     false
% 1.09/0.99  --clausify_out                          false
% 1.09/0.99  --sig_cnt_out                           false
% 1.09/0.99  --trig_cnt_out                          false
% 1.09/0.99  --trig_cnt_out_tolerance                1.
% 1.09/0.99  --trig_cnt_out_sk_spl                   false
% 1.09/0.99  --abstr_cl_out                          false
% 1.09/0.99  
% 1.09/0.99  ------ Global Options
% 1.09/0.99  
% 1.09/0.99  --schedule                              default
% 1.09/0.99  --add_important_lit                     false
% 1.09/0.99  --prop_solver_per_cl                    1000
% 1.09/0.99  --min_unsat_core                        false
% 1.09/0.99  --soft_assumptions                      false
% 1.09/0.99  --soft_lemma_size                       3
% 1.09/0.99  --prop_impl_unit_size                   0
% 1.09/0.99  --prop_impl_unit                        []
% 1.09/0.99  --share_sel_clauses                     true
% 1.09/0.99  --reset_solvers                         false
% 1.09/0.99  --bc_imp_inh                            [conj_cone]
% 1.09/0.99  --conj_cone_tolerance                   3.
% 1.09/0.99  --extra_neg_conj                        none
% 1.09/0.99  --large_theory_mode                     true
% 1.09/0.99  --prolific_symb_bound                   200
% 1.09/0.99  --lt_threshold                          2000
% 1.09/0.99  --clause_weak_htbl                      true
% 1.09/0.99  --gc_record_bc_elim                     false
% 1.09/0.99  
% 1.09/0.99  ------ Preprocessing Options
% 1.09/0.99  
% 1.09/0.99  --preprocessing_flag                    true
% 1.09/0.99  --time_out_prep_mult                    0.1
% 1.09/0.99  --splitting_mode                        input
% 1.09/0.99  --splitting_grd                         true
% 1.09/0.99  --splitting_cvd                         false
% 1.09/0.99  --splitting_cvd_svl                     false
% 1.09/0.99  --splitting_nvd                         32
% 1.09/0.99  --sub_typing                            true
% 1.09/0.99  --prep_gs_sim                           true
% 1.09/0.99  --prep_unflatten                        true
% 1.09/0.99  --prep_res_sim                          true
% 1.09/0.99  --prep_upred                            true
% 1.09/0.99  --prep_sem_filter                       exhaustive
% 1.09/0.99  --prep_sem_filter_out                   false
% 1.09/0.99  --pred_elim                             true
% 1.09/0.99  --res_sim_input                         true
% 1.09/0.99  --eq_ax_congr_red                       true
% 1.09/0.99  --pure_diseq_elim                       true
% 1.09/0.99  --brand_transform                       false
% 1.09/0.99  --non_eq_to_eq                          false
% 1.09/0.99  --prep_def_merge                        true
% 1.09/0.99  --prep_def_merge_prop_impl              false
% 1.09/0.99  --prep_def_merge_mbd                    true
% 1.09/0.99  --prep_def_merge_tr_red                 false
% 1.09/0.99  --prep_def_merge_tr_cl                  false
% 1.09/0.99  --smt_preprocessing                     true
% 1.09/0.99  --smt_ac_axioms                         fast
% 1.09/0.99  --preprocessed_out                      false
% 1.09/0.99  --preprocessed_stats                    false
% 1.09/0.99  
% 1.09/0.99  ------ Abstraction refinement Options
% 1.09/0.99  
% 1.09/0.99  --abstr_ref                             []
% 1.09/0.99  --abstr_ref_prep                        false
% 1.09/0.99  --abstr_ref_until_sat                   false
% 1.09/0.99  --abstr_ref_sig_restrict                funpre
% 1.09/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.09/0.99  --abstr_ref_under                       []
% 1.09/0.99  
% 1.09/0.99  ------ SAT Options
% 1.09/0.99  
% 1.09/0.99  --sat_mode                              false
% 1.09/0.99  --sat_fm_restart_options                ""
% 1.09/0.99  --sat_gr_def                            false
% 1.09/0.99  --sat_epr_types                         true
% 1.09/0.99  --sat_non_cyclic_types                  false
% 1.09/0.99  --sat_finite_models                     false
% 1.09/0.99  --sat_fm_lemmas                         false
% 1.09/0.99  --sat_fm_prep                           false
% 1.09/0.99  --sat_fm_uc_incr                        true
% 1.09/0.99  --sat_out_model                         small
% 1.09/0.99  --sat_out_clauses                       false
% 1.09/0.99  
% 1.09/0.99  ------ QBF Options
% 1.09/0.99  
% 1.09/0.99  --qbf_mode                              false
% 1.09/0.99  --qbf_elim_univ                         false
% 1.09/0.99  --qbf_dom_inst                          none
% 1.09/0.99  --qbf_dom_pre_inst                      false
% 1.09/0.99  --qbf_sk_in                             false
% 1.09/0.99  --qbf_pred_elim                         true
% 1.09/0.99  --qbf_split                             512
% 1.09/0.99  
% 1.09/0.99  ------ BMC1 Options
% 1.09/0.99  
% 1.09/0.99  --bmc1_incremental                      false
% 1.09/0.99  --bmc1_axioms                           reachable_all
% 1.09/0.99  --bmc1_min_bound                        0
% 1.09/0.99  --bmc1_max_bound                        -1
% 1.09/0.99  --bmc1_max_bound_default                -1
% 1.09/0.99  --bmc1_symbol_reachability              true
% 1.09/0.99  --bmc1_property_lemmas                  false
% 1.09/0.99  --bmc1_k_induction                      false
% 1.09/0.99  --bmc1_non_equiv_states                 false
% 1.09/0.99  --bmc1_deadlock                         false
% 1.09/0.99  --bmc1_ucm                              false
% 1.09/0.99  --bmc1_add_unsat_core                   none
% 1.09/0.99  --bmc1_unsat_core_children              false
% 1.09/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.09/0.99  --bmc1_out_stat                         full
% 1.09/0.99  --bmc1_ground_init                      false
% 1.09/0.99  --bmc1_pre_inst_next_state              false
% 1.09/0.99  --bmc1_pre_inst_state                   false
% 1.09/0.99  --bmc1_pre_inst_reach_state             false
% 1.09/0.99  --bmc1_out_unsat_core                   false
% 1.09/0.99  --bmc1_aig_witness_out                  false
% 1.09/0.99  --bmc1_verbose                          false
% 1.09/0.99  --bmc1_dump_clauses_tptp                false
% 1.09/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.09/0.99  --bmc1_dump_file                        -
% 1.09/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.09/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.09/0.99  --bmc1_ucm_extend_mode                  1
% 1.09/0.99  --bmc1_ucm_init_mode                    2
% 1.09/0.99  --bmc1_ucm_cone_mode                    none
% 1.09/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.09/0.99  --bmc1_ucm_relax_model                  4
% 1.09/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.09/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.09/0.99  --bmc1_ucm_layered_model                none
% 1.09/0.99  --bmc1_ucm_max_lemma_size               10
% 1.09/0.99  
% 1.09/0.99  ------ AIG Options
% 1.09/0.99  
% 1.09/0.99  --aig_mode                              false
% 1.09/0.99  
% 1.09/0.99  ------ Instantiation Options
% 1.09/0.99  
% 1.09/0.99  --instantiation_flag                    true
% 1.09/0.99  --inst_sos_flag                         false
% 1.09/0.99  --inst_sos_phase                        true
% 1.09/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.09/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.09/0.99  --inst_lit_sel_side                     none
% 1.09/0.99  --inst_solver_per_active                1400
% 1.09/0.99  --inst_solver_calls_frac                1.
% 1.09/0.99  --inst_passive_queue_type               priority_queues
% 1.09/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.09/0.99  --inst_passive_queues_freq              [25;2]
% 1.09/0.99  --inst_dismatching                      true
% 1.09/0.99  --inst_eager_unprocessed_to_passive     true
% 1.09/0.99  --inst_prop_sim_given                   true
% 1.09/0.99  --inst_prop_sim_new                     false
% 1.09/0.99  --inst_subs_new                         false
% 1.09/0.99  --inst_eq_res_simp                      false
% 1.09/0.99  --inst_subs_given                       false
% 1.09/0.99  --inst_orphan_elimination               true
% 1.09/0.99  --inst_learning_loop_flag               true
% 1.09/0.99  --inst_learning_start                   3000
% 1.09/0.99  --inst_learning_factor                  2
% 1.09/0.99  --inst_start_prop_sim_after_learn       3
% 1.09/0.99  --inst_sel_renew                        solver
% 1.09/0.99  --inst_lit_activity_flag                true
% 1.09/0.99  --inst_restr_to_given                   false
% 1.09/0.99  --inst_activity_threshold               500
% 1.09/0.99  --inst_out_proof                        true
% 1.09/0.99  
% 1.09/0.99  ------ Resolution Options
% 1.09/0.99  
% 1.09/0.99  --resolution_flag                       false
% 1.09/0.99  --res_lit_sel                           adaptive
% 1.09/0.99  --res_lit_sel_side                      none
% 1.09/0.99  --res_ordering                          kbo
% 1.09/0.99  --res_to_prop_solver                    active
% 1.09/0.99  --res_prop_simpl_new                    false
% 1.09/0.99  --res_prop_simpl_given                  true
% 1.09/0.99  --res_passive_queue_type                priority_queues
% 1.09/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.09/0.99  --res_passive_queues_freq               [15;5]
% 1.09/0.99  --res_forward_subs                      full
% 1.09/0.99  --res_backward_subs                     full
% 1.09/0.99  --res_forward_subs_resolution           true
% 1.09/0.99  --res_backward_subs_resolution          true
% 1.09/0.99  --res_orphan_elimination                true
% 1.09/0.99  --res_time_limit                        2.
% 1.09/0.99  --res_out_proof                         true
% 1.09/0.99  
% 1.09/0.99  ------ Superposition Options
% 1.09/0.99  
% 1.09/0.99  --superposition_flag                    true
% 1.09/0.99  --sup_passive_queue_type                priority_queues
% 1.09/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.09/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.09/0.99  --demod_completeness_check              fast
% 1.09/0.99  --demod_use_ground                      true
% 1.09/0.99  --sup_to_prop_solver                    passive
% 1.09/0.99  --sup_prop_simpl_new                    true
% 1.09/0.99  --sup_prop_simpl_given                  true
% 1.09/0.99  --sup_fun_splitting                     false
% 1.09/0.99  --sup_smt_interval                      50000
% 1.09/0.99  
% 1.09/0.99  ------ Superposition Simplification Setup
% 1.09/0.99  
% 1.09/0.99  --sup_indices_passive                   []
% 1.09/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.09/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.99  --sup_full_bw                           [BwDemod]
% 1.09/0.99  --sup_immed_triv                        [TrivRules]
% 1.09/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.09/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.99  --sup_immed_bw_main                     []
% 1.09/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.09/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.99  
% 1.09/0.99  ------ Combination Options
% 1.09/0.99  
% 1.09/0.99  --comb_res_mult                         3
% 1.09/0.99  --comb_sup_mult                         2
% 1.09/0.99  --comb_inst_mult                        10
% 1.09/0.99  
% 1.09/0.99  ------ Debug Options
% 1.09/0.99  
% 1.09/0.99  --dbg_backtrace                         false
% 1.09/0.99  --dbg_dump_prop_clauses                 false
% 1.09/0.99  --dbg_dump_prop_clauses_file            -
% 1.09/0.99  --dbg_out_stat                          false
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  ------ Proving...
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  % SZS status Theorem for theBenchmark.p
% 1.09/0.99  
% 1.09/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.09/0.99  
% 1.09/0.99  fof(f1,axiom,(
% 1.09/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v7_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f10,plain,(
% 1.09/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.09/0.99    inference(pure_predicate_removal,[],[f1])).
% 1.09/0.99  
% 1.09/0.99  fof(f11,plain,(
% 1.09/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 1.09/0.99    inference(pure_predicate_removal,[],[f10])).
% 1.09/0.99  
% 1.09/0.99  fof(f12,plain,(
% 1.09/0.99    ! [X0] : (((v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0)) | (~v10_lattices(X0) | v2_struct_0(X0))) | ~l3_lattices(X0))),
% 1.09/0.99    inference(ennf_transformation,[],[f11])).
% 1.09/0.99  
% 1.09/0.99  fof(f13,plain,(
% 1.09/0.99    ! [X0] : ((v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0)) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0))),
% 1.09/0.99    inference(flattening,[],[f12])).
% 1.09/0.99  
% 1.09/0.99  fof(f33,plain,(
% 1.09/0.99    ( ! [X0] : (v4_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f13])).
% 1.09/0.99  
% 1.09/0.99  fof(f5,axiom,(
% 1.09/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l2_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0)) => k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f19,plain,(
% 1.09/0.99    ! [X0,X1,X2] : (k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | ~v4_lattices(X0) | v2_struct_0(X0)))),
% 1.09/0.99    inference(ennf_transformation,[],[f5])).
% 1.09/0.99  
% 1.09/0.99  fof(f20,plain,(
% 1.09/0.99    ! [X0,X1,X2] : (k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | ~v4_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(flattening,[],[f19])).
% 1.09/0.99  
% 1.09/0.99  fof(f42,plain,(
% 1.09/0.99    ( ! [X2,X0,X1] : (k1_lattices(X0,X1,X2) = k3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | ~v4_lattices(X0) | v2_struct_0(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f20])).
% 1.09/0.99  
% 1.09/0.99  fof(f4,axiom,(
% 1.09/0.99    ! [X0] : (l3_lattices(X0) => (l2_lattices(X0) & l1_lattices(X0)))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f18,plain,(
% 1.09/0.99    ! [X0] : ((l2_lattices(X0) & l1_lattices(X0)) | ~l3_lattices(X0))),
% 1.09/0.99    inference(ennf_transformation,[],[f4])).
% 1.09/0.99  
% 1.09/0.99  fof(f41,plain,(
% 1.09/0.99    ( ! [X0] : (l2_lattices(X0) | ~l3_lattices(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f18])).
% 1.09/0.99  
% 1.09/0.99  fof(f8,conjecture,(
% 1.09/0.99    ! [X0] : ((l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => r3_lattices(X0,k5_lattices(X0),X1)))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f9,negated_conjecture,(
% 1.09/0.99    ~! [X0] : ((l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => r3_lattices(X0,k5_lattices(X0),X1)))),
% 1.09/0.99    inference(negated_conjecture,[],[f8])).
% 1.09/0.99  
% 1.09/0.99  fof(f25,plain,(
% 1.09/0.99    ? [X0] : (? [X1] : (~r3_lattices(X0,k5_lattices(X0),X1) & m1_subset_1(X1,u1_struct_0(X0))) & (l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)))),
% 1.09/0.99    inference(ennf_transformation,[],[f9])).
% 1.09/0.99  
% 1.09/0.99  fof(f26,plain,(
% 1.09/0.99    ? [X0] : (? [X1] : (~r3_lattices(X0,k5_lattices(X0),X1) & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0))),
% 1.09/0.99    inference(flattening,[],[f25])).
% 1.09/0.99  
% 1.09/0.99  fof(f30,plain,(
% 1.09/0.99    ( ! [X0] : (? [X1] : (~r3_lattices(X0,k5_lattices(X0),X1) & m1_subset_1(X1,u1_struct_0(X0))) => (~r3_lattices(X0,k5_lattices(X0),sK1) & m1_subset_1(sK1,u1_struct_0(X0)))) )),
% 1.09/0.99    introduced(choice_axiom,[])).
% 1.09/0.99  
% 1.09/0.99  fof(f29,plain,(
% 1.09/0.99    ? [X0] : (? [X1] : (~r3_lattices(X0,k5_lattices(X0),X1) & m1_subset_1(X1,u1_struct_0(X0))) & l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (? [X1] : (~r3_lattices(sK0,k5_lattices(sK0),X1) & m1_subset_1(X1,u1_struct_0(sK0))) & l3_lattices(sK0) & v13_lattices(sK0) & v10_lattices(sK0) & ~v2_struct_0(sK0))),
% 1.09/0.99    introduced(choice_axiom,[])).
% 1.09/0.99  
% 1.09/0.99  fof(f31,plain,(
% 1.09/0.99    (~r3_lattices(sK0,k5_lattices(sK0),sK1) & m1_subset_1(sK1,u1_struct_0(sK0))) & l3_lattices(sK0) & v13_lattices(sK0) & v10_lattices(sK0) & ~v2_struct_0(sK0)),
% 1.09/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f26,f30,f29])).
% 1.09/0.99  
% 1.09/0.99  fof(f47,plain,(
% 1.09/0.99    v10_lattices(sK0)),
% 1.09/0.99    inference(cnf_transformation,[],[f31])).
% 1.09/0.99  
% 1.09/0.99  fof(f46,plain,(
% 1.09/0.99    ~v2_struct_0(sK0)),
% 1.09/0.99    inference(cnf_transformation,[],[f31])).
% 1.09/0.99  
% 1.09/0.99  fof(f49,plain,(
% 1.09/0.99    l3_lattices(sK0)),
% 1.09/0.99    inference(cnf_transformation,[],[f31])).
% 1.09/0.99  
% 1.09/0.99  fof(f2,axiom,(
% 1.09/0.99    ! [X0] : ((l2_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2))))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f14,plain,(
% 1.09/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l2_lattices(X0) | v2_struct_0(X0)))),
% 1.09/0.99    inference(ennf_transformation,[],[f2])).
% 1.09/0.99  
% 1.09/0.99  fof(f15,plain,(
% 1.09/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_lattices(X0,X1,X2) <=> k1_lattices(X0,X1,X2) = X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l2_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(flattening,[],[f14])).
% 1.09/0.99  
% 1.09/0.99  fof(f27,plain,(
% 1.09/0.99    ! [X0] : (! [X1] : (! [X2] : (((r1_lattices(X0,X1,X2) | k1_lattices(X0,X1,X2) != X2) & (k1_lattices(X0,X1,X2) = X2 | ~r1_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l2_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(nnf_transformation,[],[f15])).
% 1.09/0.99  
% 1.09/0.99  fof(f38,plain,(
% 1.09/0.99    ( ! [X2,X0,X1] : (r1_lattices(X0,X1,X2) | k1_lattices(X0,X1,X2) != X2 | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l2_lattices(X0) | v2_struct_0(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f27])).
% 1.09/0.99  
% 1.09/0.99  fof(f51,plain,(
% 1.09/0.99    ~r3_lattices(sK0,k5_lattices(sK0),sK1)),
% 1.09/0.99    inference(cnf_transformation,[],[f31])).
% 1.09/0.99  
% 1.09/0.99  fof(f6,axiom,(
% 1.09/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l3_lattices(X0) & v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) => (r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f21,plain,(
% 1.09/0.99    ! [X0,X1,X2] : ((r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)))),
% 1.09/0.99    inference(ennf_transformation,[],[f6])).
% 1.09/0.99  
% 1.09/0.99  fof(f22,plain,(
% 1.09/0.99    ! [X0,X1,X2] : ((r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(flattening,[],[f21])).
% 1.09/0.99  
% 1.09/0.99  fof(f28,plain,(
% 1.09/0.99    ! [X0,X1,X2] : (((r3_lattices(X0,X1,X2) | ~r1_lattices(X0,X1,X2)) & (r1_lattices(X0,X1,X2) | ~r3_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(nnf_transformation,[],[f22])).
% 1.09/0.99  
% 1.09/0.99  fof(f44,plain,(
% 1.09/0.99    ( ! [X2,X0,X1] : (r3_lattices(X0,X1,X2) | ~r1_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f28])).
% 1.09/0.99  
% 1.09/0.99  fof(f36,plain,(
% 1.09/0.99    ( ! [X0] : (v9_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f13])).
% 1.09/0.99  
% 1.09/0.99  fof(f34,plain,(
% 1.09/0.99    ( ! [X0] : (v6_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f13])).
% 1.09/0.99  
% 1.09/0.99  fof(f35,plain,(
% 1.09/0.99    ( ! [X0] : (v8_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f13])).
% 1.09/0.99  
% 1.09/0.99  fof(f50,plain,(
% 1.09/0.99    m1_subset_1(sK1,u1_struct_0(sK0))),
% 1.09/0.99    inference(cnf_transformation,[],[f31])).
% 1.09/0.99  
% 1.09/0.99  fof(f40,plain,(
% 1.09/0.99    ( ! [X0] : (l1_lattices(X0) | ~l3_lattices(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f18])).
% 1.09/0.99  
% 1.09/0.99  fof(f3,axiom,(
% 1.09/0.99    ! [X0] : ((l1_lattices(X0) & ~v2_struct_0(X0)) => m1_subset_1(k5_lattices(X0),u1_struct_0(X0)))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f16,plain,(
% 1.09/0.99    ! [X0] : (m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | (~l1_lattices(X0) | v2_struct_0(X0)))),
% 1.09/0.99    inference(ennf_transformation,[],[f3])).
% 1.09/0.99  
% 1.09/0.99  fof(f17,plain,(
% 1.09/0.99    ! [X0] : (m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | ~l1_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(flattening,[],[f16])).
% 1.09/0.99  
% 1.09/0.99  fof(f39,plain,(
% 1.09/0.99    ( ! [X0] : (m1_subset_1(k5_lattices(X0),u1_struct_0(X0)) | ~l1_lattices(X0) | v2_struct_0(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f17])).
% 1.09/0.99  
% 1.09/0.99  fof(f7,axiom,(
% 1.09/0.99    ! [X0] : ((l3_lattices(X0) & v13_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => k3_lattices(X0,k5_lattices(X0),X1) = X1))),
% 1.09/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.99  
% 1.09/0.99  fof(f23,plain,(
% 1.09/0.99    ! [X0] : (! [X1] : (k3_lattices(X0,k5_lattices(X0),X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v13_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 1.09/0.99    inference(ennf_transformation,[],[f7])).
% 1.09/0.99  
% 1.09/0.99  fof(f24,plain,(
% 1.09/0.99    ! [X0] : (! [X1] : (k3_lattices(X0,k5_lattices(X0),X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v13_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 1.09/0.99    inference(flattening,[],[f23])).
% 1.09/0.99  
% 1.09/0.99  fof(f45,plain,(
% 1.09/0.99    ( ! [X0,X1] : (k3_lattices(X0,k5_lattices(X0),X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v13_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 1.09/0.99    inference(cnf_transformation,[],[f24])).
% 1.09/0.99  
% 1.09/0.99  fof(f48,plain,(
% 1.09/0.99    v13_lattices(sK0)),
% 1.09/0.99    inference(cnf_transformation,[],[f31])).
% 1.09/0.99  
% 1.09/0.99  cnf(c_607,plain,
% 1.09/0.99      ( X0_47 != X1_47 | X2_47 != X1_47 | X2_47 = X0_47 ),
% 1.09/0.99      theory(equality) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_839,plain,
% 1.09/0.99      ( k3_lattices(sK0,k5_lattices(sK0),sK1) != X0_47
% 1.09/0.99      | sK1 != X0_47
% 1.09/0.99      | sK1 = k3_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_607]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_840,plain,
% 1.09/0.99      ( k3_lattices(sK0,k5_lattices(sK0),sK1) != sK1
% 1.09/0.99      | sK1 = k3_lattices(sK0,k5_lattices(sK0),sK1)
% 1.09/0.99      | sK1 != sK1 ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_839]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_726,plain,
% 1.09/0.99      ( k1_lattices(sK0,k5_lattices(sK0),sK1) != X0_47
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) = sK1
% 1.09/0.99      | sK1 != X0_47 ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_607]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_792,plain,
% 1.09/0.99      ( k1_lattices(sK0,k5_lattices(sK0),sK1) != k3_lattices(sK0,k5_lattices(sK0),sK1)
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) = sK1
% 1.09/0.99      | sK1 != k3_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_726]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_3,plain,
% 1.09/0.99      ( v4_lattices(X0)
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | ~ v10_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_10,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.09/0.99      | ~ l2_lattices(X1)
% 1.09/0.99      | ~ v4_lattices(X1)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_254,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.09/0.99      | ~ l2_lattices(X1)
% 1.09/0.99      | ~ l3_lattices(X3)
% 1.09/0.99      | v2_struct_0(X3)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | ~ v10_lattices(X3)
% 1.09/0.99      | X1 != X3
% 1.09/0.99      | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_10]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_255,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.09/0.99      | ~ l2_lattices(X1)
% 1.09/0.99      | ~ l3_lattices(X1)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | ~ v10_lattices(X1)
% 1.09/0.99      | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_254]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_8,plain,
% 1.09/0.99      ( l2_lattices(X0) | ~ l3_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_273,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.09/0.99      | ~ l3_lattices(X1)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | ~ v10_lattices(X1)
% 1.09/0.99      | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0) ),
% 1.09/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_255,c_8]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_18,negated_conjecture,
% 1.09/0.99      ( v10_lattices(sK0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_383,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 1.09/0.99      | ~ l3_lattices(X1)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | k3_lattices(X1,X2,X0) = k1_lattices(X1,X2,X0)
% 1.09/0.99      | sK0 != X1 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_273,c_18]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_384,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | ~ l3_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0)
% 1.09/0.99      | k3_lattices(sK0,X1,X0) = k1_lattices(sK0,X1,X0) ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_383]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_19,negated_conjecture,
% 1.09/0.99      ( ~ v2_struct_0(sK0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_16,negated_conjecture,
% 1.09/0.99      ( l3_lattices(sK0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_388,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | k3_lattices(sK0,X1,X0) = k1_lattices(sK0,X1,X0) ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_384,c_19,c_16]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_602,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1_47,u1_struct_0(sK0))
% 1.09/0.99      | k3_lattices(sK0,X1_47,X0_47) = k1_lattices(sK0,X1_47,X0_47) ),
% 1.09/0.99      inference(subtyping,[status(esa)],[c_388]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_772,plain,
% 1.09/0.99      ( ~ m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(sK1,u1_struct_0(sK0))
% 1.09/0.99      | k3_lattices(sK0,k5_lattices(sK0),sK1) = k1_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_602]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_737,plain,
% 1.09/0.99      ( X0_47 != X1_47
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) != X1_47
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) = X0_47 ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_607]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_750,plain,
% 1.09/0.99      ( X0_47 != k1_lattices(sK0,k5_lattices(sK0),sK1)
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) = X0_47
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) != k1_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_737]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_771,plain,
% 1.09/0.99      ( k3_lattices(sK0,k5_lattices(sK0),sK1) != k1_lattices(sK0,k5_lattices(sK0),sK1)
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) = k3_lattices(sK0,k5_lattices(sK0),sK1)
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) != k1_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_750]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_606,plain,( X0_47 = X0_47 ),theory(equality) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_736,plain,
% 1.09/0.99      ( k1_lattices(sK0,k5_lattices(sK0),sK1) = k1_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_606]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_5,plain,
% 1.09/0.99      ( r1_lattices(X0,X1,X2)
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.09/0.99      | ~ l2_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | k1_lattices(X0,X1,X2) != X2 ),
% 1.09/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_313,plain,
% 1.09/0.99      ( r1_lattices(X0,X1,X2)
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | k1_lattices(X0,X1,X2) != X2 ),
% 1.09/0.99      inference(resolution,[status(thm)],[c_8,c_5]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_486,plain,
% 1.09/0.99      ( r1_lattices(X0,X1,X2)
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | k1_lattices(X0,X1,X2) != X2
% 1.09/0.99      | sK0 != X0 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_313,c_19]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_487,plain,
% 1.09/0.99      ( r1_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ l3_lattices(sK0)
% 1.09/0.99      | k1_lattices(sK0,X0,X1) != X1 ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_486]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_491,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | r1_lattices(sK0,X0,X1)
% 1.09/0.99      | k1_lattices(sK0,X0,X1) != X1 ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_487,c_16]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_492,plain,
% 1.09/0.99      ( r1_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | k1_lattices(sK0,X0,X1) != X1 ),
% 1.09/0.99      inference(renaming,[status(thm)],[c_491]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_14,negated_conjecture,
% 1.09/0.99      ( ~ r3_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(cnf_transformation,[],[f51]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_11,plain,
% 1.09/0.99      ( r3_lattices(X0,X1,X2)
% 1.09/0.99      | ~ r1_lattices(X0,X1,X2)
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.09/0.99      | ~ v6_lattices(X0)
% 1.09/0.99      | ~ v8_lattices(X0)
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | ~ v9_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_0,plain,
% 1.09/0.99      ( ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | ~ v10_lattices(X0)
% 1.09/0.99      | v9_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_372,plain,
% 1.09/0.99      ( ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | v9_lattices(X0)
% 1.09/0.99      | sK0 != X0 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_18]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_373,plain,
% 1.09/0.99      ( ~ l3_lattices(sK0) | v2_struct_0(sK0) | v9_lattices(sK0) ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_372]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_64,plain,
% 1.09/0.99      ( ~ l3_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0)
% 1.09/0.99      | ~ v10_lattices(sK0)
% 1.09/0.99      | v9_lattices(sK0) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_375,plain,
% 1.09/0.99      ( v9_lattices(sK0) ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_373,c_19,c_18,c_16,c_64]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_438,plain,
% 1.09/0.99      ( r3_lattices(X0,X1,X2)
% 1.09/0.99      | ~ r1_lattices(X0,X1,X2)
% 1.09/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.09/0.99      | ~ v6_lattices(X0)
% 1.09/0.99      | ~ v8_lattices(X0)
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | sK0 != X0 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_375]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_439,plain,
% 1.09/0.99      ( r3_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ r1_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ v6_lattices(sK0)
% 1.09/0.99      | ~ v8_lattices(sK0)
% 1.09/0.99      | ~ l3_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0) ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_438]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_2,plain,
% 1.09/0.99      ( v6_lattices(X0)
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | ~ v10_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_58,plain,
% 1.09/0.99      ( v6_lattices(sK0)
% 1.09/0.99      | ~ l3_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0)
% 1.09/0.99      | ~ v10_lattices(sK0) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_2]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_1,plain,
% 1.09/0.99      ( v8_lattices(X0)
% 1.09/0.99      | ~ l3_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0)
% 1.09/0.99      | ~ v10_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_61,plain,
% 1.09/0.99      ( v8_lattices(sK0)
% 1.09/0.99      | ~ l3_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0)
% 1.09/0.99      | ~ v10_lattices(sK0) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_1]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_443,plain,
% 1.09/0.99      ( r3_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ r1_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK0)) ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_439,c_19,c_18,c_16,c_58,c_61]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_444,plain,
% 1.09/0.99      ( r3_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ r1_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0)) ),
% 1.09/0.99      inference(renaming,[status(thm)],[c_443]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_473,plain,
% 1.09/0.99      ( ~ r1_lattices(sK0,X0,X1)
% 1.09/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | k5_lattices(sK0) != X0
% 1.09/0.99      | sK1 != X1
% 1.09/0.99      | sK0 != sK0 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_444]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_474,plain,
% 1.09/0.99      ( ~ r1_lattices(sK0,k5_lattices(sK0),sK1)
% 1.09/0.99      | ~ m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(sK1,u1_struct_0(sK0)) ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_473]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_15,negated_conjecture,
% 1.09/0.99      ( m1_subset_1(sK1,u1_struct_0(sK0)) ),
% 1.09/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_9,plain,
% 1.09/0.99      ( l1_lattices(X0) | ~ l3_lattices(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_39,plain,
% 1.09/0.99      ( l1_lattices(sK0) | ~ l3_lattices(sK0) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_9]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_7,plain,
% 1.09/0.99      ( m1_subset_1(k5_lattices(X0),u1_struct_0(X0))
% 1.09/0.99      | ~ l1_lattices(X0)
% 1.09/0.99      | v2_struct_0(X0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_45,plain,
% 1.09/0.99      ( m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
% 1.09/0.99      | ~ l1_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0) ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_7]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_476,plain,
% 1.09/0.99      ( ~ r1_lattices(sK0,k5_lattices(sK0),sK1) ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_474,c_19,c_16,c_15,c_39,c_45]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_558,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK0))
% 1.09/0.99      | k1_lattices(sK0,X0,X1) != X1
% 1.09/0.99      | k5_lattices(sK0) != X0
% 1.09/0.99      | sK1 != X1
% 1.09/0.99      | sK0 != sK0 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_492,c_476]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_559,plain,
% 1.09/0.99      ( ~ m1_subset_1(k5_lattices(sK0),u1_struct_0(sK0))
% 1.09/0.99      | ~ m1_subset_1(sK1,u1_struct_0(sK0))
% 1.09/0.99      | k1_lattices(sK0,k5_lattices(sK0),sK1) != sK1 ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_558]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_561,plain,
% 1.09/0.99      ( k1_lattices(sK0,k5_lattices(sK0),sK1) != sK1 ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_559,c_19,c_16,c_15,c_39,c_45]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_600,plain,
% 1.09/0.99      ( k1_lattices(sK0,k5_lattices(sK0),sK1) != sK1 ),
% 1.09/0.99      inference(subtyping,[status(esa)],[c_561]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_13,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ v13_lattices(X1)
% 1.09/0.99      | ~ l3_lattices(X1)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | ~ v10_lattices(X1)
% 1.09/0.99      | k3_lattices(X1,k5_lattices(X1),X0) = X0 ),
% 1.09/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_17,negated_conjecture,
% 1.09/0.99      ( v13_lattices(sK0) ),
% 1.09/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_233,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.09/0.99      | ~ l3_lattices(X1)
% 1.09/0.99      | v2_struct_0(X1)
% 1.09/0.99      | ~ v10_lattices(X1)
% 1.09/0.99      | k3_lattices(X1,k5_lattices(X1),X0) = X0
% 1.09/0.99      | sK0 != X1 ),
% 1.09/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_17]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_234,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | ~ l3_lattices(sK0)
% 1.09/0.99      | v2_struct_0(sK0)
% 1.09/0.99      | ~ v10_lattices(sK0)
% 1.09/0.99      | k3_lattices(sK0,k5_lattices(sK0),X0) = X0 ),
% 1.09/0.99      inference(unflattening,[status(thm)],[c_233]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_238,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK0))
% 1.09/0.99      | k3_lattices(sK0,k5_lattices(sK0),X0) = X0 ),
% 1.09/0.99      inference(global_propositional_subsumption,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_234,c_19,c_18,c_16]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_603,plain,
% 1.09/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK0))
% 1.09/0.99      | k3_lattices(sK0,k5_lattices(sK0),X0_47) = X0_47 ),
% 1.09/0.99      inference(subtyping,[status(esa)],[c_238]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_618,plain,
% 1.09/0.99      ( ~ m1_subset_1(sK1,u1_struct_0(sK0))
% 1.09/0.99      | k3_lattices(sK0,k5_lattices(sK0),sK1) = sK1 ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_603]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(c_615,plain,
% 1.09/0.99      ( sK1 = sK1 ),
% 1.09/0.99      inference(instantiation,[status(thm)],[c_606]) ).
% 1.09/0.99  
% 1.09/0.99  cnf(contradiction,plain,
% 1.09/0.99      ( $false ),
% 1.09/0.99      inference(minisat,
% 1.09/0.99                [status(thm)],
% 1.09/0.99                [c_840,c_792,c_772,c_771,c_736,c_600,c_618,c_615,c_45,
% 1.09/0.99                 c_39,c_15,c_16,c_19]) ).
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.09/0.99  
% 1.09/0.99  ------                               Statistics
% 1.09/0.99  
% 1.09/0.99  ------ General
% 1.09/0.99  
% 1.09/0.99  abstr_ref_over_cycles:                  0
% 1.09/0.99  abstr_ref_under_cycles:                 0
% 1.09/0.99  gc_basic_clause_elim:                   0
% 1.09/0.99  forced_gc_time:                         0
% 1.09/0.99  parsing_time:                           0.009
% 1.09/0.99  unif_index_cands_time:                  0.
% 1.09/0.99  unif_index_add_time:                    0.
% 1.09/0.99  orderings_time:                         0.
% 1.09/0.99  out_proof_time:                         0.01
% 1.09/0.99  total_time:                             0.061
% 1.09/0.99  num_of_symbols:                         50
% 1.09/0.99  num_of_terms:                           592
% 1.09/0.99  
% 1.09/0.99  ------ Preprocessing
% 1.09/0.99  
% 1.09/0.99  num_of_splits:                          0
% 1.09/0.99  num_of_split_atoms:                     0
% 1.09/0.99  num_of_reused_defs:                     0
% 1.09/0.99  num_eq_ax_congr_red:                    21
% 1.09/0.99  num_of_sem_filtered_clauses:            1
% 1.09/0.99  num_of_subtypes:                        3
% 1.09/0.99  monotx_restored_types:                  0
% 1.09/0.99  sat_num_of_epr_types:                   0
% 1.09/0.99  sat_num_of_non_cyclic_types:            0
% 1.09/0.99  sat_guarded_non_collapsed_types:        1
% 1.09/0.99  num_pure_diseq_elim:                    0
% 1.09/0.99  simp_replaced_by:                       0
% 1.09/0.99  res_preprocessed:                       45
% 1.09/0.99  prep_upred:                             0
% 1.09/0.99  prep_unflattend:                        15
% 1.09/0.99  smt_new_axioms:                         0
% 1.09/0.99  pred_elim_cands:                        1
% 1.09/0.99  pred_elim:                              12
% 1.09/0.99  pred_elim_cl:                           14
% 1.09/0.99  pred_elim_cycles:                       14
% 1.09/0.99  merged_defs:                            0
% 1.09/0.99  merged_defs_ncl:                        0
% 1.09/0.99  bin_hyper_res:                          0
% 1.09/0.99  prep_cycles:                            4
% 1.09/0.99  pred_elim_time:                         0.007
% 1.09/0.99  splitting_time:                         0.
% 1.09/0.99  sem_filter_time:                        0.
% 1.09/0.99  monotx_time:                            0.
% 1.09/0.99  subtype_inf_time:                       0.
% 1.09/0.99  
% 1.09/0.99  ------ Problem properties
% 1.09/0.99  
% 1.09/0.99  clauses:                                5
% 1.09/0.99  conjectures:                            1
% 1.09/0.99  epr:                                    0
% 1.09/0.99  horn:                                   5
% 1.09/0.99  ground:                                 3
% 1.09/0.99  unary:                                  3
% 1.09/0.99  binary:                                 1
% 1.09/0.99  lits:                                   8
% 1.09/0.99  lits_eq:                                3
% 1.09/0.99  fd_pure:                                0
% 1.09/0.99  fd_pseudo:                              0
% 1.09/0.99  fd_cond:                                0
% 1.09/0.99  fd_pseudo_cond:                         0
% 1.09/0.99  ac_symbols:                             0
% 1.09/0.99  
% 1.09/0.99  ------ Propositional Solver
% 1.09/0.99  
% 1.09/0.99  prop_solver_calls:                      25
% 1.09/0.99  prop_fast_solver_calls:                 351
% 1.09/0.99  smt_solver_calls:                       0
% 1.09/0.99  smt_fast_solver_calls:                  0
% 1.09/0.99  prop_num_of_clauses:                    233
% 1.09/0.99  prop_preprocess_simplified:             1210
% 1.09/0.99  prop_fo_subsumed:                       26
% 1.09/0.99  prop_solver_time:                       0.
% 1.09/0.99  smt_solver_time:                        0.
% 1.09/0.99  smt_fast_solver_time:                   0.
% 1.09/0.99  prop_fast_solver_time:                  0.
% 1.09/0.99  prop_unsat_core_time:                   0.
% 1.09/0.99  
% 1.09/0.99  ------ QBF
% 1.09/0.99  
% 1.09/0.99  qbf_q_res:                              0
% 1.09/0.99  qbf_num_tautologies:                    0
% 1.09/0.99  qbf_prep_cycles:                        0
% 1.09/0.99  
% 1.09/0.99  ------ BMC1
% 1.09/0.99  
% 1.09/0.99  bmc1_current_bound:                     -1
% 1.09/0.99  bmc1_last_solved_bound:                 -1
% 1.09/0.99  bmc1_unsat_core_size:                   -1
% 1.09/0.99  bmc1_unsat_core_parents_size:           -1
% 1.09/0.99  bmc1_merge_next_fun:                    0
% 1.09/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.09/0.99  
% 1.09/0.99  ------ Instantiation
% 1.09/0.99  
% 1.09/0.99  inst_num_of_clauses:                    47
% 1.09/0.99  inst_num_in_passive:                    16
% 1.09/0.99  inst_num_in_active:                     30
% 1.09/0.99  inst_num_in_unprocessed:                0
% 1.09/0.99  inst_num_of_loops:                      34
% 1.09/0.99  inst_num_of_learning_restarts:          0
% 1.09/0.99  inst_num_moves_active_passive:          0
% 1.09/0.99  inst_lit_activity:                      0
% 1.09/0.99  inst_lit_activity_moves:                0
% 1.09/0.99  inst_num_tautologies:                   0
% 1.09/0.99  inst_num_prop_implied:                  0
% 1.09/0.99  inst_num_existing_simplified:           0
% 1.09/0.99  inst_num_eq_res_simplified:             0
% 1.09/0.99  inst_num_child_elim:                    0
% 1.09/0.99  inst_num_of_dismatching_blockings:      1
% 1.09/0.99  inst_num_of_non_proper_insts:           35
% 1.09/0.99  inst_num_of_duplicates:                 0
% 1.09/0.99  inst_inst_num_from_inst_to_res:         0
% 1.09/0.99  inst_dismatching_checking_time:         0.
% 1.09/0.99  
% 1.09/0.99  ------ Resolution
% 1.09/0.99  
% 1.09/0.99  res_num_of_clauses:                     0
% 1.09/0.99  res_num_in_passive:                     0
% 1.09/0.99  res_num_in_active:                      0
% 1.09/0.99  res_num_of_loops:                       49
% 1.09/0.99  res_forward_subset_subsumed:            3
% 1.09/0.99  res_backward_subset_subsumed:           0
% 1.09/0.99  res_forward_subsumed:                   0
% 1.09/0.99  res_backward_subsumed:                  0
% 1.09/0.99  res_forward_subsumption_resolution:     1
% 1.09/0.99  res_backward_subsumption_resolution:    0
% 1.09/0.99  res_clause_to_clause_subsumption:       13
% 1.09/0.99  res_orphan_elimination:                 0
% 1.09/0.99  res_tautology_del:                      9
% 1.09/0.99  res_num_eq_res_simplified:              0
% 1.09/0.99  res_num_sel_changes:                    0
% 1.09/0.99  res_moves_from_active_to_pass:          0
% 1.09/0.99  
% 1.09/0.99  ------ Superposition
% 1.09/0.99  
% 1.09/0.99  sup_time_total:                         0.
% 1.09/0.99  sup_time_generating:                    0.
% 1.09/0.99  sup_time_sim_full:                      0.
% 1.09/0.99  sup_time_sim_immed:                     0.
% 1.09/0.99  
% 1.09/0.99  sup_num_of_clauses:                     9
% 1.09/0.99  sup_num_in_active:                      6
% 1.09/0.99  sup_num_in_passive:                     3
% 1.09/0.99  sup_num_of_loops:                       6
% 1.09/0.99  sup_fw_superposition:                   4
% 1.09/0.99  sup_bw_superposition:                   0
% 1.09/0.99  sup_immediate_simplified:               0
% 1.09/0.99  sup_given_eliminated:                   0
% 1.09/0.99  comparisons_done:                       0
% 1.09/0.99  comparisons_avoided:                    0
% 1.09/0.99  
% 1.09/0.99  ------ Simplifications
% 1.09/0.99  
% 1.09/0.99  
% 1.09/0.99  sim_fw_subset_subsumed:                 0
% 1.09/0.99  sim_bw_subset_subsumed:                 0
% 1.09/0.99  sim_fw_subsumed:                        0
% 1.09/0.99  sim_bw_subsumed:                        0
% 1.09/0.99  sim_fw_subsumption_res:                 0
% 1.09/0.99  sim_bw_subsumption_res:                 0
% 1.09/0.99  sim_tautology_del:                      0
% 1.09/0.99  sim_eq_tautology_del:                   0
% 1.09/0.99  sim_eq_res_simp:                        0
% 1.09/0.99  sim_fw_demodulated:                     0
% 1.09/0.99  sim_bw_demodulated:                     0
% 1.09/0.99  sim_light_normalised:                   0
% 1.09/0.99  sim_joinable_taut:                      0
% 1.09/0.99  sim_joinable_simp:                      0
% 1.09/0.99  sim_ac_normalised:                      0
% 1.09/0.99  sim_smt_subsumption:                    0
% 1.09/0.99  
%------------------------------------------------------------------------------
