%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:20:08 EST 2020

% Result     : Theorem 3.64s
% Output     : CNFRefutation 3.64s
% Verified   : 
% Statistics : Number of formulae       :  243 (1304 expanded)
%              Number of clauses        :  162 ( 451 expanded)
%              Number of leaves         :   22 ( 319 expanded)
%              Depth                    :   21
%              Number of atoms          : 1247 (5730 expanded)
%              Number of equality atoms :  266 ( 778 expanded)
%              Maximal formula depth    :   18 (   6 average)
%              Maximal clause size      :   21 (   5 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ( v2_lattice3(k2_yellow_1(X0))
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
               => r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ( v2_lattice3(k2_yellow_1(X0))
         => ! [X1] :
              ( m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
             => ! [X2] :
                  ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
                 => r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))
              & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
          & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) )
      & v2_lattice3(k2_yellow_1(X0))
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f36,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))
              & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
          & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) )
      & v2_lattice3(k2_yellow_1(X0))
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))
          & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
     => ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,sK3),k3_xboole_0(X1,sK3))
        & m1_subset_1(sK3,u1_struct_0(k2_yellow_1(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))
              & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
          & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) )
     => ( ? [X2] :
            ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),sK2,X2),k3_xboole_0(sK2,X2))
            & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
        & m1_subset_1(sK2,u1_struct_0(k2_yellow_1(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ~ r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))
                & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
            & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) )
        & v2_lattice3(k2_yellow_1(X0))
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),X1,X2),k3_xboole_0(X1,X2))
              & m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1))) )
          & m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1))) )
      & v2_lattice3(k2_yellow_1(sK1))
      & ~ v1_xboole_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,
    ( ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k3_xboole_0(sK2,sK3))
    & m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    & m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    & v2_lattice3(k2_yellow_1(sK1))
    & ~ v1_xboole_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f36,f48,f47,f46])).

fof(f77,plain,(
    v2_lattice3(k2_yellow_1(sK1)) ),
    inference(cnf_transformation,[],[f49])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v2_lattice3(X0)
        & v5_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ( k11_lattice3(X0,X1,X2) = X3
                  <=> ( ! [X4] :
                          ( m1_subset_1(X4,u1_struct_0(X0))
                         => ( ( r1_orders_2(X0,X4,X2)
                              & r1_orders_2(X0,X4,X1) )
                           => r1_orders_2(X0,X4,X3) ) )
                      & r1_orders_2(X0,X3,X2)
                      & r1_orders_2(X0,X3,X1) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( k11_lattice3(X0,X1,X2) = X3
                  <=> ( ! [X4] :
                          ( r1_orders_2(X0,X4,X3)
                          | ~ r1_orders_2(X0,X4,X2)
                          | ~ r1_orders_2(X0,X4,X1)
                          | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                      & r1_orders_2(X0,X3,X2)
                      & r1_orders_2(X0,X3,X1) ) )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( k11_lattice3(X0,X1,X2) = X3
                  <=> ( ! [X4] :
                          ( r1_orders_2(X0,X4,X3)
                          | ~ r1_orders_2(X0,X4,X2)
                          | ~ r1_orders_2(X0,X4,X1)
                          | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                      & r1_orders_2(X0,X3,X2)
                      & r1_orders_2(X0,X3,X1) ) )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( k11_lattice3(X0,X1,X2) = X3
                      | ? [X4] :
                          ( ~ r1_orders_2(X0,X4,X3)
                          & r1_orders_2(X0,X4,X2)
                          & r1_orders_2(X0,X4,X1)
                          & m1_subset_1(X4,u1_struct_0(X0)) )
                      | ~ r1_orders_2(X0,X3,X2)
                      | ~ r1_orders_2(X0,X3,X1) )
                    & ( ( ! [X4] :
                            ( r1_orders_2(X0,X4,X3)
                            | ~ r1_orders_2(X0,X4,X2)
                            | ~ r1_orders_2(X0,X4,X1)
                            | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                        & r1_orders_2(X0,X3,X2)
                        & r1_orders_2(X0,X3,X1) )
                      | k11_lattice3(X0,X1,X2) != X3 ) )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( k11_lattice3(X0,X1,X2) = X3
                      | ? [X4] :
                          ( ~ r1_orders_2(X0,X4,X3)
                          & r1_orders_2(X0,X4,X2)
                          & r1_orders_2(X0,X4,X1)
                          & m1_subset_1(X4,u1_struct_0(X0)) )
                      | ~ r1_orders_2(X0,X3,X2)
                      | ~ r1_orders_2(X0,X3,X1) )
                    & ( ( ! [X4] :
                            ( r1_orders_2(X0,X4,X3)
                            | ~ r1_orders_2(X0,X4,X2)
                            | ~ r1_orders_2(X0,X4,X1)
                            | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                        & r1_orders_2(X0,X3,X2)
                        & r1_orders_2(X0,X3,X1) )
                      | k11_lattice3(X0,X1,X2) != X3 ) )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f39])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( k11_lattice3(X0,X1,X2) = X3
                      | ? [X4] :
                          ( ~ r1_orders_2(X0,X4,X3)
                          & r1_orders_2(X0,X4,X2)
                          & r1_orders_2(X0,X4,X1)
                          & m1_subset_1(X4,u1_struct_0(X0)) )
                      | ~ r1_orders_2(X0,X3,X2)
                      | ~ r1_orders_2(X0,X3,X1) )
                    & ( ( ! [X5] :
                            ( r1_orders_2(X0,X5,X3)
                            | ~ r1_orders_2(X0,X5,X2)
                            | ~ r1_orders_2(X0,X5,X1)
                            | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                        & r1_orders_2(X0,X3,X2)
                        & r1_orders_2(X0,X3,X1) )
                      | k11_lattice3(X0,X1,X2) != X3 ) )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f40])).

fof(f42,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ~ r1_orders_2(X0,X4,X3)
          & r1_orders_2(X0,X4,X2)
          & r1_orders_2(X0,X4,X1)
          & m1_subset_1(X4,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,sK0(X0,X1,X2,X3),X3)
        & r1_orders_2(X0,sK0(X0,X1,X2,X3),X2)
        & r1_orders_2(X0,sK0(X0,X1,X2,X3),X1)
        & m1_subset_1(sK0(X0,X1,X2,X3),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( k11_lattice3(X0,X1,X2) = X3
                      | ( ~ r1_orders_2(X0,sK0(X0,X1,X2,X3),X3)
                        & r1_orders_2(X0,sK0(X0,X1,X2,X3),X2)
                        & r1_orders_2(X0,sK0(X0,X1,X2,X3),X1)
                        & m1_subset_1(sK0(X0,X1,X2,X3),u1_struct_0(X0)) )
                      | ~ r1_orders_2(X0,X3,X2)
                      | ~ r1_orders_2(X0,X3,X1) )
                    & ( ( ! [X5] :
                            ( r1_orders_2(X0,X5,X3)
                            | ~ r1_orders_2(X0,X5,X2)
                            | ~ r1_orders_2(X0,X5,X1)
                            | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                        & r1_orders_2(X0,X3,X2)
                        & r1_orders_2(X0,X3,X1) )
                      | k11_lattice3(X0,X1,X2) != X3 ) )
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).

fof(f63,plain,(
    ! [X2,X0,X3,X1] :
      ( k11_lattice3(X0,X1,X2) = X3
      | r1_orders_2(X0,sK0(X0,X1,X2,X3),X2)
      | ~ r1_orders_2(X0,X3,X2)
      | ~ r1_orders_2(X0,X3,X1)
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ( v2_lattice3(X0)
       => ~ v2_struct_0(X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ~ v2_struct_0(X0)
      | ~ v2_lattice3(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f23,plain,(
    ! [X0] :
      ( ~ v2_struct_0(X0)
      | ~ v2_lattice3(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f22])).

fof(f56,plain,(
    ! [X0] :
      ( ~ v2_struct_0(X0)
      | ~ v2_lattice3(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f12,axiom,(
    ! [X0] :
      ( v5_orders_2(k2_yellow_1(X0))
      & v4_orders_2(k2_yellow_1(X0))
      & v3_orders_2(k2_yellow_1(X0))
      & v1_orders_2(k2_yellow_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( v5_orders_2(k2_yellow_1(X0))
      & v3_orders_2(k2_yellow_1(X0))
      & v1_orders_2(k2_yellow_1(X0)) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f18,plain,(
    ! [X0] :
      ( v5_orders_2(k2_yellow_1(X0))
      & v3_orders_2(k2_yellow_1(X0)) ) ),
    inference(pure_predicate_removal,[],[f17])).

fof(f71,plain,(
    ! [X0] : v5_orders_2(k2_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f18])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_orders_2(k2_yellow_1(X0))
      & v1_orders_2(k2_yellow_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] : l1_orders_2(k2_yellow_1(X0)) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f69,plain,(
    ! [X0] : l1_orders_2(k2_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f19])).

fof(f79,plain,(
    m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(cnf_transformation,[],[f49])).

fof(f13,axiom,(
    ! [X0] :
      ( u1_orders_2(k2_yellow_1(X0)) = k1_yellow_1(X0)
      & u1_struct_0(k2_yellow_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f72,plain,(
    ! [X0] : u1_struct_0(k2_yellow_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f13])).

fof(f78,plain,(
    m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(cnf_transformation,[],[f49])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_orders_2(X0) )
     => m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f24])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_orders_2(X0)
        & v2_lattice3(X0)
        & v5_orders_2(X0) )
     => k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(flattening,[],[f28])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v2_lattice3(X0)
        & v5_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(flattening,[],[f30])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v2_lattice3(X0)
        & v5_orders_2(X0)
        & v3_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( k12_lattice3(X0,X1,X2) = X1
              <=> r3_orders_2(X0,X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k12_lattice3(X0,X1,X2) = X1
              <=> r3_orders_2(X0,X1,X2) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k12_lattice3(X0,X1,X2) = X1
              <=> r3_orders_2(X0,X1,X2) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(flattening,[],[f32])).

fof(f44,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( k12_lattice3(X0,X1,X2) = X1
                  | ~ r3_orders_2(X0,X1,X2) )
                & ( r3_orders_2(X0,X1,X2)
                  | k12_lattice3(X0,X1,X2) != X1 ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f33])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( r3_orders_2(X0,X1,X2)
      | k12_lattice3(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f70,plain,(
    ! [X0] : v3_orders_2(k2_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f18])).

fof(f14,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
             => ( r3_orders_2(k2_yellow_1(X0),X1,X2)
              <=> r1_tarski(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r3_orders_2(k2_yellow_1(X0),X1,X2)
              <=> r1_tarski(X1,X2) )
              | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f45,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r3_orders_2(k2_yellow_1(X0),X1,X2)
                  | ~ r1_tarski(X1,X2) )
                & ( r1_tarski(X1,X2)
                  | ~ r3_orders_2(k2_yellow_1(X0),X1,X2) ) )
              | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) )
      | v1_xboole_0(X0) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X1,X2)
      | ~ r3_orders_2(k2_yellow_1(X0),X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f76,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f49])).

fof(f64,plain,(
    ! [X2,X0,X3,X1] :
      ( k11_lattice3(X0,X1,X2) = X3
      | ~ r1_orders_2(X0,sK0(X0,X1,X2,X3),X3)
      | ~ r1_orders_2(X0,X3,X2)
      | ~ r1_orders_2(X0,X3,X1)
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f60,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r1_orders_2(X0,X5,X3)
      | ~ r1_orders_2(X0,X5,X2)
      | ~ r1_orders_2(X0,X5,X1)
      | ~ m1_subset_1(X5,u1_struct_0(X0))
      | k11_lattice3(X0,X1,X2) != X3
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f86,plain,(
    ! [X2,X0,X5,X1] :
      ( r1_orders_2(X0,X5,k11_lattice3(X0,X1,X2))
      | ~ r1_orders_2(X0,X5,X2)
      | ~ r1_orders_2(X0,X5,X1)
      | ~ m1_subset_1(X5,u1_struct_0(X0))
      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f60])).

fof(f58,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_orders_2(X0,X3,X1)
      | k11_lattice3(X0,X1,X2) != X3
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f88,plain,(
    ! [X2,X0,X1] :
      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f58])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_orders_2(X0,X3,X2)
      | k11_lattice3(X0,X1,X2) != X3
      | ~ m1_subset_1(X3,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f87,plain,(
    ! [X2,X0,X1] :
      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v2_lattice3(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f59])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f20])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f4,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f3,axiom,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f81,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f55,f54])).

fof(f82,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k1_setfam_1(k2_enumset1(X1,X1,X1,X2)))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f53,f81])).

fof(f1,axiom,(
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
    inference(nnf_transformation,[],[f1])).

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
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f85,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f50])).

fof(f80,plain,(
    ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k3_xboole_0(sK2,sK3)) ),
    inference(cnf_transformation,[],[f49])).

fof(f83,plain,(
    ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k1_setfam_1(k2_enumset1(sK2,sK2,sK2,sK3))) ),
    inference(definition_unfolding,[],[f80,f81])).

cnf(c_1409,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_2615,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X2),X3,X4),u1_struct_0(k2_yellow_1(X2)))
    | X0 != k11_lattice3(k2_yellow_1(X2),X3,X4)
    | X1 != u1_struct_0(k2_yellow_1(X2)) ),
    inference(instantiation,[status(thm)],[c_1409])).

cnf(c_7028,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK3,sK2),u1_struct_0(k2_yellow_1(sK1)))
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
    | X0 != u1_struct_0(k2_yellow_1(sK1))
    | k11_lattice3(k2_yellow_1(sK1),sK2,sK3) != k11_lattice3(k2_yellow_1(sK1),sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_2615])).

cnf(c_7030,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK3,sK2),u1_struct_0(k2_yellow_1(sK1)))
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1)
    | k11_lattice3(k2_yellow_1(sK1),sK2,sK3) != k11_lattice3(k2_yellow_1(sK1),sK3,sK2)
    | sK1 != u1_struct_0(k2_yellow_1(sK1)) ),
    inference(instantiation,[status(thm)],[c_7028])).

cnf(c_26,negated_conjecture,
    ( v2_lattice3(k2_yellow_1(sK1)) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_7,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | v2_struct_0(X0)
    | k11_lattice3(X0,X3,X2) = X1 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_4,plain,
    ( ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | ~ v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_196,plain,
    ( ~ v2_lattice3(X0)
    | ~ l1_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,X1,X2)
    | k11_lattice3(X0,X3,X2) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_7,c_4])).

cnf(c_197,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k11_lattice3(X0,X3,X2) = X1 ),
    inference(renaming,[status(thm)],[c_196])).

cnf(c_18,plain,
    ( v5_orders_2(k2_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_555,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k11_lattice3(X0,X3,X2) = X1
    | k2_yellow_1(X4) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_197,c_18])).

cnf(c_556,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ l1_orders_2(k2_yellow_1(X0))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
    inference(unflattening,[status(thm)],[c_555])).

cnf(c_17,plain,
    ( l1_orders_2(k2_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_560,plain,
    ( ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_556,c_17])).

cnf(c_561,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
    inference(renaming,[status(thm)],[c_560])).

cnf(c_1004,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_561])).

cnf(c_2056,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
    | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK2)
    | r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X1,X0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,X1) = X0
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1004])).

cnf(c_2228,plain,
    ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),X0)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2056])).

cnf(c_6907,plain,
    ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2228])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1723,plain,
    ( m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_20,plain,
    ( u1_struct_0(k2_yellow_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1729,plain,
    ( m1_subset_1(sK3,sK1) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1723,c_20])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1722,plain,
    ( m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_1728,plain,
    ( m1_subset_1(sK2,sK1) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1722,c_20])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | m1_subset_1(k11_lattice3(X1,X2,X0),u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_858,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | m1_subset_1(k11_lattice3(X1,X2,X0),u1_struct_0(X1))
    | k2_yellow_1(X3) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_17])).

cnf(c_859,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | m1_subset_1(k11_lattice3(k2_yellow_1(X1),X0,X2),u1_struct_0(k2_yellow_1(X1))) ),
    inference(unflattening,[status(thm)],[c_858])).

cnf(c_1721,plain,
    ( m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1))) != iProver_top
    | m1_subset_1(k11_lattice3(k2_yellow_1(X1),X0,X2),u1_struct_0(k2_yellow_1(X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_859])).

cnf(c_1730,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | m1_subset_1(X2,X1) != iProver_top
    | m1_subset_1(k11_lattice3(k2_yellow_1(X1),X0,X2),X1) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1721,c_20])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ v2_lattice3(X1)
    | k12_lattice3(X1,X2,X0) = k11_lattice3(X1,X2,X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_768,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1)
    | ~ v2_lattice3(X1)
    | k12_lattice3(X1,X2,X0) = k11_lattice3(X1,X2,X0)
    | k2_yellow_1(X3) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_18])).

cnf(c_769,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | ~ l1_orders_2(k2_yellow_1(X1))
    | ~ v2_lattice3(k2_yellow_1(X1))
    | k12_lattice3(k2_yellow_1(X1),X0,X2) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
    inference(unflattening,[status(thm)],[c_768])).

cnf(c_783,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | ~ v2_lattice3(k2_yellow_1(X1))
    | k12_lattice3(k2_yellow_1(X1),X0,X2) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_769,c_17])).

cnf(c_1100,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | k12_lattice3(k2_yellow_1(X1),X2,X0) = k11_lattice3(k2_yellow_1(X1),X2,X0)
    | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_783])).

cnf(c_1713,plain,
    ( k12_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X1,X2)
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1100])).

cnf(c_1732,plain,
    ( k12_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X1,X2)
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X1,X0) != iProver_top
    | m1_subset_1(X2,X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1713,c_20])).

cnf(c_2152,plain,
    ( k12_lattice3(k2_yellow_1(sK1),X0,X1) = k11_lattice3(k2_yellow_1(sK1),X0,X1)
    | m1_subset_1(X1,sK1) != iProver_top
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1732])).

cnf(c_2994,plain,
    ( k12_lattice3(k2_yellow_1(sK1),X0,sK3) = k11_lattice3(k2_yellow_1(sK1),X0,sK3)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1729,c_2152])).

cnf(c_3351,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK3) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK3)
    | m1_subset_1(X1,sK1) != iProver_top
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1730,c_2994])).

cnf(c_6029,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK3)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1728,c_3351])).

cnf(c_6043,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK3) ),
    inference(superposition,[status(thm)],[c_1729,c_6029])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ v2_lattice3(X1)
    | k11_lattice3(X1,X0,X2) = k11_lattice3(X1,X2,X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_745,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_orders_2(X1)
    | ~ v2_lattice3(X1)
    | k11_lattice3(X1,X0,X2) = k11_lattice3(X1,X2,X0)
    | k2_yellow_1(X3) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_18])).

cnf(c_746,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | ~ l1_orders_2(k2_yellow_1(X1))
    | ~ v2_lattice3(k2_yellow_1(X1))
    | k11_lattice3(k2_yellow_1(X1),X2,X0) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
    inference(unflattening,[status(thm)],[c_745])).

cnf(c_760,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | ~ v2_lattice3(k2_yellow_1(X1))
    | k11_lattice3(k2_yellow_1(X1),X2,X0) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_746,c_17])).

cnf(c_1117,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | k11_lattice3(k2_yellow_1(X1),X0,X2) = k11_lattice3(k2_yellow_1(X1),X2,X0)
    | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_760])).

cnf(c_1712,plain,
    ( k11_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X2,X1)
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1117])).

cnf(c_1731,plain,
    ( k11_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X2,X1)
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X2,X0) != iProver_top
    | m1_subset_1(X1,X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1712,c_20])).

cnf(c_2031,plain,
    ( k11_lattice3(k2_yellow_1(sK1),X0,X1) = k11_lattice3(k2_yellow_1(sK1),X1,X0)
    | m1_subset_1(X0,sK1) != iProver_top
    | m1_subset_1(X1,sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1731])).

cnf(c_2734,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),X0,sK2)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1728,c_2031])).

cnf(c_2758,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK3,sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3) ),
    inference(superposition,[status(thm)],[c_1729,c_2734])).

cnf(c_2735,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK3,X0) = k11_lattice3(k2_yellow_1(sK1),X0,sK3)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1729,c_2031])).

cnf(c_2781,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),X0,X1)) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK3)
    | m1_subset_1(X1,sK1) != iProver_top
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1730,c_2735])).

cnf(c_4583,plain,
    ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),X0,sK2))
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1728,c_2781])).

cnf(c_5005,plain,
    ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK3,sK2)) ),
    inference(superposition,[status(thm)],[c_1729,c_4583])).

cnf(c_5007,plain,
    ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
    inference(light_normalisation,[status(thm)],[c_5005,c_2758])).

cnf(c_6045,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
    inference(light_normalisation,[status(thm)],[c_6043,c_2758,c_5007])).

cnf(c_16,plain,
    ( r3_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v3_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k12_lattice3(X0,X1,X2) != X1 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_19,plain,
    ( v3_orders_2(k2_yellow_1(X0)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_377,plain,
    ( r3_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k12_lattice3(X0,X1,X2) != X1
    | k2_yellow_1(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_19])).

cnf(c_378,plain,
    ( r3_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ v5_orders_2(k2_yellow_1(X0))
    | ~ l1_orders_2(k2_yellow_1(X0))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1 ),
    inference(unflattening,[status(thm)],[c_377])).

cnf(c_382,plain,
    ( r3_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_378,c_18,c_17])).

cnf(c_383,plain,
    ( r3_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1 ),
    inference(renaming,[status(thm)],[c_382])).

cnf(c_1080,plain,
    ( r3_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_383])).

cnf(c_22,plain,
    ( ~ r3_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | r1_tarski(X1,X2)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_27,negated_conjecture,
    ( ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_333,plain,
    ( ~ r3_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | r1_tarski(X1,X2)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_27])).

cnf(c_334,plain,
    ( ~ r3_orders_2(k2_yellow_1(sK1),X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | r1_tarski(X0,X1) ),
    inference(unflattening,[status(thm)],[c_333])).

cnf(c_1212,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X4,u1_struct_0(k2_yellow_1(sK1)))
    | r1_tarski(X3,X4)
    | X3 != X2
    | X4 != X0
    | k12_lattice3(k2_yellow_1(X1),X2,X0) != X2
    | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_1080,c_334])).

cnf(c_1213,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | r1_tarski(X2,X0)
    | k12_lattice3(k2_yellow_1(X1),X2,X0) != X2
    | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
    inference(unflattening,[status(thm)],[c_1212])).

cnf(c_1711,plain,
    ( k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
    | m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
    | r1_tarski(X1,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1213])).

cnf(c_1737,plain,
    ( k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X1,X0) != iProver_top
    | m1_subset_1(X2,X0) != iProver_top
    | m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
    | r1_tarski(X1,X2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1711,c_20])).

cnf(c_1738,plain,
    ( k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
    | k2_yellow_1(X0) != k2_yellow_1(sK1)
    | m1_subset_1(X1,X0) != iProver_top
    | m1_subset_1(X2,X0) != iProver_top
    | m1_subset_1(X1,sK1) != iProver_top
    | m1_subset_1(X2,sK1) != iProver_top
    | r1_tarski(X1,X2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1737,c_20])).

cnf(c_6806,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1)
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1) != iProver_top
    | m1_subset_1(sK3,sK1) != iProver_top
    | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_6045,c_1738])).

cnf(c_6807,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1)
    | ~ m1_subset_1(sK3,sK1)
    | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_6806])).

cnf(c_2051,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
    | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK3)
    | r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X1,X0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK3,X1) = X0
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1004])).

cnf(c_2207,plain,
    ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),X0)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK3,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2051])).

cnf(c_6708,plain,
    ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2207])).

cnf(c_2993,plain,
    ( k12_lattice3(k2_yellow_1(sK1),X0,sK2) = k11_lattice3(k2_yellow_1(sK1),X0,sK2)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1728,c_2152])).

cnf(c_3008,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK2) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK2)
    | m1_subset_1(X1,sK1) != iProver_top
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1730,c_2993])).

cnf(c_5045,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK2)
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1728,c_3008])).

cnf(c_5067,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK2) ),
    inference(superposition,[status(thm)],[c_1729,c_5045])).

cnf(c_2759,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),X0,X1)) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK2)
    | m1_subset_1(X1,sK1) != iProver_top
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1730,c_2734])).

cnf(c_4279,plain,
    ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),X0,sK2))
    | m1_subset_1(X0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1728,c_2759])).

cnf(c_4411,plain,
    ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK3,sK2)) ),
    inference(superposition,[status(thm)],[c_1729,c_4279])).

cnf(c_4413,plain,
    ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
    inference(light_normalisation,[status(thm)],[c_4411,c_2758])).

cnf(c_5069,plain,
    ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
    inference(light_normalisation,[status(thm)],[c_5067,c_2758,c_4413])).

cnf(c_5111,plain,
    ( k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1)
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1) != iProver_top
    | m1_subset_1(sK2,sK1) != iProver_top
    | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_5069,c_1738])).

cnf(c_5112,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1)
    | ~ m1_subset_1(sK2,sK1)
    | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_5111])).

cnf(c_6,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | v2_struct_0(X0)
    | k11_lattice3(X0,X3,X2) = X1 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_201,plain,
    ( ~ v2_lattice3(X0)
    | ~ l1_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,X1,X2)
    | k11_lattice3(X0,X3,X2) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6,c_4])).

cnf(c_202,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k11_lattice3(X0,X3,X2) = X1 ),
    inference(renaming,[status(thm)],[c_201])).

cnf(c_519,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k11_lattice3(X0,X3,X2) = X1
    | k2_yellow_1(X4) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_202,c_18])).

cnf(c_520,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ l1_orders_2(k2_yellow_1(X0))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
    inference(unflattening,[status(thm)],[c_519])).

cnf(c_524,plain,
    ( ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_520,c_17])).

cnf(c_525,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
    inference(renaming,[status(thm)],[c_524])).

cnf(c_1031,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_525])).

cnf(c_2239,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
    | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK2)
    | ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X1,X0),X0)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,X1) = X0
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1031])).

cnf(c_2699,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2239])).

cnf(c_4697,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2699])).

cnf(c_2234,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
    | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK3)
    | ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X1,X0),X0)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK3,X1) = X0
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1031])).

cnf(c_2678,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK3,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2234])).

cnf(c_4623,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2678])).

cnf(c_1403,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_4342,plain,
    ( X0 != X1
    | X0 = u1_struct_0(k2_yellow_1(X2))
    | u1_struct_0(k2_yellow_1(X2)) != X1 ),
    inference(instantiation,[status(thm)],[c_1403])).

cnf(c_4343,plain,
    ( u1_struct_0(k2_yellow_1(sK1)) != sK1
    | sK1 = u1_struct_0(k2_yellow_1(sK1))
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_4342])).

cnf(c_10,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_175,plain,
    ( ~ v2_lattice3(X0)
    | ~ l1_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,X1,X2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_10,c_4])).

cnf(c_176,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0) ),
    inference(renaming,[status(thm)],[c_175])).

cnf(c_659,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X1,X3)
    | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k2_yellow_1(X4) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_176,c_18])).

cnf(c_660,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
    | ~ l1_orders_2(k2_yellow_1(X0))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(unflattening,[status(thm)],[c_659])).

cnf(c_664,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_660,c_17])).

cnf(c_665,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(renaming,[status(thm)],[c_664])).

cnf(c_915,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_665])).

cnf(c_935,plain,
    ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
    | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
    | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_915,c_859])).

cnf(c_2424,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
    | r1_orders_2(k2_yellow_1(sK1),X0,k11_lattice3(k2_yellow_1(sK1),sK2,X1))
    | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK2)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_935])).

cnf(c_2599,plain,
    ( ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
    | r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,X0))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2424])).

cnf(c_4103,plain,
    ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2599])).

cnf(c_2268,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),X1,X0),u1_struct_0(k2_yellow_1(sK1))) ),
    inference(instantiation,[status(thm)],[c_859])).

cnf(c_2916,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),X0,sK2),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(instantiation,[status(thm)],[c_2268])).

cnf(c_3341,plain,
    ( m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK3,sK2),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(instantiation,[status(thm)],[c_2916])).

cnf(c_2911,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),X0,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(instantiation,[status(thm)],[c_2268])).

cnf(c_3193,plain,
    ( m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
    inference(instantiation,[status(thm)],[c_2911])).

cnf(c_1859,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),X0,sK2)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1117])).

cnf(c_1991,plain,
    ( ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k11_lattice3(k2_yellow_1(sK1),sK2,sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,sK2)
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1859])).

cnf(c_12,plain,
    ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_163,plain,
    ( ~ v2_lattice3(X0)
    | ~ l1_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_12,c_4])).

cnf(c_164,plain,
    ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0) ),
    inference(renaming,[status(thm)],[c_163])).

cnf(c_722,plain,
    ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k2_yellow_1(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_164,c_18])).

cnf(c_723,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
    | ~ l1_orders_2(k2_yellow_1(X0))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(unflattening,[status(thm)],[c_722])).

cnf(c_725,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_723,c_17])).

cnf(c_726,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(renaming,[status(thm)],[c_725])).

cnf(c_876,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_859,c_726])).

cnf(c_900,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_876])).

cnf(c_1822,plain,
    ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK3),X0)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_900])).

cnf(c_1936,plain,
    ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1822])).

cnf(c_11,plain,
    ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_170,plain,
    ( ~ v2_lattice3(X0)
    | ~ l1_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_11,c_4])).

cnf(c_171,plain,
    ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0) ),
    inference(renaming,[status(thm)],[c_170])).

cnf(c_695,plain,
    ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ v2_lattice3(X0)
    | k2_yellow_1(X3) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_171,c_18])).

cnf(c_696,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
    | ~ l1_orders_2(k2_yellow_1(X0))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(unflattening,[status(thm)],[c_695])).

cnf(c_700,plain,
    ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_696,c_17])).

cnf(c_701,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(renaming,[status(thm)],[c_700])).

cnf(c_877,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | ~ v2_lattice3(k2_yellow_1(X0)) ),
    inference(backward_subsumption_resolution,[status(thm)],[c_859,c_701])).

cnf(c_883,plain,
    ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
    | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_26,c_877])).

cnf(c_1802,plain,
    ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK3),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_883])).

cnf(c_1912,plain,
    ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
    | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1802])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X0,X2)
    | r1_tarski(X0,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1794,plain,
    ( r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k1_setfam_1(k2_enumset1(sK2,sK2,sK2,sK3)))
    | ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
    | ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1764,plain,
    ( m1_subset_1(sK3,sK1) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1729])).

cnf(c_1759,plain,
    ( m1_subset_1(sK2,sK1) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1728])).

cnf(c_1413,plain,
    ( X0 != X1
    | k2_yellow_1(X0) = k2_yellow_1(X1) ),
    theory(equality)).

cnf(c_1423,plain,
    ( k2_yellow_1(sK1) = k2_yellow_1(sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_1413])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_92,plain,
    ( ~ r1_tarski(sK1,sK1)
    | sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_88,plain,
    ( r1_tarski(sK1,sK1) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_39,plain,
    ( u1_struct_0(k2_yellow_1(sK1)) = sK1 ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_23,negated_conjecture,
    ( ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k1_setfam_1(k2_enumset1(sK2,sK2,sK2,sK3))) ),
    inference(cnf_transformation,[],[f83])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_7030,c_6907,c_6807,c_6708,c_5112,c_4697,c_4623,c_4343,c_4103,c_3341,c_3193,c_1991,c_1936,c_1912,c_1794,c_1764,c_1759,c_1423,c_92,c_88,c_39,c_23,c_24,c_25])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n012.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:58:37 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.64/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.64/0.98  
% 3.64/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.64/0.98  
% 3.64/0.98  ------  iProver source info
% 3.64/0.98  
% 3.64/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.64/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.64/0.98  git: non_committed_changes: false
% 3.64/0.98  git: last_make_outside_of_git: false
% 3.64/0.98  
% 3.64/0.98  ------ 
% 3.64/0.98  
% 3.64/0.98  ------ Input Options
% 3.64/0.98  
% 3.64/0.98  --out_options                           all
% 3.64/0.98  --tptp_safe_out                         true
% 3.64/0.98  --problem_path                          ""
% 3.64/0.98  --include_path                          ""
% 3.64/0.98  --clausifier                            res/vclausify_rel
% 3.64/0.98  --clausifier_options                    ""
% 3.64/0.98  --stdin                                 false
% 3.64/0.98  --stats_out                             all
% 3.64/0.98  
% 3.64/0.98  ------ General Options
% 3.64/0.98  
% 3.64/0.98  --fof                                   false
% 3.64/0.98  --time_out_real                         305.
% 3.64/0.98  --time_out_virtual                      -1.
% 3.64/0.98  --symbol_type_check                     false
% 3.64/0.98  --clausify_out                          false
% 3.64/0.98  --sig_cnt_out                           false
% 3.64/0.98  --trig_cnt_out                          false
% 3.64/0.98  --trig_cnt_out_tolerance                1.
% 3.64/0.98  --trig_cnt_out_sk_spl                   false
% 3.64/0.98  --abstr_cl_out                          false
% 3.64/0.98  
% 3.64/0.98  ------ Global Options
% 3.64/0.98  
% 3.64/0.98  --schedule                              default
% 3.64/0.98  --add_important_lit                     false
% 3.64/0.98  --prop_solver_per_cl                    1000
% 3.64/0.98  --min_unsat_core                        false
% 3.64/0.98  --soft_assumptions                      false
% 3.64/0.98  --soft_lemma_size                       3
% 3.64/0.98  --prop_impl_unit_size                   0
% 3.64/0.98  --prop_impl_unit                        []
% 3.64/0.98  --share_sel_clauses                     true
% 3.64/0.98  --reset_solvers                         false
% 3.64/0.98  --bc_imp_inh                            [conj_cone]
% 3.64/0.98  --conj_cone_tolerance                   3.
% 3.64/0.98  --extra_neg_conj                        none
% 3.64/0.98  --large_theory_mode                     true
% 3.64/0.98  --prolific_symb_bound                   200
% 3.64/0.98  --lt_threshold                          2000
% 3.64/0.98  --clause_weak_htbl                      true
% 3.64/0.98  --gc_record_bc_elim                     false
% 3.64/0.98  
% 3.64/0.98  ------ Preprocessing Options
% 3.64/0.98  
% 3.64/0.98  --preprocessing_flag                    true
% 3.64/0.98  --time_out_prep_mult                    0.1
% 3.64/0.98  --splitting_mode                        input
% 3.64/0.98  --splitting_grd                         true
% 3.64/0.98  --splitting_cvd                         false
% 3.64/0.98  --splitting_cvd_svl                     false
% 3.64/0.98  --splitting_nvd                         32
% 3.64/0.98  --sub_typing                            true
% 3.64/0.98  --prep_gs_sim                           true
% 3.64/0.98  --prep_unflatten                        true
% 3.64/0.98  --prep_res_sim                          true
% 3.64/0.98  --prep_upred                            true
% 3.64/0.98  --prep_sem_filter                       exhaustive
% 3.64/0.98  --prep_sem_filter_out                   false
% 3.64/0.98  --pred_elim                             true
% 3.64/0.98  --res_sim_input                         true
% 3.64/0.98  --eq_ax_congr_red                       true
% 3.64/0.98  --pure_diseq_elim                       true
% 3.64/0.98  --brand_transform                       false
% 3.64/0.98  --non_eq_to_eq                          false
% 3.64/0.98  --prep_def_merge                        true
% 3.64/0.98  --prep_def_merge_prop_impl              false
% 3.64/0.99  --prep_def_merge_mbd                    true
% 3.64/0.99  --prep_def_merge_tr_red                 false
% 3.64/0.99  --prep_def_merge_tr_cl                  false
% 3.64/0.99  --smt_preprocessing                     true
% 3.64/0.99  --smt_ac_axioms                         fast
% 3.64/0.99  --preprocessed_out                      false
% 3.64/0.99  --preprocessed_stats                    false
% 3.64/0.99  
% 3.64/0.99  ------ Abstraction refinement Options
% 3.64/0.99  
% 3.64/0.99  --abstr_ref                             []
% 3.64/0.99  --abstr_ref_prep                        false
% 3.64/0.99  --abstr_ref_until_sat                   false
% 3.64/0.99  --abstr_ref_sig_restrict                funpre
% 3.64/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.64/0.99  --abstr_ref_under                       []
% 3.64/0.99  
% 3.64/0.99  ------ SAT Options
% 3.64/0.99  
% 3.64/0.99  --sat_mode                              false
% 3.64/0.99  --sat_fm_restart_options                ""
% 3.64/0.99  --sat_gr_def                            false
% 3.64/0.99  --sat_epr_types                         true
% 3.64/0.99  --sat_non_cyclic_types                  false
% 3.64/0.99  --sat_finite_models                     false
% 3.64/0.99  --sat_fm_lemmas                         false
% 3.64/0.99  --sat_fm_prep                           false
% 3.64/0.99  --sat_fm_uc_incr                        true
% 3.64/0.99  --sat_out_model                         small
% 3.64/0.99  --sat_out_clauses                       false
% 3.64/0.99  
% 3.64/0.99  ------ QBF Options
% 3.64/0.99  
% 3.64/0.99  --qbf_mode                              false
% 3.64/0.99  --qbf_elim_univ                         false
% 3.64/0.99  --qbf_dom_inst                          none
% 3.64/0.99  --qbf_dom_pre_inst                      false
% 3.64/0.99  --qbf_sk_in                             false
% 3.64/0.99  --qbf_pred_elim                         true
% 3.64/0.99  --qbf_split                             512
% 3.64/0.99  
% 3.64/0.99  ------ BMC1 Options
% 3.64/0.99  
% 3.64/0.99  --bmc1_incremental                      false
% 3.64/0.99  --bmc1_axioms                           reachable_all
% 3.64/0.99  --bmc1_min_bound                        0
% 3.64/0.99  --bmc1_max_bound                        -1
% 3.64/0.99  --bmc1_max_bound_default                -1
% 3.64/0.99  --bmc1_symbol_reachability              true
% 3.64/0.99  --bmc1_property_lemmas                  false
% 3.64/0.99  --bmc1_k_induction                      false
% 3.64/0.99  --bmc1_non_equiv_states                 false
% 3.64/0.99  --bmc1_deadlock                         false
% 3.64/0.99  --bmc1_ucm                              false
% 3.64/0.99  --bmc1_add_unsat_core                   none
% 3.64/0.99  --bmc1_unsat_core_children              false
% 3.64/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.64/0.99  --bmc1_out_stat                         full
% 3.64/0.99  --bmc1_ground_init                      false
% 3.64/0.99  --bmc1_pre_inst_next_state              false
% 3.64/0.99  --bmc1_pre_inst_state                   false
% 3.64/0.99  --bmc1_pre_inst_reach_state             false
% 3.64/0.99  --bmc1_out_unsat_core                   false
% 3.64/0.99  --bmc1_aig_witness_out                  false
% 3.64/0.99  --bmc1_verbose                          false
% 3.64/0.99  --bmc1_dump_clauses_tptp                false
% 3.64/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.64/0.99  --bmc1_dump_file                        -
% 3.64/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.64/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.64/0.99  --bmc1_ucm_extend_mode                  1
% 3.64/0.99  --bmc1_ucm_init_mode                    2
% 3.64/0.99  --bmc1_ucm_cone_mode                    none
% 3.64/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.64/0.99  --bmc1_ucm_relax_model                  4
% 3.64/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.64/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.64/0.99  --bmc1_ucm_layered_model                none
% 3.64/0.99  --bmc1_ucm_max_lemma_size               10
% 3.64/0.99  
% 3.64/0.99  ------ AIG Options
% 3.64/0.99  
% 3.64/0.99  --aig_mode                              false
% 3.64/0.99  
% 3.64/0.99  ------ Instantiation Options
% 3.64/0.99  
% 3.64/0.99  --instantiation_flag                    true
% 3.64/0.99  --inst_sos_flag                         true
% 3.64/0.99  --inst_sos_phase                        true
% 3.64/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.64/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.64/0.99  --inst_lit_sel_side                     num_symb
% 3.64/0.99  --inst_solver_per_active                1400
% 3.64/0.99  --inst_solver_calls_frac                1.
% 3.64/0.99  --inst_passive_queue_type               priority_queues
% 3.64/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.64/0.99  --inst_passive_queues_freq              [25;2]
% 3.64/0.99  --inst_dismatching                      true
% 3.64/0.99  --inst_eager_unprocessed_to_passive     true
% 3.64/0.99  --inst_prop_sim_given                   true
% 3.64/0.99  --inst_prop_sim_new                     false
% 3.64/0.99  --inst_subs_new                         false
% 3.64/0.99  --inst_eq_res_simp                      false
% 3.64/0.99  --inst_subs_given                       false
% 3.64/0.99  --inst_orphan_elimination               true
% 3.64/0.99  --inst_learning_loop_flag               true
% 3.64/0.99  --inst_learning_start                   3000
% 3.64/0.99  --inst_learning_factor                  2
% 3.64/0.99  --inst_start_prop_sim_after_learn       3
% 3.64/0.99  --inst_sel_renew                        solver
% 3.64/0.99  --inst_lit_activity_flag                true
% 3.64/0.99  --inst_restr_to_given                   false
% 3.64/0.99  --inst_activity_threshold               500
% 3.64/0.99  --inst_out_proof                        true
% 3.64/0.99  
% 3.64/0.99  ------ Resolution Options
% 3.64/0.99  
% 3.64/0.99  --resolution_flag                       true
% 3.64/0.99  --res_lit_sel                           adaptive
% 3.64/0.99  --res_lit_sel_side                      none
% 3.64/0.99  --res_ordering                          kbo
% 3.64/0.99  --res_to_prop_solver                    active
% 3.64/0.99  --res_prop_simpl_new                    false
% 3.64/0.99  --res_prop_simpl_given                  true
% 3.64/0.99  --res_passive_queue_type                priority_queues
% 3.64/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.64/0.99  --res_passive_queues_freq               [15;5]
% 3.64/0.99  --res_forward_subs                      full
% 3.64/0.99  --res_backward_subs                     full
% 3.64/0.99  --res_forward_subs_resolution           true
% 3.64/0.99  --res_backward_subs_resolution          true
% 3.64/0.99  --res_orphan_elimination                true
% 3.64/0.99  --res_time_limit                        2.
% 3.64/0.99  --res_out_proof                         true
% 3.64/0.99  
% 3.64/0.99  ------ Superposition Options
% 3.64/0.99  
% 3.64/0.99  --superposition_flag                    true
% 3.64/0.99  --sup_passive_queue_type                priority_queues
% 3.64/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.64/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.64/0.99  --demod_completeness_check              fast
% 3.64/0.99  --demod_use_ground                      true
% 3.64/0.99  --sup_to_prop_solver                    passive
% 3.64/0.99  --sup_prop_simpl_new                    true
% 3.64/0.99  --sup_prop_simpl_given                  true
% 3.64/0.99  --sup_fun_splitting                     true
% 3.64/0.99  --sup_smt_interval                      50000
% 3.64/0.99  
% 3.64/0.99  ------ Superposition Simplification Setup
% 3.64/0.99  
% 3.64/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.64/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.64/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.64/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.64/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.64/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.64/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.64/0.99  --sup_immed_triv                        [TrivRules]
% 3.64/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.99  --sup_immed_bw_main                     []
% 3.64/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.64/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.64/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.99  --sup_input_bw                          []
% 3.64/0.99  
% 3.64/0.99  ------ Combination Options
% 3.64/0.99  
% 3.64/0.99  --comb_res_mult                         3
% 3.64/0.99  --comb_sup_mult                         2
% 3.64/0.99  --comb_inst_mult                        10
% 3.64/0.99  
% 3.64/0.99  ------ Debug Options
% 3.64/0.99  
% 3.64/0.99  --dbg_backtrace                         false
% 3.64/0.99  --dbg_dump_prop_clauses                 false
% 3.64/0.99  --dbg_dump_prop_clauses_file            -
% 3.64/0.99  --dbg_out_stat                          false
% 3.64/0.99  ------ Parsing...
% 3.64/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.64/0.99  
% 3.64/0.99  ------ Preprocessing... sf_s  rm: 2 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 3.64/0.99  
% 3.64/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.64/0.99  
% 3.64/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.64/0.99  ------ Proving...
% 3.64/0.99  ------ Problem Properties 
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  clauses                                 19
% 3.64/0.99  conjectures                             3
% 3.64/0.99  EPR                                     2
% 3.64/0.99  Horn                                    16
% 3.64/0.99  unary                                   5
% 3.64/0.99  binary                                  0
% 3.64/0.99  lits                                    83
% 3.64/0.99  lits eq                                 21
% 3.64/0.99  fd_pure                                 0
% 3.64/0.99  fd_pseudo                               0
% 3.64/0.99  fd_cond                                 0
% 3.64/0.99  fd_pseudo_cond                          5
% 3.64/0.99  AC symbols                              0
% 3.64/0.99  
% 3.64/0.99  ------ Schedule dynamic 5 is on 
% 3.64/0.99  
% 3.64/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  ------ 
% 3.64/0.99  Current options:
% 3.64/0.99  ------ 
% 3.64/0.99  
% 3.64/0.99  ------ Input Options
% 3.64/0.99  
% 3.64/0.99  --out_options                           all
% 3.64/0.99  --tptp_safe_out                         true
% 3.64/0.99  --problem_path                          ""
% 3.64/0.99  --include_path                          ""
% 3.64/0.99  --clausifier                            res/vclausify_rel
% 3.64/0.99  --clausifier_options                    ""
% 3.64/0.99  --stdin                                 false
% 3.64/0.99  --stats_out                             all
% 3.64/0.99  
% 3.64/0.99  ------ General Options
% 3.64/0.99  
% 3.64/0.99  --fof                                   false
% 3.64/0.99  --time_out_real                         305.
% 3.64/0.99  --time_out_virtual                      -1.
% 3.64/0.99  --symbol_type_check                     false
% 3.64/0.99  --clausify_out                          false
% 3.64/0.99  --sig_cnt_out                           false
% 3.64/0.99  --trig_cnt_out                          false
% 3.64/0.99  --trig_cnt_out_tolerance                1.
% 3.64/0.99  --trig_cnt_out_sk_spl                   false
% 3.64/0.99  --abstr_cl_out                          false
% 3.64/0.99  
% 3.64/0.99  ------ Global Options
% 3.64/0.99  
% 3.64/0.99  --schedule                              default
% 3.64/0.99  --add_important_lit                     false
% 3.64/0.99  --prop_solver_per_cl                    1000
% 3.64/0.99  --min_unsat_core                        false
% 3.64/0.99  --soft_assumptions                      false
% 3.64/0.99  --soft_lemma_size                       3
% 3.64/0.99  --prop_impl_unit_size                   0
% 3.64/0.99  --prop_impl_unit                        []
% 3.64/0.99  --share_sel_clauses                     true
% 3.64/0.99  --reset_solvers                         false
% 3.64/0.99  --bc_imp_inh                            [conj_cone]
% 3.64/0.99  --conj_cone_tolerance                   3.
% 3.64/0.99  --extra_neg_conj                        none
% 3.64/0.99  --large_theory_mode                     true
% 3.64/0.99  --prolific_symb_bound                   200
% 3.64/0.99  --lt_threshold                          2000
% 3.64/0.99  --clause_weak_htbl                      true
% 3.64/0.99  --gc_record_bc_elim                     false
% 3.64/0.99  
% 3.64/0.99  ------ Preprocessing Options
% 3.64/0.99  
% 3.64/0.99  --preprocessing_flag                    true
% 3.64/0.99  --time_out_prep_mult                    0.1
% 3.64/0.99  --splitting_mode                        input
% 3.64/0.99  --splitting_grd                         true
% 3.64/0.99  --splitting_cvd                         false
% 3.64/0.99  --splitting_cvd_svl                     false
% 3.64/0.99  --splitting_nvd                         32
% 3.64/0.99  --sub_typing                            true
% 3.64/0.99  --prep_gs_sim                           true
% 3.64/0.99  --prep_unflatten                        true
% 3.64/0.99  --prep_res_sim                          true
% 3.64/0.99  --prep_upred                            true
% 3.64/0.99  --prep_sem_filter                       exhaustive
% 3.64/0.99  --prep_sem_filter_out                   false
% 3.64/0.99  --pred_elim                             true
% 3.64/0.99  --res_sim_input                         true
% 3.64/0.99  --eq_ax_congr_red                       true
% 3.64/0.99  --pure_diseq_elim                       true
% 3.64/0.99  --brand_transform                       false
% 3.64/0.99  --non_eq_to_eq                          false
% 3.64/0.99  --prep_def_merge                        true
% 3.64/0.99  --prep_def_merge_prop_impl              false
% 3.64/0.99  --prep_def_merge_mbd                    true
% 3.64/0.99  --prep_def_merge_tr_red                 false
% 3.64/0.99  --prep_def_merge_tr_cl                  false
% 3.64/0.99  --smt_preprocessing                     true
% 3.64/0.99  --smt_ac_axioms                         fast
% 3.64/0.99  --preprocessed_out                      false
% 3.64/0.99  --preprocessed_stats                    false
% 3.64/0.99  
% 3.64/0.99  ------ Abstraction refinement Options
% 3.64/0.99  
% 3.64/0.99  --abstr_ref                             []
% 3.64/0.99  --abstr_ref_prep                        false
% 3.64/0.99  --abstr_ref_until_sat                   false
% 3.64/0.99  --abstr_ref_sig_restrict                funpre
% 3.64/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.64/0.99  --abstr_ref_under                       []
% 3.64/0.99  
% 3.64/0.99  ------ SAT Options
% 3.64/0.99  
% 3.64/0.99  --sat_mode                              false
% 3.64/0.99  --sat_fm_restart_options                ""
% 3.64/0.99  --sat_gr_def                            false
% 3.64/0.99  --sat_epr_types                         true
% 3.64/0.99  --sat_non_cyclic_types                  false
% 3.64/0.99  --sat_finite_models                     false
% 3.64/0.99  --sat_fm_lemmas                         false
% 3.64/0.99  --sat_fm_prep                           false
% 3.64/0.99  --sat_fm_uc_incr                        true
% 3.64/0.99  --sat_out_model                         small
% 3.64/0.99  --sat_out_clauses                       false
% 3.64/0.99  
% 3.64/0.99  ------ QBF Options
% 3.64/0.99  
% 3.64/0.99  --qbf_mode                              false
% 3.64/0.99  --qbf_elim_univ                         false
% 3.64/0.99  --qbf_dom_inst                          none
% 3.64/0.99  --qbf_dom_pre_inst                      false
% 3.64/0.99  --qbf_sk_in                             false
% 3.64/0.99  --qbf_pred_elim                         true
% 3.64/0.99  --qbf_split                             512
% 3.64/0.99  
% 3.64/0.99  ------ BMC1 Options
% 3.64/0.99  
% 3.64/0.99  --bmc1_incremental                      false
% 3.64/0.99  --bmc1_axioms                           reachable_all
% 3.64/0.99  --bmc1_min_bound                        0
% 3.64/0.99  --bmc1_max_bound                        -1
% 3.64/0.99  --bmc1_max_bound_default                -1
% 3.64/0.99  --bmc1_symbol_reachability              true
% 3.64/0.99  --bmc1_property_lemmas                  false
% 3.64/0.99  --bmc1_k_induction                      false
% 3.64/0.99  --bmc1_non_equiv_states                 false
% 3.64/0.99  --bmc1_deadlock                         false
% 3.64/0.99  --bmc1_ucm                              false
% 3.64/0.99  --bmc1_add_unsat_core                   none
% 3.64/0.99  --bmc1_unsat_core_children              false
% 3.64/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.64/0.99  --bmc1_out_stat                         full
% 3.64/0.99  --bmc1_ground_init                      false
% 3.64/0.99  --bmc1_pre_inst_next_state              false
% 3.64/0.99  --bmc1_pre_inst_state                   false
% 3.64/0.99  --bmc1_pre_inst_reach_state             false
% 3.64/0.99  --bmc1_out_unsat_core                   false
% 3.64/0.99  --bmc1_aig_witness_out                  false
% 3.64/0.99  --bmc1_verbose                          false
% 3.64/0.99  --bmc1_dump_clauses_tptp                false
% 3.64/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.64/0.99  --bmc1_dump_file                        -
% 3.64/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.64/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.64/0.99  --bmc1_ucm_extend_mode                  1
% 3.64/0.99  --bmc1_ucm_init_mode                    2
% 3.64/0.99  --bmc1_ucm_cone_mode                    none
% 3.64/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.64/0.99  --bmc1_ucm_relax_model                  4
% 3.64/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.64/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.64/0.99  --bmc1_ucm_layered_model                none
% 3.64/0.99  --bmc1_ucm_max_lemma_size               10
% 3.64/0.99  
% 3.64/0.99  ------ AIG Options
% 3.64/0.99  
% 3.64/0.99  --aig_mode                              false
% 3.64/0.99  
% 3.64/0.99  ------ Instantiation Options
% 3.64/0.99  
% 3.64/0.99  --instantiation_flag                    true
% 3.64/0.99  --inst_sos_flag                         true
% 3.64/0.99  --inst_sos_phase                        true
% 3.64/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.64/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.64/0.99  --inst_lit_sel_side                     none
% 3.64/0.99  --inst_solver_per_active                1400
% 3.64/0.99  --inst_solver_calls_frac                1.
% 3.64/0.99  --inst_passive_queue_type               priority_queues
% 3.64/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.64/0.99  --inst_passive_queues_freq              [25;2]
% 3.64/0.99  --inst_dismatching                      true
% 3.64/0.99  --inst_eager_unprocessed_to_passive     true
% 3.64/0.99  --inst_prop_sim_given                   true
% 3.64/0.99  --inst_prop_sim_new                     false
% 3.64/0.99  --inst_subs_new                         false
% 3.64/0.99  --inst_eq_res_simp                      false
% 3.64/0.99  --inst_subs_given                       false
% 3.64/0.99  --inst_orphan_elimination               true
% 3.64/0.99  --inst_learning_loop_flag               true
% 3.64/0.99  --inst_learning_start                   3000
% 3.64/0.99  --inst_learning_factor                  2
% 3.64/0.99  --inst_start_prop_sim_after_learn       3
% 3.64/0.99  --inst_sel_renew                        solver
% 3.64/0.99  --inst_lit_activity_flag                true
% 3.64/0.99  --inst_restr_to_given                   false
% 3.64/0.99  --inst_activity_threshold               500
% 3.64/0.99  --inst_out_proof                        true
% 3.64/0.99  
% 3.64/0.99  ------ Resolution Options
% 3.64/0.99  
% 3.64/0.99  --resolution_flag                       false
% 3.64/0.99  --res_lit_sel                           adaptive
% 3.64/0.99  --res_lit_sel_side                      none
% 3.64/0.99  --res_ordering                          kbo
% 3.64/0.99  --res_to_prop_solver                    active
% 3.64/0.99  --res_prop_simpl_new                    false
% 3.64/0.99  --res_prop_simpl_given                  true
% 3.64/0.99  --res_passive_queue_type                priority_queues
% 3.64/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.64/0.99  --res_passive_queues_freq               [15;5]
% 3.64/0.99  --res_forward_subs                      full
% 3.64/0.99  --res_backward_subs                     full
% 3.64/0.99  --res_forward_subs_resolution           true
% 3.64/0.99  --res_backward_subs_resolution          true
% 3.64/0.99  --res_orphan_elimination                true
% 3.64/0.99  --res_time_limit                        2.
% 3.64/0.99  --res_out_proof                         true
% 3.64/0.99  
% 3.64/0.99  ------ Superposition Options
% 3.64/0.99  
% 3.64/0.99  --superposition_flag                    true
% 3.64/0.99  --sup_passive_queue_type                priority_queues
% 3.64/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.64/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.64/0.99  --demod_completeness_check              fast
% 3.64/0.99  --demod_use_ground                      true
% 3.64/0.99  --sup_to_prop_solver                    passive
% 3.64/0.99  --sup_prop_simpl_new                    true
% 3.64/0.99  --sup_prop_simpl_given                  true
% 3.64/0.99  --sup_fun_splitting                     true
% 3.64/0.99  --sup_smt_interval                      50000
% 3.64/0.99  
% 3.64/0.99  ------ Superposition Simplification Setup
% 3.64/0.99  
% 3.64/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.64/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.64/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.64/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.64/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.64/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.64/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.64/0.99  --sup_immed_triv                        [TrivRules]
% 3.64/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.99  --sup_immed_bw_main                     []
% 3.64/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.64/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.64/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.64/0.99  --sup_input_bw                          []
% 3.64/0.99  
% 3.64/0.99  ------ Combination Options
% 3.64/0.99  
% 3.64/0.99  --comb_res_mult                         3
% 3.64/0.99  --comb_sup_mult                         2
% 3.64/0.99  --comb_inst_mult                        10
% 3.64/0.99  
% 3.64/0.99  ------ Debug Options
% 3.64/0.99  
% 3.64/0.99  --dbg_backtrace                         false
% 3.64/0.99  --dbg_dump_prop_clauses                 false
% 3.64/0.99  --dbg_dump_prop_clauses_file            -
% 3.64/0.99  --dbg_out_stat                          false
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  ------ Proving...
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  % SZS status Theorem for theBenchmark.p
% 3.64/0.99  
% 3.64/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.64/0.99  
% 3.64/0.99  fof(f15,conjecture,(
% 3.64/0.99    ! [X0] : (~v1_xboole_0(X0) => (v2_lattice3(k2_yellow_1(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) => r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))))))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f16,negated_conjecture,(
% 3.64/0.99    ~! [X0] : (~v1_xboole_0(X0) => (v2_lattice3(k2_yellow_1(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) => r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2))))))),
% 3.64/0.99    inference(negated_conjecture,[],[f15])).
% 3.64/0.99  
% 3.64/0.99  fof(f35,plain,(
% 3.64/0.99    ? [X0] : ((? [X1] : (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))) & v2_lattice3(k2_yellow_1(X0))) & ~v1_xboole_0(X0))),
% 3.64/0.99    inference(ennf_transformation,[],[f16])).
% 3.64/0.99  
% 3.64/0.99  fof(f36,plain,(
% 3.64/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))) & v2_lattice3(k2_yellow_1(X0)) & ~v1_xboole_0(X0))),
% 3.64/0.99    inference(flattening,[],[f35])).
% 3.64/0.99  
% 3.64/0.99  fof(f48,plain,(
% 3.64/0.99    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) => (~r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,sK3),k3_xboole_0(X1,sK3)) & m1_subset_1(sK3,u1_struct_0(k2_yellow_1(X0))))) )),
% 3.64/0.99    introduced(choice_axiom,[])).
% 3.64/0.99  
% 3.64/0.99  fof(f47,plain,(
% 3.64/0.99    ( ! [X0] : (? [X1] : (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))) => (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(X0),sK2,X2),k3_xboole_0(sK2,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) & m1_subset_1(sK2,u1_struct_0(k2_yellow_1(X0))))) )),
% 3.64/0.99    introduced(choice_axiom,[])).
% 3.64/0.99  
% 3.64/0.99  fof(f46,plain,(
% 3.64/0.99    ? [X0] : (? [X1] : (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(X0),X1,X2),k3_xboole_0(X1,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) & m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))) & v2_lattice3(k2_yellow_1(X0)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (~r1_tarski(k11_lattice3(k2_yellow_1(sK1),X1,X2),k3_xboole_0(X1,X2)) & m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1)))) & m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))) & v2_lattice3(k2_yellow_1(sK1)) & ~v1_xboole_0(sK1))),
% 3.64/0.99    introduced(choice_axiom,[])).
% 3.64/0.99  
% 3.64/0.99  fof(f49,plain,(
% 3.64/0.99    ((~r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k3_xboole_0(sK2,sK3)) & m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))) & m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))) & v2_lattice3(k2_yellow_1(sK1)) & ~v1_xboole_0(sK1)),
% 3.64/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f36,f48,f47,f46])).
% 3.64/0.99  
% 3.64/0.99  fof(f77,plain,(
% 3.64/0.99    v2_lattice3(k2_yellow_1(sK1))),
% 3.64/0.99    inference(cnf_transformation,[],[f49])).
% 3.64/0.99  
% 3.64/0.99  fof(f7,axiom,(
% 3.64/0.99    ! [X0] : ((l1_orders_2(X0) & v2_lattice3(X0) & v5_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (k11_lattice3(X0,X1,X2) = X3 <=> (! [X4] : (m1_subset_1(X4,u1_struct_0(X0)) => ((r1_orders_2(X0,X4,X2) & r1_orders_2(X0,X4,X1)) => r1_orders_2(X0,X4,X3))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1)))))))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f26,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((k11_lattice3(X0,X1,X2) = X3 <=> (! [X4] : ((r1_orders_2(X0,X4,X3) | (~r1_orders_2(X0,X4,X2) | ~r1_orders_2(X0,X4,X1))) | ~m1_subset_1(X4,u1_struct_0(X0))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)))),
% 3.64/0.99    inference(ennf_transformation,[],[f7])).
% 3.64/0.99  
% 3.64/0.99  fof(f27,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((k11_lattice3(X0,X1,X2) = X3 <=> (! [X4] : (r1_orders_2(X0,X4,X3) | ~r1_orders_2(X0,X4,X2) | ~r1_orders_2(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0))),
% 3.64/0.99    inference(flattening,[],[f26])).
% 3.64/0.99  
% 3.64/0.99  fof(f39,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((k11_lattice3(X0,X1,X2) = X3 | (? [X4] : (~r1_orders_2(X0,X4,X3) & r1_orders_2(X0,X4,X2) & r1_orders_2(X0,X4,X1) & m1_subset_1(X4,u1_struct_0(X0))) | ~r1_orders_2(X0,X3,X2) | ~r1_orders_2(X0,X3,X1))) & ((! [X4] : (r1_orders_2(X0,X4,X3) | ~r1_orders_2(X0,X4,X2) | ~r1_orders_2(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1)) | k11_lattice3(X0,X1,X2) != X3)) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0))),
% 3.64/0.99    inference(nnf_transformation,[],[f27])).
% 3.64/0.99  
% 3.64/0.99  fof(f40,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((k11_lattice3(X0,X1,X2) = X3 | ? [X4] : (~r1_orders_2(X0,X4,X3) & r1_orders_2(X0,X4,X2) & r1_orders_2(X0,X4,X1) & m1_subset_1(X4,u1_struct_0(X0))) | ~r1_orders_2(X0,X3,X2) | ~r1_orders_2(X0,X3,X1)) & ((! [X4] : (r1_orders_2(X0,X4,X3) | ~r1_orders_2(X0,X4,X2) | ~r1_orders_2(X0,X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1)) | k11_lattice3(X0,X1,X2) != X3)) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0))),
% 3.64/0.99    inference(flattening,[],[f39])).
% 3.64/0.99  
% 3.64/0.99  fof(f41,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((k11_lattice3(X0,X1,X2) = X3 | ? [X4] : (~r1_orders_2(X0,X4,X3) & r1_orders_2(X0,X4,X2) & r1_orders_2(X0,X4,X1) & m1_subset_1(X4,u1_struct_0(X0))) | ~r1_orders_2(X0,X3,X2) | ~r1_orders_2(X0,X3,X1)) & ((! [X5] : (r1_orders_2(X0,X5,X3) | ~r1_orders_2(X0,X5,X2) | ~r1_orders_2(X0,X5,X1) | ~m1_subset_1(X5,u1_struct_0(X0))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1)) | k11_lattice3(X0,X1,X2) != X3)) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0))),
% 3.64/0.99    inference(rectify,[],[f40])).
% 3.64/0.99  
% 3.64/0.99  fof(f42,plain,(
% 3.64/0.99    ! [X3,X2,X1,X0] : (? [X4] : (~r1_orders_2(X0,X4,X3) & r1_orders_2(X0,X4,X2) & r1_orders_2(X0,X4,X1) & m1_subset_1(X4,u1_struct_0(X0))) => (~r1_orders_2(X0,sK0(X0,X1,X2,X3),X3) & r1_orders_2(X0,sK0(X0,X1,X2,X3),X2) & r1_orders_2(X0,sK0(X0,X1,X2,X3),X1) & m1_subset_1(sK0(X0,X1,X2,X3),u1_struct_0(X0))))),
% 3.64/0.99    introduced(choice_axiom,[])).
% 3.64/0.99  
% 3.64/0.99  fof(f43,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((k11_lattice3(X0,X1,X2) = X3 | (~r1_orders_2(X0,sK0(X0,X1,X2,X3),X3) & r1_orders_2(X0,sK0(X0,X1,X2,X3),X2) & r1_orders_2(X0,sK0(X0,X1,X2,X3),X1) & m1_subset_1(sK0(X0,X1,X2,X3),u1_struct_0(X0))) | ~r1_orders_2(X0,X3,X2) | ~r1_orders_2(X0,X3,X1)) & ((! [X5] : (r1_orders_2(X0,X5,X3) | ~r1_orders_2(X0,X5,X2) | ~r1_orders_2(X0,X5,X1) | ~m1_subset_1(X5,u1_struct_0(X0))) & r1_orders_2(X0,X3,X2) & r1_orders_2(X0,X3,X1)) | k11_lattice3(X0,X1,X2) != X3)) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0))),
% 3.64/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).
% 3.64/0.99  
% 3.64/0.99  fof(f63,plain,(
% 3.64/0.99    ( ! [X2,X0,X3,X1] : (k11_lattice3(X0,X1,X2) = X3 | r1_orders_2(X0,sK0(X0,X1,X2,X3),X2) | ~r1_orders_2(X0,X3,X2) | ~r1_orders_2(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f43])).
% 3.64/0.99  
% 3.64/0.99  fof(f5,axiom,(
% 3.64/0.99    ! [X0] : (l1_orders_2(X0) => (v2_lattice3(X0) => ~v2_struct_0(X0)))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f22,plain,(
% 3.64/0.99    ! [X0] : ((~v2_struct_0(X0) | ~v2_lattice3(X0)) | ~l1_orders_2(X0))),
% 3.64/0.99    inference(ennf_transformation,[],[f5])).
% 3.64/0.99  
% 3.64/0.99  fof(f23,plain,(
% 3.64/0.99    ! [X0] : (~v2_struct_0(X0) | ~v2_lattice3(X0) | ~l1_orders_2(X0))),
% 3.64/0.99    inference(flattening,[],[f22])).
% 3.64/0.99  
% 3.64/0.99  fof(f56,plain,(
% 3.64/0.99    ( ! [X0] : (~v2_struct_0(X0) | ~v2_lattice3(X0) | ~l1_orders_2(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f23])).
% 3.64/0.99  
% 3.64/0.99  fof(f12,axiom,(
% 3.64/0.99    ! [X0] : (v5_orders_2(k2_yellow_1(X0)) & v4_orders_2(k2_yellow_1(X0)) & v3_orders_2(k2_yellow_1(X0)) & v1_orders_2(k2_yellow_1(X0)))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f17,plain,(
% 3.64/0.99    ! [X0] : (v5_orders_2(k2_yellow_1(X0)) & v3_orders_2(k2_yellow_1(X0)) & v1_orders_2(k2_yellow_1(X0)))),
% 3.64/0.99    inference(pure_predicate_removal,[],[f12])).
% 3.64/0.99  
% 3.64/0.99  fof(f18,plain,(
% 3.64/0.99    ! [X0] : (v5_orders_2(k2_yellow_1(X0)) & v3_orders_2(k2_yellow_1(X0)))),
% 3.64/0.99    inference(pure_predicate_removal,[],[f17])).
% 3.64/0.99  
% 3.64/0.99  fof(f71,plain,(
% 3.64/0.99    ( ! [X0] : (v5_orders_2(k2_yellow_1(X0))) )),
% 3.64/0.99    inference(cnf_transformation,[],[f18])).
% 3.64/0.99  
% 3.64/0.99  fof(f11,axiom,(
% 3.64/0.99    ! [X0] : (l1_orders_2(k2_yellow_1(X0)) & v1_orders_2(k2_yellow_1(X0)))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f19,plain,(
% 3.64/0.99    ! [X0] : l1_orders_2(k2_yellow_1(X0))),
% 3.64/0.99    inference(pure_predicate_removal,[],[f11])).
% 3.64/0.99  
% 3.64/0.99  fof(f69,plain,(
% 3.64/0.99    ( ! [X0] : (l1_orders_2(k2_yellow_1(X0))) )),
% 3.64/0.99    inference(cnf_transformation,[],[f19])).
% 3.64/0.99  
% 3.64/0.99  fof(f79,plain,(
% 3.64/0.99    m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))),
% 3.64/0.99    inference(cnf_transformation,[],[f49])).
% 3.64/0.99  
% 3.64/0.99  fof(f13,axiom,(
% 3.64/0.99    ! [X0] : (u1_orders_2(k2_yellow_1(X0)) = k1_yellow_1(X0) & u1_struct_0(k2_yellow_1(X0)) = X0)),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f72,plain,(
% 3.64/0.99    ( ! [X0] : (u1_struct_0(k2_yellow_1(X0)) = X0) )),
% 3.64/0.99    inference(cnf_transformation,[],[f13])).
% 3.64/0.99  
% 3.64/0.99  fof(f78,plain,(
% 3.64/0.99    m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))),
% 3.64/0.99    inference(cnf_transformation,[],[f49])).
% 3.64/0.99  
% 3.64/0.99  fof(f6,axiom,(
% 3.64/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l1_orders_2(X0)) => m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f24,plain,(
% 3.64/0.99    ! [X0,X1,X2] : (m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0)))),
% 3.64/0.99    inference(ennf_transformation,[],[f6])).
% 3.64/0.99  
% 3.64/0.99  fof(f25,plain,(
% 3.64/0.99    ! [X0,X1,X2] : (m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0))),
% 3.64/0.99    inference(flattening,[],[f24])).
% 3.64/0.99  
% 3.64/0.99  fof(f57,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f25])).
% 3.64/0.99  
% 3.64/0.99  fof(f8,axiom,(
% 3.64/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l1_orders_2(X0) & v2_lattice3(X0) & v5_orders_2(X0)) => k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f28,plain,(
% 3.64/0.99    ! [X0,X1,X2] : (k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0)))),
% 3.64/0.99    inference(ennf_transformation,[],[f8])).
% 3.64/0.99  
% 3.64/0.99  fof(f29,plain,(
% 3.64/0.99    ! [X0,X1,X2] : (k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0))),
% 3.64/0.99    inference(flattening,[],[f28])).
% 3.64/0.99  
% 3.64/0.99  fof(f65,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (k11_lattice3(X0,X1,X2) = k12_lattice3(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f29])).
% 3.64/0.99  
% 3.64/0.99  fof(f9,axiom,(
% 3.64/0.99    ! [X0] : ((l1_orders_2(X0) & v2_lattice3(X0) & v5_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1))))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f30,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0)))),
% 3.64/0.99    inference(ennf_transformation,[],[f9])).
% 3.64/0.99  
% 3.64/0.99  fof(f31,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0))),
% 3.64/0.99    inference(flattening,[],[f30])).
% 3.64/0.99  
% 3.64/0.99  fof(f66,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (k11_lattice3(X0,X1,X2) = k11_lattice3(X0,X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f31])).
% 3.64/0.99  
% 3.64/0.99  fof(f10,axiom,(
% 3.64/0.99    ! [X0] : ((l1_orders_2(X0) & v2_lattice3(X0) & v5_orders_2(X0) & v3_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k12_lattice3(X0,X1,X2) = X1 <=> r3_orders_2(X0,X1,X2)))))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f32,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : ((k12_lattice3(X0,X1,X2) = X1 <=> r3_orders_2(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | ~v3_orders_2(X0)))),
% 3.64/0.99    inference(ennf_transformation,[],[f10])).
% 3.64/0.99  
% 3.64/0.99  fof(f33,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : ((k12_lattice3(X0,X1,X2) = X1 <=> r3_orders_2(X0,X1,X2)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | ~v3_orders_2(X0))),
% 3.64/0.99    inference(flattening,[],[f32])).
% 3.64/0.99  
% 3.64/0.99  fof(f44,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (((k12_lattice3(X0,X1,X2) = X1 | ~r3_orders_2(X0,X1,X2)) & (r3_orders_2(X0,X1,X2) | k12_lattice3(X0,X1,X2) != X1)) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | ~v3_orders_2(X0))),
% 3.64/0.99    inference(nnf_transformation,[],[f33])).
% 3.64/0.99  
% 3.64/0.99  fof(f67,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (r3_orders_2(X0,X1,X2) | k12_lattice3(X0,X1,X2) != X1 | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | ~v3_orders_2(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f44])).
% 3.64/0.99  
% 3.64/0.99  fof(f70,plain,(
% 3.64/0.99    ( ! [X0] : (v3_orders_2(k2_yellow_1(X0))) )),
% 3.64/0.99    inference(cnf_transformation,[],[f18])).
% 3.64/0.99  
% 3.64/0.99  fof(f14,axiom,(
% 3.64/0.99    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) => ! [X2] : (m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) => (r3_orders_2(k2_yellow_1(X0),X1,X2) <=> r1_tarski(X1,X2)))))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f34,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : ((r3_orders_2(k2_yellow_1(X0),X1,X2) <=> r1_tarski(X1,X2)) | ~m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) | ~m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))) | v1_xboole_0(X0))),
% 3.64/0.99    inference(ennf_transformation,[],[f14])).
% 3.64/0.99  
% 3.64/0.99  fof(f45,plain,(
% 3.64/0.99    ! [X0] : (! [X1] : (! [X2] : (((r3_orders_2(k2_yellow_1(X0),X1,X2) | ~r1_tarski(X1,X2)) & (r1_tarski(X1,X2) | ~r3_orders_2(k2_yellow_1(X0),X1,X2))) | ~m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))) | ~m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))) | v1_xboole_0(X0))),
% 3.64/0.99    inference(nnf_transformation,[],[f34])).
% 3.64/0.99  
% 3.64/0.99  fof(f74,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (r1_tarski(X1,X2) | ~r3_orders_2(k2_yellow_1(X0),X1,X2) | ~m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) | ~m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) | v1_xboole_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f45])).
% 3.64/0.99  
% 3.64/0.99  fof(f76,plain,(
% 3.64/0.99    ~v1_xboole_0(sK1)),
% 3.64/0.99    inference(cnf_transformation,[],[f49])).
% 3.64/0.99  
% 3.64/0.99  fof(f64,plain,(
% 3.64/0.99    ( ! [X2,X0,X3,X1] : (k11_lattice3(X0,X1,X2) = X3 | ~r1_orders_2(X0,sK0(X0,X1,X2,X3),X3) | ~r1_orders_2(X0,X3,X2) | ~r1_orders_2(X0,X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f43])).
% 3.64/0.99  
% 3.64/0.99  fof(f60,plain,(
% 3.64/0.99    ( ! [X2,X0,X5,X3,X1] : (r1_orders_2(X0,X5,X3) | ~r1_orders_2(X0,X5,X2) | ~r1_orders_2(X0,X5,X1) | ~m1_subset_1(X5,u1_struct_0(X0)) | k11_lattice3(X0,X1,X2) != X3 | ~m1_subset_1(X3,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f43])).
% 3.64/0.99  
% 3.64/0.99  fof(f86,plain,(
% 3.64/0.99    ( ! [X2,X0,X5,X1] : (r1_orders_2(X0,X5,k11_lattice3(X0,X1,X2)) | ~r1_orders_2(X0,X5,X2) | ~r1_orders_2(X0,X5,X1) | ~m1_subset_1(X5,u1_struct_0(X0)) | ~m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(equality_resolution,[],[f60])).
% 3.64/0.99  
% 3.64/0.99  fof(f58,plain,(
% 3.64/0.99    ( ! [X2,X0,X3,X1] : (r1_orders_2(X0,X3,X1) | k11_lattice3(X0,X1,X2) != X3 | ~m1_subset_1(X3,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f43])).
% 3.64/0.99  
% 3.64/0.99  fof(f88,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1) | ~m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(equality_resolution,[],[f58])).
% 3.64/0.99  
% 3.64/0.99  fof(f59,plain,(
% 3.64/0.99    ( ! [X2,X0,X3,X1] : (r1_orders_2(X0,X3,X2) | k11_lattice3(X0,X1,X2) != X3 | ~m1_subset_1(X3,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f43])).
% 3.64/0.99  
% 3.64/0.99  fof(f87,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2) | ~m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v2_lattice3(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 3.64/0.99    inference(equality_resolution,[],[f59])).
% 3.64/0.99  
% 3.64/0.99  fof(f2,axiom,(
% 3.64/0.99    ! [X0,X1,X2] : ((r1_tarski(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k3_xboole_0(X1,X2)))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f20,plain,(
% 3.64/0.99    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | (~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)))),
% 3.64/0.99    inference(ennf_transformation,[],[f2])).
% 3.64/0.99  
% 3.64/0.99  fof(f21,plain,(
% 3.64/0.99    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1))),
% 3.64/0.99    inference(flattening,[],[f20])).
% 3.64/0.99  
% 3.64/0.99  fof(f53,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f21])).
% 3.64/0.99  
% 3.64/0.99  fof(f4,axiom,(
% 3.64/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f55,plain,(
% 3.64/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.64/0.99    inference(cnf_transformation,[],[f4])).
% 3.64/0.99  
% 3.64/0.99  fof(f3,axiom,(
% 3.64/0.99    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1)),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f54,plain,(
% 3.64/0.99    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f3])).
% 3.64/0.99  
% 3.64/0.99  fof(f81,plain,(
% 3.64/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) )),
% 3.64/0.99    inference(definition_unfolding,[],[f55,f54])).
% 3.64/0.99  
% 3.64/0.99  fof(f82,plain,(
% 3.64/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 3.64/0.99    inference(definition_unfolding,[],[f53,f81])).
% 3.64/0.99  
% 3.64/0.99  fof(f1,axiom,(
% 3.64/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.64/0.99  
% 3.64/0.99  fof(f37,plain,(
% 3.64/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.64/0.99    inference(nnf_transformation,[],[f1])).
% 3.64/0.99  
% 3.64/0.99  fof(f38,plain,(
% 3.64/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.64/0.99    inference(flattening,[],[f37])).
% 3.64/0.99  
% 3.64/0.99  fof(f52,plain,(
% 3.64/0.99    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.64/0.99    inference(cnf_transformation,[],[f38])).
% 3.64/0.99  
% 3.64/0.99  fof(f50,plain,(
% 3.64/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.64/0.99    inference(cnf_transformation,[],[f38])).
% 3.64/0.99  
% 3.64/0.99  fof(f85,plain,(
% 3.64/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.64/0.99    inference(equality_resolution,[],[f50])).
% 3.64/0.99  
% 3.64/0.99  fof(f80,plain,(
% 3.64/0.99    ~r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k3_xboole_0(sK2,sK3))),
% 3.64/0.99    inference(cnf_transformation,[],[f49])).
% 3.64/0.99  
% 3.64/0.99  fof(f83,plain,(
% 3.64/0.99    ~r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k1_setfam_1(k2_enumset1(sK2,sK2,sK2,sK3)))),
% 3.64/0.99    inference(definition_unfolding,[],[f80,f81])).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1409,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.64/0.99      theory(equality) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2615,plain,
% 3.64/0.99      ( m1_subset_1(X0,X1)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X2),X3,X4),u1_struct_0(k2_yellow_1(X2)))
% 3.64/0.99      | X0 != k11_lattice3(k2_yellow_1(X2),X3,X4)
% 3.64/0.99      | X1 != u1_struct_0(k2_yellow_1(X2)) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1409]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_7028,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK3,sK2),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
% 3.64/0.99      | X0 != u1_struct_0(k2_yellow_1(sK1))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,sK3) != k11_lattice3(k2_yellow_1(sK1),sK3,sK2) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2615]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_7030,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK3,sK2),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1)
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,sK3) != k11_lattice3(k2_yellow_1(sK1),sK3,sK2)
% 3.64/0.99      | sK1 != u1_struct_0(k2_yellow_1(sK1)) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_7028]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_26,negated_conjecture,
% 3.64/0.99      ( v2_lattice3(k2_yellow_1(sK1)) ),
% 3.64/0.99      inference(cnf_transformation,[],[f77]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_7,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | v2_struct_0(X0)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1 ),
% 3.64/0.99      inference(cnf_transformation,[],[f63]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4,plain,
% 3.64/0.99      ( ~ l1_orders_2(X0) | ~ v2_lattice3(X0) | ~ v2_struct_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_196,plain,
% 3.64/0.99      ( ~ v2_lattice3(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1 ),
% 3.64/0.99      inference(global_propositional_subsumption,[status(thm)],[c_7,c_4]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_197,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1 ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_196]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_18,plain,
% 3.64/0.99      ( v5_orders_2(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_555,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | r1_orders_2(X0,sK0(X0,X3,X2,X1),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1
% 3.64/0.99      | k2_yellow_1(X4) != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_197,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_556,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_555]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_17,plain,
% 3.64/0.99      ( l1_orders_2(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_560,plain,
% 3.64/0.99      ( ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_556,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_561,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_560]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1004,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X3)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_561]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2056,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK2)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X1,X0),X1)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,X1) = X0
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1004]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2228,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),X0)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2056]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6907,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2228]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_24,negated_conjecture,
% 3.64/0.99      ( m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f79]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1723,plain,
% 3.64/0.99      ( m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_20,plain,
% 3.64/0.99      ( u1_struct_0(k2_yellow_1(X0)) = X0 ),
% 3.64/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1729,plain,
% 3.64/0.99      ( m1_subset_1(sK3,sK1) = iProver_top ),
% 3.64/0.99      inference(demodulation,[status(thm)],[c_1723,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_25,negated_conjecture,
% 3.64/0.99      ( m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f78]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1722,plain,
% 3.64/0.99      ( m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1728,plain,
% 3.64/0.99      ( m1_subset_1(sK2,sK1) = iProver_top ),
% 3.64/0.99      inference(demodulation,[status(thm)],[c_1722,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.64/0.99      | m1_subset_1(k11_lattice3(X1,X2,X0),u1_struct_0(X1))
% 3.64/0.99      | ~ l1_orders_2(X1) ),
% 3.64/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_858,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.64/0.99      | m1_subset_1(k11_lattice3(X1,X2,X0),u1_struct_0(X1))
% 3.64/0.99      | k2_yellow_1(X3) != X1 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_859,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(X1),X0,X2),u1_struct_0(k2_yellow_1(X1))) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_858]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1721,plain,
% 3.64/0.99      ( m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1))) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1))) != iProver_top
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(X1),X0,X2),u1_struct_0(k2_yellow_1(X1))) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_859]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1730,plain,
% 3.64/0.99      ( m1_subset_1(X0,X1) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,X1) != iProver_top
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(X1),X0,X2),X1) = iProver_top ),
% 3.64/0.99      inference(demodulation,[status(thm)],[c_1721,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_13,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.64/0.99      | ~ v5_orders_2(X1)
% 3.64/0.99      | ~ l1_orders_2(X1)
% 3.64/0.99      | ~ v2_lattice3(X1)
% 3.64/0.99      | k12_lattice3(X1,X2,X0) = k11_lattice3(X1,X2,X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_768,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.64/0.99      | ~ l1_orders_2(X1)
% 3.64/0.99      | ~ v2_lattice3(X1)
% 3.64/0.99      | k12_lattice3(X1,X2,X0) = k11_lattice3(X1,X2,X0)
% 3.64/0.99      | k2_yellow_1(X3) != X1 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_769,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X1))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X1))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X1),X0,X2) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_768]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_783,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X1))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X1),X0,X2) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
% 3.64/0.99      inference(forward_subsumption_resolution,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_769,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1100,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X1),X2,X0) = k11_lattice3(k2_yellow_1(X1),X2,X0)
% 3.64/0.99      | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_783]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1713,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_1100]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1732,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X1,X0) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,X0) != iProver_top ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_1713,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2152,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),X0,X1) = k11_lattice3(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(equality_resolution,[status(thm)],[c_1732]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2994,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),X0,sK3) = k11_lattice3(k2_yellow_1(sK1),X0,sK3)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_2152]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3351,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK3) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK3)
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1730,c_2994]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6029,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK3)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1728,c_3351]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6043,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK3) ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_6029]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_14,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.64/0.99      | ~ v5_orders_2(X1)
% 3.64/0.99      | ~ l1_orders_2(X1)
% 3.64/0.99      | ~ v2_lattice3(X1)
% 3.64/0.99      | k11_lattice3(X1,X0,X2) = k11_lattice3(X1,X2,X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_745,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 3.64/0.99      | ~ l1_orders_2(X1)
% 3.64/0.99      | ~ v2_lattice3(X1)
% 3.64/0.99      | k11_lattice3(X1,X0,X2) = k11_lattice3(X1,X2,X0)
% 3.64/0.99      | k2_yellow_1(X3) != X1 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_746,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X1))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X1))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X1),X2,X0) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_745]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_760,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X1))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X1),X2,X0) = k11_lattice3(k2_yellow_1(X1),X0,X2) ),
% 3.64/0.99      inference(forward_subsumption_resolution,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_746,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1117,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X1),X0,X2) = k11_lattice3(k2_yellow_1(X1),X2,X0)
% 3.64/0.99      | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_760]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1712,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X2,X1)
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) != iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_1117]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1731,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(X0),X1,X2) = k11_lattice3(k2_yellow_1(X0),X2,X1)
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X2,X0) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,X0) != iProver_top ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_1712,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2031,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),X0,X1) = k11_lattice3(k2_yellow_1(sK1),X1,X0)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top ),
% 3.64/0.99      inference(equality_resolution,[status(thm)],[c_1731]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2734,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),X0,sK2)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1728,c_2031]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2758,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK3,sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3) ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_2734]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2735,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK3,X0) = k11_lattice3(k2_yellow_1(sK1),X0,sK3)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_2031]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2781,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),X0,X1)) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK3)
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1730,c_2735]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4583,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),X0,sK2))
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1728,c_2781]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5005,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK3,sK2)) ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_4583]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5007,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_5005,c_2758]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6045,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_6043,c_2758,c_5007]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_16,plain,
% 3.64/0.99      ( r3_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ v3_orders_2(X0)
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k12_lattice3(X0,X1,X2) != X1 ),
% 3.64/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_19,plain,
% 3.64/0.99      ( v3_orders_2(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_377,plain,
% 3.64/0.99      ( r3_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k12_lattice3(X0,X1,X2) != X1
% 3.64/0.99      | k2_yellow_1(X3) != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_19]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_378,plain,
% 3.64/0.99      ( r3_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v5_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1 ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_377]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_382,plain,
% 3.64/0.99      ( r3_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1 ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_378,c_18,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_383,plain,
% 3.64/0.99      ( r3_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1 ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_382]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1080,plain,
% 3.64/0.99      ( r3_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_383]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_22,plain,
% 3.64/0.99      ( ~ r3_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | r1_tarski(X1,X2)
% 3.64/0.99      | v1_xboole_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_27,negated_conjecture,
% 3.64/0.99      ( ~ v1_xboole_0(sK1) ),
% 3.64/0.99      inference(cnf_transformation,[],[f76]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_333,plain,
% 3.64/0.99      ( ~ r3_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | r1_tarski(X1,X2)
% 3.64/0.99      | sK1 != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_22,c_27]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_334,plain,
% 3.64/0.99      ( ~ r3_orders_2(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | r1_tarski(X0,X1) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_333]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1212,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X4,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | r1_tarski(X3,X4)
% 3.64/0.99      | X3 != X2
% 3.64/0.99      | X4 != X0
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X1),X2,X0) != X2
% 3.64/0.99      | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_1080,c_334]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1213,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X1)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | r1_tarski(X2,X0)
% 3.64/0.99      | k12_lattice3(k2_yellow_1(X1),X2,X0) != X2
% 3.64/0.99      | k2_yellow_1(X1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_1212]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1711,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0))) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0))) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
% 3.64/0.99      | r1_tarski(X1,X2) = iProver_top ),
% 3.64/0.99      inference(predicate_to_equality,[status(thm)],[c_1213]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1737,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X1,X0) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,X0) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,u1_struct_0(k2_yellow_1(sK1))) != iProver_top
% 3.64/0.99      | r1_tarski(X1,X2) = iProver_top ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_1711,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1738,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(X0),X1,X2) != X1
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(X1,X0) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,X0) != iProver_top
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X2,sK1) != iProver_top
% 3.64/0.99      | r1_tarski(X1,X2) = iProver_top ),
% 3.64/0.99      inference(demodulation,[status(thm)],[c_1737,c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6806,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(sK3,sK1) != iProver_top
% 3.64/0.99      | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3) = iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_6045,c_1738]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6807,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1)
% 3.64/0.99      | ~ m1_subset_1(sK3,sK1)
% 3.64/0.99      | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_6806]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2051,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X1,X0),X1)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,X1) = X0
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1004]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2207,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),X0)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2051]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6708,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2207]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2993,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),X0,sK2) = k11_lattice3(k2_yellow_1(sK1),X0,sK2)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1728,c_2152]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3008,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK2) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK2)
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1730,c_2993]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5045,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK2)
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1728,c_3008]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5067,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK2) ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_5045]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2759,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),X0,X1)) = k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,X1),sK2)
% 3.64/0.99      | m1_subset_1(X1,sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1730,c_2734]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4279,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),X0,sK2))
% 3.64/0.99      | m1_subset_1(X0,sK1) != iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1728,c_2759]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4411,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK3,sK2),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK3,sK2)) ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_1729,c_4279]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4413,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_4411,c_2758]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5069,plain,
% 3.64/0.99      ( k12_lattice3(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) = k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) ),
% 3.64/0.99      inference(light_normalisation,[status(thm)],[c_5067,c_2758,c_4413]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5111,plain,
% 3.64/0.99      ( k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1)
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1) != iProver_top
% 3.64/0.99      | m1_subset_1(sK2,sK1) != iProver_top
% 3.64/0.99      | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) = iProver_top ),
% 3.64/0.99      inference(superposition,[status(thm)],[c_5069,c_1738]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_5112,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK1)
% 3.64/0.99      | ~ m1_subset_1(sK2,sK1)
% 3.64/0.99      | r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) != k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_5111]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_6,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | v2_struct_0(X0)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1 ),
% 3.64/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_201,plain,
% 3.64/0.99      ( ~ v2_lattice3(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1 ),
% 3.64/0.99      inference(global_propositional_subsumption,[status(thm)],[c_6,c_4]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_202,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1 ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_201]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_519,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | ~ r1_orders_2(X0,sK0(X0,X3,X2,X1),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k11_lattice3(X0,X3,X2) = X1
% 3.64/0.99      | k2_yellow_1(X4) != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_202,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_520,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_519]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_524,plain,
% 3.64/0.99      ( ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_520,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_525,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1 ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_524]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1031,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),sK0(k2_yellow_1(X0),X2,X3,X1),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(X0),X2,X3) = X1
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_525]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2239,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X1,X0),X0)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,X1) = X0
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1031]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2699,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2239]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4697,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2699]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2234,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X1,X0),X0)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,X1) = X0
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1031]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2678,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,X0,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,X0) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2234]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4623,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),sK0(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3)),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK3,k11_lattice3(k2_yellow_1(sK1),sK2,sK3)) = k11_lattice3(k2_yellow_1(sK1),sK2,sK3)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2678]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1403,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4342,plain,
% 3.64/0.99      ( X0 != X1
% 3.64/0.99      | X0 = u1_struct_0(k2_yellow_1(X2))
% 3.64/0.99      | u1_struct_0(k2_yellow_1(X2)) != X1 ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1403]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4343,plain,
% 3.64/0.99      ( u1_struct_0(k2_yellow_1(sK1)) != sK1
% 3.64/0.99      | sK1 = u1_struct_0(k2_yellow_1(sK1))
% 3.64/0.99      | sK1 != sK1 ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_4342]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_10,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | v2_struct_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f86]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_175,plain,
% 3.64/0.99      ( ~ v2_lattice3(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X2) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_10,c_4]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_176,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_175]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_659,plain,
% 3.64/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 3.64/0.99      | ~ r1_orders_2(X0,X1,X3)
% 3.64/0.99      | r1_orders_2(X0,X1,k11_lattice3(X0,X3,X2))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X3,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k2_yellow_1(X4) != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_176,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_660,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_659]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_664,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_660,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_665,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_664]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_915,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X2,X3),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_665]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_935,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(X0),X1,X2)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(X0),X1,X3)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),X1,k11_lattice3(k2_yellow_1(X0),X2,X3))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X3,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(forward_subsumption_resolution,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_915,c_859]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2424,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),X0,X1)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(sK1),X0,k11_lattice3(k2_yellow_1(sK1),sK2,X1))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),X0,sK2)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_935]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2599,plain,
% 3.64/0.99      ( ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),X0)
% 3.64/0.99      | r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,X0))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2424]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_4103,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k11_lattice3(k2_yellow_1(sK1),sK2,sK3))
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2599]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2268,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),X1,X0),u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_859]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2916,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),X0,sK2),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2268]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3341,plain,
% 3.64/0.99      ( m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK3,sK2),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2916]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2911,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | m1_subset_1(k11_lattice3(k2_yellow_1(sK1),X0,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2268]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3193,plain,
% 3.64/0.99      ( m1_subset_1(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1))) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2911]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1859,plain,
% 3.64/0.99      ( ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,X0) = k11_lattice3(k2_yellow_1(sK1),X0,sK2)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1117]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1991,plain,
% 3.64/0.99      ( ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k11_lattice3(k2_yellow_1(sK1),sK2,sK3) = k11_lattice3(k2_yellow_1(sK1),sK3,sK2)
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1859]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_12,plain,
% 3.64/0.99      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | v2_struct_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f88]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_163,plain,
% 3.64/0.99      ( ~ v2_lattice3(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_12,c_4]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_164,plain,
% 3.64/0.99      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_163]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_722,plain,
% 3.64/0.99      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k2_yellow_1(X3) != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_164,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_723,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_722]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_725,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_723,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_726,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_725]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_876,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(backward_subsumption_resolution,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_859,c_726]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_900,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X1)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_876]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1822,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK3),X0)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_900]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1936,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2)
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1822]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_11,plain,
% 3.64/0.99      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | v2_struct_0(X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_170,plain,
% 3.64/0.99      ( ~ v2_lattice3(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_11,c_4]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_171,plain,
% 3.64/0.99      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ v5_orders_2(X0)
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_170]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_695,plain,
% 3.64/0.99      ( r1_orders_2(X0,k11_lattice3(X0,X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(X0,X1,X2),u1_struct_0(X0))
% 3.64/0.99      | ~ l1_orders_2(X0)
% 3.64/0.99      | ~ v2_lattice3(X0)
% 3.64/0.99      | k2_yellow_1(X3) != X0 ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_171,c_18]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_696,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ l1_orders_2(k2_yellow_1(X0))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(unflattening,[status(thm)],[c_695]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_700,plain,
% 3.64/0.99      ( ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(global_propositional_subsumption,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_696,c_17]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_701,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(k11_lattice3(k2_yellow_1(X0),X1,X2),u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(renaming,[status(thm)],[c_700]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_877,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ v2_lattice3(k2_yellow_1(X0)) ),
% 3.64/0.99      inference(backward_subsumption_resolution,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_859,c_701]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_883,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(X0),k11_lattice3(k2_yellow_1(X0),X1,X2),X2)
% 3.64/0.99      | ~ m1_subset_1(X2,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | ~ m1_subset_1(X1,u1_struct_0(k2_yellow_1(X0)))
% 3.64/0.99      | k2_yellow_1(X0) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(resolution_lifted,[status(thm)],[c_26,c_877]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1802,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),X0,sK3),sK3)
% 3.64/0.99      | ~ m1_subset_1(X0,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_883]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1912,plain,
% 3.64/0.99      ( r1_orders_2(k2_yellow_1(sK1),k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ m1_subset_1(sK3,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | ~ m1_subset_1(sK2,u1_struct_0(k2_yellow_1(sK1)))
% 3.64/0.99      | k2_yellow_1(sK1) != k2_yellow_1(sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1802]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_3,plain,
% 3.64/0.99      ( ~ r1_tarski(X0,X1)
% 3.64/0.99      | ~ r1_tarski(X0,X2)
% 3.64/0.99      | r1_tarski(X0,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1794,plain,
% 3.64/0.99      ( r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k1_setfam_1(k2_enumset1(sK2,sK2,sK2,sK3)))
% 3.64/0.99      | ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK3)
% 3.64/0.99      | ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),sK2) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1764,plain,
% 3.64/0.99      ( m1_subset_1(sK3,sK1) ),
% 3.64/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_1729]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1759,plain,
% 3.64/0.99      ( m1_subset_1(sK2,sK1) ),
% 3.64/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_1728]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1413,plain,
% 3.64/0.99      ( X0 != X1 | k2_yellow_1(X0) = k2_yellow_1(X1) ),
% 3.64/0.99      theory(equality) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_1423,plain,
% 3.64/0.99      ( k2_yellow_1(sK1) = k2_yellow_1(sK1) | sK1 != sK1 ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_1413]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_0,plain,
% 3.64/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.64/0.99      inference(cnf_transformation,[],[f52]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_92,plain,
% 3.64/0.99      ( ~ r1_tarski(sK1,sK1) | sK1 = sK1 ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_2,plain,
% 3.64/0.99      ( r1_tarski(X0,X0) ),
% 3.64/0.99      inference(cnf_transformation,[],[f85]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_88,plain,
% 3.64/0.99      ( r1_tarski(sK1,sK1) ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_2]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_39,plain,
% 3.64/0.99      ( u1_struct_0(k2_yellow_1(sK1)) = sK1 ),
% 3.64/0.99      inference(instantiation,[status(thm)],[c_20]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(c_23,negated_conjecture,
% 3.64/0.99      ( ~ r1_tarski(k11_lattice3(k2_yellow_1(sK1),sK2,sK3),k1_setfam_1(k2_enumset1(sK2,sK2,sK2,sK3))) ),
% 3.64/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.64/0.99  
% 3.64/0.99  cnf(contradiction,plain,
% 3.64/0.99      ( $false ),
% 3.64/0.99      inference(minisat,
% 3.64/0.99                [status(thm)],
% 3.64/0.99                [c_7030,c_6907,c_6807,c_6708,c_5112,c_4697,c_4623,c_4343,
% 3.64/0.99                 c_4103,c_3341,c_3193,c_1991,c_1936,c_1912,c_1794,c_1764,
% 3.64/0.99                 c_1759,c_1423,c_92,c_88,c_39,c_23,c_24,c_25]) ).
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.64/0.99  
% 3.64/0.99  ------                               Statistics
% 3.64/0.99  
% 3.64/0.99  ------ General
% 3.64/0.99  
% 3.64/0.99  abstr_ref_over_cycles:                  0
% 3.64/0.99  abstr_ref_under_cycles:                 0
% 3.64/0.99  gc_basic_clause_elim:                   0
% 3.64/0.99  forced_gc_time:                         0
% 3.64/0.99  parsing_time:                           0.017
% 3.64/0.99  unif_index_cands_time:                  0.
% 3.64/0.99  unif_index_add_time:                    0.
% 3.64/0.99  orderings_time:                         0.
% 3.64/0.99  out_proof_time:                         0.016
% 3.64/0.99  total_time:                             0.394
% 3.64/0.99  num_of_symbols:                         48
% 3.64/0.99  num_of_terms:                           9640
% 3.64/0.99  
% 3.64/0.99  ------ Preprocessing
% 3.64/0.99  
% 3.64/0.99  num_of_splits:                          0
% 3.64/0.99  num_of_split_atoms:                     0
% 3.64/0.99  num_of_reused_defs:                     0
% 3.64/0.99  num_eq_ax_congr_red:                    21
% 3.64/0.99  num_of_sem_filtered_clauses:            2
% 3.64/0.99  num_of_subtypes:                        0
% 3.64/0.99  monotx_restored_types:                  0
% 3.64/0.99  sat_num_of_epr_types:                   0
% 3.64/0.99  sat_num_of_non_cyclic_types:            0
% 3.64/0.99  sat_guarded_non_collapsed_types:        0
% 3.64/0.99  num_pure_diseq_elim:                    0
% 3.64/0.99  simp_replaced_by:                       0
% 3.64/0.99  res_preprocessed:                       109
% 3.64/0.99  prep_upred:                             0
% 3.64/0.99  prep_unflattend:                        22
% 3.64/0.99  smt_new_axioms:                         0
% 3.64/0.99  pred_elim_cands:                        3
% 3.64/0.99  pred_elim:                              6
% 3.64/0.99  pred_elim_cl:                           7
% 3.64/0.99  pred_elim_cycles:                       9
% 3.64/0.99  merged_defs:                            0
% 3.64/0.99  merged_defs_ncl:                        0
% 3.64/0.99  bin_hyper_res:                          0
% 3.64/0.99  prep_cycles:                            4
% 3.64/0.99  pred_elim_time:                         0.036
% 3.64/0.99  splitting_time:                         0.
% 3.64/0.99  sem_filter_time:                        0.
% 3.64/0.99  monotx_time:                            0.001
% 3.64/0.99  subtype_inf_time:                       0.
% 3.64/0.99  
% 3.64/0.99  ------ Problem properties
% 3.64/0.99  
% 3.64/0.99  clauses:                                19
% 3.64/0.99  conjectures:                            3
% 3.64/0.99  epr:                                    2
% 3.64/0.99  horn:                                   16
% 3.64/0.99  ground:                                 3
% 3.64/0.99  unary:                                  5
% 3.64/0.99  binary:                                 0
% 3.64/0.99  lits:                                   83
% 3.64/0.99  lits_eq:                                21
% 3.64/0.99  fd_pure:                                0
% 3.64/0.99  fd_pseudo:                              0
% 3.64/0.99  fd_cond:                                0
% 3.64/0.99  fd_pseudo_cond:                         5
% 3.64/0.99  ac_symbols:                             0
% 3.64/0.99  
% 3.64/0.99  ------ Propositional Solver
% 3.64/0.99  
% 3.64/0.99  prop_solver_calls:                      28
% 3.64/0.99  prop_fast_solver_calls:                 1399
% 3.64/0.99  smt_solver_calls:                       0
% 3.64/0.99  smt_fast_solver_calls:                  0
% 3.64/0.99  prop_num_of_clauses:                    3483
% 3.64/0.99  prop_preprocess_simplified:             8745
% 3.64/0.99  prop_fo_subsumed:                       22
% 3.64/0.99  prop_solver_time:                       0.
% 3.64/0.99  smt_solver_time:                        0.
% 3.64/0.99  smt_fast_solver_time:                   0.
% 3.64/0.99  prop_fast_solver_time:                  0.
% 3.64/0.99  prop_unsat_core_time:                   0.
% 3.64/0.99  
% 3.64/0.99  ------ QBF
% 3.64/0.99  
% 3.64/0.99  qbf_q_res:                              0
% 3.64/0.99  qbf_num_tautologies:                    0
% 3.64/0.99  qbf_prep_cycles:                        0
% 3.64/0.99  
% 3.64/0.99  ------ BMC1
% 3.64/0.99  
% 3.64/0.99  bmc1_current_bound:                     -1
% 3.64/0.99  bmc1_last_solved_bound:                 -1
% 3.64/0.99  bmc1_unsat_core_size:                   -1
% 3.64/0.99  bmc1_unsat_core_parents_size:           -1
% 3.64/0.99  bmc1_merge_next_fun:                    0
% 3.64/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.64/0.99  
% 3.64/0.99  ------ Instantiation
% 3.64/0.99  
% 3.64/0.99  inst_num_of_clauses:                    1122
% 3.64/0.99  inst_num_in_passive:                    274
% 3.64/0.99  inst_num_in_active:                     284
% 3.64/0.99  inst_num_in_unprocessed:                564
% 3.64/0.99  inst_num_of_loops:                      312
% 3.64/0.99  inst_num_of_learning_restarts:          0
% 3.64/0.99  inst_num_moves_active_passive:          26
% 3.64/0.99  inst_lit_activity:                      0
% 3.64/0.99  inst_lit_activity_moves:                0
% 3.64/0.99  inst_num_tautologies:                   0
% 3.64/0.99  inst_num_prop_implied:                  0
% 3.64/0.99  inst_num_existing_simplified:           0
% 3.64/0.99  inst_num_eq_res_simplified:             0
% 3.64/0.99  inst_num_child_elim:                    0
% 3.64/0.99  inst_num_of_dismatching_blockings:      800
% 3.64/0.99  inst_num_of_non_proper_insts:           921
% 3.64/0.99  inst_num_of_duplicates:                 0
% 3.64/0.99  inst_inst_num_from_inst_to_res:         0
% 3.64/0.99  inst_dismatching_checking_time:         0.
% 3.64/0.99  
% 3.64/0.99  ------ Resolution
% 3.64/0.99  
% 3.64/0.99  res_num_of_clauses:                     0
% 3.64/0.99  res_num_in_passive:                     0
% 3.64/0.99  res_num_in_active:                      0
% 3.64/0.99  res_num_of_loops:                       113
% 3.64/0.99  res_forward_subset_subsumed:            82
% 3.64/0.99  res_backward_subset_subsumed:           0
% 3.64/0.99  res_forward_subsumed:                   0
% 3.64/0.99  res_backward_subsumed:                  0
% 3.64/0.99  res_forward_subsumption_resolution:     3
% 3.64/0.99  res_backward_subsumption_resolution:    2
% 3.64/0.99  res_clause_to_clause_subsumption:       581
% 3.64/0.99  res_orphan_elimination:                 0
% 3.64/0.99  res_tautology_del:                      10
% 3.64/0.99  res_num_eq_res_simplified:              0
% 3.64/0.99  res_num_sel_changes:                    0
% 3.64/0.99  res_moves_from_active_to_pass:          0
% 3.64/0.99  
% 3.64/0.99  ------ Superposition
% 3.64/0.99  
% 3.64/0.99  sup_time_total:                         0.
% 3.64/0.99  sup_time_generating:                    0.
% 3.64/0.99  sup_time_sim_full:                      0.
% 3.64/0.99  sup_time_sim_immed:                     0.
% 3.64/0.99  
% 3.64/0.99  sup_num_of_clauses:                     110
% 3.64/0.99  sup_num_in_active:                      60
% 3.64/0.99  sup_num_in_passive:                     50
% 3.64/0.99  sup_num_of_loops:                       62
% 3.64/0.99  sup_fw_superposition:                   72
% 3.64/0.99  sup_bw_superposition:                   42
% 3.64/0.99  sup_immediate_simplified:               29
% 3.64/0.99  sup_given_eliminated:                   0
% 3.64/0.99  comparisons_done:                       0
% 3.64/0.99  comparisons_avoided:                    0
% 3.64/0.99  
% 3.64/0.99  ------ Simplifications
% 3.64/0.99  
% 3.64/0.99  
% 3.64/0.99  sim_fw_subset_subsumed:                 0
% 3.64/0.99  sim_bw_subset_subsumed:                 0
% 3.64/0.99  sim_fw_subsumed:                        12
% 3.64/0.99  sim_bw_subsumed:                        0
% 3.64/0.99  sim_fw_subsumption_res:                 0
% 3.64/0.99  sim_bw_subsumption_res:                 0
% 3.64/0.99  sim_tautology_del:                      2
% 3.64/0.99  sim_eq_tautology_del:                   15
% 3.64/0.99  sim_eq_res_simp:                        1
% 3.64/0.99  sim_fw_demodulated:                     5
% 3.64/0.99  sim_bw_demodulated:                     2
% 3.64/0.99  sim_light_normalised:                   28
% 3.64/0.99  sim_joinable_taut:                      0
% 3.64/0.99  sim_joinable_simp:                      0
% 3.64/0.99  sim_ac_normalised:                      0
% 3.64/0.99  sim_smt_subsumption:                    0
% 3.64/0.99  
%------------------------------------------------------------------------------
