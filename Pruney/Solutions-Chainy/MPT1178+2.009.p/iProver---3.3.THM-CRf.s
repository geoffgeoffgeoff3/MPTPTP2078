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
% DateTime   : Thu Dec  3 12:12:59 EST 2020

% Result     : Theorem 1.25s
% Output     : CNFRefutation 1.25s
% Verified   : 
% Statistics : Number of formulae       :  104 ( 575 expanded)
%              Number of clauses        :   53 ( 138 expanded)
%              Number of leaves         :   14 ( 157 expanded)
%              Depth                    :   23
%              Number of atoms          :  456 (3253 expanded)
%              Number of equality atoms :   76 ( 532 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   16 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(X0,k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f47,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
     => v1_xboole_0(X0) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f14,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | ? [X1] : r2_hidden(X1,X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f27])).

fof(f40,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k4_orders_2(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f53,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
         => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
           => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1)) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f26,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f38,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
     => ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,sK4))
        & m1_orders_1(sK4,k1_orders_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
            & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) )
      & l1_orders_2(sK3)
      & v5_orders_2(sK3)
      & v4_orders_2(sK3)
      & v3_orders_2(sK3)
      & ~ v2_struct_0(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4))
    & m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))
    & l1_orders_2(sK3)
    & v5_orders_2(sK3)
    & v4_orders_2(sK3)
    & v3_orders_2(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f26,f38,f37])).

fof(f60,plain,(
    m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f39])).

fof(f59,plain,(
    l1_orders_2(sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f55,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f56,plain,(
    v3_orders_2(sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f57,plain,(
    v4_orders_2(sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f58,plain,(
    v5_orders_2(sK3) ),
    inference(cnf_transformation,[],[f39])).

fof(f61,plain,(
    k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) ),
    inference(cnf_transformation,[],[f39])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f29])).

fof(f44,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
         => ! [X2] :
              ( k4_orders_2(X0,X1) = X2
            <=> ! [X3] :
                  ( r2_hidden(X3,X2)
                <=> m2_orders_2(X3,X0,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k4_orders_2(X0,X1) = X2
            <=> ! [X3] :
                  ( r2_hidden(X3,X2)
                <=> m2_orders_2(X3,X0,X1) ) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k4_orders_2(X0,X1) = X2
            <=> ! [X3] :
                  ( r2_hidden(X3,X2)
                <=> m2_orders_2(X3,X0,X1) ) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f17])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k4_orders_2(X0,X1) = X2
                | ? [X3] :
                    ( ( ~ m2_orders_2(X3,X0,X1)
                      | ~ r2_hidden(X3,X2) )
                    & ( m2_orders_2(X3,X0,X1)
                      | r2_hidden(X3,X2) ) ) )
              & ( ! [X3] :
                    ( ( r2_hidden(X3,X2)
                      | ~ m2_orders_2(X3,X0,X1) )
                    & ( m2_orders_2(X3,X0,X1)
                      | ~ r2_hidden(X3,X2) ) )
                | k4_orders_2(X0,X1) != X2 ) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k4_orders_2(X0,X1) = X2
                | ? [X3] :
                    ( ( ~ m2_orders_2(X3,X0,X1)
                      | ~ r2_hidden(X3,X2) )
                    & ( m2_orders_2(X3,X0,X1)
                      | r2_hidden(X3,X2) ) ) )
              & ( ! [X4] :
                    ( ( r2_hidden(X4,X2)
                      | ~ m2_orders_2(X4,X0,X1) )
                    & ( m2_orders_2(X4,X0,X1)
                      | ~ r2_hidden(X4,X2) ) )
                | k4_orders_2(X0,X1) != X2 ) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f31])).

fof(f33,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ m2_orders_2(X3,X0,X1)
            | ~ r2_hidden(X3,X2) )
          & ( m2_orders_2(X3,X0,X1)
            | r2_hidden(X3,X2) ) )
     => ( ( ~ m2_orders_2(sK1(X0,X1,X2),X0,X1)
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( m2_orders_2(sK1(X0,X1,X2),X0,X1)
          | r2_hidden(sK1(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k4_orders_2(X0,X1) = X2
                | ( ( ~ m2_orders_2(sK1(X0,X1,X2),X0,X1)
                    | ~ r2_hidden(sK1(X0,X1,X2),X2) )
                  & ( m2_orders_2(sK1(X0,X1,X2),X0,X1)
                    | r2_hidden(sK1(X0,X1,X2),X2) ) ) )
              & ( ! [X4] :
                    ( ( r2_hidden(X4,X2)
                      | ~ m2_orders_2(X4,X0,X1) )
                    & ( m2_orders_2(X4,X0,X1)
                      | ~ r2_hidden(X4,X2) ) )
                | k4_orders_2(X0,X1) != X2 ) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f32,f33])).

fof(f48,plain,(
    ! [X4,X2,X0,X1] :
      ( m2_orders_2(X4,X0,X1)
      | ~ r2_hidden(X4,X2)
      | k4_orders_2(X0,X1) != X2
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f65,plain,(
    ! [X4,X0,X1] :
      ( m2_orders_2(X4,X0,X1)
      | ~ r2_hidden(X4,k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f48])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m2_orders_2(X2,X0,X1)
             => ! [X3] :
                  ( m2_orders_2(X3,X0,X1)
                 => ~ r1_xboole_0(X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ~ r1_xboole_0(X2,X3)
                  | ~ m2_orders_2(X3,X0,X1) )
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ~ r1_xboole_0(X2,X3)
                  | ~ m2_orders_2(X3,X0,X1) )
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f54,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r1_xboole_0(X2,X3)
      | ~ m2_orders_2(X3,X0,X1)
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f5,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f5])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

cnf(c_7,plain,
    ( r1_tarski(X0,k3_tarski(X1))
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_13,plain,
    ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ v1_xboole_0(k4_orders_2(X1,X0)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_16,negated_conjecture,
    ( m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_453,plain,
    ( v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v1_xboole_0(k4_orders_2(X0,X1))
    | k1_orders_1(u1_struct_0(X0)) != k1_orders_1(u1_struct_0(sK3))
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_16])).

cnf(c_454,plain,
    ( v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v1_xboole_0(k4_orders_2(X0,sK4))
    | k1_orders_1(u1_struct_0(X0)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_453])).

cnf(c_17,negated_conjecture,
    ( l1_orders_2(sK3) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_578,plain,
    ( v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ v1_xboole_0(k4_orders_2(X0,sK4))
    | k1_orders_1(u1_struct_0(X0)) != k1_orders_1(u1_struct_0(sK3))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_454,c_17])).

cnf(c_579,plain,
    ( v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3)
    | ~ v1_xboole_0(k4_orders_2(sK3,sK4))
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_578])).

cnf(c_21,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_20,negated_conjecture,
    ( v3_orders_2(sK3) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_19,negated_conjecture,
    ( v4_orders_2(sK3) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_18,negated_conjecture,
    ( v5_orders_2(sK3) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_581,plain,
    ( ~ v1_xboole_0(k4_orders_2(sK3,sK4))
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_579,c_21,c_20,c_19,c_18])).

cnf(c_749,plain,
    ( r2_hidden(sK0(X0),X0)
    | k4_orders_2(sK3,sK4) != X0
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(resolution_lifted,[status(thm)],[c_0,c_581])).

cnf(c_750,plain,
    ( r2_hidden(sK0(k4_orders_2(sK3,sK4)),k4_orders_2(sK3,sK4)) ),
    inference(unflattening,[status(thm)],[c_749])).

cnf(c_760,plain,
    ( r1_tarski(X0,k3_tarski(X1))
    | k4_orders_2(sK3,sK4) != X1
    | sK0(k4_orders_2(sK3,sK4)) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_750])).

cnf(c_761,plain,
    ( r1_tarski(sK0(k4_orders_2(sK3,sK4)),k3_tarski(k4_orders_2(sK3,sK4))) ),
    inference(unflattening,[status(thm)],[c_760])).

cnf(c_1124,plain,
    ( r1_tarski(sK0(k4_orders_2(sK3,sK4)),k3_tarski(k4_orders_2(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_761])).

cnf(c_15,negated_conjecture,
    ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1142,plain,
    ( r1_tarski(sK0(k4_orders_2(sK3,sK4)),k1_xboole_0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1124,c_15])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1128,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1658,plain,
    ( sK0(k4_orders_2(sK3,sK4)) = k1_xboole_0
    | r1_tarski(k1_xboole_0,sK0(k4_orders_2(sK3,sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1142,c_1128])).

cnf(c_5,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1126,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1691,plain,
    ( sK0(k4_orders_2(sK3,sK4)) = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1658,c_1126])).

cnf(c_11,plain,
    ( m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,k4_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_393,plain,
    ( m2_orders_2(X0,X1,X2)
    | ~ r2_hidden(X0,k4_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_16])).

cnf(c_394,plain,
    ( m2_orders_2(X0,X1,sK4)
    | ~ r2_hidden(X0,k4_orders_2(X1,sK4))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_393])).

cnf(c_675,plain,
    ( m2_orders_2(X0,X1,sK4)
    | ~ r2_hidden(X0,k4_orders_2(X1,sK4))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_394,c_17])).

cnf(c_676,plain,
    ( m2_orders_2(X0,sK3,sK4)
    | ~ r2_hidden(X0,k4_orders_2(sK3,sK4))
    | v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3)
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_675])).

cnf(c_680,plain,
    ( m2_orders_2(X0,sK3,sK4)
    | ~ r2_hidden(X0,k4_orders_2(sK3,sK4))
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_676,c_21,c_20,c_19,c_18])).

cnf(c_796,plain,
    ( m2_orders_2(X0,sK3,sK4)
    | k4_orders_2(sK3,sK4) != k4_orders_2(sK3,sK4)
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3))
    | sK0(k4_orders_2(sK3,sK4)) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_750,c_680])).

cnf(c_797,plain,
    ( m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) ),
    inference(unflattening,[status(thm)],[c_796])).

cnf(c_1121,plain,
    ( m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_797])).

cnf(c_1692,plain,
    ( m2_orders_2(k1_xboole_0,sK3,sK4) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1691,c_1121])).

cnf(c_14,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(X3,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ r1_xboole_0(X3,X0)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_360,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(X3,X1,X2)
    | ~ r1_xboole_0(X3,X0)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_16])).

cnf(c_361,plain,
    ( ~ m2_orders_2(X0,X1,sK4)
    | ~ m2_orders_2(X2,X1,sK4)
    | ~ r1_xboole_0(X0,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_360])).

cnf(c_696,plain,
    ( ~ m2_orders_2(X0,X1,sK4)
    | ~ m2_orders_2(X2,X1,sK4)
    | ~ r1_xboole_0(X0,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_361,c_17])).

cnf(c_697,plain,
    ( ~ m2_orders_2(X0,sK3,sK4)
    | ~ m2_orders_2(X1,sK3,sK4)
    | ~ r1_xboole_0(X0,X1)
    | v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3)
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_696])).

cnf(c_701,plain,
    ( ~ m2_orders_2(X0,sK3,sK4)
    | ~ m2_orders_2(X1,sK3,sK4)
    | ~ r1_xboole_0(X0,X1)
    | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_697,c_21,c_20,c_19,c_18])).

cnf(c_833,plain,
    ( ~ m2_orders_2(X0,sK3,sK4)
    | ~ m2_orders_2(X1,sK3,sK4)
    | ~ r1_xboole_0(X0,X1) ),
    inference(equality_resolution_simp,[status(thm)],[c_701])).

cnf(c_1120,plain,
    ( m2_orders_2(X0,sK3,sK4) != iProver_top
    | m2_orders_2(X1,sK3,sK4) != iProver_top
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_833])).

cnf(c_1813,plain,
    ( m2_orders_2(X0,sK3,sK4) != iProver_top
    | r1_xboole_0(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1692,c_1120])).

cnf(c_6,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_52,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1,plain,
    ( ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1238,plain,
    ( ~ r1_xboole_0(X0,k1_xboole_0)
    | r1_xboole_0(k1_xboole_0,X0) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1239,plain,
    ( r1_xboole_0(X0,k1_xboole_0) != iProver_top
    | r1_xboole_0(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1238])).

cnf(c_1861,plain,
    ( m2_orders_2(X0,sK3,sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1813,c_52,c_1239])).

cnf(c_1869,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_1692,c_1861])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n004.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 19:41:23 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.25/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.25/0.99  
% 1.25/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.25/0.99  
% 1.25/0.99  ------  iProver source info
% 1.25/0.99  
% 1.25/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.25/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.25/0.99  git: non_committed_changes: false
% 1.25/0.99  git: last_make_outside_of_git: false
% 1.25/0.99  
% 1.25/0.99  ------ 
% 1.25/0.99  
% 1.25/0.99  ------ Input Options
% 1.25/0.99  
% 1.25/0.99  --out_options                           all
% 1.25/0.99  --tptp_safe_out                         true
% 1.25/0.99  --problem_path                          ""
% 1.25/0.99  --include_path                          ""
% 1.25/0.99  --clausifier                            res/vclausify_rel
% 1.25/0.99  --clausifier_options                    --mode clausify
% 1.25/0.99  --stdin                                 false
% 1.25/0.99  --stats_out                             all
% 1.25/0.99  
% 1.25/0.99  ------ General Options
% 1.25/0.99  
% 1.25/0.99  --fof                                   false
% 1.25/0.99  --time_out_real                         305.
% 1.25/0.99  --time_out_virtual                      -1.
% 1.25/0.99  --symbol_type_check                     false
% 1.25/0.99  --clausify_out                          false
% 1.25/0.99  --sig_cnt_out                           false
% 1.25/0.99  --trig_cnt_out                          false
% 1.25/0.99  --trig_cnt_out_tolerance                1.
% 1.25/0.99  --trig_cnt_out_sk_spl                   false
% 1.25/0.99  --abstr_cl_out                          false
% 1.25/0.99  
% 1.25/0.99  ------ Global Options
% 1.25/0.99  
% 1.25/0.99  --schedule                              default
% 1.25/0.99  --add_important_lit                     false
% 1.25/0.99  --prop_solver_per_cl                    1000
% 1.25/0.99  --min_unsat_core                        false
% 1.25/0.99  --soft_assumptions                      false
% 1.25/0.99  --soft_lemma_size                       3
% 1.25/0.99  --prop_impl_unit_size                   0
% 1.25/0.99  --prop_impl_unit                        []
% 1.25/0.99  --share_sel_clauses                     true
% 1.25/0.99  --reset_solvers                         false
% 1.25/0.99  --bc_imp_inh                            [conj_cone]
% 1.25/0.99  --conj_cone_tolerance                   3.
% 1.25/0.99  --extra_neg_conj                        none
% 1.25/0.99  --large_theory_mode                     true
% 1.25/0.99  --prolific_symb_bound                   200
% 1.25/0.99  --lt_threshold                          2000
% 1.25/0.99  --clause_weak_htbl                      true
% 1.25/0.99  --gc_record_bc_elim                     false
% 1.25/0.99  
% 1.25/0.99  ------ Preprocessing Options
% 1.25/0.99  
% 1.25/0.99  --preprocessing_flag                    true
% 1.25/0.99  --time_out_prep_mult                    0.1
% 1.25/0.99  --splitting_mode                        input
% 1.25/0.99  --splitting_grd                         true
% 1.25/0.99  --splitting_cvd                         false
% 1.25/0.99  --splitting_cvd_svl                     false
% 1.25/0.99  --splitting_nvd                         32
% 1.25/0.99  --sub_typing                            true
% 1.25/0.99  --prep_gs_sim                           true
% 1.25/0.99  --prep_unflatten                        true
% 1.25/0.99  --prep_res_sim                          true
% 1.25/0.99  --prep_upred                            true
% 1.25/0.99  --prep_sem_filter                       exhaustive
% 1.25/0.99  --prep_sem_filter_out                   false
% 1.25/0.99  --pred_elim                             true
% 1.25/0.99  --res_sim_input                         true
% 1.25/0.99  --eq_ax_congr_red                       true
% 1.25/0.99  --pure_diseq_elim                       true
% 1.25/0.99  --brand_transform                       false
% 1.25/0.99  --non_eq_to_eq                          false
% 1.25/0.99  --prep_def_merge                        true
% 1.25/0.99  --prep_def_merge_prop_impl              false
% 1.25/0.99  --prep_def_merge_mbd                    true
% 1.25/0.99  --prep_def_merge_tr_red                 false
% 1.25/0.99  --prep_def_merge_tr_cl                  false
% 1.25/0.99  --smt_preprocessing                     true
% 1.25/0.99  --smt_ac_axioms                         fast
% 1.25/0.99  --preprocessed_out                      false
% 1.25/0.99  --preprocessed_stats                    false
% 1.25/0.99  
% 1.25/0.99  ------ Abstraction refinement Options
% 1.25/0.99  
% 1.25/0.99  --abstr_ref                             []
% 1.25/0.99  --abstr_ref_prep                        false
% 1.25/0.99  --abstr_ref_until_sat                   false
% 1.25/0.99  --abstr_ref_sig_restrict                funpre
% 1.25/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.25/0.99  --abstr_ref_under                       []
% 1.25/0.99  
% 1.25/0.99  ------ SAT Options
% 1.25/0.99  
% 1.25/0.99  --sat_mode                              false
% 1.25/0.99  --sat_fm_restart_options                ""
% 1.25/0.99  --sat_gr_def                            false
% 1.25/0.99  --sat_epr_types                         true
% 1.25/0.99  --sat_non_cyclic_types                  false
% 1.25/0.99  --sat_finite_models                     false
% 1.25/0.99  --sat_fm_lemmas                         false
% 1.25/0.99  --sat_fm_prep                           false
% 1.25/0.99  --sat_fm_uc_incr                        true
% 1.25/0.99  --sat_out_model                         small
% 1.25/0.99  --sat_out_clauses                       false
% 1.25/0.99  
% 1.25/0.99  ------ QBF Options
% 1.25/0.99  
% 1.25/0.99  --qbf_mode                              false
% 1.25/0.99  --qbf_elim_univ                         false
% 1.25/0.99  --qbf_dom_inst                          none
% 1.25/0.99  --qbf_dom_pre_inst                      false
% 1.25/0.99  --qbf_sk_in                             false
% 1.25/0.99  --qbf_pred_elim                         true
% 1.25/0.99  --qbf_split                             512
% 1.25/0.99  
% 1.25/0.99  ------ BMC1 Options
% 1.25/0.99  
% 1.25/0.99  --bmc1_incremental                      false
% 1.25/0.99  --bmc1_axioms                           reachable_all
% 1.25/0.99  --bmc1_min_bound                        0
% 1.25/0.99  --bmc1_max_bound                        -1
% 1.25/0.99  --bmc1_max_bound_default                -1
% 1.25/0.99  --bmc1_symbol_reachability              true
% 1.25/0.99  --bmc1_property_lemmas                  false
% 1.25/0.99  --bmc1_k_induction                      false
% 1.25/0.99  --bmc1_non_equiv_states                 false
% 1.25/0.99  --bmc1_deadlock                         false
% 1.25/0.99  --bmc1_ucm                              false
% 1.25/0.99  --bmc1_add_unsat_core                   none
% 1.25/0.99  --bmc1_unsat_core_children              false
% 1.25/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.25/0.99  --bmc1_out_stat                         full
% 1.25/0.99  --bmc1_ground_init                      false
% 1.25/0.99  --bmc1_pre_inst_next_state              false
% 1.25/0.99  --bmc1_pre_inst_state                   false
% 1.25/0.99  --bmc1_pre_inst_reach_state             false
% 1.25/0.99  --bmc1_out_unsat_core                   false
% 1.25/0.99  --bmc1_aig_witness_out                  false
% 1.25/0.99  --bmc1_verbose                          false
% 1.25/0.99  --bmc1_dump_clauses_tptp                false
% 1.25/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.25/0.99  --bmc1_dump_file                        -
% 1.25/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.25/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.25/0.99  --bmc1_ucm_extend_mode                  1
% 1.25/0.99  --bmc1_ucm_init_mode                    2
% 1.25/0.99  --bmc1_ucm_cone_mode                    none
% 1.25/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.25/0.99  --bmc1_ucm_relax_model                  4
% 1.25/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.25/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.25/0.99  --bmc1_ucm_layered_model                none
% 1.25/0.99  --bmc1_ucm_max_lemma_size               10
% 1.25/0.99  
% 1.25/0.99  ------ AIG Options
% 1.25/0.99  
% 1.25/0.99  --aig_mode                              false
% 1.25/0.99  
% 1.25/0.99  ------ Instantiation Options
% 1.25/0.99  
% 1.25/0.99  --instantiation_flag                    true
% 1.25/0.99  --inst_sos_flag                         false
% 1.25/0.99  --inst_sos_phase                        true
% 1.25/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.25/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.25/0.99  --inst_lit_sel_side                     num_symb
% 1.25/0.99  --inst_solver_per_active                1400
% 1.25/0.99  --inst_solver_calls_frac                1.
% 1.25/0.99  --inst_passive_queue_type               priority_queues
% 1.25/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.25/0.99  --inst_passive_queues_freq              [25;2]
% 1.25/0.99  --inst_dismatching                      true
% 1.25/0.99  --inst_eager_unprocessed_to_passive     true
% 1.25/0.99  --inst_prop_sim_given                   true
% 1.25/0.99  --inst_prop_sim_new                     false
% 1.25/0.99  --inst_subs_new                         false
% 1.25/0.99  --inst_eq_res_simp                      false
% 1.25/0.99  --inst_subs_given                       false
% 1.25/0.99  --inst_orphan_elimination               true
% 1.25/0.99  --inst_learning_loop_flag               true
% 1.25/0.99  --inst_learning_start                   3000
% 1.25/0.99  --inst_learning_factor                  2
% 1.25/0.99  --inst_start_prop_sim_after_learn       3
% 1.25/0.99  --inst_sel_renew                        solver
% 1.25/0.99  --inst_lit_activity_flag                true
% 1.25/0.99  --inst_restr_to_given                   false
% 1.25/0.99  --inst_activity_threshold               500
% 1.25/0.99  --inst_out_proof                        true
% 1.25/0.99  
% 1.25/0.99  ------ Resolution Options
% 1.25/0.99  
% 1.25/0.99  --resolution_flag                       true
% 1.25/0.99  --res_lit_sel                           adaptive
% 1.25/0.99  --res_lit_sel_side                      none
% 1.25/0.99  --res_ordering                          kbo
% 1.25/0.99  --res_to_prop_solver                    active
% 1.25/0.99  --res_prop_simpl_new                    false
% 1.25/0.99  --res_prop_simpl_given                  true
% 1.25/0.99  --res_passive_queue_type                priority_queues
% 1.25/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.25/0.99  --res_passive_queues_freq               [15;5]
% 1.25/0.99  --res_forward_subs                      full
% 1.25/0.99  --res_backward_subs                     full
% 1.25/0.99  --res_forward_subs_resolution           true
% 1.25/0.99  --res_backward_subs_resolution          true
% 1.25/0.99  --res_orphan_elimination                true
% 1.25/0.99  --res_time_limit                        2.
% 1.25/0.99  --res_out_proof                         true
% 1.25/0.99  
% 1.25/0.99  ------ Superposition Options
% 1.25/0.99  
% 1.25/0.99  --superposition_flag                    true
% 1.25/0.99  --sup_passive_queue_type                priority_queues
% 1.25/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.25/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.25/0.99  --demod_completeness_check              fast
% 1.25/0.99  --demod_use_ground                      true
% 1.25/0.99  --sup_to_prop_solver                    passive
% 1.25/0.99  --sup_prop_simpl_new                    true
% 1.25/0.99  --sup_prop_simpl_given                  true
% 1.25/0.99  --sup_fun_splitting                     false
% 1.25/0.99  --sup_smt_interval                      50000
% 1.25/0.99  
% 1.25/0.99  ------ Superposition Simplification Setup
% 1.25/0.99  
% 1.25/0.99  --sup_indices_passive                   []
% 1.25/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.25/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.25/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.25/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.25/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.25/0.99  --sup_full_bw                           [BwDemod]
% 1.25/0.99  --sup_immed_triv                        [TrivRules]
% 1.25/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.25/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.25/0.99  --sup_immed_bw_main                     []
% 1.25/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.25/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.25/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.25/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.25/0.99  
% 1.25/0.99  ------ Combination Options
% 1.25/0.99  
% 1.25/0.99  --comb_res_mult                         3
% 1.25/0.99  --comb_sup_mult                         2
% 1.25/0.99  --comb_inst_mult                        10
% 1.25/0.99  
% 1.25/0.99  ------ Debug Options
% 1.25/0.99  
% 1.25/0.99  --dbg_backtrace                         false
% 1.25/0.99  --dbg_dump_prop_clauses                 false
% 1.25/0.99  --dbg_dump_prop_clauses_file            -
% 1.25/0.99  --dbg_out_stat                          false
% 1.25/0.99  ------ Parsing...
% 1.25/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.25/0.99  
% 1.25/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 9 0s  sf_e  pe_s  pe_e 
% 1.25/0.99  
% 1.25/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.25/0.99  
% 1.25/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.25/0.99  ------ Proving...
% 1.25/0.99  ------ Problem Properties 
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  clauses                                 12
% 1.25/0.99  conjectures                             1
% 1.25/0.99  EPR                                     6
% 1.25/0.99  Horn                                    11
% 1.25/0.99  unary                                   7
% 1.25/0.99  binary                                  2
% 1.25/0.99  lits                                    20
% 1.25/0.99  lits eq                                 3
% 1.25/0.99  fd_pure                                 0
% 1.25/0.99  fd_pseudo                               0
% 1.25/0.99  fd_cond                                 1
% 1.25/0.99  fd_pseudo_cond                          1
% 1.25/0.99  AC symbols                              0
% 1.25/0.99  
% 1.25/0.99  ------ Schedule dynamic 5 is on 
% 1.25/0.99  
% 1.25/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  ------ 
% 1.25/0.99  Current options:
% 1.25/0.99  ------ 
% 1.25/0.99  
% 1.25/0.99  ------ Input Options
% 1.25/0.99  
% 1.25/0.99  --out_options                           all
% 1.25/0.99  --tptp_safe_out                         true
% 1.25/0.99  --problem_path                          ""
% 1.25/0.99  --include_path                          ""
% 1.25/0.99  --clausifier                            res/vclausify_rel
% 1.25/0.99  --clausifier_options                    --mode clausify
% 1.25/0.99  --stdin                                 false
% 1.25/0.99  --stats_out                             all
% 1.25/0.99  
% 1.25/0.99  ------ General Options
% 1.25/0.99  
% 1.25/0.99  --fof                                   false
% 1.25/0.99  --time_out_real                         305.
% 1.25/0.99  --time_out_virtual                      -1.
% 1.25/0.99  --symbol_type_check                     false
% 1.25/0.99  --clausify_out                          false
% 1.25/0.99  --sig_cnt_out                           false
% 1.25/0.99  --trig_cnt_out                          false
% 1.25/0.99  --trig_cnt_out_tolerance                1.
% 1.25/0.99  --trig_cnt_out_sk_spl                   false
% 1.25/0.99  --abstr_cl_out                          false
% 1.25/0.99  
% 1.25/0.99  ------ Global Options
% 1.25/0.99  
% 1.25/0.99  --schedule                              default
% 1.25/0.99  --add_important_lit                     false
% 1.25/0.99  --prop_solver_per_cl                    1000
% 1.25/0.99  --min_unsat_core                        false
% 1.25/0.99  --soft_assumptions                      false
% 1.25/0.99  --soft_lemma_size                       3
% 1.25/0.99  --prop_impl_unit_size                   0
% 1.25/0.99  --prop_impl_unit                        []
% 1.25/0.99  --share_sel_clauses                     true
% 1.25/0.99  --reset_solvers                         false
% 1.25/0.99  --bc_imp_inh                            [conj_cone]
% 1.25/0.99  --conj_cone_tolerance                   3.
% 1.25/0.99  --extra_neg_conj                        none
% 1.25/0.99  --large_theory_mode                     true
% 1.25/0.99  --prolific_symb_bound                   200
% 1.25/0.99  --lt_threshold                          2000
% 1.25/0.99  --clause_weak_htbl                      true
% 1.25/0.99  --gc_record_bc_elim                     false
% 1.25/0.99  
% 1.25/0.99  ------ Preprocessing Options
% 1.25/0.99  
% 1.25/0.99  --preprocessing_flag                    true
% 1.25/0.99  --time_out_prep_mult                    0.1
% 1.25/0.99  --splitting_mode                        input
% 1.25/0.99  --splitting_grd                         true
% 1.25/0.99  --splitting_cvd                         false
% 1.25/0.99  --splitting_cvd_svl                     false
% 1.25/0.99  --splitting_nvd                         32
% 1.25/0.99  --sub_typing                            true
% 1.25/0.99  --prep_gs_sim                           true
% 1.25/0.99  --prep_unflatten                        true
% 1.25/0.99  --prep_res_sim                          true
% 1.25/0.99  --prep_upred                            true
% 1.25/0.99  --prep_sem_filter                       exhaustive
% 1.25/0.99  --prep_sem_filter_out                   false
% 1.25/0.99  --pred_elim                             true
% 1.25/0.99  --res_sim_input                         true
% 1.25/0.99  --eq_ax_congr_red                       true
% 1.25/0.99  --pure_diseq_elim                       true
% 1.25/0.99  --brand_transform                       false
% 1.25/0.99  --non_eq_to_eq                          false
% 1.25/0.99  --prep_def_merge                        true
% 1.25/0.99  --prep_def_merge_prop_impl              false
% 1.25/0.99  --prep_def_merge_mbd                    true
% 1.25/0.99  --prep_def_merge_tr_red                 false
% 1.25/0.99  --prep_def_merge_tr_cl                  false
% 1.25/0.99  --smt_preprocessing                     true
% 1.25/0.99  --smt_ac_axioms                         fast
% 1.25/0.99  --preprocessed_out                      false
% 1.25/0.99  --preprocessed_stats                    false
% 1.25/0.99  
% 1.25/0.99  ------ Abstraction refinement Options
% 1.25/0.99  
% 1.25/0.99  --abstr_ref                             []
% 1.25/0.99  --abstr_ref_prep                        false
% 1.25/0.99  --abstr_ref_until_sat                   false
% 1.25/0.99  --abstr_ref_sig_restrict                funpre
% 1.25/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.25/0.99  --abstr_ref_under                       []
% 1.25/0.99  
% 1.25/0.99  ------ SAT Options
% 1.25/0.99  
% 1.25/0.99  --sat_mode                              false
% 1.25/0.99  --sat_fm_restart_options                ""
% 1.25/0.99  --sat_gr_def                            false
% 1.25/0.99  --sat_epr_types                         true
% 1.25/0.99  --sat_non_cyclic_types                  false
% 1.25/0.99  --sat_finite_models                     false
% 1.25/0.99  --sat_fm_lemmas                         false
% 1.25/0.99  --sat_fm_prep                           false
% 1.25/0.99  --sat_fm_uc_incr                        true
% 1.25/0.99  --sat_out_model                         small
% 1.25/0.99  --sat_out_clauses                       false
% 1.25/0.99  
% 1.25/0.99  ------ QBF Options
% 1.25/0.99  
% 1.25/0.99  --qbf_mode                              false
% 1.25/0.99  --qbf_elim_univ                         false
% 1.25/0.99  --qbf_dom_inst                          none
% 1.25/0.99  --qbf_dom_pre_inst                      false
% 1.25/0.99  --qbf_sk_in                             false
% 1.25/0.99  --qbf_pred_elim                         true
% 1.25/0.99  --qbf_split                             512
% 1.25/0.99  
% 1.25/0.99  ------ BMC1 Options
% 1.25/0.99  
% 1.25/0.99  --bmc1_incremental                      false
% 1.25/0.99  --bmc1_axioms                           reachable_all
% 1.25/0.99  --bmc1_min_bound                        0
% 1.25/0.99  --bmc1_max_bound                        -1
% 1.25/0.99  --bmc1_max_bound_default                -1
% 1.25/0.99  --bmc1_symbol_reachability              true
% 1.25/0.99  --bmc1_property_lemmas                  false
% 1.25/0.99  --bmc1_k_induction                      false
% 1.25/0.99  --bmc1_non_equiv_states                 false
% 1.25/0.99  --bmc1_deadlock                         false
% 1.25/0.99  --bmc1_ucm                              false
% 1.25/0.99  --bmc1_add_unsat_core                   none
% 1.25/0.99  --bmc1_unsat_core_children              false
% 1.25/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.25/0.99  --bmc1_out_stat                         full
% 1.25/0.99  --bmc1_ground_init                      false
% 1.25/0.99  --bmc1_pre_inst_next_state              false
% 1.25/0.99  --bmc1_pre_inst_state                   false
% 1.25/0.99  --bmc1_pre_inst_reach_state             false
% 1.25/0.99  --bmc1_out_unsat_core                   false
% 1.25/0.99  --bmc1_aig_witness_out                  false
% 1.25/0.99  --bmc1_verbose                          false
% 1.25/0.99  --bmc1_dump_clauses_tptp                false
% 1.25/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.25/0.99  --bmc1_dump_file                        -
% 1.25/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.25/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.25/0.99  --bmc1_ucm_extend_mode                  1
% 1.25/0.99  --bmc1_ucm_init_mode                    2
% 1.25/0.99  --bmc1_ucm_cone_mode                    none
% 1.25/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.25/0.99  --bmc1_ucm_relax_model                  4
% 1.25/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.25/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.25/0.99  --bmc1_ucm_layered_model                none
% 1.25/0.99  --bmc1_ucm_max_lemma_size               10
% 1.25/0.99  
% 1.25/0.99  ------ AIG Options
% 1.25/0.99  
% 1.25/0.99  --aig_mode                              false
% 1.25/0.99  
% 1.25/0.99  ------ Instantiation Options
% 1.25/0.99  
% 1.25/0.99  --instantiation_flag                    true
% 1.25/0.99  --inst_sos_flag                         false
% 1.25/0.99  --inst_sos_phase                        true
% 1.25/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.25/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.25/0.99  --inst_lit_sel_side                     none
% 1.25/0.99  --inst_solver_per_active                1400
% 1.25/0.99  --inst_solver_calls_frac                1.
% 1.25/0.99  --inst_passive_queue_type               priority_queues
% 1.25/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.25/0.99  --inst_passive_queues_freq              [25;2]
% 1.25/0.99  --inst_dismatching                      true
% 1.25/0.99  --inst_eager_unprocessed_to_passive     true
% 1.25/0.99  --inst_prop_sim_given                   true
% 1.25/0.99  --inst_prop_sim_new                     false
% 1.25/0.99  --inst_subs_new                         false
% 1.25/0.99  --inst_eq_res_simp                      false
% 1.25/0.99  --inst_subs_given                       false
% 1.25/0.99  --inst_orphan_elimination               true
% 1.25/0.99  --inst_learning_loop_flag               true
% 1.25/0.99  --inst_learning_start                   3000
% 1.25/0.99  --inst_learning_factor                  2
% 1.25/0.99  --inst_start_prop_sim_after_learn       3
% 1.25/0.99  --inst_sel_renew                        solver
% 1.25/0.99  --inst_lit_activity_flag                true
% 1.25/0.99  --inst_restr_to_given                   false
% 1.25/0.99  --inst_activity_threshold               500
% 1.25/0.99  --inst_out_proof                        true
% 1.25/0.99  
% 1.25/0.99  ------ Resolution Options
% 1.25/0.99  
% 1.25/0.99  --resolution_flag                       false
% 1.25/0.99  --res_lit_sel                           adaptive
% 1.25/0.99  --res_lit_sel_side                      none
% 1.25/0.99  --res_ordering                          kbo
% 1.25/0.99  --res_to_prop_solver                    active
% 1.25/0.99  --res_prop_simpl_new                    false
% 1.25/0.99  --res_prop_simpl_given                  true
% 1.25/0.99  --res_passive_queue_type                priority_queues
% 1.25/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.25/0.99  --res_passive_queues_freq               [15;5]
% 1.25/0.99  --res_forward_subs                      full
% 1.25/0.99  --res_backward_subs                     full
% 1.25/0.99  --res_forward_subs_resolution           true
% 1.25/0.99  --res_backward_subs_resolution          true
% 1.25/0.99  --res_orphan_elimination                true
% 1.25/0.99  --res_time_limit                        2.
% 1.25/0.99  --res_out_proof                         true
% 1.25/0.99  
% 1.25/0.99  ------ Superposition Options
% 1.25/0.99  
% 1.25/0.99  --superposition_flag                    true
% 1.25/0.99  --sup_passive_queue_type                priority_queues
% 1.25/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.25/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.25/0.99  --demod_completeness_check              fast
% 1.25/0.99  --demod_use_ground                      true
% 1.25/0.99  --sup_to_prop_solver                    passive
% 1.25/0.99  --sup_prop_simpl_new                    true
% 1.25/0.99  --sup_prop_simpl_given                  true
% 1.25/0.99  --sup_fun_splitting                     false
% 1.25/0.99  --sup_smt_interval                      50000
% 1.25/0.99  
% 1.25/0.99  ------ Superposition Simplification Setup
% 1.25/0.99  
% 1.25/0.99  --sup_indices_passive                   []
% 1.25/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.25/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.25/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.25/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.25/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.25/0.99  --sup_full_bw                           [BwDemod]
% 1.25/0.99  --sup_immed_triv                        [TrivRules]
% 1.25/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.25/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.25/0.99  --sup_immed_bw_main                     []
% 1.25/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.25/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.25/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.25/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.25/0.99  
% 1.25/0.99  ------ Combination Options
% 1.25/0.99  
% 1.25/0.99  --comb_res_mult                         3
% 1.25/0.99  --comb_sup_mult                         2
% 1.25/0.99  --comb_inst_mult                        10
% 1.25/0.99  
% 1.25/0.99  ------ Debug Options
% 1.25/0.99  
% 1.25/0.99  --dbg_backtrace                         false
% 1.25/0.99  --dbg_dump_prop_clauses                 false
% 1.25/0.99  --dbg_dump_prop_clauses_file            -
% 1.25/0.99  --dbg_out_stat                          false
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  ------ Proving...
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  % SZS status Theorem for theBenchmark.p
% 1.25/0.99  
% 1.25/0.99   Resolution empty clause
% 1.25/0.99  
% 1.25/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.25/0.99  
% 1.25/0.99  fof(f6,axiom,(
% 1.25/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(X0,k3_tarski(X1)))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f16,plain,(
% 1.25/0.99    ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1))),
% 1.25/0.99    inference(ennf_transformation,[],[f6])).
% 1.25/0.99  
% 1.25/0.99  fof(f47,plain,(
% 1.25/0.99    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f16])).
% 1.25/0.99  
% 1.25/0.99  fof(f1,axiom,(
% 1.25/0.99    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f13,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) => v1_xboole_0(X0))),
% 1.25/0.99    inference(unused_predicate_definition_removal,[],[f1])).
% 1.25/0.99  
% 1.25/0.99  fof(f14,plain,(
% 1.25/0.99    ! [X0] : (v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0))),
% 1.25/0.99    inference(ennf_transformation,[],[f13])).
% 1.25/0.99  
% 1.25/0.99  fof(f27,plain,(
% 1.25/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 1.25/0.99    introduced(choice_axiom,[])).
% 1.25/0.99  
% 1.25/0.99  fof(f28,plain,(
% 1.25/0.99    ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0))),
% 1.25/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f14,f27])).
% 1.25/0.99  
% 1.25/0.99  fof(f40,plain,(
% 1.25/0.99    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f28])).
% 1.25/0.99  
% 1.25/0.99  fof(f9,axiom,(
% 1.25/0.99    ! [X0,X1] : ((m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k4_orders_2(X0,X1)))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f21,plain,(
% 1.25/0.99    ! [X0,X1] : (~v1_xboole_0(k4_orders_2(X0,X1)) | (~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.25/0.99    inference(ennf_transformation,[],[f9])).
% 1.25/0.99  
% 1.25/0.99  fof(f22,plain,(
% 1.25/0.99    ! [X0,X1] : (~v1_xboole_0(k4_orders_2(X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.25/0.99    inference(flattening,[],[f21])).
% 1.25/0.99  
% 1.25/0.99  fof(f53,plain,(
% 1.25/0.99    ( ! [X0,X1] : (~v1_xboole_0(k4_orders_2(X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f22])).
% 1.25/0.99  
% 1.25/0.99  fof(f11,conjecture,(
% 1.25/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1))))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f12,negated_conjecture,(
% 1.25/0.99    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1))))),
% 1.25/0.99    inference(negated_conjecture,[],[f11])).
% 1.25/0.99  
% 1.25/0.99  fof(f25,plain,(
% 1.25/0.99    ? [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.25/0.99    inference(ennf_transformation,[],[f12])).
% 1.25/0.99  
% 1.25/0.99  fof(f26,plain,(
% 1.25/0.99    ? [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.25/0.99    inference(flattening,[],[f25])).
% 1.25/0.99  
% 1.25/0.99  fof(f38,plain,(
% 1.25/0.99    ( ! [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) => (k1_xboole_0 = k3_tarski(k4_orders_2(X0,sK4)) & m1_orders_1(sK4,k1_orders_1(u1_struct_0(X0))))) )),
% 1.25/0.99    introduced(choice_axiom,[])).
% 1.25/0.99  
% 1.25/0.99  fof(f37,plain,(
% 1.25/0.99    ? [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(sK3,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))) & l1_orders_2(sK3) & v5_orders_2(sK3) & v4_orders_2(sK3) & v3_orders_2(sK3) & ~v2_struct_0(sK3))),
% 1.25/0.99    introduced(choice_axiom,[])).
% 1.25/0.99  
% 1.25/0.99  fof(f39,plain,(
% 1.25/0.99    (k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) & m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))) & l1_orders_2(sK3) & v5_orders_2(sK3) & v4_orders_2(sK3) & v3_orders_2(sK3) & ~v2_struct_0(sK3)),
% 1.25/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f26,f38,f37])).
% 1.25/0.99  
% 1.25/0.99  fof(f60,plain,(
% 1.25/0.99    m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f59,plain,(
% 1.25/0.99    l1_orders_2(sK3)),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f55,plain,(
% 1.25/0.99    ~v2_struct_0(sK3)),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f56,plain,(
% 1.25/0.99    v3_orders_2(sK3)),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f57,plain,(
% 1.25/0.99    v4_orders_2(sK3)),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f58,plain,(
% 1.25/0.99    v5_orders_2(sK3)),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f61,plain,(
% 1.25/0.99    k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4))),
% 1.25/0.99    inference(cnf_transformation,[],[f39])).
% 1.25/0.99  
% 1.25/0.99  fof(f3,axiom,(
% 1.25/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f29,plain,(
% 1.25/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.25/0.99    inference(nnf_transformation,[],[f3])).
% 1.25/0.99  
% 1.25/0.99  fof(f30,plain,(
% 1.25/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.25/0.99    inference(flattening,[],[f29])).
% 1.25/0.99  
% 1.25/0.99  fof(f44,plain,(
% 1.25/0.99    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f30])).
% 1.25/0.99  
% 1.25/0.99  fof(f4,axiom,(
% 1.25/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f45,plain,(
% 1.25/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f4])).
% 1.25/0.99  
% 1.25/0.99  fof(f7,axiom,(
% 1.25/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (k4_orders_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> m2_orders_2(X3,X0,X1)))))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f17,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : (k4_orders_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> m2_orders_2(X3,X0,X1))) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.25/0.99    inference(ennf_transformation,[],[f7])).
% 1.25/0.99  
% 1.25/0.99  fof(f18,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : (k4_orders_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> m2_orders_2(X3,X0,X1))) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.25/0.99    inference(flattening,[],[f17])).
% 1.25/0.99  
% 1.25/0.99  fof(f31,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : ((k4_orders_2(X0,X1) = X2 | ? [X3] : ((~m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2)) & (m2_orders_2(X3,X0,X1) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~m2_orders_2(X3,X0,X1)) & (m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2))) | k4_orders_2(X0,X1) != X2)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.25/0.99    inference(nnf_transformation,[],[f18])).
% 1.25/0.99  
% 1.25/0.99  fof(f32,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : ((k4_orders_2(X0,X1) = X2 | ? [X3] : ((~m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2)) & (m2_orders_2(X3,X0,X1) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~m2_orders_2(X4,X0,X1)) & (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,X2))) | k4_orders_2(X0,X1) != X2)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.25/0.99    inference(rectify,[],[f31])).
% 1.25/0.99  
% 1.25/0.99  fof(f33,plain,(
% 1.25/0.99    ! [X2,X1,X0] : (? [X3] : ((~m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2)) & (m2_orders_2(X3,X0,X1) | r2_hidden(X3,X2))) => ((~m2_orders_2(sK1(X0,X1,X2),X0,X1) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (m2_orders_2(sK1(X0,X1,X2),X0,X1) | r2_hidden(sK1(X0,X1,X2),X2))))),
% 1.25/0.99    introduced(choice_axiom,[])).
% 1.25/0.99  
% 1.25/0.99  fof(f34,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : ((k4_orders_2(X0,X1) = X2 | ((~m2_orders_2(sK1(X0,X1,X2),X0,X1) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (m2_orders_2(sK1(X0,X1,X2),X0,X1) | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~m2_orders_2(X4,X0,X1)) & (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,X2))) | k4_orders_2(X0,X1) != X2)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.25/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f32,f33])).
% 1.25/0.99  
% 1.25/0.99  fof(f48,plain,(
% 1.25/0.99    ( ! [X4,X2,X0,X1] : (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,X2) | k4_orders_2(X0,X1) != X2 | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f34])).
% 1.25/0.99  
% 1.25/0.99  fof(f65,plain,(
% 1.25/0.99    ( ! [X4,X0,X1] : (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,k4_orders_2(X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.25/0.99    inference(equality_resolution,[],[f48])).
% 1.25/0.99  
% 1.25/0.99  fof(f10,axiom,(
% 1.25/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (m2_orders_2(X2,X0,X1) => ! [X3] : (m2_orders_2(X3,X0,X1) => ~r1_xboole_0(X2,X3)))))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f23,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (~r1_xboole_0(X2,X3) | ~m2_orders_2(X3,X0,X1)) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.25/0.99    inference(ennf_transformation,[],[f10])).
% 1.25/0.99  
% 1.25/0.99  fof(f24,plain,(
% 1.25/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (~r1_xboole_0(X2,X3) | ~m2_orders_2(X3,X0,X1)) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.25/0.99    inference(flattening,[],[f23])).
% 1.25/0.99  
% 1.25/0.99  fof(f54,plain,(
% 1.25/0.99    ( ! [X2,X0,X3,X1] : (~r1_xboole_0(X2,X3) | ~m2_orders_2(X3,X0,X1) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f24])).
% 1.25/0.99  
% 1.25/0.99  fof(f5,axiom,(
% 1.25/0.99    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f46,plain,(
% 1.25/0.99    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f5])).
% 1.25/0.99  
% 1.25/0.99  fof(f2,axiom,(
% 1.25/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 1.25/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.25/0.99  
% 1.25/0.99  fof(f15,plain,(
% 1.25/0.99    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 1.25/0.99    inference(ennf_transformation,[],[f2])).
% 1.25/0.99  
% 1.25/0.99  fof(f41,plain,(
% 1.25/0.99    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 1.25/0.99    inference(cnf_transformation,[],[f15])).
% 1.25/0.99  
% 1.25/0.99  cnf(c_7,plain,
% 1.25/0.99      ( r1_tarski(X0,k3_tarski(X1)) | ~ r2_hidden(X0,X1) ),
% 1.25/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_0,plain,
% 1.25/0.99      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 1.25/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_13,plain,
% 1.25/0.99      ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1)
% 1.25/0.99      | ~ v1_xboole_0(k4_orders_2(X1,X0)) ),
% 1.25/0.99      inference(cnf_transformation,[],[f53]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_16,negated_conjecture,
% 1.25/0.99      ( m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) ),
% 1.25/0.99      inference(cnf_transformation,[],[f60]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_453,plain,
% 1.25/0.99      ( v2_struct_0(X0)
% 1.25/0.99      | ~ v3_orders_2(X0)
% 1.25/0.99      | ~ v4_orders_2(X0)
% 1.25/0.99      | ~ v5_orders_2(X0)
% 1.25/0.99      | ~ l1_orders_2(X0)
% 1.25/0.99      | ~ v1_xboole_0(k4_orders_2(X0,X1))
% 1.25/0.99      | k1_orders_1(u1_struct_0(X0)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK4 != X1 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_16]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_454,plain,
% 1.25/0.99      ( v2_struct_0(X0)
% 1.25/0.99      | ~ v3_orders_2(X0)
% 1.25/0.99      | ~ v4_orders_2(X0)
% 1.25/0.99      | ~ v5_orders_2(X0)
% 1.25/0.99      | ~ l1_orders_2(X0)
% 1.25/0.99      | ~ v1_xboole_0(k4_orders_2(X0,sK4))
% 1.25/0.99      | k1_orders_1(u1_struct_0(X0)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_453]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_17,negated_conjecture,
% 1.25/0.99      ( l1_orders_2(sK3) ),
% 1.25/0.99      inference(cnf_transformation,[],[f59]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_578,plain,
% 1.25/0.99      ( v2_struct_0(X0)
% 1.25/0.99      | ~ v3_orders_2(X0)
% 1.25/0.99      | ~ v4_orders_2(X0)
% 1.25/0.99      | ~ v5_orders_2(X0)
% 1.25/0.99      | ~ v1_xboole_0(k4_orders_2(X0,sK4))
% 1.25/0.99      | k1_orders_1(u1_struct_0(X0)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK3 != X0 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_454,c_17]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_579,plain,
% 1.25/0.99      ( v2_struct_0(sK3)
% 1.25/0.99      | ~ v3_orders_2(sK3)
% 1.25/0.99      | ~ v4_orders_2(sK3)
% 1.25/0.99      | ~ v5_orders_2(sK3)
% 1.25/0.99      | ~ v1_xboole_0(k4_orders_2(sK3,sK4))
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_578]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_21,negated_conjecture,
% 1.25/0.99      ( ~ v2_struct_0(sK3) ),
% 1.25/0.99      inference(cnf_transformation,[],[f55]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_20,negated_conjecture,
% 1.25/0.99      ( v3_orders_2(sK3) ),
% 1.25/0.99      inference(cnf_transformation,[],[f56]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_19,negated_conjecture,
% 1.25/0.99      ( v4_orders_2(sK3) ),
% 1.25/0.99      inference(cnf_transformation,[],[f57]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_18,negated_conjecture,
% 1.25/0.99      ( v5_orders_2(sK3) ),
% 1.25/0.99      inference(cnf_transformation,[],[f58]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_581,plain,
% 1.25/0.99      ( ~ v1_xboole_0(k4_orders_2(sK3,sK4))
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(global_propositional_subsumption,
% 1.25/0.99                [status(thm)],
% 1.25/0.99                [c_579,c_21,c_20,c_19,c_18]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_749,plain,
% 1.25/0.99      ( r2_hidden(sK0(X0),X0)
% 1.25/0.99      | k4_orders_2(sK3,sK4) != X0
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_581]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_750,plain,
% 1.25/0.99      ( r2_hidden(sK0(k4_orders_2(sK3,sK4)),k4_orders_2(sK3,sK4)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_749]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_760,plain,
% 1.25/0.99      ( r1_tarski(X0,k3_tarski(X1))
% 1.25/0.99      | k4_orders_2(sK3,sK4) != X1
% 1.25/0.99      | sK0(k4_orders_2(sK3,sK4)) != X0 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_750]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_761,plain,
% 1.25/0.99      ( r1_tarski(sK0(k4_orders_2(sK3,sK4)),k3_tarski(k4_orders_2(sK3,sK4))) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_760]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1124,plain,
% 1.25/0.99      ( r1_tarski(sK0(k4_orders_2(sK3,sK4)),k3_tarski(k4_orders_2(sK3,sK4))) = iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_761]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_15,negated_conjecture,
% 1.25/0.99      ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) ),
% 1.25/0.99      inference(cnf_transformation,[],[f61]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1142,plain,
% 1.25/0.99      ( r1_tarski(sK0(k4_orders_2(sK3,sK4)),k1_xboole_0) = iProver_top ),
% 1.25/0.99      inference(light_normalisation,[status(thm)],[c_1124,c_15]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_2,plain,
% 1.25/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 1.25/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1128,plain,
% 1.25/0.99      ( X0 = X1
% 1.25/0.99      | r1_tarski(X0,X1) != iProver_top
% 1.25/0.99      | r1_tarski(X1,X0) != iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1658,plain,
% 1.25/0.99      ( sK0(k4_orders_2(sK3,sK4)) = k1_xboole_0
% 1.25/0.99      | r1_tarski(k1_xboole_0,sK0(k4_orders_2(sK3,sK4))) != iProver_top ),
% 1.25/0.99      inference(superposition,[status(thm)],[c_1142,c_1128]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_5,plain,
% 1.25/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 1.25/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1126,plain,
% 1.25/0.99      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1691,plain,
% 1.25/0.99      ( sK0(k4_orders_2(sK3,sK4)) = k1_xboole_0 ),
% 1.25/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_1658,c_1126]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_11,plain,
% 1.25/0.99      ( m2_orders_2(X0,X1,X2)
% 1.25/0.99      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.25/0.99      | ~ r2_hidden(X0,k4_orders_2(X1,X2))
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1) ),
% 1.25/0.99      inference(cnf_transformation,[],[f65]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_393,plain,
% 1.25/0.99      ( m2_orders_2(X0,X1,X2)
% 1.25/0.99      | ~ r2_hidden(X0,k4_orders_2(X1,X2))
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK4 != X2 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_16]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_394,plain,
% 1.25/0.99      ( m2_orders_2(X0,X1,sK4)
% 1.25/0.99      | ~ r2_hidden(X0,k4_orders_2(X1,sK4))
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_393]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_675,plain,
% 1.25/0.99      ( m2_orders_2(X0,X1,sK4)
% 1.25/0.99      | ~ r2_hidden(X0,k4_orders_2(X1,sK4))
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK3 != X1 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_394,c_17]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_676,plain,
% 1.25/0.99      ( m2_orders_2(X0,sK3,sK4)
% 1.25/0.99      | ~ r2_hidden(X0,k4_orders_2(sK3,sK4))
% 1.25/0.99      | v2_struct_0(sK3)
% 1.25/0.99      | ~ v3_orders_2(sK3)
% 1.25/0.99      | ~ v4_orders_2(sK3)
% 1.25/0.99      | ~ v5_orders_2(sK3)
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_675]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_680,plain,
% 1.25/0.99      ( m2_orders_2(X0,sK3,sK4)
% 1.25/0.99      | ~ r2_hidden(X0,k4_orders_2(sK3,sK4))
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(global_propositional_subsumption,
% 1.25/0.99                [status(thm)],
% 1.25/0.99                [c_676,c_21,c_20,c_19,c_18]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_796,plain,
% 1.25/0.99      ( m2_orders_2(X0,sK3,sK4)
% 1.25/0.99      | k4_orders_2(sK3,sK4) != k4_orders_2(sK3,sK4)
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK0(k4_orders_2(sK3,sK4)) != X0 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_750,c_680]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_797,plain,
% 1.25/0.99      ( m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_796]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1121,plain,
% 1.25/0.99      ( m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) = iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_797]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1692,plain,
% 1.25/0.99      ( m2_orders_2(k1_xboole_0,sK3,sK4) = iProver_top ),
% 1.25/0.99      inference(demodulation,[status(thm)],[c_1691,c_1121]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_14,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,X1,X2)
% 1.25/0.99      | ~ m2_orders_2(X3,X1,X2)
% 1.25/0.99      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.25/0.99      | ~ r1_xboole_0(X3,X0)
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1) ),
% 1.25/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_360,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,X1,X2)
% 1.25/0.99      | ~ m2_orders_2(X3,X1,X2)
% 1.25/0.99      | ~ r1_xboole_0(X3,X0)
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK4 != X2 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_16]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_361,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,X1,sK4)
% 1.25/0.99      | ~ m2_orders_2(X2,X1,sK4)
% 1.25/0.99      | ~ r1_xboole_0(X0,X2)
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | ~ l1_orders_2(X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_360]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_696,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,X1,sK4)
% 1.25/0.99      | ~ m2_orders_2(X2,X1,sK4)
% 1.25/0.99      | ~ r1_xboole_0(X0,X2)
% 1.25/0.99      | v2_struct_0(X1)
% 1.25/0.99      | ~ v3_orders_2(X1)
% 1.25/0.99      | ~ v4_orders_2(X1)
% 1.25/0.99      | ~ v5_orders_2(X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK3))
% 1.25/0.99      | sK3 != X1 ),
% 1.25/0.99      inference(resolution_lifted,[status(thm)],[c_361,c_17]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_697,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,sK3,sK4)
% 1.25/0.99      | ~ m2_orders_2(X1,sK3,sK4)
% 1.25/0.99      | ~ r1_xboole_0(X0,X1)
% 1.25/0.99      | v2_struct_0(sK3)
% 1.25/0.99      | ~ v3_orders_2(sK3)
% 1.25/0.99      | ~ v4_orders_2(sK3)
% 1.25/0.99      | ~ v5_orders_2(sK3)
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(unflattening,[status(thm)],[c_696]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_701,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,sK3,sK4)
% 1.25/0.99      | ~ m2_orders_2(X1,sK3,sK4)
% 1.25/0.99      | ~ r1_xboole_0(X0,X1)
% 1.25/0.99      | k1_orders_1(u1_struct_0(sK3)) != k1_orders_1(u1_struct_0(sK3)) ),
% 1.25/0.99      inference(global_propositional_subsumption,
% 1.25/0.99                [status(thm)],
% 1.25/0.99                [c_697,c_21,c_20,c_19,c_18]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_833,plain,
% 1.25/0.99      ( ~ m2_orders_2(X0,sK3,sK4)
% 1.25/0.99      | ~ m2_orders_2(X1,sK3,sK4)
% 1.25/0.99      | ~ r1_xboole_0(X0,X1) ),
% 1.25/0.99      inference(equality_resolution_simp,[status(thm)],[c_701]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1120,plain,
% 1.25/0.99      ( m2_orders_2(X0,sK3,sK4) != iProver_top
% 1.25/0.99      | m2_orders_2(X1,sK3,sK4) != iProver_top
% 1.25/0.99      | r1_xboole_0(X0,X1) != iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_833]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1813,plain,
% 1.25/0.99      ( m2_orders_2(X0,sK3,sK4) != iProver_top
% 1.25/0.99      | r1_xboole_0(k1_xboole_0,X0) != iProver_top ),
% 1.25/0.99      inference(superposition,[status(thm)],[c_1692,c_1120]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_6,plain,
% 1.25/0.99      ( r1_xboole_0(X0,k1_xboole_0) ),
% 1.25/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_52,plain,
% 1.25/0.99      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1,plain,
% 1.25/0.99      ( ~ r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0) ),
% 1.25/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1238,plain,
% 1.25/0.99      ( ~ r1_xboole_0(X0,k1_xboole_0) | r1_xboole_0(k1_xboole_0,X0) ),
% 1.25/0.99      inference(instantiation,[status(thm)],[c_1]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1239,plain,
% 1.25/0.99      ( r1_xboole_0(X0,k1_xboole_0) != iProver_top
% 1.25/0.99      | r1_xboole_0(k1_xboole_0,X0) = iProver_top ),
% 1.25/0.99      inference(predicate_to_equality,[status(thm)],[c_1238]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1861,plain,
% 1.25/0.99      ( m2_orders_2(X0,sK3,sK4) != iProver_top ),
% 1.25/0.99      inference(global_propositional_subsumption,
% 1.25/0.99                [status(thm)],
% 1.25/0.99                [c_1813,c_52,c_1239]) ).
% 1.25/0.99  
% 1.25/0.99  cnf(c_1869,plain,
% 1.25/0.99      ( $false ),
% 1.25/0.99      inference(superposition,[status(thm)],[c_1692,c_1861]) ).
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.25/0.99  
% 1.25/0.99  ------                               Statistics
% 1.25/0.99  
% 1.25/0.99  ------ General
% 1.25/0.99  
% 1.25/0.99  abstr_ref_over_cycles:                  0
% 1.25/0.99  abstr_ref_under_cycles:                 0
% 1.25/0.99  gc_basic_clause_elim:                   0
% 1.25/0.99  forced_gc_time:                         0
% 1.25/0.99  parsing_time:                           0.01
% 1.25/0.99  unif_index_cands_time:                  0.
% 1.25/0.99  unif_index_add_time:                    0.
% 1.25/0.99  orderings_time:                         0.
% 1.25/0.99  out_proof_time:                         0.01
% 1.25/0.99  total_time:                             0.089
% 1.25/0.99  num_of_symbols:                         52
% 1.25/0.99  num_of_terms:                           1302
% 1.25/0.99  
% 1.25/0.99  ------ Preprocessing
% 1.25/0.99  
% 1.25/0.99  num_of_splits:                          0
% 1.25/0.99  num_of_split_atoms:                     0
% 1.25/0.99  num_of_reused_defs:                     0
% 1.25/0.99  num_eq_ax_congr_red:                    13
% 1.25/0.99  num_of_sem_filtered_clauses:            1
% 1.25/0.99  num_of_subtypes:                        0
% 1.25/0.99  monotx_restored_types:                  0
% 1.25/0.99  sat_num_of_epr_types:                   0
% 1.25/0.99  sat_num_of_non_cyclic_types:            0
% 1.25/0.99  sat_guarded_non_collapsed_types:        0
% 1.25/0.99  num_pure_diseq_elim:                    0
% 1.25/0.99  simp_replaced_by:                       0
% 1.25/0.99  res_preprocessed:                       78
% 1.25/0.99  prep_upred:                             0
% 1.25/0.99  prep_unflattend:                        29
% 1.25/0.99  smt_new_axioms:                         0
% 1.25/0.99  pred_elim_cands:                        3
% 1.25/0.99  pred_elim:                              8
% 1.25/0.99  pred_elim_cl:                           9
% 1.25/0.99  pred_elim_cycles:                       12
% 1.25/0.99  merged_defs:                            0
% 1.25/0.99  merged_defs_ncl:                        0
% 1.25/0.99  bin_hyper_res:                          0
% 1.25/0.99  prep_cycles:                            4
% 1.25/0.99  pred_elim_time:                         0.012
% 1.25/0.99  splitting_time:                         0.
% 1.25/0.99  sem_filter_time:                        0.
% 1.25/0.99  monotx_time:                            0.
% 1.25/0.99  subtype_inf_time:                       0.
% 1.25/0.99  
% 1.25/0.99  ------ Problem properties
% 1.25/0.99  
% 1.25/0.99  clauses:                                12
% 1.25/0.99  conjectures:                            1
% 1.25/0.99  epr:                                    6
% 1.25/0.99  horn:                                   11
% 1.25/0.99  ground:                                 4
% 1.25/0.99  unary:                                  7
% 1.25/0.99  binary:                                 2
% 1.25/0.99  lits:                                   20
% 1.25/0.99  lits_eq:                                3
% 1.25/0.99  fd_pure:                                0
% 1.25/0.99  fd_pseudo:                              0
% 1.25/0.99  fd_cond:                                1
% 1.25/0.99  fd_pseudo_cond:                         1
% 1.25/0.99  ac_symbols:                             0
% 1.25/0.99  
% 1.25/0.99  ------ Propositional Solver
% 1.25/0.99  
% 1.25/0.99  prop_solver_calls:                      26
% 1.25/0.99  prop_fast_solver_calls:                 580
% 1.25/0.99  smt_solver_calls:                       0
% 1.25/0.99  smt_fast_solver_calls:                  0
% 1.25/0.99  prop_num_of_clauses:                    558
% 1.25/0.99  prop_preprocess_simplified:             2374
% 1.25/0.99  prop_fo_subsumed:                       29
% 1.25/0.99  prop_solver_time:                       0.
% 1.25/0.99  smt_solver_time:                        0.
% 1.25/0.99  smt_fast_solver_time:                   0.
% 1.25/0.99  prop_fast_solver_time:                  0.
% 1.25/0.99  prop_unsat_core_time:                   0.
% 1.25/0.99  
% 1.25/0.99  ------ QBF
% 1.25/0.99  
% 1.25/0.99  qbf_q_res:                              0
% 1.25/0.99  qbf_num_tautologies:                    0
% 1.25/0.99  qbf_prep_cycles:                        0
% 1.25/0.99  
% 1.25/0.99  ------ BMC1
% 1.25/0.99  
% 1.25/0.99  bmc1_current_bound:                     -1
% 1.25/0.99  bmc1_last_solved_bound:                 -1
% 1.25/0.99  bmc1_unsat_core_size:                   -1
% 1.25/0.99  bmc1_unsat_core_parents_size:           -1
% 1.25/0.99  bmc1_merge_next_fun:                    0
% 1.25/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.25/0.99  
% 1.25/0.99  ------ Instantiation
% 1.25/0.99  
% 1.25/0.99  inst_num_of_clauses:                    136
% 1.25/0.99  inst_num_in_passive:                    7
% 1.25/0.99  inst_num_in_active:                     89
% 1.25/0.99  inst_num_in_unprocessed:                40
% 1.25/0.99  inst_num_of_loops:                      100
% 1.25/0.99  inst_num_of_learning_restarts:          0
% 1.25/0.99  inst_num_moves_active_passive:          7
% 1.25/0.99  inst_lit_activity:                      0
% 1.25/0.99  inst_lit_activity_moves:                0
% 1.25/0.99  inst_num_tautologies:                   0
% 1.25/0.99  inst_num_prop_implied:                  0
% 1.25/0.99  inst_num_existing_simplified:           0
% 1.25/0.99  inst_num_eq_res_simplified:             0
% 1.25/0.99  inst_num_child_elim:                    0
% 1.25/0.99  inst_num_of_dismatching_blockings:      17
% 1.25/0.99  inst_num_of_non_proper_insts:           106
% 1.25/0.99  inst_num_of_duplicates:                 0
% 1.25/0.99  inst_inst_num_from_inst_to_res:         0
% 1.25/0.99  inst_dismatching_checking_time:         0.
% 1.25/0.99  
% 1.25/0.99  ------ Resolution
% 1.25/0.99  
% 1.25/0.99  res_num_of_clauses:                     0
% 1.25/0.99  res_num_in_passive:                     0
% 1.25/0.99  res_num_in_active:                      0
% 1.25/0.99  res_num_of_loops:                       82
% 1.25/0.99  res_forward_subset_subsumed:            13
% 1.25/0.99  res_backward_subset_subsumed:           2
% 1.25/0.99  res_forward_subsumed:                   0
% 1.25/0.99  res_backward_subsumed:                  0
% 1.25/0.99  res_forward_subsumption_resolution:     0
% 1.25/0.99  res_backward_subsumption_resolution:    0
% 1.25/0.99  res_clause_to_clause_subsumption:       79
% 1.25/0.99  res_orphan_elimination:                 0
% 1.25/0.99  res_tautology_del:                      16
% 1.25/0.99  res_num_eq_res_simplified:              2
% 1.25/0.99  res_num_sel_changes:                    0
% 1.25/0.99  res_moves_from_active_to_pass:          0
% 1.25/0.99  
% 1.25/0.99  ------ Superposition
% 1.25/0.99  
% 1.25/0.99  sup_time_total:                         0.
% 1.25/0.99  sup_time_generating:                    0.
% 1.25/0.99  sup_time_sim_full:                      0.
% 1.25/0.99  sup_time_sim_immed:                     0.
% 1.25/0.99  
% 1.25/0.99  sup_num_of_clauses:                     17
% 1.25/0.99  sup_num_in_active:                      13
% 1.25/0.99  sup_num_in_passive:                     4
% 1.25/0.99  sup_num_of_loops:                       18
% 1.25/0.99  sup_fw_superposition:                   12
% 1.25/0.99  sup_bw_superposition:                   7
% 1.25/0.99  sup_immediate_simplified:               2
% 1.25/0.99  sup_given_eliminated:                   0
% 1.25/0.99  comparisons_done:                       0
% 1.25/0.99  comparisons_avoided:                    0
% 1.25/0.99  
% 1.25/0.99  ------ Simplifications
% 1.25/0.99  
% 1.25/0.99  
% 1.25/0.99  sim_fw_subset_subsumed:                 0
% 1.25/0.99  sim_bw_subset_subsumed:                 4
% 1.25/0.99  sim_fw_subsumed:                        1
% 1.25/0.99  sim_bw_subsumed:                        0
% 1.25/0.99  sim_fw_subsumption_res:                 2
% 1.25/0.99  sim_bw_subsumption_res:                 0
% 1.25/0.99  sim_tautology_del:                      0
% 1.25/0.99  sim_eq_tautology_del:                   4
% 1.25/0.99  sim_eq_res_simp:                        0
% 1.25/0.99  sim_fw_demodulated:                     0
% 1.25/0.99  sim_bw_demodulated:                     4
% 1.25/0.99  sim_light_normalised:                   3
% 1.25/0.99  sim_joinable_taut:                      0
% 1.25/0.99  sim_joinable_simp:                      0
% 1.25/0.99  sim_ac_normalised:                      0
% 1.25/0.99  sim_smt_subsumption:                    0
% 1.25/0.99  
%------------------------------------------------------------------------------
