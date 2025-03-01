%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:19:07 EST 2020

% Result     : Theorem 3.01s
% Output     : CNFRefutation 3.01s
% Verified   : 
% Statistics : Number of formulae       :  299 (4971 expanded)
%              Number of clauses        :  204 (1232 expanded)
%              Number of leaves         :   21 (1044 expanded)
%              Depth                    :   31
%              Number of atoms          : 1463 (31299 expanded)
%              Number of equality atoms :  252 (1103 expanded)
%              Maximal formula depth    :   17 (   6 average)
%              Maximal clause size      :   16 (   4 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,conjecture,(
    ! [X0,X1] :
      ( ( l3_lattices(X1)
        & v10_lattices(X1)
        & ~ v2_struct_0(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ( r3_lattice3(X1,X2,X0)
          <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( l3_lattices(X1)
          & v10_lattices(X1)
          & ~ v2_struct_0(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ( r3_lattice3(X1,X2,X0)
            <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f48,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( r3_lattice3(X1,X2,X0)
          <~> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) )
          & m1_subset_1(X2,u1_struct_0(X1)) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f49,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( r3_lattice3(X1,X2,X0)
          <~> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) )
          & m1_subset_1(X2,u1_struct_0(X1)) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(flattening,[],[f48])).

fof(f61,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
            | ~ r3_lattice3(X1,X2,X0) )
          & ( r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
            | r3_lattice3(X1,X2,X0) )
          & m1_subset_1(X2,u1_struct_0(X1)) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(nnf_transformation,[],[f49])).

fof(f62,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
            | ~ r3_lattice3(X1,X2,X0) )
          & ( r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
            | r3_lattice3(X1,X2,X0) )
          & m1_subset_1(X2,u1_struct_0(X1)) )
      & l3_lattices(X1)
      & v10_lattices(X1)
      & ~ v2_struct_0(X1) ) ),
    inference(flattening,[],[f61])).

fof(f64,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
            | ~ r3_lattice3(X1,X2,X0) )
          & ( r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
            | r3_lattice3(X1,X2,X0) )
          & m1_subset_1(X2,u1_struct_0(X1)) )
     => ( ( ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,sK4))
          | ~ r3_lattice3(X1,sK4,X0) )
        & ( r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,sK4))
          | r3_lattice3(X1,sK4,X0) )
        & m1_subset_1(sK4,u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f63,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ( ~ r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
              | ~ r3_lattice3(X1,X2,X0) )
            & ( r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))
              | r3_lattice3(X1,X2,X0) )
            & m1_subset_1(X2,u1_struct_0(X1)) )
        & l3_lattices(X1)
        & v10_lattices(X1)
        & ~ v2_struct_0(X1) )
   => ( ? [X2] :
          ( ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,X2))
            | ~ r3_lattice3(sK3,X2,sK2) )
          & ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,X2))
            | r3_lattice3(sK3,X2,sK2) )
          & m1_subset_1(X2,u1_struct_0(sK3)) )
      & l3_lattices(sK3)
      & v10_lattices(sK3)
      & ~ v2_struct_0(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f65,plain,
    ( ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
      | ~ r3_lattice3(sK3,sK4,sK2) )
    & ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
      | r3_lattice3(sK3,sK4,sK2) )
    & m1_subset_1(sK4,u1_struct_0(sK3))
    & l3_lattices(sK3)
    & v10_lattices(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f62,f64,f63])).

fof(f95,plain,(
    m1_subset_1(sK4,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f65])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => k4_lattice3(X0,X1) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k4_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k4_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f78,plain,(
    ! [X0,X1] :
      ( k4_lattice3(X0,X1) = X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f93,plain,(
    v10_lattices(sK3) ),
    inference(cnf_transformation,[],[f65])).

fof(f92,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f65])).

fof(f94,plain,(
    l3_lattices(sK3) ),
    inference(cnf_transformation,[],[f65])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f41,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f40])).

fof(f86,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1,X2] :
          ( m1_subset_1(X2,u1_struct_0(X0))
         => ( r1_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X0))
               => ( r2_hidden(X3,X1)
                 => r1_orders_2(X0,X2,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r1_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X2,X3)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r1_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X2,X3)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f36])).

fof(f56,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r1_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X2,X3)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X3] :
                  ( r1_orders_2(X0,X2,X3)
                  | ~ r2_hidden(X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f37])).

fof(f57,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r1_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X2,X3)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X2,X4)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(rectify,[],[f56])).

fof(f58,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X2,X3)
          & r2_hidden(X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,X2,sK1(X0,X1,X2))
        & r2_hidden(sK1(X0,X1,X2),X1)
        & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f59,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r1_lattice3(X0,X1,X2)
              | ( ~ r1_orders_2(X0,X2,sK1(X0,X1,X2))
                & r2_hidden(sK1(X0,X1,X2),X1)
                & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X2,X4)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f57,f58])).

fof(f81,plain,(
    ! [X2,X0,X1] :
      ( r1_lattice3(X0,X1,X2)
      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f59])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_orders_2(k3_lattice3(X0))
        & v5_orders_2(k3_lattice3(X0))
        & v4_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0))
        & v1_orders_2(k3_lattice3(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_orders_2(k3_lattice3(X0))
        & v4_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0))
        & v1_orders_2(k3_lattice3(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f8])).

fof(f17,plain,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0))
        & v1_orders_2(k3_lattice3(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f15])).

fof(f19,plain,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( l1_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f17])).

fof(f38,plain,(
    ! [X0] :
      ( ( l1_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f39,plain,(
    ! [X0] :
      ( ( l1_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f38])).

fof(f85,plain,(
    ! [X0] :
      ( l1_orders_2(k3_lattice3(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
         => k5_lattice3(X0,X1) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k5_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k5_lattice3(X0,X1) = X1
          | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k5_lattice3(X0,X1) = X1
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f97,plain,
    ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
    | ~ r3_lattice3(sK3,sK4,sK2) ),
    inference(cnf_transformation,[],[f65])).

fof(f96,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
    | r3_lattice3(sK3,sK4,sK2) ),
    inference(cnf_transformation,[],[f65])).

fof(f80,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_orders_2(X0,X2,X4)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r1_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f59])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ( r3_orders_2(X0,X1,X2)
      <=> r1_orders_2(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( r3_orders_2(X0,X1,X2)
      <=> r1_orders_2(X0,X1,X2) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( r3_orders_2(X0,X1,X2)
      <=> r1_orders_2(X0,X1,X2) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f50,plain,(
    ! [X0,X1,X2] :
      ( ( ( r3_orders_2(X0,X1,X2)
          | ~ r1_orders_2(X0,X1,X2) )
        & ( r1_orders_2(X0,X1,X2)
          | ~ r3_orders_2(X0,X1,X2) ) )
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( r3_orders_2(X0,X1,X2)
      | ~ r1_orders_2(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f84,plain,(
    ! [X0] :
      ( v3_orders_2(k3_lattice3(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v5_orders_2(k3_lattice3(X0))
        & v4_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0))
        & v1_orders_2(k3_lattice3(X0))
        & ~ v2_struct_0(k3_lattice3(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v4_orders_2(k3_lattice3(X0))
        & v3_orders_2(k3_lattice3(X0))
        & v1_orders_2(k3_lattice3(X0))
        & ~ v2_struct_0(k3_lattice3(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f18,plain,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v3_orders_2(k3_lattice3(X0))
        & v1_orders_2(k3_lattice3(X0))
        & ~ v2_struct_0(k3_lattice3(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f16])).

fof(f20,plain,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ( v3_orders_2(k3_lattice3(X0))
        & ~ v2_struct_0(k3_lattice3(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f18])).

fof(f44,plain,(
    ! [X0] :
      ( ( v3_orders_2(k3_lattice3(X0))
        & ~ v2_struct_0(k3_lattice3(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f45,plain,(
    ! [X0] :
      ( ( v3_orders_2(k3_lattice3(X0))
        & ~ v2_struct_0(k3_lattice3(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f44])).

fof(f88,plain,(
    ! [X0] :
      ( ~ v2_struct_0(k3_lattice3(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( r3_lattice3(X0,X1,X2)
            <=> ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ( r2_hidden(X3,X2)
                   => r1_lattices(X0,X1,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r3_lattice3(X0,X1,X2)
            <=> ! [X3] :
                  ( r1_lattices(X0,X1,X3)
                  | ~ r2_hidden(X3,X2)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r3_lattice3(X0,X1,X2)
            <=> ! [X3] :
                  ( r1_lattices(X0,X1,X3)
                  | ~ r2_hidden(X3,X2)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f52,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattice3(X0,X1,X2)
                | ? [X3] :
                    ( ~ r1_lattices(X0,X1,X3)
                    & r2_hidden(X3,X2)
                    & m1_subset_1(X3,u1_struct_0(X0)) ) )
              & ( ! [X3] :
                    ( r1_lattices(X0,X1,X3)
                    | ~ r2_hidden(X3,X2)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f31])).

fof(f53,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattice3(X0,X1,X2)
                | ? [X3] :
                    ( ~ r1_lattices(X0,X1,X3)
                    & r2_hidden(X3,X2)
                    & m1_subset_1(X3,u1_struct_0(X0)) ) )
              & ( ! [X4] :
                    ( r1_lattices(X0,X1,X4)
                    | ~ r2_hidden(X4,X2)
                    | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f52])).

fof(f54,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_lattices(X0,X1,X3)
          & r2_hidden(X3,X2)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_lattices(X0,X1,sK0(X0,X1,X2))
        & r2_hidden(sK0(X0,X1,X2),X2)
        & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f55,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattice3(X0,X1,X2)
                | ( ~ r1_lattices(X0,X1,sK0(X0,X1,X2))
                  & r2_hidden(sK0(X0,X1,X2),X2)
                  & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) )
              & ( ! [X4] :
                    ( r1_lattices(X0,X1,X4)
                    | ~ r2_hidden(X4,X2)
                    | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                | ~ r3_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f53,f54])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( r3_lattice3(X0,X1,X2)
      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f76,plain,(
    ! [X2,X0,X1] :
      ( r3_lattice3(X0,X1,X2)
      | r2_hidden(sK0(X0,X1,X2),X2)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r3_lattices(X0,X1,X2)
              <=> r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattices(X0,X1,X2)
              <=> r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f47,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_lattices(X0,X1,X2)
              <=> r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f46])).

fof(f60,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r3_lattices(X0,X1,X2)
                  | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) )
                & ( r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
                  | ~ r3_lattices(X0,X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f47])).

fof(f91,plain,(
    ! [X2,X0,X1] :
      ( r3_lattices(X0,X1,X2)
      | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f60])).

fof(f2,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
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
    inference(pure_predicate_removal,[],[f2])).

fof(f22,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & v4_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f21])).

fof(f23,plain,(
    ! [X0] :
      ( l3_lattices(X0)
     => ( ( v10_lattices(X0)
          & ~ v2_struct_0(X0) )
       => ( v9_lattices(X0)
          & v8_lattices(X0)
          & v6_lattices(X0)
          & ~ v2_struct_0(X0) ) ) ) ),
    inference(pure_predicate_removal,[],[f22])).

fof(f26,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f27,plain,(
    ! [X0] :
      ( ( v9_lattices(X0)
        & v8_lattices(X0)
        & v6_lattices(X0)
        & ~ v2_struct_0(X0) )
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(flattening,[],[f26])).

fof(f71,plain,(
    ! [X0] :
      ( v9_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f3,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
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
    inference(ennf_transformation,[],[f3])).

fof(f29,plain,(
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
    inference(flattening,[],[f28])).

fof(f51,plain,(
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
    inference(nnf_transformation,[],[f29])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( r1_lattices(X0,X1,X2)
      | ~ r3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v9_lattices(X0)
      | ~ v8_lattices(X0)
      | ~ v6_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f69,plain,(
    ! [X0] :
      ( v6_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f70,plain,(
    ! [X0] :
      ( v8_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0)
      | ~ l3_lattices(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f77,plain,(
    ! [X2,X0,X1] :
      ( r3_lattice3(X0,X1,X2)
      | ~ r1_lattices(X0,X1,sK0(X0,X1,X2))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
        & l3_lattices(X0)
        & v10_lattices(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f43,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f42])).

fof(f87,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f90,plain,(
    ! [X2,X0,X1] :
      ( r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
      | ~ r3_lattices(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | ~ v10_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f60])).

fof(f73,plain,(
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
    inference(cnf_transformation,[],[f51])).

fof(f74,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_lattices(X0,X1,X4)
      | ~ r2_hidden(X4,X2)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r3_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l3_lattices(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f55])).

fof(f82,plain,(
    ! [X2,X0,X1] :
      ( r1_lattice3(X0,X1,X2)
      | r2_hidden(sK1(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f59])).

fof(f83,plain,(
    ! [X2,X0,X1] :
      ( r1_lattice3(X0,X1,X2)
      | ~ r1_orders_2(X0,X2,sK1(X0,X1,X2))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f59])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( r1_orders_2(X0,X1,X2)
      | ~ r3_orders_2(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_28,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_2586,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_28])).

cnf(c_3056,plain,
    ( m1_subset_1(sK4,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2586])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | ~ v10_lattices(X1)
    | v2_struct_0(X1)
    | k4_lattice3(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_30,negated_conjecture,
    ( v10_lattices(sK3) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1566,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k4_lattice3(X1,X0) = X0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_30])).

cnf(c_1567,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3)
    | k4_lattice3(sK3,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_1566])).

cnf(c_31,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_29,negated_conjecture,
    ( l3_lattices(sK3) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1571,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK3))
    | k4_lattice3(sK3,X0) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1567,c_31,c_29])).

cnf(c_2578,plain,
    ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
    | k4_lattice3(sK3,X0_54) = X0_54 ),
    inference(subtyping,[status(esa)],[c_1571])).

cnf(c_3064,plain,
    ( k4_lattice3(sK3,X0_54) = X0_54
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2578])).

cnf(c_3262,plain,
    ( k4_lattice3(sK3,sK4) = sK4 ),
    inference(superposition,[status(thm)],[c_3056,c_3064])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | m1_subset_1(k4_lattice3(X1,X0),u1_struct_0(k3_lattice3(X1)))
    | ~ l3_lattices(X1)
    | ~ v10_lattices(X1)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1530,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | m1_subset_1(k4_lattice3(X1,X0),u1_struct_0(k3_lattice3(X1)))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_30])).

cnf(c_1531,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK3))
    | m1_subset_1(k4_lattice3(sK3,X0),u1_struct_0(k3_lattice3(sK3)))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1530])).

cnf(c_1535,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK3))
    | m1_subset_1(k4_lattice3(sK3,X0),u1_struct_0(k3_lattice3(sK3))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1531,c_31,c_29])).

cnf(c_2580,plain,
    ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
    | m1_subset_1(k4_lattice3(sK3,X0_54),u1_struct_0(k3_lattice3(sK3))) ),
    inference(subtyping,[status(esa)],[c_1535])).

cnf(c_3062,plain,
    ( m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(k4_lattice3(sK3,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2580])).

cnf(c_3455,plain,
    ( m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3262,c_3062])).

cnf(c_35,plain,
    ( m1_subset_1(sK4,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_2590,plain,
    ( X0_54 = X0_54 ),
    theory(equality)).

cnf(c_2605,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_2590])).

cnf(c_2624,plain,
    ( m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(k4_lattice3(sK3,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2580])).

cnf(c_2626,plain,
    ( m1_subset_1(k4_lattice3(sK3,sK4),u1_struct_0(k3_lattice3(sK3))) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2624])).

cnf(c_2631,plain,
    ( ~ m1_subset_1(sK4,u1_struct_0(sK3))
    | k4_lattice3(sK3,sK4) = sK4 ),
    inference(instantiation,[status(thm)],[c_2578])).

cnf(c_2593,plain,
    ( ~ m1_subset_1(X0_54,X0_56)
    | m1_subset_1(X1_54,X0_56)
    | X1_54 != X0_54 ),
    theory(equality)).

cnf(c_3249,plain,
    ( m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
    | ~ m1_subset_1(k4_lattice3(sK3,X1_54),u1_struct_0(k3_lattice3(sK3)))
    | X0_54 != k4_lattice3(sK3,X1_54) ),
    inference(instantiation,[status(thm)],[c_2593])).

cnf(c_3250,plain,
    ( X0_54 != k4_lattice3(sK3,X1_54)
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) = iProver_top
    | m1_subset_1(k4_lattice3(sK3,X1_54),u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3249])).

cnf(c_3252,plain,
    ( sK4 != k4_lattice3(sK3,sK4)
    | m1_subset_1(k4_lattice3(sK3,sK4),u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_3250])).

cnf(c_2591,plain,
    ( X0_54 != X1_54
    | X2_54 != X1_54
    | X2_54 = X0_54 ),
    theory(equality)).

cnf(c_3278,plain,
    ( X0_54 != X1_54
    | X0_54 = k4_lattice3(sK3,X2_54)
    | k4_lattice3(sK3,X2_54) != X1_54 ),
    inference(instantiation,[status(thm)],[c_2591])).

cnf(c_3279,plain,
    ( k4_lattice3(sK3,sK4) != sK4
    | sK4 = k4_lattice3(sK3,sK4)
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_3278])).

cnf(c_3595,plain,
    ( m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3455,c_28,c_35,c_2605,c_2626,c_2631,c_3252,c_3279])).

cnf(c_16,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_18,plain,
    ( ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | l1_orders_2(k3_lattice3(X0)) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1501,plain,
    ( ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | l1_orders_2(k3_lattice3(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_30])).

cnf(c_1502,plain,
    ( ~ l3_lattices(sK3)
    | v2_struct_0(sK3)
    | l1_orders_2(k3_lattice3(sK3)) ),
    inference(unflattening,[status(thm)],[c_1501])).

cnf(c_58,plain,
    ( ~ l3_lattices(sK3)
    | ~ v10_lattices(sK3)
    | v2_struct_0(sK3)
    | l1_orders_2(k3_lattice3(sK3)) ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_1504,plain,
    ( l1_orders_2(k3_lattice3(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1502,c_31,c_30,c_29,c_58])).

cnf(c_1636,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
    | k3_lattice3(sK3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_1504])).

cnf(c_1637,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3)))
    | m1_subset_1(sK1(k3_lattice3(sK3),X0,X1),u1_struct_0(k3_lattice3(sK3))) ),
    inference(unflattening,[status(thm)],[c_1636])).

cnf(c_2576,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
    | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
    | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) ),
    inference(subtyping,[status(esa)],[c_1637])).

cnf(c_3066,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2576])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
    | ~ l3_lattices(X1)
    | ~ v10_lattices(X1)
    | v2_struct_0(X1)
    | k5_lattice3(X1,X0) = X0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1548,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | k5_lattice3(X1,X0) = X0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_30])).

cnf(c_1549,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3)
    | k5_lattice3(sK3,X0) = X0 ),
    inference(unflattening,[status(thm)],[c_1548])).

cnf(c_1553,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
    | k5_lattice3(sK3,X0) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1549,c_31,c_29])).

cnf(c_2579,plain,
    ( ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
    | k5_lattice3(sK3,X0_54) = X0_54 ),
    inference(subtyping,[status(esa)],[c_1553])).

cnf(c_3063,plain,
    ( k5_lattice3(sK3,X0_54) = X0_54
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2579])).

cnf(c_3432,plain,
    ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)) = sK1(k3_lattice3(sK3),X0_55,X0_54)
    | r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3066,c_3063])).

cnf(c_3776,plain,
    ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,sK4)) = sK1(k3_lattice3(sK3),X0_55,sK4)
    | r1_lattice3(k3_lattice3(sK3),X0_55,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3595,c_3432])).

cnf(c_26,negated_conjecture,
    ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
    | ~ r3_lattice3(sK3,sK4,sK2) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_2588,negated_conjecture,
    ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
    | ~ r3_lattice3(sK3,sK4,sK2) ),
    inference(subtyping,[status(esa)],[c_26])).

cnf(c_3054,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) != iProver_top
    | r3_lattice3(sK3,sK4,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2588])).

cnf(c_3291,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) != iProver_top
    | r3_lattice3(sK3,sK4,sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3262,c_3054])).

cnf(c_7946,plain,
    ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4)
    | r3_lattice3(sK3,sK4,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3776,c_3291])).

cnf(c_3434,plain,
    ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4)
    | r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_3432])).

cnf(c_27,negated_conjecture,
    ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
    | r3_lattice3(sK3,sK4,sK2) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_2587,negated_conjecture,
    ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
    | r3_lattice3(sK3,sK4,sK2) ),
    inference(subtyping,[status(esa)],[c_27])).

cnf(c_3055,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) = iProver_top
    | r3_lattice3(sK3,sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2587])).

cnf(c_3290,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
    | r3_lattice3(sK3,sK4,sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3262,c_3055])).

cnf(c_17,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X2,X3)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_0,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | r3_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_19,plain,
    ( ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | v3_orders_2(k3_lattice3(X0)) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_444,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | r3_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ v10_lattices(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | ~ l1_orders_2(X0)
    | k3_lattice3(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_19])).

cnf(c_445,plain,
    ( ~ r1_orders_2(k3_lattice3(X0),X1,X2)
    | r3_orders_2(k3_lattice3(X0),X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | v2_struct_0(k3_lattice3(X0))
    | ~ l1_orders_2(k3_lattice3(X0)) ),
    inference(unflattening,[status(thm)],[c_444])).

cnf(c_23,plain,
    ( ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ v2_struct_0(k3_lattice3(X0)) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_449,plain,
    ( ~ r1_orders_2(k3_lattice3(X0),X1,X2)
    | r3_orders_2(k3_lattice3(X0),X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_445,c_23,c_18])).

cnf(c_918,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r3_orders_2(k3_lattice3(X3),X4,X5)
    | ~ r2_hidden(X6,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X6,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(k3_lattice3(X3)))
    | ~ m1_subset_1(X5,u1_struct_0(k3_lattice3(X3)))
    | ~ l3_lattices(X3)
    | ~ v10_lattices(X3)
    | v2_struct_0(X3)
    | ~ l1_orders_2(X0)
    | X4 != X2
    | X5 != X6
    | k3_lattice3(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_449])).

cnf(c_919,plain,
    ( ~ r1_lattice3(k3_lattice3(X0),X1,X2)
    | r3_orders_2(k3_lattice3(X0),X2,X3)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l1_orders_2(k3_lattice3(X0)) ),
    inference(unflattening,[status(thm)],[c_918])).

cnf(c_923,plain,
    ( v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ r2_hidden(X3,X1)
    | r3_orders_2(k3_lattice3(X0),X2,X3)
    | ~ r1_lattice3(k3_lattice3(X0),X1,X2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_919,c_18])).

cnf(c_924,plain,
    ( ~ r1_lattice3(k3_lattice3(X0),X1,X2)
    | r3_orders_2(k3_lattice3(X0),X2,X3)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(renaming,[status(thm)],[c_923])).

cnf(c_1442,plain,
    ( ~ r1_lattice3(k3_lattice3(X0),X1,X2)
    | r3_orders_2(k3_lattice3(X0),X2,X3)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_924,c_30])).

cnf(c_1443,plain,
    ( ~ r1_lattice3(k3_lattice3(sK3),X0,X1)
    | r3_orders_2(k3_lattice3(sK3),X1,X2)
    | ~ r2_hidden(X2,X0)
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(sK3)))
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3)))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1442])).

cnf(c_1447,plain,
    ( ~ r1_lattice3(k3_lattice3(sK3),X0,X1)
    | r3_orders_2(k3_lattice3(sK3),X1,X2)
    | ~ r2_hidden(X2,X0)
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(sK3)))
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1443,c_31,c_29])).

cnf(c_2583,plain,
    ( ~ r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
    | r3_orders_2(k3_lattice3(sK3),X0_54,X1_54)
    | ~ r2_hidden(X1_54,X0_55)
    | ~ m1_subset_1(X1_54,u1_struct_0(k3_lattice3(sK3)))
    | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) ),
    inference(subtyping,[status(esa)],[c_1447])).

cnf(c_3059,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) != iProver_top
    | r3_orders_2(k3_lattice3(sK3),X0_54,X1_54) = iProver_top
    | r2_hidden(X1_54,X0_55) != iProver_top
    | m1_subset_1(X1_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2583])).

cnf(c_3516,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) != iProver_top
    | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,X1_54)) = iProver_top
    | r2_hidden(k4_lattice3(sK3,X1_54),X0_55) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(X1_54,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3062,c_3059])).

cnf(c_4951,plain,
    ( r3_lattice3(sK3,sK4,sK2) = iProver_top
    | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top
    | r2_hidden(k4_lattice3(sK3,X0_54),sK2) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3290,c_3516])).

cnf(c_10,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1699,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | v2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_29])).

cnf(c_1700,plain,
    ( r3_lattice3(sK3,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3))
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1699])).

cnf(c_1704,plain,
    ( m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3))
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | r3_lattice3(sK3,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1700,c_31])).

cnf(c_1705,plain,
    ( r3_lattice3(sK3,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3)) ),
    inference(renaming,[status(thm)],[c_1704])).

cnf(c_2573,plain,
    ( r3_lattice3(sK3,X0_54,X0_55)
    | ~ m1_subset_1(X0_54,u1_struct_0(sK3))
    | m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_1705])).

cnf(c_2641,plain,
    ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2573])).

cnf(c_2643,plain,
    ( r3_lattice3(sK3,sK4,sK2) = iProver_top
    | m1_subset_1(sK0(sK3,sK4,sK2),u1_struct_0(sK3)) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2641])).

cnf(c_9,plain,
    ( r3_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1720,plain,
    ( r3_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_29])).

cnf(c_1721,plain,
    ( r3_lattice3(sK3,X0,X1)
    | r2_hidden(sK0(sK3,X0,X1),X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1720])).

cnf(c_1725,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK3))
    | r2_hidden(sK0(sK3,X0,X1),X1)
    | r3_lattice3(sK3,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1721,c_31])).

cnf(c_1726,plain,
    ( r3_lattice3(sK3,X0,X1)
    | r2_hidden(sK0(sK3,X0,X1),X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(renaming,[status(thm)],[c_1725])).

cnf(c_2572,plain,
    ( r3_lattice3(sK3,X0_54,X0_55)
    | r2_hidden(sK0(sK3,X0_54,X0_55),X0_55)
    | ~ m1_subset_1(X0_54,u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_1726])).

cnf(c_2644,plain,
    ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
    | r2_hidden(sK0(sK3,X0_54,X0_55),X0_55) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2572])).

cnf(c_2646,plain,
    ( r3_lattice3(sK3,sK4,sK2) = iProver_top
    | r2_hidden(sK0(sK3,sK4,sK2),sK2) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2644])).

cnf(c_2595,plain,
    ( ~ r2_hidden(X0_54,X0_55)
    | r2_hidden(X1_54,X0_55)
    | X1_54 != X0_54 ),
    theory(equality)).

cnf(c_3317,plain,
    ( r2_hidden(X0_54,X0_55)
    | ~ r2_hidden(sK0(sK3,X1_54,X0_55),X0_55)
    | X0_54 != sK0(sK3,X1_54,X0_55) ),
    inference(instantiation,[status(thm)],[c_2595])).

cnf(c_3350,plain,
    ( ~ r2_hidden(sK0(sK3,X0_54,X0_55),X0_55)
    | r2_hidden(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),X0_55)
    | k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)) != sK0(sK3,X0_54,X0_55) ),
    inference(instantiation,[status(thm)],[c_3317])).

cnf(c_3352,plain,
    ( k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)) != sK0(sK3,X0_54,X0_55)
    | r2_hidden(sK0(sK3,X0_54,X0_55),X0_55) != iProver_top
    | r2_hidden(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),X0_55) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3350])).

cnf(c_3354,plain,
    ( k4_lattice3(sK3,sK0(sK3,sK4,sK2)) != sK0(sK3,sK4,sK2)
    | r2_hidden(sK0(sK3,sK4,sK2),sK2) != iProver_top
    | r2_hidden(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_3352])).

cnf(c_24,plain,
    ( r3_lattices(X0,X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_2,plain,
    ( ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v9_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_7,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ r3_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ v9_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_493,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ r3_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_2,c_7])).

cnf(c_4,plain,
    ( v6_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_3,plain,
    ( v8_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_497,plain,
    ( r1_lattices(X0,X1,X2)
    | ~ r3_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_493,c_7,c_4,c_3,c_2])).

cnf(c_8,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r1_lattices(X0,X1,sK0(X0,X1,X2))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1065,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_lattices(X3,X4,X5)
    | ~ m1_subset_1(X5,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X3)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | X0 != X3
    | X1 != X4
    | sK0(X0,X1,X2) != X5 ),
    inference(resolution_lifted,[status(thm)],[c_497,c_8])).

cnf(c_1066,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_lattices(X0,X1,sK0(X0,X1,X2))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_1065])).

cnf(c_1070,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ r3_lattices(X0,X1,sK0(X0,X1,X2))
    | r3_lattice3(X0,X1,X2)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1066,c_10])).

cnf(c_1071,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_lattices(X0,X1,sK0(X0,X1,X2))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(renaming,[status(thm)],[c_1070])).

cnf(c_1311,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_orders_2(k3_lattice3(X3),k4_lattice3(X3,X4),k4_lattice3(X3,X5))
    | ~ m1_subset_1(X5,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X3)
    | ~ v10_lattices(X0)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | X0 != X3
    | X1 != X4
    | sK0(X0,X1,X2) != X5 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_1071])).

cnf(c_1312,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_1311])).

cnf(c_1316,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
    | r3_lattice3(X0,X1,X2)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1312,c_10])).

cnf(c_1317,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(renaming,[status(thm)],[c_1316])).

cnf(c_1421,plain,
    ( r3_lattice3(X0,X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1317,c_30])).

cnf(c_1422,plain,
    ( r3_lattice3(sK3,X0,X1)
    | ~ r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,sK0(sK3,X0,X1)))
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1421])).

cnf(c_1426,plain,
    ( r3_lattice3(sK3,X0,X1)
    | ~ r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,sK0(sK3,X0,X1)))
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1422,c_31,c_29])).

cnf(c_2584,plain,
    ( r3_lattice3(sK3,X0_54,X0_55)
    | ~ r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)))
    | ~ m1_subset_1(X0_54,u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_1426])).

cnf(c_3058,plain,
    ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
    | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,sK0(sK3,X0_54,X0_55))) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2584])).

cnf(c_3490,plain,
    ( r3_lattice3(sK3,sK4,X0_55) = iProver_top
    | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,sK0(sK3,sK4,X0_55))) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3262,c_3058])).

cnf(c_3492,plain,
    ( r3_lattice3(sK3,sK4,sK2) = iProver_top
    | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,sK0(sK3,sK4,sK2))) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_3490])).

cnf(c_3228,plain,
    ( ~ r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
    | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,X1_54))
    | ~ r2_hidden(k4_lattice3(sK3,X1_54),X0_55)
    | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
    | ~ m1_subset_1(k4_lattice3(sK3,X1_54),u1_struct_0(k3_lattice3(sK3))) ),
    inference(instantiation,[status(thm)],[c_2583])).

cnf(c_3563,plain,
    ( ~ r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
    | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)))
    | ~ r2_hidden(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),X0_55)
    | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
    | ~ m1_subset_1(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) ),
    inference(instantiation,[status(thm)],[c_3228])).

cnf(c_3569,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) != iProver_top
    | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,sK0(sK3,X1_54,X0_55))) = iProver_top
    | r2_hidden(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),X0_55) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3563])).

cnf(c_3571,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) != iProver_top
    | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,sK0(sK3,sK4,sK2))) = iProver_top
    | r2_hidden(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),sK2) != iProver_top
    | m1_subset_1(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_3569])).

cnf(c_3069,plain,
    ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2573])).

cnf(c_3590,plain,
    ( k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)) = sK0(sK3,X0_54,X0_55)
    | r3_lattice3(sK3,X0_54,X0_55) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3069,c_3064])).

cnf(c_3592,plain,
    ( k4_lattice3(sK3,sK0(sK3,sK4,sK2)) = sK0(sK3,sK4,sK2)
    | r3_lattice3(sK3,sK4,sK2) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_3590])).

cnf(c_3749,plain,
    ( ~ m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3))
    | m1_subset_1(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) ),
    inference(instantiation,[status(thm)],[c_2580])).

cnf(c_3750,plain,
    ( m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3749])).

cnf(c_3752,plain,
    ( m1_subset_1(sK0(sK3,sK4,sK2),u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_3750])).

cnf(c_4984,plain,
    ( r3_lattice3(sK3,sK4,sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4951,c_28,c_35,c_2605,c_2626,c_2631,c_2643,c_2646,c_3252,c_3279,c_3290,c_3354,c_3492,c_3571,c_3592,c_3752])).

cnf(c_8099,plain,
    ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_7946,c_28,c_35,c_2605,c_2626,c_2631,c_2643,c_2646,c_3252,c_3279,c_3290,c_3291,c_3354,c_3434,c_3492,c_3571,c_3592,c_3752])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
    | m1_subset_1(k5_lattice3(X1,X0),u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | ~ v10_lattices(X1)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1512,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
    | m1_subset_1(k5_lattice3(X1,X0),u1_struct_0(X1))
    | ~ l3_lattices(X1)
    | v2_struct_0(X1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_30])).

cnf(c_1513,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
    | m1_subset_1(k5_lattice3(sK3,X0),u1_struct_0(sK3))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1512])).

cnf(c_1517,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
    | m1_subset_1(k5_lattice3(sK3,X0),u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1513,c_31,c_29])).

cnf(c_2581,plain,
    ( ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
    | m1_subset_1(k5_lattice3(sK3,X0_54),u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_1517])).

cnf(c_3061,plain,
    ( m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(k5_lattice3(sK3,X0_54),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2581])).

cnf(c_8102,plain,
    ( m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_8099,c_3061])).

cnf(c_2634,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2576])).

cnf(c_2636,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
    | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(k3_lattice3(sK3))) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2634])).

cnf(c_4417,plain,
    ( ~ m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3)))
    | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_2581])).

cnf(c_4418,plain,
    ( m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4417])).

cnf(c_4420,plain,
    ( m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(k3_lattice3(sK3))) != iProver_top
    | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)),u1_struct_0(sK3)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_4418])).

cnf(c_4434,plain,
    ( sK1(k3_lattice3(sK3),X0_55,X0_54) = sK1(k3_lattice3(sK3),X0_55,X0_54) ),
    inference(instantiation,[status(thm)],[c_2590])).

cnf(c_4436,plain,
    ( sK1(k3_lattice3(sK3),sK2,sK4) = sK1(k3_lattice3(sK3),sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_4434])).

cnf(c_4557,plain,
    ( X0_54 != X1_54
    | X0_54 = k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X2_54))
    | k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X2_54)) != X1_54 ),
    inference(instantiation,[status(thm)],[c_2591])).

cnf(c_5141,plain,
    ( X0_54 != sK1(k3_lattice3(sK3),X0_55,X1_54)
    | X0_54 = k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X1_54))
    | k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X1_54)) != sK1(k3_lattice3(sK3),X0_55,X1_54) ),
    inference(instantiation,[status(thm)],[c_4557])).

cnf(c_5503,plain,
    ( sK1(k3_lattice3(sK3),X0_55,X0_54) != sK1(k3_lattice3(sK3),X0_55,X0_54)
    | sK1(k3_lattice3(sK3),X0_55,X0_54) = k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54))
    | k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)) != sK1(k3_lattice3(sK3),X0_55,X0_54) ),
    inference(instantiation,[status(thm)],[c_5141])).

cnf(c_5504,plain,
    ( sK1(k3_lattice3(sK3),sK2,sK4) != sK1(k3_lattice3(sK3),sK2,sK4)
    | sK1(k3_lattice3(sK3),sK2,sK4) = k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4))
    | k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) != sK1(k3_lattice3(sK3),sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_5503])).

cnf(c_3263,plain,
    ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
    | m1_subset_1(X1_54,u1_struct_0(sK3))
    | X1_54 != X0_54 ),
    inference(instantiation,[status(thm)],[c_2593])).

cnf(c_3959,plain,
    ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
    | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X1_54),u1_struct_0(sK3))
    | sK1(k3_lattice3(sK3),X0_55,X1_54) != X0_54 ),
    inference(instantiation,[status(thm)],[c_3263])).

cnf(c_6560,plain,
    ( m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(sK3))
    | ~ m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3))
    | sK1(k3_lattice3(sK3),X0_55,X0_54) != k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)) ),
    inference(instantiation,[status(thm)],[c_3959])).

cnf(c_6561,plain,
    ( sK1(k3_lattice3(sK3),X0_55,X0_54) != k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54))
    | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(sK3)) = iProver_top
    | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6560])).

cnf(c_6563,plain,
    ( sK1(k3_lattice3(sK3),sK2,sK4) != k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4))
    | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) = iProver_top
    | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)),u1_struct_0(sK3)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_6561])).

cnf(c_8500,plain,
    ( m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8102,c_28,c_35,c_2605,c_2626,c_2631,c_2636,c_2643,c_2646,c_3252,c_3279,c_3290,c_3291,c_3354,c_3434,c_3492,c_3571,c_3592,c_3752,c_4420,c_4436,c_5504,c_6563])).

cnf(c_8524,plain,
    ( k4_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4) ),
    inference(superposition,[status(thm)],[c_8500,c_3064])).

cnf(c_25,plain,
    ( ~ r3_lattices(X0,X1,X2)
    | r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_6,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | r3_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ v9_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_525,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | r3_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v6_lattices(X0)
    | ~ v8_lattices(X0)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_2,c_6])).

cnf(c_529,plain,
    ( ~ r1_lattices(X0,X1,X2)
    | r3_lattices(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_525,c_6,c_4,c_3,c_2])).

cnf(c_11,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r1_lattices(X0,X1,X3)
    | ~ r2_hidden(X3,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1095,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r3_lattices(X3,X4,X5)
    | ~ r2_hidden(X6,X2)
    | ~ m1_subset_1(X5,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X6,u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X3)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | X0 != X3
    | X1 != X4
    | X6 != X5 ),
    inference(resolution_lifted,[status(thm)],[c_529,c_11])).

cnf(c_1096,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r3_lattices(X0,X1,X3)
    | ~ r2_hidden(X3,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_1095])).

cnf(c_1341,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r3_orders_2(k3_lattice3(X3),k4_lattice3(X3,X4),k4_lattice3(X3,X5))
    | ~ r2_hidden(X6,X2)
    | ~ m1_subset_1(X5,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X6,u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X3)
    | ~ v10_lattices(X0)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | X0 != X3
    | X1 != X4
    | X6 != X5 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_1096])).

cnf(c_1342,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X3))
    | ~ r2_hidden(X3,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_1341])).

cnf(c_1394,plain,
    ( ~ r3_lattice3(X0,X1,X2)
    | r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X3))
    | ~ r2_hidden(X3,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1342,c_30])).

cnf(c_1395,plain,
    ( ~ r3_lattice3(sK3,X0,X1)
    | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,X2))
    | ~ r2_hidden(X2,X1)
    | ~ m1_subset_1(X2,u1_struct_0(sK3))
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1394])).

cnf(c_1399,plain,
    ( ~ r3_lattice3(sK3,X0,X1)
    | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,X2))
    | ~ r2_hidden(X2,X1)
    | ~ m1_subset_1(X2,u1_struct_0(sK3))
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1395,c_31,c_29])).

cnf(c_2585,plain,
    ( ~ r3_lattice3(sK3,X0_54,X0_55)
    | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,X1_54))
    | ~ r2_hidden(X1_54,X0_55)
    | ~ m1_subset_1(X0_54,u1_struct_0(sK3))
    | ~ m1_subset_1(X1_54,u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_1399])).

cnf(c_3057,plain,
    ( r3_lattice3(sK3,X0_54,X0_55) != iProver_top
    | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,X1_54)) = iProver_top
    | r2_hidden(X1_54,X0_55) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X1_54,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2585])).

cnf(c_4989,plain,
    ( r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,sK4),k4_lattice3(sK3,X0_54)) = iProver_top
    | r2_hidden(X0_54,sK2) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4984,c_3057])).

cnf(c_4990,plain,
    ( r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top
    | r2_hidden(X0_54,sK2) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4989,c_3262])).

cnf(c_5089,plain,
    ( m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
    | r2_hidden(X0_54,sK2) != iProver_top
    | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4990,c_35])).

cnf(c_5090,plain,
    ( r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top
    | r2_hidden(X0_54,sK2) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5089])).

cnf(c_8589,plain,
    ( r3_orders_2(k3_lattice3(sK3),sK4,sK1(k3_lattice3(sK3),sK2,sK4)) = iProver_top
    | r2_hidden(sK1(k3_lattice3(sK3),sK2,sK4),sK2) != iProver_top
    | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_8524,c_5090])).

cnf(c_15,plain,
    ( r1_lattice3(X0,X1,X2)
    | r2_hidden(sK1(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1651,plain,
    ( r1_lattice3(X0,X1,X2)
    | r2_hidden(sK1(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | k3_lattice3(sK3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_1504])).

cnf(c_1652,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0,X1)
    | r2_hidden(sK1(k3_lattice3(sK3),X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3))) ),
    inference(unflattening,[status(thm)],[c_1651])).

cnf(c_2575,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
    | r2_hidden(sK1(k3_lattice3(sK3),X0_55,X0_54),X0_55)
    | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) ),
    inference(subtyping,[status(esa)],[c_1652])).

cnf(c_2637,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
    | r2_hidden(sK1(k3_lattice3(sK3),X0_55,X0_54),X0_55) = iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2575])).

cnf(c_2639,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
    | r2_hidden(sK1(k3_lattice3(sK3),sK2,sK4),sK2) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2637])).

cnf(c_14,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,sK1(X0,X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1,plain,
    ( r1_orders_2(X0,X1,X2)
    | ~ r3_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_411,plain,
    ( r1_orders_2(X0,X1,X2)
    | ~ r3_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ v10_lattices(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | ~ l1_orders_2(X0)
    | k3_lattice3(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_19])).

cnf(c_412,plain,
    ( r1_orders_2(k3_lattice3(X0),X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | v2_struct_0(k3_lattice3(X0))
    | ~ l1_orders_2(k3_lattice3(X0)) ),
    inference(unflattening,[status(thm)],[c_411])).

cnf(c_416,plain,
    ( r1_orders_2(k3_lattice3(X0),X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_412,c_23,c_18])).

cnf(c_888,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ r3_orders_2(k3_lattice3(X3),X4,X5)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(k3_lattice3(X3)))
    | ~ m1_subset_1(X5,u1_struct_0(k3_lattice3(X3)))
    | ~ l3_lattices(X3)
    | ~ v10_lattices(X3)
    | v2_struct_0(X3)
    | ~ l1_orders_2(X0)
    | X4 != X2
    | sK1(X0,X1,X2) != X5
    | k3_lattice3(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_416])).

cnf(c_889,plain,
    ( r1_lattice3(k3_lattice3(X0),X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ m1_subset_1(sK1(k3_lattice3(X0),X1,X2),u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0)
    | ~ l1_orders_2(k3_lattice3(X0)) ),
    inference(unflattening,[status(thm)],[c_888])).

cnf(c_603,plain,
    ( r1_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
    | ~ l3_lattices(X3)
    | ~ v10_lattices(X3)
    | v2_struct_0(X3)
    | k3_lattice3(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_18])).

cnf(c_604,plain,
    ( r1_lattice3(k3_lattice3(X0),X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | m1_subset_1(sK1(k3_lattice3(X0),X1,X2),u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_603])).

cnf(c_893,plain,
    ( v2_struct_0(X0)
    | ~ v10_lattices(X0)
    | ~ l3_lattices(X0)
    | r1_lattice3(k3_lattice3(X0),X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_889,c_18,c_604])).

cnf(c_894,plain,
    ( r1_lattice3(k3_lattice3(X0),X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | ~ v10_lattices(X0)
    | v2_struct_0(X0) ),
    inference(renaming,[status(thm)],[c_893])).

cnf(c_1469,plain,
    ( r1_lattice3(k3_lattice3(X0),X1,X2)
    | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
    | ~ l3_lattices(X0)
    | v2_struct_0(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_894,c_30])).

cnf(c_1470,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0,X1)
    | ~ r3_orders_2(k3_lattice3(sK3),X1,sK1(k3_lattice3(sK3),X0,X1))
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3)))
    | ~ l3_lattices(sK3)
    | v2_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_1469])).

cnf(c_1474,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0,X1)
    | ~ r3_orders_2(k3_lattice3(sK3),X1,sK1(k3_lattice3(sK3),X0,X1))
    | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1470,c_31,c_29])).

cnf(c_2582,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
    | ~ r3_orders_2(k3_lattice3(sK3),X0_54,sK1(k3_lattice3(sK3),X0_55,X0_54))
    | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) ),
    inference(subtyping,[status(esa)],[c_1474])).

cnf(c_2618,plain,
    ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
    | r3_orders_2(k3_lattice3(sK3),X0_54,sK1(k3_lattice3(sK3),X0_55,X0_54)) != iProver_top
    | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2582])).

cnf(c_2620,plain,
    ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
    | r3_orders_2(k3_lattice3(sK3),sK4,sK1(k3_lattice3(sK3),sK2,sK4)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2618])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8589,c_6563,c_5504,c_4984,c_4436,c_4420,c_3434,c_3291,c_3279,c_3252,c_2639,c_2636,c_2631,c_2626,c_2620,c_2605,c_35,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n002.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 14:43:21 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.01/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.01/0.99  
% 3.01/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.01/0.99  
% 3.01/0.99  ------  iProver source info
% 3.01/0.99  
% 3.01/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.01/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.01/0.99  git: non_committed_changes: false
% 3.01/0.99  git: last_make_outside_of_git: false
% 3.01/0.99  
% 3.01/0.99  ------ 
% 3.01/0.99  
% 3.01/0.99  ------ Input Options
% 3.01/0.99  
% 3.01/0.99  --out_options                           all
% 3.01/0.99  --tptp_safe_out                         true
% 3.01/0.99  --problem_path                          ""
% 3.01/0.99  --include_path                          ""
% 3.01/0.99  --clausifier                            res/vclausify_rel
% 3.01/0.99  --clausifier_options                    --mode clausify
% 3.01/0.99  --stdin                                 false
% 3.01/0.99  --stats_out                             all
% 3.01/0.99  
% 3.01/0.99  ------ General Options
% 3.01/0.99  
% 3.01/0.99  --fof                                   false
% 3.01/0.99  --time_out_real                         305.
% 3.01/0.99  --time_out_virtual                      -1.
% 3.01/0.99  --symbol_type_check                     false
% 3.01/0.99  --clausify_out                          false
% 3.01/0.99  --sig_cnt_out                           false
% 3.01/0.99  --trig_cnt_out                          false
% 3.01/0.99  --trig_cnt_out_tolerance                1.
% 3.01/0.99  --trig_cnt_out_sk_spl                   false
% 3.01/0.99  --abstr_cl_out                          false
% 3.01/0.99  
% 3.01/0.99  ------ Global Options
% 3.01/0.99  
% 3.01/0.99  --schedule                              default
% 3.01/0.99  --add_important_lit                     false
% 3.01/0.99  --prop_solver_per_cl                    1000
% 3.01/0.99  --min_unsat_core                        false
% 3.01/0.99  --soft_assumptions                      false
% 3.01/0.99  --soft_lemma_size                       3
% 3.01/0.99  --prop_impl_unit_size                   0
% 3.01/0.99  --prop_impl_unit                        []
% 3.01/0.99  --share_sel_clauses                     true
% 3.01/0.99  --reset_solvers                         false
% 3.01/0.99  --bc_imp_inh                            [conj_cone]
% 3.01/0.99  --conj_cone_tolerance                   3.
% 3.01/0.99  --extra_neg_conj                        none
% 3.01/0.99  --large_theory_mode                     true
% 3.01/0.99  --prolific_symb_bound                   200
% 3.01/0.99  --lt_threshold                          2000
% 3.01/0.99  --clause_weak_htbl                      true
% 3.01/0.99  --gc_record_bc_elim                     false
% 3.01/0.99  
% 3.01/0.99  ------ Preprocessing Options
% 3.01/0.99  
% 3.01/0.99  --preprocessing_flag                    true
% 3.01/0.99  --time_out_prep_mult                    0.1
% 3.01/0.99  --splitting_mode                        input
% 3.01/0.99  --splitting_grd                         true
% 3.01/0.99  --splitting_cvd                         false
% 3.01/0.99  --splitting_cvd_svl                     false
% 3.01/0.99  --splitting_nvd                         32
% 3.01/0.99  --sub_typing                            true
% 3.01/0.99  --prep_gs_sim                           true
% 3.01/0.99  --prep_unflatten                        true
% 3.01/0.99  --prep_res_sim                          true
% 3.01/0.99  --prep_upred                            true
% 3.01/0.99  --prep_sem_filter                       exhaustive
% 3.01/0.99  --prep_sem_filter_out                   false
% 3.01/0.99  --pred_elim                             true
% 3.01/0.99  --res_sim_input                         true
% 3.01/0.99  --eq_ax_congr_red                       true
% 3.01/0.99  --pure_diseq_elim                       true
% 3.01/0.99  --brand_transform                       false
% 3.01/0.99  --non_eq_to_eq                          false
% 3.01/0.99  --prep_def_merge                        true
% 3.01/0.99  --prep_def_merge_prop_impl              false
% 3.01/0.99  --prep_def_merge_mbd                    true
% 3.01/0.99  --prep_def_merge_tr_red                 false
% 3.01/0.99  --prep_def_merge_tr_cl                  false
% 3.01/0.99  --smt_preprocessing                     true
% 3.01/0.99  --smt_ac_axioms                         fast
% 3.01/0.99  --preprocessed_out                      false
% 3.01/0.99  --preprocessed_stats                    false
% 3.01/0.99  
% 3.01/0.99  ------ Abstraction refinement Options
% 3.01/0.99  
% 3.01/0.99  --abstr_ref                             []
% 3.01/0.99  --abstr_ref_prep                        false
% 3.01/0.99  --abstr_ref_until_sat                   false
% 3.01/0.99  --abstr_ref_sig_restrict                funpre
% 3.01/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.01/0.99  --abstr_ref_under                       []
% 3.01/0.99  
% 3.01/0.99  ------ SAT Options
% 3.01/0.99  
% 3.01/0.99  --sat_mode                              false
% 3.01/0.99  --sat_fm_restart_options                ""
% 3.01/0.99  --sat_gr_def                            false
% 3.01/0.99  --sat_epr_types                         true
% 3.01/0.99  --sat_non_cyclic_types                  false
% 3.01/0.99  --sat_finite_models                     false
% 3.01/0.99  --sat_fm_lemmas                         false
% 3.01/0.99  --sat_fm_prep                           false
% 3.01/0.99  --sat_fm_uc_incr                        true
% 3.01/0.99  --sat_out_model                         small
% 3.01/0.99  --sat_out_clauses                       false
% 3.01/0.99  
% 3.01/0.99  ------ QBF Options
% 3.01/0.99  
% 3.01/0.99  --qbf_mode                              false
% 3.01/0.99  --qbf_elim_univ                         false
% 3.01/0.99  --qbf_dom_inst                          none
% 3.01/0.99  --qbf_dom_pre_inst                      false
% 3.01/0.99  --qbf_sk_in                             false
% 3.01/0.99  --qbf_pred_elim                         true
% 3.01/0.99  --qbf_split                             512
% 3.01/0.99  
% 3.01/0.99  ------ BMC1 Options
% 3.01/0.99  
% 3.01/0.99  --bmc1_incremental                      false
% 3.01/0.99  --bmc1_axioms                           reachable_all
% 3.01/0.99  --bmc1_min_bound                        0
% 3.01/0.99  --bmc1_max_bound                        -1
% 3.01/0.99  --bmc1_max_bound_default                -1
% 3.01/0.99  --bmc1_symbol_reachability              true
% 3.01/0.99  --bmc1_property_lemmas                  false
% 3.01/0.99  --bmc1_k_induction                      false
% 3.01/0.99  --bmc1_non_equiv_states                 false
% 3.01/0.99  --bmc1_deadlock                         false
% 3.01/0.99  --bmc1_ucm                              false
% 3.01/0.99  --bmc1_add_unsat_core                   none
% 3.01/0.99  --bmc1_unsat_core_children              false
% 3.01/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.01/0.99  --bmc1_out_stat                         full
% 3.01/0.99  --bmc1_ground_init                      false
% 3.01/0.99  --bmc1_pre_inst_next_state              false
% 3.01/0.99  --bmc1_pre_inst_state                   false
% 3.01/0.99  --bmc1_pre_inst_reach_state             false
% 3.01/0.99  --bmc1_out_unsat_core                   false
% 3.01/0.99  --bmc1_aig_witness_out                  false
% 3.01/0.99  --bmc1_verbose                          false
% 3.01/0.99  --bmc1_dump_clauses_tptp                false
% 3.01/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.01/0.99  --bmc1_dump_file                        -
% 3.01/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.01/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.01/0.99  --bmc1_ucm_extend_mode                  1
% 3.01/0.99  --bmc1_ucm_init_mode                    2
% 3.01/0.99  --bmc1_ucm_cone_mode                    none
% 3.01/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.01/0.99  --bmc1_ucm_relax_model                  4
% 3.01/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.01/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.01/0.99  --bmc1_ucm_layered_model                none
% 3.01/0.99  --bmc1_ucm_max_lemma_size               10
% 3.01/0.99  
% 3.01/0.99  ------ AIG Options
% 3.01/0.99  
% 3.01/0.99  --aig_mode                              false
% 3.01/0.99  
% 3.01/0.99  ------ Instantiation Options
% 3.01/0.99  
% 3.01/0.99  --instantiation_flag                    true
% 3.01/0.99  --inst_sos_flag                         false
% 3.01/0.99  --inst_sos_phase                        true
% 3.01/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.01/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.01/0.99  --inst_lit_sel_side                     num_symb
% 3.01/0.99  --inst_solver_per_active                1400
% 3.01/0.99  --inst_solver_calls_frac                1.
% 3.01/0.99  --inst_passive_queue_type               priority_queues
% 3.01/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.01/0.99  --inst_passive_queues_freq              [25;2]
% 3.01/0.99  --inst_dismatching                      true
% 3.01/0.99  --inst_eager_unprocessed_to_passive     true
% 3.01/0.99  --inst_prop_sim_given                   true
% 3.01/0.99  --inst_prop_sim_new                     false
% 3.01/0.99  --inst_subs_new                         false
% 3.01/0.99  --inst_eq_res_simp                      false
% 3.01/0.99  --inst_subs_given                       false
% 3.01/0.99  --inst_orphan_elimination               true
% 3.01/0.99  --inst_learning_loop_flag               true
% 3.01/0.99  --inst_learning_start                   3000
% 3.01/0.99  --inst_learning_factor                  2
% 3.01/0.99  --inst_start_prop_sim_after_learn       3
% 3.01/0.99  --inst_sel_renew                        solver
% 3.01/0.99  --inst_lit_activity_flag                true
% 3.01/0.99  --inst_restr_to_given                   false
% 3.01/0.99  --inst_activity_threshold               500
% 3.01/0.99  --inst_out_proof                        true
% 3.01/0.99  
% 3.01/0.99  ------ Resolution Options
% 3.01/0.99  
% 3.01/0.99  --resolution_flag                       true
% 3.01/0.99  --res_lit_sel                           adaptive
% 3.01/0.99  --res_lit_sel_side                      none
% 3.01/0.99  --res_ordering                          kbo
% 3.01/0.99  --res_to_prop_solver                    active
% 3.01/0.99  --res_prop_simpl_new                    false
% 3.01/0.99  --res_prop_simpl_given                  true
% 3.01/0.99  --res_passive_queue_type                priority_queues
% 3.01/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.01/0.99  --res_passive_queues_freq               [15;5]
% 3.01/0.99  --res_forward_subs                      full
% 3.01/0.99  --res_backward_subs                     full
% 3.01/0.99  --res_forward_subs_resolution           true
% 3.01/0.99  --res_backward_subs_resolution          true
% 3.01/0.99  --res_orphan_elimination                true
% 3.01/0.99  --res_time_limit                        2.
% 3.01/0.99  --res_out_proof                         true
% 3.01/0.99  
% 3.01/0.99  ------ Superposition Options
% 3.01/0.99  
% 3.01/0.99  --superposition_flag                    true
% 3.01/0.99  --sup_passive_queue_type                priority_queues
% 3.01/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.01/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.01/0.99  --demod_completeness_check              fast
% 3.01/0.99  --demod_use_ground                      true
% 3.01/0.99  --sup_to_prop_solver                    passive
% 3.01/0.99  --sup_prop_simpl_new                    true
% 3.01/0.99  --sup_prop_simpl_given                  true
% 3.01/0.99  --sup_fun_splitting                     false
% 3.01/0.99  --sup_smt_interval                      50000
% 3.01/0.99  
% 3.01/0.99  ------ Superposition Simplification Setup
% 3.01/0.99  
% 3.01/0.99  --sup_indices_passive                   []
% 3.01/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.01/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.01/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.01/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.01/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.01/0.99  --sup_full_bw                           [BwDemod]
% 3.01/0.99  --sup_immed_triv                        [TrivRules]
% 3.01/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.01/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.01/0.99  --sup_immed_bw_main                     []
% 3.01/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.01/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.01/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.01/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.01/0.99  
% 3.01/0.99  ------ Combination Options
% 3.01/0.99  
% 3.01/0.99  --comb_res_mult                         3
% 3.01/0.99  --comb_sup_mult                         2
% 3.01/0.99  --comb_inst_mult                        10
% 3.01/0.99  
% 3.01/0.99  ------ Debug Options
% 3.01/0.99  
% 3.01/0.99  --dbg_backtrace                         false
% 3.01/0.99  --dbg_dump_prop_clauses                 false
% 3.01/0.99  --dbg_dump_prop_clauses_file            -
% 3.01/0.99  --dbg_out_stat                          false
% 3.01/0.99  ------ Parsing...
% 3.01/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.01/0.99  
% 3.01/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 3.01/0.99  
% 3.01/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.01/0.99  
% 3.01/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.01/0.99  ------ Proving...
% 3.01/0.99  ------ Problem Properties 
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  clauses                                 17
% 3.01/0.99  conjectures                             3
% 3.01/0.99  EPR                                     0
% 3.01/0.99  Horn                                    12
% 3.01/0.99  unary                                   1
% 3.01/0.99  binary                                  6
% 3.01/0.99  lits                                    49
% 3.01/0.99  lits eq                                 2
% 3.01/0.99  fd_pure                                 0
% 3.01/0.99  fd_pseudo                               0
% 3.01/0.99  fd_cond                                 0
% 3.01/0.99  fd_pseudo_cond                          0
% 3.01/0.99  AC symbols                              0
% 3.01/0.99  
% 3.01/0.99  ------ Schedule dynamic 5 is on 
% 3.01/0.99  
% 3.01/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  ------ 
% 3.01/0.99  Current options:
% 3.01/0.99  ------ 
% 3.01/0.99  
% 3.01/0.99  ------ Input Options
% 3.01/0.99  
% 3.01/0.99  --out_options                           all
% 3.01/0.99  --tptp_safe_out                         true
% 3.01/0.99  --problem_path                          ""
% 3.01/0.99  --include_path                          ""
% 3.01/0.99  --clausifier                            res/vclausify_rel
% 3.01/0.99  --clausifier_options                    --mode clausify
% 3.01/0.99  --stdin                                 false
% 3.01/0.99  --stats_out                             all
% 3.01/0.99  
% 3.01/0.99  ------ General Options
% 3.01/0.99  
% 3.01/0.99  --fof                                   false
% 3.01/0.99  --time_out_real                         305.
% 3.01/0.99  --time_out_virtual                      -1.
% 3.01/0.99  --symbol_type_check                     false
% 3.01/0.99  --clausify_out                          false
% 3.01/0.99  --sig_cnt_out                           false
% 3.01/0.99  --trig_cnt_out                          false
% 3.01/0.99  --trig_cnt_out_tolerance                1.
% 3.01/0.99  --trig_cnt_out_sk_spl                   false
% 3.01/0.99  --abstr_cl_out                          false
% 3.01/0.99  
% 3.01/0.99  ------ Global Options
% 3.01/0.99  
% 3.01/0.99  --schedule                              default
% 3.01/0.99  --add_important_lit                     false
% 3.01/0.99  --prop_solver_per_cl                    1000
% 3.01/0.99  --min_unsat_core                        false
% 3.01/0.99  --soft_assumptions                      false
% 3.01/0.99  --soft_lemma_size                       3
% 3.01/0.99  --prop_impl_unit_size                   0
% 3.01/0.99  --prop_impl_unit                        []
% 3.01/0.99  --share_sel_clauses                     true
% 3.01/0.99  --reset_solvers                         false
% 3.01/0.99  --bc_imp_inh                            [conj_cone]
% 3.01/0.99  --conj_cone_tolerance                   3.
% 3.01/0.99  --extra_neg_conj                        none
% 3.01/0.99  --large_theory_mode                     true
% 3.01/0.99  --prolific_symb_bound                   200
% 3.01/0.99  --lt_threshold                          2000
% 3.01/0.99  --clause_weak_htbl                      true
% 3.01/0.99  --gc_record_bc_elim                     false
% 3.01/0.99  
% 3.01/0.99  ------ Preprocessing Options
% 3.01/0.99  
% 3.01/0.99  --preprocessing_flag                    true
% 3.01/0.99  --time_out_prep_mult                    0.1
% 3.01/0.99  --splitting_mode                        input
% 3.01/0.99  --splitting_grd                         true
% 3.01/0.99  --splitting_cvd                         false
% 3.01/0.99  --splitting_cvd_svl                     false
% 3.01/0.99  --splitting_nvd                         32
% 3.01/0.99  --sub_typing                            true
% 3.01/0.99  --prep_gs_sim                           true
% 3.01/0.99  --prep_unflatten                        true
% 3.01/0.99  --prep_res_sim                          true
% 3.01/0.99  --prep_upred                            true
% 3.01/0.99  --prep_sem_filter                       exhaustive
% 3.01/0.99  --prep_sem_filter_out                   false
% 3.01/0.99  --pred_elim                             true
% 3.01/0.99  --res_sim_input                         true
% 3.01/0.99  --eq_ax_congr_red                       true
% 3.01/0.99  --pure_diseq_elim                       true
% 3.01/0.99  --brand_transform                       false
% 3.01/0.99  --non_eq_to_eq                          false
% 3.01/0.99  --prep_def_merge                        true
% 3.01/0.99  --prep_def_merge_prop_impl              false
% 3.01/0.99  --prep_def_merge_mbd                    true
% 3.01/0.99  --prep_def_merge_tr_red                 false
% 3.01/0.99  --prep_def_merge_tr_cl                  false
% 3.01/0.99  --smt_preprocessing                     true
% 3.01/0.99  --smt_ac_axioms                         fast
% 3.01/0.99  --preprocessed_out                      false
% 3.01/0.99  --preprocessed_stats                    false
% 3.01/0.99  
% 3.01/0.99  ------ Abstraction refinement Options
% 3.01/0.99  
% 3.01/0.99  --abstr_ref                             []
% 3.01/0.99  --abstr_ref_prep                        false
% 3.01/0.99  --abstr_ref_until_sat                   false
% 3.01/0.99  --abstr_ref_sig_restrict                funpre
% 3.01/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.01/0.99  --abstr_ref_under                       []
% 3.01/0.99  
% 3.01/0.99  ------ SAT Options
% 3.01/0.99  
% 3.01/0.99  --sat_mode                              false
% 3.01/0.99  --sat_fm_restart_options                ""
% 3.01/0.99  --sat_gr_def                            false
% 3.01/0.99  --sat_epr_types                         true
% 3.01/0.99  --sat_non_cyclic_types                  false
% 3.01/0.99  --sat_finite_models                     false
% 3.01/0.99  --sat_fm_lemmas                         false
% 3.01/0.99  --sat_fm_prep                           false
% 3.01/0.99  --sat_fm_uc_incr                        true
% 3.01/0.99  --sat_out_model                         small
% 3.01/0.99  --sat_out_clauses                       false
% 3.01/0.99  
% 3.01/0.99  ------ QBF Options
% 3.01/0.99  
% 3.01/0.99  --qbf_mode                              false
% 3.01/0.99  --qbf_elim_univ                         false
% 3.01/0.99  --qbf_dom_inst                          none
% 3.01/0.99  --qbf_dom_pre_inst                      false
% 3.01/0.99  --qbf_sk_in                             false
% 3.01/0.99  --qbf_pred_elim                         true
% 3.01/0.99  --qbf_split                             512
% 3.01/0.99  
% 3.01/0.99  ------ BMC1 Options
% 3.01/0.99  
% 3.01/0.99  --bmc1_incremental                      false
% 3.01/0.99  --bmc1_axioms                           reachable_all
% 3.01/0.99  --bmc1_min_bound                        0
% 3.01/0.99  --bmc1_max_bound                        -1
% 3.01/0.99  --bmc1_max_bound_default                -1
% 3.01/0.99  --bmc1_symbol_reachability              true
% 3.01/0.99  --bmc1_property_lemmas                  false
% 3.01/0.99  --bmc1_k_induction                      false
% 3.01/0.99  --bmc1_non_equiv_states                 false
% 3.01/0.99  --bmc1_deadlock                         false
% 3.01/0.99  --bmc1_ucm                              false
% 3.01/0.99  --bmc1_add_unsat_core                   none
% 3.01/0.99  --bmc1_unsat_core_children              false
% 3.01/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.01/0.99  --bmc1_out_stat                         full
% 3.01/0.99  --bmc1_ground_init                      false
% 3.01/0.99  --bmc1_pre_inst_next_state              false
% 3.01/0.99  --bmc1_pre_inst_state                   false
% 3.01/0.99  --bmc1_pre_inst_reach_state             false
% 3.01/0.99  --bmc1_out_unsat_core                   false
% 3.01/0.99  --bmc1_aig_witness_out                  false
% 3.01/0.99  --bmc1_verbose                          false
% 3.01/0.99  --bmc1_dump_clauses_tptp                false
% 3.01/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.01/0.99  --bmc1_dump_file                        -
% 3.01/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.01/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.01/0.99  --bmc1_ucm_extend_mode                  1
% 3.01/0.99  --bmc1_ucm_init_mode                    2
% 3.01/0.99  --bmc1_ucm_cone_mode                    none
% 3.01/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.01/0.99  --bmc1_ucm_relax_model                  4
% 3.01/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.01/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.01/0.99  --bmc1_ucm_layered_model                none
% 3.01/0.99  --bmc1_ucm_max_lemma_size               10
% 3.01/0.99  
% 3.01/0.99  ------ AIG Options
% 3.01/0.99  
% 3.01/0.99  --aig_mode                              false
% 3.01/0.99  
% 3.01/0.99  ------ Instantiation Options
% 3.01/0.99  
% 3.01/0.99  --instantiation_flag                    true
% 3.01/0.99  --inst_sos_flag                         false
% 3.01/0.99  --inst_sos_phase                        true
% 3.01/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.01/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.01/0.99  --inst_lit_sel_side                     none
% 3.01/0.99  --inst_solver_per_active                1400
% 3.01/0.99  --inst_solver_calls_frac                1.
% 3.01/0.99  --inst_passive_queue_type               priority_queues
% 3.01/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.01/0.99  --inst_passive_queues_freq              [25;2]
% 3.01/0.99  --inst_dismatching                      true
% 3.01/0.99  --inst_eager_unprocessed_to_passive     true
% 3.01/0.99  --inst_prop_sim_given                   true
% 3.01/0.99  --inst_prop_sim_new                     false
% 3.01/0.99  --inst_subs_new                         false
% 3.01/0.99  --inst_eq_res_simp                      false
% 3.01/0.99  --inst_subs_given                       false
% 3.01/0.99  --inst_orphan_elimination               true
% 3.01/0.99  --inst_learning_loop_flag               true
% 3.01/0.99  --inst_learning_start                   3000
% 3.01/0.99  --inst_learning_factor                  2
% 3.01/0.99  --inst_start_prop_sim_after_learn       3
% 3.01/0.99  --inst_sel_renew                        solver
% 3.01/0.99  --inst_lit_activity_flag                true
% 3.01/0.99  --inst_restr_to_given                   false
% 3.01/0.99  --inst_activity_threshold               500
% 3.01/0.99  --inst_out_proof                        true
% 3.01/0.99  
% 3.01/0.99  ------ Resolution Options
% 3.01/0.99  
% 3.01/0.99  --resolution_flag                       false
% 3.01/0.99  --res_lit_sel                           adaptive
% 3.01/0.99  --res_lit_sel_side                      none
% 3.01/0.99  --res_ordering                          kbo
% 3.01/0.99  --res_to_prop_solver                    active
% 3.01/0.99  --res_prop_simpl_new                    false
% 3.01/0.99  --res_prop_simpl_given                  true
% 3.01/0.99  --res_passive_queue_type                priority_queues
% 3.01/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.01/0.99  --res_passive_queues_freq               [15;5]
% 3.01/0.99  --res_forward_subs                      full
% 3.01/0.99  --res_backward_subs                     full
% 3.01/0.99  --res_forward_subs_resolution           true
% 3.01/0.99  --res_backward_subs_resolution          true
% 3.01/0.99  --res_orphan_elimination                true
% 3.01/0.99  --res_time_limit                        2.
% 3.01/0.99  --res_out_proof                         true
% 3.01/0.99  
% 3.01/0.99  ------ Superposition Options
% 3.01/0.99  
% 3.01/0.99  --superposition_flag                    true
% 3.01/0.99  --sup_passive_queue_type                priority_queues
% 3.01/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.01/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.01/0.99  --demod_completeness_check              fast
% 3.01/0.99  --demod_use_ground                      true
% 3.01/0.99  --sup_to_prop_solver                    passive
% 3.01/0.99  --sup_prop_simpl_new                    true
% 3.01/0.99  --sup_prop_simpl_given                  true
% 3.01/0.99  --sup_fun_splitting                     false
% 3.01/0.99  --sup_smt_interval                      50000
% 3.01/0.99  
% 3.01/0.99  ------ Superposition Simplification Setup
% 3.01/0.99  
% 3.01/0.99  --sup_indices_passive                   []
% 3.01/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.01/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.01/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.01/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.01/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.01/0.99  --sup_full_bw                           [BwDemod]
% 3.01/0.99  --sup_immed_triv                        [TrivRules]
% 3.01/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.01/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.01/0.99  --sup_immed_bw_main                     []
% 3.01/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.01/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.01/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.01/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.01/0.99  
% 3.01/0.99  ------ Combination Options
% 3.01/0.99  
% 3.01/0.99  --comb_res_mult                         3
% 3.01/0.99  --comb_sup_mult                         2
% 3.01/0.99  --comb_inst_mult                        10
% 3.01/0.99  
% 3.01/0.99  ------ Debug Options
% 3.01/0.99  
% 3.01/0.99  --dbg_backtrace                         false
% 3.01/0.99  --dbg_dump_prop_clauses                 false
% 3.01/0.99  --dbg_dump_prop_clauses_file            -
% 3.01/0.99  --dbg_out_stat                          false
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  ------ Proving...
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  % SZS status Theorem for theBenchmark.p
% 3.01/0.99  
% 3.01/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.01/0.99  
% 3.01/0.99  fof(f13,conjecture,(
% 3.01/0.99    ! [X0,X1] : ((l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X1)) => (r3_lattice3(X1,X2,X0) <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f14,negated_conjecture,(
% 3.01/0.99    ~! [X0,X1] : ((l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X1)) => (r3_lattice3(X1,X2,X0) <=> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)))))),
% 3.01/0.99    inference(negated_conjecture,[],[f13])).
% 3.01/0.99  
% 3.01/0.99  fof(f48,plain,(
% 3.01/0.99    ? [X0,X1] : (? [X2] : ((r3_lattice3(X1,X2,X0) <~> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))) & m1_subset_1(X2,u1_struct_0(X1))) & (l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)))),
% 3.01/0.99    inference(ennf_transformation,[],[f14])).
% 3.01/0.99  
% 3.01/0.99  fof(f49,plain,(
% 3.01/0.99    ? [X0,X1] : (? [X2] : ((r3_lattice3(X1,X2,X0) <~> r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2))) & m1_subset_1(X2,u1_struct_0(X1))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1))),
% 3.01/0.99    inference(flattening,[],[f48])).
% 3.01/0.99  
% 3.01/0.99  fof(f61,plain,(
% 3.01/0.99    ? [X0,X1] : (? [X2] : (((~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~r3_lattice3(X1,X2,X0)) & (r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | r3_lattice3(X1,X2,X0))) & m1_subset_1(X2,u1_struct_0(X1))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1))),
% 3.01/0.99    inference(nnf_transformation,[],[f49])).
% 3.01/0.99  
% 3.01/0.99  fof(f62,plain,(
% 3.01/0.99    ? [X0,X1] : (? [X2] : ((~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~r3_lattice3(X1,X2,X0)) & (r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | r3_lattice3(X1,X2,X0)) & m1_subset_1(X2,u1_struct_0(X1))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1))),
% 3.01/0.99    inference(flattening,[],[f61])).
% 3.01/0.99  
% 3.01/0.99  fof(f64,plain,(
% 3.01/0.99    ( ! [X0,X1] : (? [X2] : ((~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~r3_lattice3(X1,X2,X0)) & (r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | r3_lattice3(X1,X2,X0)) & m1_subset_1(X2,u1_struct_0(X1))) => ((~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,sK4)) | ~r3_lattice3(X1,sK4,X0)) & (r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,sK4)) | r3_lattice3(X1,sK4,X0)) & m1_subset_1(sK4,u1_struct_0(X1)))) )),
% 3.01/0.99    introduced(choice_axiom,[])).
% 3.01/0.99  
% 3.01/0.99  fof(f63,plain,(
% 3.01/0.99    ? [X0,X1] : (? [X2] : ((~r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | ~r3_lattice3(X1,X2,X0)) & (r1_lattice3(k3_lattice3(X1),X0,k4_lattice3(X1,X2)) | r3_lattice3(X1,X2,X0)) & m1_subset_1(X2,u1_struct_0(X1))) & l3_lattices(X1) & v10_lattices(X1) & ~v2_struct_0(X1)) => (? [X2] : ((~r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,X2)) | ~r3_lattice3(sK3,X2,sK2)) & (r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,X2)) | r3_lattice3(sK3,X2,sK2)) & m1_subset_1(X2,u1_struct_0(sK3))) & l3_lattices(sK3) & v10_lattices(sK3) & ~v2_struct_0(sK3))),
% 3.01/0.99    introduced(choice_axiom,[])).
% 3.01/0.99  
% 3.01/0.99  fof(f65,plain,(
% 3.01/0.99    ((~r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) | ~r3_lattice3(sK3,sK4,sK2)) & (r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) | r3_lattice3(sK3,sK4,sK2)) & m1_subset_1(sK4,u1_struct_0(sK3))) & l3_lattices(sK3) & v10_lattices(sK3) & ~v2_struct_0(sK3)),
% 3.01/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f62,f64,f63])).
% 3.01/0.99  
% 3.01/0.99  fof(f95,plain,(
% 3.01/0.99    m1_subset_1(sK4,u1_struct_0(sK3))),
% 3.01/0.99    inference(cnf_transformation,[],[f65])).
% 3.01/0.99  
% 3.01/0.99  fof(f5,axiom,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => k4_lattice3(X0,X1) = X1))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f32,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (k4_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f5])).
% 3.01/0.99  
% 3.01/0.99  fof(f33,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (k4_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f32])).
% 3.01/0.99  
% 3.01/0.99  fof(f78,plain,(
% 3.01/0.99    ( ! [X0,X1] : (k4_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f33])).
% 3.01/0.99  
% 3.01/0.99  fof(f93,plain,(
% 3.01/0.99    v10_lattices(sK3)),
% 3.01/0.99    inference(cnf_transformation,[],[f65])).
% 3.01/0.99  
% 3.01/0.99  fof(f92,plain,(
% 3.01/0.99    ~v2_struct_0(sK3)),
% 3.01/0.99    inference(cnf_transformation,[],[f65])).
% 3.01/0.99  
% 3.01/0.99  fof(f94,plain,(
% 3.01/0.99    l3_lattices(sK3)),
% 3.01/0.99    inference(cnf_transformation,[],[f65])).
% 3.01/0.99  
% 3.01/0.99  fof(f9,axiom,(
% 3.01/0.99    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f40,plain,(
% 3.01/0.99    ! [X0,X1] : (m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0))) | (~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f9])).
% 3.01/0.99  
% 3.01/0.99  fof(f41,plain,(
% 3.01/0.99    ! [X0,X1] : (m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f40])).
% 3.01/0.99  
% 3.01/0.99  fof(f86,plain,(
% 3.01/0.99    ( ! [X0,X1] : (m1_subset_1(k4_lattice3(X0,X1),u1_struct_0(k3_lattice3(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f41])).
% 3.01/0.99  
% 3.01/0.99  fof(f7,axiom,(
% 3.01/0.99    ! [X0] : (l1_orders_2(X0) => ! [X1,X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r1_lattice3(X0,X1,X2) <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X1) => r1_orders_2(X0,X2,X3))))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f36,plain,(
% 3.01/0.99    ! [X0] : (! [X1,X2] : ((r1_lattice3(X0,X1,X2) <=> ! [X3] : ((r1_orders_2(X0,X2,X3) | ~r2_hidden(X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 3.01/0.99    inference(ennf_transformation,[],[f7])).
% 3.01/0.99  
% 3.01/0.99  fof(f37,plain,(
% 3.01/0.99    ! [X0] : (! [X1,X2] : ((r1_lattice3(X0,X1,X2) <=> ! [X3] : (r1_orders_2(X0,X2,X3) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 3.01/0.99    inference(flattening,[],[f36])).
% 3.01/0.99  
% 3.01/0.99  fof(f56,plain,(
% 3.01/0.99    ! [X0] : (! [X1,X2] : (((r1_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X2,X3) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (r1_orders_2(X0,X2,X3) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~r1_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 3.01/0.99    inference(nnf_transformation,[],[f37])).
% 3.01/0.99  
% 3.01/0.99  fof(f57,plain,(
% 3.01/0.99    ! [X0] : (! [X1,X2] : (((r1_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X2,X3) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X2,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r1_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 3.01/0.99    inference(rectify,[],[f56])).
% 3.01/0.99  
% 3.01/0.99  fof(f58,plain,(
% 3.01/0.99    ! [X2,X1,X0] : (? [X3] : (~r1_orders_2(X0,X2,X3) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_orders_2(X0,X2,sK1(X0,X1,X2)) & r2_hidden(sK1(X0,X1,X2),X1) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))))),
% 3.01/0.99    introduced(choice_axiom,[])).
% 3.01/0.99  
% 3.01/0.99  fof(f59,plain,(
% 3.01/0.99    ! [X0] : (! [X1,X2] : (((r1_lattice3(X0,X1,X2) | (~r1_orders_2(X0,X2,sK1(X0,X1,X2)) & r2_hidden(sK1(X0,X1,X2),X1) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X2,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r1_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 3.01/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f57,f58])).
% 3.01/0.99  
% 3.01/0.99  fof(f81,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r1_lattice3(X0,X1,X2) | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f59])).
% 3.01/0.99  
% 3.01/0.99  fof(f8,axiom,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (l1_orders_2(k3_lattice3(X0)) & v5_orders_2(k3_lattice3(X0)) & v4_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0)) & v1_orders_2(k3_lattice3(X0))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f15,plain,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (l1_orders_2(k3_lattice3(X0)) & v4_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0)) & v1_orders_2(k3_lattice3(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f8])).
% 3.01/0.99  
% 3.01/0.99  fof(f17,plain,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (l1_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0)) & v1_orders_2(k3_lattice3(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f15])).
% 3.01/0.99  
% 3.01/0.99  fof(f19,plain,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (l1_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f17])).
% 3.01/0.99  
% 3.01/0.99  fof(f38,plain,(
% 3.01/0.99    ! [X0] : ((l1_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f19])).
% 3.01/0.99  
% 3.01/0.99  fof(f39,plain,(
% 3.01/0.99    ! [X0] : ((l1_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f38])).
% 3.01/0.99  
% 3.01/0.99  fof(f85,plain,(
% 3.01/0.99    ( ! [X0] : (l1_orders_2(k3_lattice3(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f39])).
% 3.01/0.99  
% 3.01/0.99  fof(f6,axiom,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) => k5_lattice3(X0,X1) = X1))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f34,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (k5_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f6])).
% 3.01/0.99  
% 3.01/0.99  fof(f35,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (k5_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f34])).
% 3.01/0.99  
% 3.01/0.99  fof(f79,plain,(
% 3.01/0.99    ( ! [X0,X1] : (k5_lattice3(X0,X1) = X1 | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f35])).
% 3.01/0.99  
% 3.01/0.99  fof(f97,plain,(
% 3.01/0.99    ~r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) | ~r3_lattice3(sK3,sK4,sK2)),
% 3.01/0.99    inference(cnf_transformation,[],[f65])).
% 3.01/0.99  
% 3.01/0.99  fof(f96,plain,(
% 3.01/0.99    r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) | r3_lattice3(sK3,sK4,sK2)),
% 3.01/0.99    inference(cnf_transformation,[],[f65])).
% 3.01/0.99  
% 3.01/0.99  fof(f80,plain,(
% 3.01/0.99    ( ! [X4,X2,X0,X1] : (r1_orders_2(X0,X2,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r1_lattice3(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f59])).
% 3.01/0.99  
% 3.01/0.99  fof(f1,axiom,(
% 3.01/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (r3_orders_2(X0,X1,X2) <=> r1_orders_2(X0,X1,X2)))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f24,plain,(
% 3.01/0.99    ! [X0,X1,X2] : ((r3_orders_2(X0,X1,X2) <=> r1_orders_2(X0,X1,X2)) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f1])).
% 3.01/0.99  
% 3.01/0.99  fof(f25,plain,(
% 3.01/0.99    ! [X0,X1,X2] : ((r3_orders_2(X0,X1,X2) <=> r1_orders_2(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f24])).
% 3.01/0.99  
% 3.01/0.99  fof(f50,plain,(
% 3.01/0.99    ! [X0,X1,X2] : (((r3_orders_2(X0,X1,X2) | ~r1_orders_2(X0,X1,X2)) & (r1_orders_2(X0,X1,X2) | ~r3_orders_2(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(nnf_transformation,[],[f25])).
% 3.01/0.99  
% 3.01/0.99  fof(f67,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_orders_2(X0,X1,X2) | ~r1_orders_2(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f50])).
% 3.01/0.99  
% 3.01/0.99  fof(f84,plain,(
% 3.01/0.99    ( ! [X0] : (v3_orders_2(k3_lattice3(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f39])).
% 3.01/0.99  
% 3.01/0.99  fof(f11,axiom,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (v5_orders_2(k3_lattice3(X0)) & v4_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0)) & v1_orders_2(k3_lattice3(X0)) & ~v2_struct_0(k3_lattice3(X0))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f16,plain,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (v4_orders_2(k3_lattice3(X0)) & v3_orders_2(k3_lattice3(X0)) & v1_orders_2(k3_lattice3(X0)) & ~v2_struct_0(k3_lattice3(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f11])).
% 3.01/0.99  
% 3.01/0.99  fof(f18,plain,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (v3_orders_2(k3_lattice3(X0)) & v1_orders_2(k3_lattice3(X0)) & ~v2_struct_0(k3_lattice3(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f16])).
% 3.01/0.99  
% 3.01/0.99  fof(f20,plain,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => (v3_orders_2(k3_lattice3(X0)) & ~v2_struct_0(k3_lattice3(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f18])).
% 3.01/0.99  
% 3.01/0.99  fof(f44,plain,(
% 3.01/0.99    ! [X0] : ((v3_orders_2(k3_lattice3(X0)) & ~v2_struct_0(k3_lattice3(X0))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f20])).
% 3.01/0.99  
% 3.01/0.99  fof(f45,plain,(
% 3.01/0.99    ! [X0] : ((v3_orders_2(k3_lattice3(X0)) & ~v2_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f44])).
% 3.01/0.99  
% 3.01/0.99  fof(f88,plain,(
% 3.01/0.99    ( ! [X0] : (~v2_struct_0(k3_lattice3(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f45])).
% 3.01/0.99  
% 3.01/0.99  fof(f4,axiom,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (r3_lattice3(X0,X1,X2) <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X2) => r1_lattices(X0,X1,X3))))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f30,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : (r3_lattice3(X0,X1,X2) <=> ! [X3] : ((r1_lattices(X0,X1,X3) | ~r2_hidden(X3,X2)) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f4])).
% 3.01/0.99  
% 3.01/0.99  fof(f31,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : (r3_lattice3(X0,X1,X2) <=> ! [X3] : (r1_lattices(X0,X1,X3) | ~r2_hidden(X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f30])).
% 3.01/0.99  
% 3.01/0.99  fof(f52,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_lattice3(X0,X1,X2) | ? [X3] : (~r1_lattices(X0,X1,X3) & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (r1_lattices(X0,X1,X3) | ~r2_hidden(X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(nnf_transformation,[],[f31])).
% 3.01/0.99  
% 3.01/0.99  fof(f53,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_lattice3(X0,X1,X2) | ? [X3] : (~r1_lattices(X0,X1,X3) & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X4] : (r1_lattices(X0,X1,X4) | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(rectify,[],[f52])).
% 3.01/0.99  
% 3.01/0.99  fof(f54,plain,(
% 3.01/0.99    ! [X2,X1,X0] : (? [X3] : (~r1_lattices(X0,X1,X3) & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_lattices(X0,X1,sK0(X0,X1,X2)) & r2_hidden(sK0(X0,X1,X2),X2) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))))),
% 3.01/0.99    introduced(choice_axiom,[])).
% 3.01/0.99  
% 3.01/0.99  fof(f55,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_lattice3(X0,X1,X2) | (~r1_lattices(X0,X1,sK0(X0,X1,X2)) & r2_hidden(sK0(X0,X1,X2),X2) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)))) & (! [X4] : (r1_lattices(X0,X1,X4) | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r3_lattice3(X0,X1,X2))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f53,f54])).
% 3.01/0.99  
% 3.01/0.99  fof(f75,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_lattice3(X0,X1,X2) | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f55])).
% 3.01/0.99  
% 3.01/0.99  fof(f76,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_lattice3(X0,X1,X2) | r2_hidden(sK0(X0,X1,X2),X2) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f55])).
% 3.01/0.99  
% 3.01/0.99  fof(f12,axiom,(
% 3.01/0.99    ! [X0] : ((l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r3_lattices(X0,X1,X2) <=> r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f46,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_lattices(X0,X1,X2) <=> r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f12])).
% 3.01/0.99  
% 3.01/0.99  fof(f47,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_lattices(X0,X1,X2) <=> r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f46])).
% 3.01/0.99  
% 3.01/0.99  fof(f60,plain,(
% 3.01/0.99    ! [X0] : (! [X1] : (! [X2] : (((r3_lattices(X0,X1,X2) | ~r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))) & (r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) | ~r3_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(nnf_transformation,[],[f47])).
% 3.01/0.99  
% 3.01/0.99  fof(f91,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_lattices(X0,X1,X2) | ~r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f60])).
% 3.01/0.99  
% 3.01/0.99  fof(f2,axiom,(
% 3.01/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v7_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f21,plain,(
% 3.01/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v5_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f2])).
% 3.01/0.99  
% 3.01/0.99  fof(f22,plain,(
% 3.01/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & v4_lattices(X0) & ~v2_struct_0(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f21])).
% 3.01/0.99  
% 3.01/0.99  fof(f23,plain,(
% 3.01/0.99    ! [X0] : (l3_lattices(X0) => ((v10_lattices(X0) & ~v2_struct_0(X0)) => (v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0))))),
% 3.01/0.99    inference(pure_predicate_removal,[],[f22])).
% 3.01/0.99  
% 3.01/0.99  fof(f26,plain,(
% 3.01/0.99    ! [X0] : (((v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) | (~v10_lattices(X0) | v2_struct_0(X0))) | ~l3_lattices(X0))),
% 3.01/0.99    inference(ennf_transformation,[],[f23])).
% 3.01/0.99  
% 3.01/0.99  fof(f27,plain,(
% 3.01/0.99    ! [X0] : ((v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0))),
% 3.01/0.99    inference(flattening,[],[f26])).
% 3.01/0.99  
% 3.01/0.99  fof(f71,plain,(
% 3.01/0.99    ( ! [X0] : (v9_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f27])).
% 3.01/0.99  
% 3.01/0.99  fof(f3,axiom,(
% 3.01/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l3_lattices(X0) & v9_lattices(X0) & v8_lattices(X0) & v6_lattices(X0) & ~v2_struct_0(X0)) => (r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f28,plain,(
% 3.01/0.99    ! [X0,X1,X2] : ((r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f3])).
% 3.01/0.99  
% 3.01/0.99  fof(f29,plain,(
% 3.01/0.99    ! [X0,X1,X2] : ((r3_lattices(X0,X1,X2) <=> r1_lattices(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f28])).
% 3.01/0.99  
% 3.01/0.99  fof(f51,plain,(
% 3.01/0.99    ! [X0,X1,X2] : (((r3_lattices(X0,X1,X2) | ~r1_lattices(X0,X1,X2)) & (r1_lattices(X0,X1,X2) | ~r3_lattices(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(nnf_transformation,[],[f29])).
% 3.01/0.99  
% 3.01/0.99  fof(f72,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r1_lattices(X0,X1,X2) | ~r3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f51])).
% 3.01/0.99  
% 3.01/0.99  fof(f69,plain,(
% 3.01/0.99    ( ! [X0] : (v6_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f27])).
% 3.01/0.99  
% 3.01/0.99  fof(f70,plain,(
% 3.01/0.99    ( ! [X0] : (v8_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0) | ~l3_lattices(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f27])).
% 3.01/0.99  
% 3.01/0.99  fof(f77,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_lattice3(X0,X1,X2) | ~r1_lattices(X0,X1,sK0(X0,X1,X2)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f55])).
% 3.01/0.99  
% 3.01/0.99  fof(f10,axiom,(
% 3.01/0.99    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) & l3_lattices(X0) & v10_lattices(X0) & ~v2_struct_0(X0)) => m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)))),
% 3.01/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.01/0.99  
% 3.01/0.99  fof(f42,plain,(
% 3.01/0.99    ! [X0,X1] : (m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) | (~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)))),
% 3.01/0.99    inference(ennf_transformation,[],[f10])).
% 3.01/0.99  
% 3.01/0.99  fof(f43,plain,(
% 3.01/0.99    ! [X0,X1] : (m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0))),
% 3.01/0.99    inference(flattening,[],[f42])).
% 3.01/0.99  
% 3.01/0.99  fof(f87,plain,(
% 3.01/0.99    ( ! [X0,X1] : (m1_subset_1(k5_lattice3(X0,X1),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(k3_lattice3(X0))) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f43])).
% 3.01/0.99  
% 3.01/0.99  fof(f90,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2)) | ~r3_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v10_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f60])).
% 3.01/0.99  
% 3.01/0.99  fof(f73,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r3_lattices(X0,X1,X2) | ~r1_lattices(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | ~v9_lattices(X0) | ~v8_lattices(X0) | ~v6_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f51])).
% 3.01/0.99  
% 3.01/0.99  fof(f74,plain,(
% 3.01/0.99    ( ! [X4,X2,X0,X1] : (r1_lattices(X0,X1,X4) | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r3_lattice3(X0,X1,X2) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l3_lattices(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f55])).
% 3.01/0.99  
% 3.01/0.99  fof(f82,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r1_lattice3(X0,X1,X2) | r2_hidden(sK1(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f59])).
% 3.01/0.99  
% 3.01/0.99  fof(f83,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r1_lattice3(X0,X1,X2) | ~r1_orders_2(X0,X2,sK1(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f59])).
% 3.01/0.99  
% 3.01/0.99  fof(f66,plain,(
% 3.01/0.99    ( ! [X2,X0,X1] : (r1_orders_2(X0,X1,X2) | ~r3_orders_2(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 3.01/0.99    inference(cnf_transformation,[],[f50])).
% 3.01/0.99  
% 3.01/0.99  cnf(c_28,negated_conjecture,
% 3.01/0.99      ( m1_subset_1(sK4,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(cnf_transformation,[],[f95]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2586,negated_conjecture,
% 3.01/0.99      ( m1_subset_1(sK4,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_28]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3056,plain,
% 3.01/0.99      ( m1_subset_1(sK4,u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2586]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_12,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | ~ v10_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1)
% 3.01/0.99      | k4_lattice3(X1,X0) = X0 ),
% 3.01/0.99      inference(cnf_transformation,[],[f78]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_30,negated_conjecture,
% 3.01/0.99      ( v10_lattices(sK3) ),
% 3.01/0.99      inference(cnf_transformation,[],[f93]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1566,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1)
% 3.01/0.99      | k4_lattice3(X1,X0) = X0
% 3.01/0.99      | sK3 != X1 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1567,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3)
% 3.01/0.99      | k4_lattice3(sK3,X0) = X0 ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1566]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_31,negated_conjecture,
% 3.01/0.99      ( ~ v2_struct_0(sK3) ),
% 3.01/0.99      inference(cnf_transformation,[],[f92]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_29,negated_conjecture,
% 3.01/0.99      ( l3_lattices(sK3) ),
% 3.01/0.99      inference(cnf_transformation,[],[f94]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1571,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK3)) | k4_lattice3(sK3,X0) = X0 ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1567,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2578,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
% 3.01/0.99      | k4_lattice3(sK3,X0_54) = X0_54 ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1571]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3064,plain,
% 3.01/0.99      ( k4_lattice3(sK3,X0_54) = X0_54
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2578]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3262,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK4) = sK4 ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3056,c_3064]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_20,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.01/0.99      | m1_subset_1(k4_lattice3(X1,X0),u1_struct_0(k3_lattice3(X1)))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | ~ v10_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1) ),
% 3.01/0.99      inference(cnf_transformation,[],[f86]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1530,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.01/0.99      | m1_subset_1(k4_lattice3(X1,X0),u1_struct_0(k3_lattice3(X1)))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1)
% 3.01/0.99      | sK3 != X1 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_20,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1531,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,X0),u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1530]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1535,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,X0),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1531,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2580,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,X0_54),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1535]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3062,plain,
% 3.01/0.99      ( m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2580]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3455,plain,
% 3.01/0.99      ( m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3262,c_3062]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_35,plain,
% 3.01/0.99      ( m1_subset_1(sK4,u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2590,plain,( X0_54 = X0_54 ),theory(equality) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2605,plain,
% 3.01/0.99      ( sK4 = sK4 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2590]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2624,plain,
% 3.01/0.99      ( m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2580]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2626,plain,
% 3.01/0.99      ( m1_subset_1(k4_lattice3(sK3,sK4),u1_struct_0(k3_lattice3(sK3))) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2624]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2631,plain,
% 3.01/0.99      ( ~ m1_subset_1(sK4,u1_struct_0(sK3))
% 3.01/0.99      | k4_lattice3(sK3,sK4) = sK4 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2578]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2593,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,X0_56)
% 3.01/0.99      | m1_subset_1(X1_54,X0_56)
% 3.01/0.99      | X1_54 != X0_54 ),
% 3.01/0.99      theory(equality) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3249,plain,
% 3.01/0.99      ( m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ m1_subset_1(k4_lattice3(sK3,X1_54),u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | X0_54 != k4_lattice3(sK3,X1_54) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2593]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3250,plain,
% 3.01/0.99      ( X0_54 != k4_lattice3(sK3,X1_54)
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) = iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,X1_54),u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_3249]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3252,plain,
% 3.01/0.99      ( sK4 != k4_lattice3(sK3,sK4)
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,sK4),u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3250]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2591,plain,
% 3.01/0.99      ( X0_54 != X1_54 | X2_54 != X1_54 | X2_54 = X0_54 ),
% 3.01/0.99      theory(equality) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3278,plain,
% 3.01/0.99      ( X0_54 != X1_54
% 3.01/0.99      | X0_54 = k4_lattice3(sK3,X2_54)
% 3.01/0.99      | k4_lattice3(sK3,X2_54) != X1_54 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2591]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3279,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK4) != sK4
% 3.01/0.99      | sK4 = k4_lattice3(sK3,sK4)
% 3.01/0.99      | sK4 != sK4 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3278]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3595,plain,
% 3.01/0.99      ( m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_3455,c_28,c_35,c_2605,c_2626,c_2631,c_3252,c_3279]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_16,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | ~ l1_orders_2(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_18,plain,
% 3.01/0.99      ( ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | l1_orders_2(k3_lattice3(X0)) ),
% 3.01/0.99      inference(cnf_transformation,[],[f85]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1501,plain,
% 3.01/0.99      ( ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | l1_orders_2(k3_lattice3(X0))
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1502,plain,
% 3.01/0.99      ( ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3)
% 3.01/0.99      | l1_orders_2(k3_lattice3(sK3)) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1501]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_58,plain,
% 3.01/0.99      ( ~ l3_lattices(sK3)
% 3.01/0.99      | ~ v10_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3)
% 3.01/0.99      | l1_orders_2(k3_lattice3(sK3)) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_18]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1504,plain,
% 3.01/0.99      ( l1_orders_2(k3_lattice3(sK3)) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1502,c_31,c_30,c_29,c_58]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1636,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | k3_lattice3(sK3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_1504]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1637,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0,X1)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),X0,X1),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1636]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2576,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1637]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3066,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2576]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_13,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | ~ v10_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1)
% 3.01/0.99      | k5_lattice3(X1,X0) = X0 ),
% 3.01/0.99      inference(cnf_transformation,[],[f79]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1548,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1)
% 3.01/0.99      | k5_lattice3(X1,X0) = X0
% 3.01/0.99      | sK3 != X1 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1549,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3)
% 3.01/0.99      | k5_lattice3(sK3,X0) = X0 ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1548]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1553,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | k5_lattice3(sK3,X0) = X0 ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1549,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2579,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | k5_lattice3(sK3,X0_54) = X0_54 ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1553]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3063,plain,
% 3.01/0.99      ( k5_lattice3(sK3,X0_54) = X0_54
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2579]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3432,plain,
% 3.01/0.99      ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)) = sK1(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3066,c_3063]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3776,plain,
% 3.01/0.99      ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,sK4)) = sK1(k3_lattice3(sK3),X0_55,sK4)
% 3.01/0.99      | r1_lattice3(k3_lattice3(sK3),X0_55,sK4) = iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3595,c_3432]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_26,negated_conjecture,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
% 3.01/0.99      | ~ r3_lattice3(sK3,sK4,sK2) ),
% 3.01/0.99      inference(cnf_transformation,[],[f97]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2588,negated_conjecture,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
% 3.01/0.99      | ~ r3_lattice3(sK3,sK4,sK2) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_26]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3054,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) != iProver_top
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2588]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3291,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) != iProver_top
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) != iProver_top ),
% 3.01/0.99      inference(demodulation,[status(thm)],[c_3262,c_3054]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_7946,plain,
% 3.01/0.99      ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4)
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3776,c_3291]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3434,plain,
% 3.01/0.99      ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4)
% 3.01/0.99      | r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3432]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_27,negated_conjecture,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) ),
% 3.01/0.99      inference(cnf_transformation,[],[f96]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2587,negated_conjecture,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4))
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_27]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3055,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,k4_lattice3(sK3,sK4)) = iProver_top
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2587]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3290,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) = iProver_top ),
% 3.01/0.99      inference(demodulation,[status(thm)],[c_3262,c_3055]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_17,plain,
% 3.01/0.99      ( ~ r1_lattice3(X0,X1,X2)
% 3.01/0.99      | r1_orders_2(X0,X2,X3)
% 3.01/0.99      | ~ r2_hidden(X3,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.01/0.99      | ~ l1_orders_2(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f80]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_0,plain,
% 3.01/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | ~ v3_orders_2(X0)
% 3.01/0.99      | ~ l1_orders_2(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_19,plain,
% 3.01/0.99      ( ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | v3_orders_2(k3_lattice3(X0)) ),
% 3.01/0.99      inference(cnf_transformation,[],[f84]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_444,plain,
% 3.01/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | ~ l1_orders_2(X0)
% 3.01/0.99      | k3_lattice3(X3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_19]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_445,plain,
% 3.01/0.99      ( ~ r1_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | v2_struct_0(k3_lattice3(X0))
% 3.01/0.99      | ~ l1_orders_2(k3_lattice3(X0)) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_444]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_23,plain,
% 3.01/0.99      ( ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | ~ v2_struct_0(k3_lattice3(X0)) ),
% 3.01/0.99      inference(cnf_transformation,[],[f88]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_449,plain,
% 3.01/0.99      ( ~ r1_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_445,c_23,c_18]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_918,plain,
% 3.01/0.99      ( ~ r1_lattice3(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X3),X4,X5)
% 3.01/0.99      | ~ r2_hidden(X6,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X6,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X4,u1_struct_0(k3_lattice3(X3)))
% 3.01/0.99      | ~ m1_subset_1(X5,u1_struct_0(k3_lattice3(X3)))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | ~ l1_orders_2(X0)
% 3.01/0.99      | X4 != X2
% 3.01/0.99      | X5 != X6
% 3.01/0.99      | k3_lattice3(X3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_449]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_919,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),X2,X3)
% 3.01/0.99      | ~ r2_hidden(X3,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | ~ l1_orders_2(k3_lattice3(X0)) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_918]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_923,plain,
% 3.01/0.99      ( v2_struct_0(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ r2_hidden(X3,X1)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),X2,X3)
% 3.01/0.99      | ~ r1_lattice3(k3_lattice3(X0),X1,X2) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_919,c_18]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_924,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),X2,X3)
% 3.01/0.99      | ~ r2_hidden(X3,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_923]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1442,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),X2,X3)
% 3.01/0.99      | ~ r2_hidden(X3,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_924,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1443,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),X0,X1)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X1,X2)
% 3.01/0.99      | ~ r2_hidden(X2,X0)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1442]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1447,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),X0,X1)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X1,X2)
% 3.01/0.99      | ~ r2_hidden(X2,X0)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1443,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2583,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,X1_54)
% 3.01/0.99      | ~ r2_hidden(X1_54,X0_55)
% 3.01/0.99      | ~ m1_subset_1(X1_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1447]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3059,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) != iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,X1_54) = iProver_top
% 3.01/0.99      | r2_hidden(X1_54,X0_55) != iProver_top
% 3.01/0.99      | m1_subset_1(X1_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2583]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3516,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) != iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,X1_54)) = iProver_top
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,X1_54),X0_55) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(X1_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3062,c_3059]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4951,plain,
% 3.01/0.99      ( r3_lattice3(sK3,sK4,sK2) = iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,X0_54),sK2) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3290,c_3516]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_10,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f75]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1699,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1700,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3))
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1699]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1704,plain,
% 3.01/0.99      ( m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3))
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | r3_lattice3(sK3,X0,X1) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1700,c_31]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1705,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(sK0(sK3,X0,X1),u1_struct_0(sK3)) ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_1704]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2573,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1705]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2641,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2573]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2643,plain,
% 3.01/0.99      ( r3_lattice3(sK3,sK4,sK2) = iProver_top
% 3.01/0.99      | m1_subset_1(sK0(sK3,sK4,sK2),u1_struct_0(sK3)) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2641]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_9,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r2_hidden(sK0(X0,X1,X2),X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f76]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1720,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r2_hidden(sK0(X0,X1,X2),X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1721,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | r2_hidden(sK0(sK3,X0,X1),X1)
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1720]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1725,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | r2_hidden(sK0(sK3,X0,X1),X1)
% 3.01/0.99      | r3_lattice3(sK3,X0,X1) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1721,c_31]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1726,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | r2_hidden(sK0(sK3,X0,X1),X1)
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_1725]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2572,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55)
% 3.01/0.99      | r2_hidden(sK0(sK3,X0_54,X0_55),X0_55)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1726]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2644,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
% 3.01/0.99      | r2_hidden(sK0(sK3,X0_54,X0_55),X0_55) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2572]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2646,plain,
% 3.01/0.99      ( r3_lattice3(sK3,sK4,sK2) = iProver_top
% 3.01/0.99      | r2_hidden(sK0(sK3,sK4,sK2),sK2) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2644]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2595,plain,
% 3.01/0.99      ( ~ r2_hidden(X0_54,X0_55)
% 3.01/0.99      | r2_hidden(X1_54,X0_55)
% 3.01/0.99      | X1_54 != X0_54 ),
% 3.01/0.99      theory(equality) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3317,plain,
% 3.01/0.99      ( r2_hidden(X0_54,X0_55)
% 3.01/0.99      | ~ r2_hidden(sK0(sK3,X1_54,X0_55),X0_55)
% 3.01/0.99      | X0_54 != sK0(sK3,X1_54,X0_55) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2595]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3350,plain,
% 3.01/0.99      ( ~ r2_hidden(sK0(sK3,X0_54,X0_55),X0_55)
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),X0_55)
% 3.01/0.99      | k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)) != sK0(sK3,X0_54,X0_55) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3317]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3352,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)) != sK0(sK3,X0_54,X0_55)
% 3.01/0.99      | r2_hidden(sK0(sK3,X0_54,X0_55),X0_55) != iProver_top
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),X0_55) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_3350]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3354,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK0(sK3,sK4,sK2)) != sK0(sK3,sK4,sK2)
% 3.01/0.99      | r2_hidden(sK0(sK3,sK4,sK2),sK2) != iProver_top
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),sK2) = iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3352]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_24,plain,
% 3.01/0.99      ( r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f91]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2,plain,
% 3.01/0.99      ( ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v9_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_7,plain,
% 3.01/0.99      ( r1_lattices(X0,X1,X2)
% 3.01/0.99      | ~ r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ v6_lattices(X0)
% 3.01/0.99      | ~ v8_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v9_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_493,plain,
% 3.01/0.99      ( r1_lattices(X0,X1,X2)
% 3.01/0.99      | ~ r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ v6_lattices(X0)
% 3.01/0.99      | ~ v8_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(resolution,[status(thm)],[c_2,c_7]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4,plain,
% 3.01/0.99      ( v6_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3,plain,
% 3.01/0.99      ( v8_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_497,plain,
% 3.01/0.99      ( r1_lattices(X0,X1,X2)
% 3.01/0.99      | ~ r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_493,c_7,c_4,c_3,c_2]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_8,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r1_lattices(X0,X1,sK0(X0,X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f77]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1065,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_lattices(X3,X4,X5)
% 3.01/0.99      | ~ m1_subset_1(X5,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | X0 != X3
% 3.01/0.99      | X1 != X4
% 3.01/0.99      | sK0(X0,X1,X2) != X5 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_497,c_8]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1066,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_lattices(X0,X1,sK0(X0,X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1065]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1070,plain,
% 3.01/0.99      ( ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ r3_lattices(X0,X1,sK0(X0,X1,X2))
% 3.01/0.99      | r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1066,c_10]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1071,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_lattices(X0,X1,sK0(X0,X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_1070]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1311,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X3),k4_lattice3(X3,X4),k4_lattice3(X3,X5))
% 3.01/0.99      | ~ m1_subset_1(X5,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | X0 != X3
% 3.01/0.99      | X1 != X4
% 3.01/0.99      | sK0(X0,X1,X2) != X5 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_24,c_1071]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1312,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1311]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1316,plain,
% 3.01/0.99      ( ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
% 3.01/0.99      | r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1312,c_10]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1317,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_1316]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1421,plain,
% 3.01/0.99      ( r3_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,sK0(X0,X1,X2)))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_1317,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1422,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,sK0(sK3,X0,X1)))
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1421]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1426,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,sK0(sK3,X0,X1)))
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1422,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2584,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)))
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1426]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3058,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,sK0(sK3,X0_54,X0_55))) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2584]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3490,plain,
% 3.01/0.99      ( r3_lattice3(sK3,sK4,X0_55) = iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,sK0(sK3,sK4,X0_55))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3262,c_3058]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3492,plain,
% 3.01/0.99      ( r3_lattice3(sK3,sK4,sK2) = iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,sK0(sK3,sK4,sK2))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3490]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3228,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,X1_54))
% 3.01/0.99      | ~ r2_hidden(k4_lattice3(sK3,X1_54),X0_55)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ m1_subset_1(k4_lattice3(sK3,X1_54),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2583]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3563,plain,
% 3.01/0.99      ( ~ r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)))
% 3.01/0.99      | ~ r2_hidden(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),X0_55)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ m1_subset_1(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3228]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3569,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) != iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,k4_lattice3(sK3,sK0(sK3,X1_54,X0_55))) = iProver_top
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),X0_55) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,sK0(sK3,X1_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_3563]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3571,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) != iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,sK0(sK3,sK4,sK2))) = iProver_top
% 3.01/0.99      | r2_hidden(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),sK2) != iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3569]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3069,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2573]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3590,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)) = sK0(sK3,X0_54,X0_55)
% 3.01/0.99      | r3_lattice3(sK3,X0_54,X0_55) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_3069,c_3064]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3592,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK0(sK3,sK4,sK2)) = sK0(sK3,sK4,sK2)
% 3.01/0.99      | r3_lattice3(sK3,sK4,sK2) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3590]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3749,plain,
% 3.01/0.99      ( ~ m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2580]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3750,plain,
% 3.01/0.99      ( m1_subset_1(sK0(sK3,X0_54,X0_55),u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,sK0(sK3,X0_54,X0_55)),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_3749]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3752,plain,
% 3.01/0.99      ( m1_subset_1(sK0(sK3,sK4,sK2),u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(k4_lattice3(sK3,sK0(sK3,sK4,sK2)),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3750]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4984,plain,
% 3.01/0.99      ( r3_lattice3(sK3,sK4,sK2) = iProver_top ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_4951,c_28,c_35,c_2605,c_2626,c_2631,c_2643,c_2646,
% 3.01/0.99                 c_3252,c_3279,c_3290,c_3354,c_3492,c_3571,c_3592,c_3752]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_8099,plain,
% 3.01/0.99      ( k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_7946,c_28,c_35,c_2605,c_2626,c_2631,c_2643,c_2646,
% 3.01/0.99                 c_3252,c_3279,c_3290,c_3291,c_3354,c_3434,c_3492,c_3571,
% 3.01/0.99                 c_3592,c_3752]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_21,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
% 3.01/0.99      | m1_subset_1(k5_lattice3(X1,X0),u1_struct_0(X1))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | ~ v10_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1) ),
% 3.01/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1512,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(X1)))
% 3.01/0.99      | m1_subset_1(k5_lattice3(X1,X0),u1_struct_0(X1))
% 3.01/0.99      | ~ l3_lattices(X1)
% 3.01/0.99      | v2_struct_0(X1)
% 3.01/0.99      | sK3 != X1 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_21,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1513,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,X0),u1_struct_0(sK3))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1512]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1517,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,X0),u1_struct_0(sK3)) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1513,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2581,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,X0_54),u1_struct_0(sK3)) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1517]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3061,plain,
% 3.01/0.99      ( m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,X0_54),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2581]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_8102,plain,
% 3.01/0.99      ( m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_8099,c_3061]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2634,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2576]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2636,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(k3_lattice3(sK3))) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2634]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4417,plain,
% 3.01/0.99      ( ~ m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3)) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2581]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4418,plain,
% 3.01/0.99      ( m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_4417]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4420,plain,
% 3.01/0.99      ( m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(k3_lattice3(sK3))) != iProver_top
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_4418]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4434,plain,
% 3.01/0.99      ( sK1(k3_lattice3(sK3),X0_55,X0_54) = sK1(k3_lattice3(sK3),X0_55,X0_54) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2590]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4436,plain,
% 3.01/0.99      ( sK1(k3_lattice3(sK3),sK2,sK4) = sK1(k3_lattice3(sK3),sK2,sK4) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_4434]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4557,plain,
% 3.01/0.99      ( X0_54 != X1_54
% 3.01/0.99      | X0_54 = k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X2_54))
% 3.01/0.99      | k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X2_54)) != X1_54 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2591]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_5141,plain,
% 3.01/0.99      ( X0_54 != sK1(k3_lattice3(sK3),X0_55,X1_54)
% 3.01/0.99      | X0_54 = k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X1_54))
% 3.01/0.99      | k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X1_54)) != sK1(k3_lattice3(sK3),X0_55,X1_54) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_4557]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_5503,plain,
% 3.01/0.99      ( sK1(k3_lattice3(sK3),X0_55,X0_54) != sK1(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | sK1(k3_lattice3(sK3),X0_55,X0_54) = k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54))
% 3.01/0.99      | k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)) != sK1(k3_lattice3(sK3),X0_55,X0_54) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_5141]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_5504,plain,
% 3.01/0.99      ( sK1(k3_lattice3(sK3),sK2,sK4) != sK1(k3_lattice3(sK3),sK2,sK4)
% 3.01/0.99      | sK1(k3_lattice3(sK3),sK2,sK4) = k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4))
% 3.01/0.99      | k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) != sK1(k3_lattice3(sK3),sK2,sK4) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_5503]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3263,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(X1_54,u1_struct_0(sK3))
% 3.01/0.99      | X1_54 != X0_54 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2593]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3959,plain,
% 3.01/0.99      ( ~ m1_subset_1(X0_54,u1_struct_0(sK3))
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X1_54),u1_struct_0(sK3))
% 3.01/0.99      | sK1(k3_lattice3(sK3),X0_55,X1_54) != X0_54 ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3263]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_6560,plain,
% 3.01/0.99      ( m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(sK3))
% 3.01/0.99      | ~ m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3))
% 3.01/0.99      | sK1(k3_lattice3(sK3),X0_55,X0_54) != k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)) ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_3959]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_6561,plain,
% 3.01/0.99      ( sK1(k3_lattice3(sK3),X0_55,X0_54) != k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54))
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),X0_55,X0_54),u1_struct_0(sK3)) = iProver_top
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),X0_55,X0_54)),u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_6560]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_6563,plain,
% 3.01/0.99      ( sK1(k3_lattice3(sK3),sK2,sK4) != k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4))
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) = iProver_top
% 3.01/0.99      | m1_subset_1(k5_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)),u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_6561]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_8500,plain,
% 3.01/0.99      ( m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) = iProver_top ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_8102,c_28,c_35,c_2605,c_2626,c_2631,c_2636,c_2643,
% 3.01/0.99                 c_2646,c_3252,c_3279,c_3290,c_3291,c_3354,c_3434,c_3492,
% 3.01/0.99                 c_3571,c_3592,c_3752,c_4420,c_4436,c_5504,c_6563]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_8524,plain,
% 3.01/0.99      ( k4_lattice3(sK3,sK1(k3_lattice3(sK3),sK2,sK4)) = sK1(k3_lattice3(sK3),sK2,sK4) ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_8500,c_3064]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_25,plain,
% 3.01/0.99      ( ~ r3_lattices(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f90]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_6,plain,
% 3.01/0.99      ( ~ r1_lattices(X0,X1,X2)
% 3.01/0.99      | r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ v6_lattices(X0)
% 3.01/0.99      | ~ v8_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v9_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_525,plain,
% 3.01/0.99      ( ~ r1_lattices(X0,X1,X2)
% 3.01/0.99      | r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ v6_lattices(X0)
% 3.01/0.99      | ~ v8_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(resolution,[status(thm)],[c_2,c_6]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_529,plain,
% 3.01/0.99      ( ~ r1_lattices(X0,X1,X2)
% 3.01/0.99      | r3_lattices(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_525,c_6,c_4,c_3,c_2]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_11,plain,
% 3.01/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r1_lattices(X0,X1,X3)
% 3.01/0.99      | ~ r2_hidden(X3,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1095,plain,
% 3.01/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r3_lattices(X3,X4,X5)
% 3.01/0.99      | ~ r2_hidden(X6,X2)
% 3.01/0.99      | ~ m1_subset_1(X5,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X6,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | X0 != X3
% 3.01/0.99      | X1 != X4
% 3.01/0.99      | X6 != X5 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_529,c_11]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1096,plain,
% 3.01/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r3_lattices(X0,X1,X3)
% 3.01/0.99      | ~ r2_hidden(X3,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1095]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1341,plain,
% 3.01/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X3),k4_lattice3(X3,X4),k4_lattice3(X3,X5))
% 3.01/0.99      | ~ r2_hidden(X6,X2)
% 3.01/0.99      | ~ m1_subset_1(X5,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X6,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | X0 != X3
% 3.01/0.99      | X1 != X4
% 3.01/0.99      | X6 != X5 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_25,c_1096]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1342,plain,
% 3.01/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X3))
% 3.01/0.99      | ~ r2_hidden(X3,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1341]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1394,plain,
% 3.01/0.99      ( ~ r3_lattice3(X0,X1,X2)
% 3.01/0.99      | r3_orders_2(k3_lattice3(X0),k4_lattice3(X0,X1),k4_lattice3(X0,X3))
% 3.01/0.99      | ~ r2_hidden(X3,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_1342,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1395,plain,
% 3.01/0.99      ( ~ r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,X2))
% 3.01/0.99      | ~ r2_hidden(X2,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK3))
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1394]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1399,plain,
% 3.01/0.99      ( ~ r3_lattice3(sK3,X0,X1)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0),k4_lattice3(sK3,X2))
% 3.01/0.99      | ~ r2_hidden(X2,X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK3))
% 3.01/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1395,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2585,plain,
% 3.01/0.99      ( ~ r3_lattice3(sK3,X0_54,X0_55)
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,X1_54))
% 3.01/0.99      | ~ r2_hidden(X1_54,X0_55)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(sK3))
% 3.01/0.99      | ~ m1_subset_1(X1_54,u1_struct_0(sK3)) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1399]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_3057,plain,
% 3.01/0.99      ( r3_lattice3(sK3,X0_54,X0_55) != iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,X0_54),k4_lattice3(sK3,X1_54)) = iProver_top
% 3.01/0.99      | r2_hidden(X1_54,X0_55) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(X1_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2585]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4989,plain,
% 3.01/0.99      ( r3_orders_2(k3_lattice3(sK3),k4_lattice3(sK3,sK4),k4_lattice3(sK3,X0_54)) = iProver_top
% 3.01/0.99      | r2_hidden(X0_54,sK2) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_4984,c_3057]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_4990,plain,
% 3.01/0.99      ( r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top
% 3.01/0.99      | r2_hidden(X0_54,sK2) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(light_normalisation,[status(thm)],[c_4989,c_3262]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_5089,plain,
% 3.01/0.99      ( m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top
% 3.01/0.99      | r2_hidden(X0_54,sK2) != iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_4990,c_35]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_5090,plain,
% 3.01/0.99      ( r3_orders_2(k3_lattice3(sK3),sK4,k4_lattice3(sK3,X0_54)) = iProver_top
% 3.01/0.99      | r2_hidden(X0_54,sK2) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_5089]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_8589,plain,
% 3.01/0.99      ( r3_orders_2(k3_lattice3(sK3),sK4,sK1(k3_lattice3(sK3),sK2,sK4)) = iProver_top
% 3.01/0.99      | r2_hidden(sK1(k3_lattice3(sK3),sK2,sK4),sK2) != iProver_top
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(sK3),sK2,sK4),u1_struct_0(sK3)) != iProver_top ),
% 3.01/0.99      inference(superposition,[status(thm)],[c_8524,c_5090]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_15,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | r2_hidden(sK1(X0,X1,X2),X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ l1_orders_2(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1651,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | r2_hidden(sK1(X0,X1,X2),X1)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | k3_lattice3(sK3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_1504]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1652,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0,X1)
% 3.01/0.99      | r2_hidden(sK1(k3_lattice3(sK3),X0,X1),X0)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1651]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2575,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | r2_hidden(sK1(k3_lattice3(sK3),X0_55,X0_54),X0_55)
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1652]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2637,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
% 3.01/0.99      | r2_hidden(sK1(k3_lattice3(sK3),X0_55,X0_54),X0_55) = iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2575]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2639,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
% 3.01/0.99      | r2_hidden(sK1(k3_lattice3(sK3),sK2,sK4),sK2) = iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2637]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_14,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r1_orders_2(X0,X2,sK1(X0,X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ l1_orders_2(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1,plain,
% 3.01/0.99      ( r1_orders_2(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | ~ v3_orders_2(X0)
% 3.01/0.99      | ~ l1_orders_2(X0) ),
% 3.01/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_411,plain,
% 3.01/0.99      ( r1_orders_2(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | ~ l1_orders_2(X0)
% 3.01/0.99      | k3_lattice3(X3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_19]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_412,plain,
% 3.01/0.99      ( r1_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | v2_struct_0(k3_lattice3(X0))
% 3.01/0.99      | ~ l1_orders_2(k3_lattice3(X0)) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_411]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_416,plain,
% 3.01/0.99      ( r1_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_412,c_23,c_18]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_888,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X3),X4,X5)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | ~ m1_subset_1(X4,u1_struct_0(k3_lattice3(X3)))
% 3.01/0.99      | ~ m1_subset_1(X5,u1_struct_0(k3_lattice3(X3)))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | ~ l1_orders_2(X0)
% 3.01/0.99      | X4 != X2
% 3.01/0.99      | sK1(X0,X1,X2) != X5
% 3.01/0.99      | k3_lattice3(X3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_416]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_889,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ m1_subset_1(sK1(k3_lattice3(X0),X1,X2),u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | ~ l1_orders_2(k3_lattice3(X0)) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_888]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_603,plain,
% 3.01/0.99      ( r1_lattice3(X0,X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.01/0.99      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
% 3.01/0.99      | ~ l3_lattices(X3)
% 3.01/0.99      | ~ v10_lattices(X3)
% 3.01/0.99      | v2_struct_0(X3)
% 3.01/0.99      | k3_lattice3(X3) != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_18]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_604,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | m1_subset_1(sK1(k3_lattice3(X0),X1,X2),u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_603]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_893,plain,
% 3.01/0.99      ( v2_struct_0(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0))) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_889,c_18,c_604]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_894,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | ~ v10_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0) ),
% 3.01/0.99      inference(renaming,[status(thm)],[c_893]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1469,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(X0),X1,X2)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(X0),X2,sK1(k3_lattice3(X0),X1,X2))
% 3.01/0.99      | ~ m1_subset_1(X2,u1_struct_0(k3_lattice3(X0)))
% 3.01/0.99      | ~ l3_lattices(X0)
% 3.01/0.99      | v2_struct_0(X0)
% 3.01/0.99      | sK3 != X0 ),
% 3.01/0.99      inference(resolution_lifted,[status(thm)],[c_894,c_30]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1470,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0,X1)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(sK3),X1,sK1(k3_lattice3(sK3),X0,X1))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3)))
% 3.01/0.99      | ~ l3_lattices(sK3)
% 3.01/0.99      | v2_struct_0(sK3) ),
% 3.01/0.99      inference(unflattening,[status(thm)],[c_1469]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_1474,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0,X1)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(sK3),X1,sK1(k3_lattice3(sK3),X0,X1))
% 3.01/0.99      | ~ m1_subset_1(X1,u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(global_propositional_subsumption,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_1470,c_31,c_29]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2582,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54)
% 3.01/0.99      | ~ r3_orders_2(k3_lattice3(sK3),X0_54,sK1(k3_lattice3(sK3),X0_55,X0_54))
% 3.01/0.99      | ~ m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) ),
% 3.01/0.99      inference(subtyping,[status(esa)],[c_1474]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2618,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),X0_55,X0_54) = iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),X0_54,sK1(k3_lattice3(sK3),X0_55,X0_54)) != iProver_top
% 3.01/0.99      | m1_subset_1(X0_54,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(predicate_to_equality,[status(thm)],[c_2582]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(c_2620,plain,
% 3.01/0.99      ( r1_lattice3(k3_lattice3(sK3),sK2,sK4) = iProver_top
% 3.01/0.99      | r3_orders_2(k3_lattice3(sK3),sK4,sK1(k3_lattice3(sK3),sK2,sK4)) != iProver_top
% 3.01/0.99      | m1_subset_1(sK4,u1_struct_0(k3_lattice3(sK3))) != iProver_top ),
% 3.01/0.99      inference(instantiation,[status(thm)],[c_2618]) ).
% 3.01/0.99  
% 3.01/0.99  cnf(contradiction,plain,
% 3.01/0.99      ( $false ),
% 3.01/0.99      inference(minisat,
% 3.01/0.99                [status(thm)],
% 3.01/0.99                [c_8589,c_6563,c_5504,c_4984,c_4436,c_4420,c_3434,c_3291,
% 3.01/0.99                 c_3279,c_3252,c_2639,c_2636,c_2631,c_2626,c_2620,c_2605,
% 3.01/0.99                 c_35,c_28]) ).
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.01/0.99  
% 3.01/0.99  ------                               Statistics
% 3.01/0.99  
% 3.01/0.99  ------ General
% 3.01/0.99  
% 3.01/0.99  abstr_ref_over_cycles:                  0
% 3.01/0.99  abstr_ref_under_cycles:                 0
% 3.01/0.99  gc_basic_clause_elim:                   0
% 3.01/0.99  forced_gc_time:                         0
% 3.01/0.99  parsing_time:                           0.01
% 3.01/0.99  unif_index_cands_time:                  0.
% 3.01/0.99  unif_index_add_time:                    0.
% 3.01/0.99  orderings_time:                         0.
% 3.01/0.99  out_proof_time:                         0.017
% 3.01/0.99  total_time:                             0.278
% 3.01/0.99  num_of_symbols:                         57
% 3.01/0.99  num_of_terms:                           6517
% 3.01/0.99  
% 3.01/0.99  ------ Preprocessing
% 3.01/0.99  
% 3.01/0.99  num_of_splits:                          0
% 3.01/0.99  num_of_split_atoms:                     0
% 3.01/0.99  num_of_reused_defs:                     0
% 3.01/0.99  num_eq_ax_congr_red:                    43
% 3.01/0.99  num_of_sem_filtered_clauses:            1
% 3.01/0.99  num_of_subtypes:                        4
% 3.01/0.99  monotx_restored_types:                  0
% 3.01/0.99  sat_num_of_epr_types:                   0
% 3.01/0.99  sat_num_of_non_cyclic_types:            0
% 3.01/0.99  sat_guarded_non_collapsed_types:        1
% 3.01/0.99  num_pure_diseq_elim:                    0
% 3.01/0.99  simp_replaced_by:                       0
% 3.01/0.99  res_preprocessed:                       98
% 3.01/0.99  prep_upred:                             0
% 3.01/0.99  prep_unflattend:                        99
% 3.01/0.99  smt_new_axioms:                         0
% 3.01/0.99  pred_elim_cands:                        5
% 3.01/0.99  pred_elim:                              11
% 3.01/0.99  pred_elim_cl:                           13
% 3.01/0.99  pred_elim_cycles:                       19
% 3.01/0.99  merged_defs:                            8
% 3.01/0.99  merged_defs_ncl:                        0
% 3.01/0.99  bin_hyper_res:                          8
% 3.01/0.99  prep_cycles:                            4
% 3.01/0.99  pred_elim_time:                         0.04
% 3.01/0.99  splitting_time:                         0.
% 3.01/0.99  sem_filter_time:                        0.
% 3.01/0.99  monotx_time:                            0.
% 3.01/0.99  subtype_inf_time:                       0.
% 3.01/0.99  
% 3.01/0.99  ------ Problem properties
% 3.01/0.99  
% 3.01/0.99  clauses:                                17
% 3.01/0.99  conjectures:                            3
% 3.01/0.99  epr:                                    0
% 3.01/0.99  horn:                                   12
% 3.01/0.99  ground:                                 3
% 3.01/0.99  unary:                                  1
% 3.01/0.99  binary:                                 6
% 3.01/0.99  lits:                                   49
% 3.01/0.99  lits_eq:                                2
% 3.01/0.99  fd_pure:                                0
% 3.01/0.99  fd_pseudo:                              0
% 3.01/0.99  fd_cond:                                0
% 3.01/0.99  fd_pseudo_cond:                         0
% 3.01/0.99  ac_symbols:                             0
% 3.01/0.99  
% 3.01/0.99  ------ Propositional Solver
% 3.01/0.99  
% 3.01/0.99  prop_solver_calls:                      35
% 3.01/0.99  prop_fast_solver_calls:                 1475
% 3.01/0.99  smt_solver_calls:                       0
% 3.01/0.99  smt_fast_solver_calls:                  0
% 3.01/0.99  prop_num_of_clauses:                    2678
% 3.01/0.99  prop_preprocess_simplified:             5898
% 3.01/0.99  prop_fo_subsumed:                       54
% 3.01/0.99  prop_solver_time:                       0.
% 3.01/0.99  smt_solver_time:                        0.
% 3.01/0.99  smt_fast_solver_time:                   0.
% 3.01/0.99  prop_fast_solver_time:                  0.
% 3.01/0.99  prop_unsat_core_time:                   0.
% 3.01/0.99  
% 3.01/0.99  ------ QBF
% 3.01/0.99  
% 3.01/0.99  qbf_q_res:                              0
% 3.01/0.99  qbf_num_tautologies:                    0
% 3.01/0.99  qbf_prep_cycles:                        0
% 3.01/0.99  
% 3.01/0.99  ------ BMC1
% 3.01/0.99  
% 3.01/0.99  bmc1_current_bound:                     -1
% 3.01/0.99  bmc1_last_solved_bound:                 -1
% 3.01/0.99  bmc1_unsat_core_size:                   -1
% 3.01/0.99  bmc1_unsat_core_parents_size:           -1
% 3.01/0.99  bmc1_merge_next_fun:                    0
% 3.01/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.01/0.99  
% 3.01/0.99  ------ Instantiation
% 3.01/0.99  
% 3.01/0.99  inst_num_of_clauses:                    572
% 3.01/0.99  inst_num_in_passive:                    84
% 3.01/0.99  inst_num_in_active:                     356
% 3.01/0.99  inst_num_in_unprocessed:                132
% 3.01/0.99  inst_num_of_loops:                      450
% 3.01/0.99  inst_num_of_learning_restarts:          0
% 3.01/0.99  inst_num_moves_active_passive:          85
% 3.01/0.99  inst_lit_activity:                      0
% 3.01/0.99  inst_lit_activity_moves:                0
% 3.01/0.99  inst_num_tautologies:                   0
% 3.01/0.99  inst_num_prop_implied:                  0
% 3.01/0.99  inst_num_existing_simplified:           0
% 3.01/0.99  inst_num_eq_res_simplified:             0
% 3.01/0.99  inst_num_child_elim:                    0
% 3.01/0.99  inst_num_of_dismatching_blockings:      249
% 3.01/0.99  inst_num_of_non_proper_insts:           827
% 3.01/0.99  inst_num_of_duplicates:                 0
% 3.01/0.99  inst_inst_num_from_inst_to_res:         0
% 3.01/0.99  inst_dismatching_checking_time:         0.
% 3.01/0.99  
% 3.01/0.99  ------ Resolution
% 3.01/0.99  
% 3.01/0.99  res_num_of_clauses:                     0
% 3.01/0.99  res_num_in_passive:                     0
% 3.01/0.99  res_num_in_active:                      0
% 3.01/0.99  res_num_of_loops:                       102
% 3.01/0.99  res_forward_subset_subsumed:            55
% 3.01/0.99  res_backward_subset_subsumed:           0
% 3.01/0.99  res_forward_subsumed:                   1
% 3.01/0.99  res_backward_subsumed:                  0
% 3.01/0.99  res_forward_subsumption_resolution:     6
% 3.01/0.99  res_backward_subsumption_resolution:    0
% 3.01/0.99  res_clause_to_clause_subsumption:       1780
% 3.01/0.99  res_orphan_elimination:                 0
% 3.01/0.99  res_tautology_del:                      140
% 3.01/0.99  res_num_eq_res_simplified:              0
% 3.01/0.99  res_num_sel_changes:                    0
% 3.01/0.99  res_moves_from_active_to_pass:          0
% 3.01/0.99  
% 3.01/0.99  ------ Superposition
% 3.01/0.99  
% 3.01/0.99  sup_time_total:                         0.
% 3.01/0.99  sup_time_generating:                    0.
% 3.01/0.99  sup_time_sim_full:                      0.
% 3.01/0.99  sup_time_sim_immed:                     0.
% 3.01/0.99  
% 3.01/0.99  sup_num_of_clauses:                     160
% 3.01/0.99  sup_num_in_active:                      88
% 3.01/0.99  sup_num_in_passive:                     72
% 3.01/0.99  sup_num_of_loops:                       89
% 3.01/0.99  sup_fw_superposition:                   156
% 3.01/0.99  sup_bw_superposition:                   51
% 3.01/0.99  sup_immediate_simplified:               80
% 3.01/0.99  sup_given_eliminated:                   0
% 3.01/0.99  comparisons_done:                       0
% 3.01/0.99  comparisons_avoided:                    0
% 3.01/0.99  
% 3.01/0.99  ------ Simplifications
% 3.01/0.99  
% 3.01/0.99  
% 3.01/0.99  sim_fw_subset_subsumed:                 3
% 3.01/0.99  sim_bw_subset_subsumed:                 0
% 3.01/0.99  sim_fw_subsumed:                        1
% 3.01/0.99  sim_bw_subsumed:                        0
% 3.01/0.99  sim_fw_subsumption_res:                 0
% 3.01/0.99  sim_bw_subsumption_res:                 0
% 3.01/0.99  sim_tautology_del:                      3
% 3.01/0.99  sim_eq_tautology_del:                   36
% 3.01/0.99  sim_eq_res_simp:                        0
% 3.01/0.99  sim_fw_demodulated:                     0
% 3.01/0.99  sim_bw_demodulated:                     2
% 3.01/0.99  sim_light_normalised:                   77
% 3.01/0.99  sim_joinable_taut:                      0
% 3.01/0.99  sim_joinable_simp:                      0
% 3.01/0.99  sim_ac_normalised:                      0
% 3.01/0.99  sim_smt_subsumption:                    0
% 3.01/0.99  
%------------------------------------------------------------------------------
