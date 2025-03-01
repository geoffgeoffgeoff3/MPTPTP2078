%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:20:45 EST 2020

% Result     : CounterSatisfiable 1.24s
% Output     : Saturation 1.24s
% Verified   : 
% Statistics : Number of formulae       :  177 ( 940 expanded)
%              Number of clauses        :  130 ( 259 expanded)
%              Number of leaves         :   18 ( 274 expanded)
%              Depth                    :   23
%              Number of atoms          :  836 (6455 expanded)
%              Number of equality atoms :  247 (1542 expanded)
%              Maximal formula depth    :   13 (   6 average)
%              Maximal clause size      :   16 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
               => X1 = X2 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f5,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => ( k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
                 => X1 = X2 ) ) ) ) ),
    inference(negated_conjecture,[],[f4])).

fof(f13,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( X1 != X2
              & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f14,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( X1 != X2
              & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( sK4 != X1
        & k5_waybel_0(X0,sK4) = k5_waybel_0(X0,X1)
        & m1_subset_1(sK4,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( X1 != X2
              & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( sK3 != X2
            & k5_waybel_0(X0,sK3) = k5_waybel_0(X0,X2)
            & m1_subset_1(X2,u1_struct_0(X0)) )
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( X1 != X2
                & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)
                & m1_subset_1(X2,u1_struct_0(X0)) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( X1 != X2
              & k5_waybel_0(sK2,X1) = k5_waybel_0(sK2,X2)
              & m1_subset_1(X2,u1_struct_0(sK2)) )
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l1_orders_2(sK2)
      & v5_orders_2(sK2)
      & v3_orders_2(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( sK3 != sK4
    & k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4)
    & m1_subset_1(sK4,u1_struct_0(sK2))
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l1_orders_2(sK2)
    & v5_orders_2(sK2)
    & v3_orders_2(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f14,f23,f22,f21])).

fof(f44,plain,(
    k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4) ),
    inference(cnf_transformation,[],[f24])).

fof(f3,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( ( ( ! [X3] :
                      ( m1_subset_1(X3,u1_struct_0(X0))
                     => ( r2_lattice3(X0,X2,X3)
                       => r1_orders_2(X0,X1,X3) ) )
                  & r2_lattice3(X0,X2,X1) )
               => ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 ) )
              & ( ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 )
               => ( ! [X3] :
                      ( m1_subset_1(X3,u1_struct_0(X0))
                     => ( r2_lattice3(X0,X2,X3)
                       => r1_orders_2(X0,X1,X3) ) )
                  & r2_lattice3(X0,X2,X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f6,plain,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( ( ( ! [X3] :
                      ( m1_subset_1(X3,u1_struct_0(X0))
                     => ( r2_lattice3(X0,X2,X3)
                       => r1_orders_2(X0,X1,X3) ) )
                  & r2_lattice3(X0,X2,X1) )
               => ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 ) )
              & ( ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 )
               => ( ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X0))
                     => ( r2_lattice3(X0,X2,X4)
                       => r1_orders_2(X0,X1,X4) ) )
                  & r2_lattice3(X0,X2,X1) ) ) ) ) ) ),
    inference(rectify,[],[f3])).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 )
                | ? [X3] :
                    ( ~ r1_orders_2(X0,X1,X3)
                    & r2_lattice3(X0,X2,X3)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r2_lattice3(X0,X2,X1) )
              & ( ( ! [X4] :
                      ( r1_orders_2(X0,X1,X4)
                      | ~ r2_lattice3(X0,X2,X4)
                      | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                  & r2_lattice3(X0,X2,X1) )
                | ~ r1_yellow_0(X0,X2)
                | k1_yellow_0(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 )
                | ? [X3] :
                    ( ~ r1_orders_2(X0,X1,X3)
                    & r2_lattice3(X0,X2,X3)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r2_lattice3(X0,X2,X1) )
              & ( ( ! [X4] :
                      ( r1_orders_2(X0,X1,X4)
                      | ~ r2_lattice3(X0,X2,X4)
                      | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                  & r2_lattice3(X0,X2,X1) )
                | ~ r1_yellow_0(X0,X2)
                | k1_yellow_0(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(flattening,[],[f11])).

fof(f19,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X1,X3)
          & r2_lattice3(X0,X2,X3)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,X1,sK1(X0,X1,X2))
        & r2_lattice3(X0,X2,sK1(X0,X1,X2))
        & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_yellow_0(X0,X2)
                  & k1_yellow_0(X0,X2) = X1 )
                | ( ~ r1_orders_2(X0,X1,sK1(X0,X1,X2))
                  & r2_lattice3(X0,X2,sK1(X0,X1,X2))
                  & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) )
                | ~ r2_lattice3(X0,X2,X1) )
              & ( ( ! [X4] :
                      ( r1_orders_2(X0,X1,X4)
                      | ~ r2_lattice3(X0,X2,X4)
                      | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                  & r2_lattice3(X0,X2,X1) )
                | ~ r1_yellow_0(X0,X2)
                | k1_yellow_0(X0,X2) != X1 ) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f12,f19])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( k1_yellow_0(X0,X2) = X1
      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
      | ~ r2_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f40,plain,(
    v5_orders_2(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f41,plain,(
    l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( k1_yellow_0(X0,X2) = X1
      | r2_lattice3(X0,X2,sK1(X0,X1,X2))
      | ~ r2_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1,X2] :
          ( m1_subset_1(X2,u1_struct_0(X0))
         => ( r2_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X0))
               => ( r2_hidden(X3,X1)
                 => r1_orders_2(X0,X3,X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r2_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X3,X2)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( r2_lattice3(X0,X1,X2)
          <=> ! [X3] :
                ( r1_orders_2(X0,X3,X2)
                | ~ r2_hidden(X3,X1)
                | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f9])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r2_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X3,X2)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X3] :
                  ( r1_orders_2(X0,X3,X2)
                  | ~ r2_hidden(X3,X1)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r2_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r2_lattice3(X0,X1,X2)
              | ? [X3] :
                  ( ~ r1_orders_2(X0,X3,X2)
                  & r2_hidden(X3,X1)
                  & m1_subset_1(X3,u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X4,X2)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r2_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X3,X2)
          & r2_hidden(X3,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
        & r2_hidden(sK0(X0,X1,X2),X1)
        & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1,X2] :
          ( ( ( r2_lattice3(X0,X1,X2)
              | ( ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
                & r2_hidden(sK0(X0,X1,X2),X1)
                & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( r1_orders_2(X0,X4,X2)
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ r2_lattice3(X0,X1,X2) ) )
          | ~ m1_subset_1(X2,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).

fof(f26,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_orders_2(X0,X4,X2)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r2_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X1,X2)
      | r2_hidden(sK0(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X1,X2)
      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( k1_yellow_0(X0,X2) = X1
      | ~ r1_orders_2(X0,X1,sK1(X0,X1,X2))
      | ~ r2_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( r1_yellow_0(X0,X2)
      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))
      | ~ r2_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r1_yellow_0(X0,X2)
      | r2_lattice3(X0,X2,sK1(X0,X1,X2))
      | ~ r2_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r1_yellow_0(X0,X2)
      | ~ r1_orders_2(X0,X1,sK1(X0,X1,X2))
      | ~ r2_lattice3(X0,X2,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f1,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => r1_orders_2(X0,X1,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_orders_2(X0,X1,X1)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_orders_2(X0,X1,X1)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f7])).

fof(f25,plain,(
    ! [X0,X1] :
      ( r1_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f39,plain,(
    v3_orders_2(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f38,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f24])).

fof(f42,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f24])).

fof(f43,plain,(
    m1_subset_1(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f24])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X1,X2)
      | ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f31,plain,(
    ! [X4,X2,X0,X1] :
      ( r1_orders_2(X0,X1,X4)
      | ~ r2_lattice3(X0,X2,X4)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r1_yellow_0(X0,X2)
      | k1_yellow_0(X0,X2) != X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f46,plain,(
    ! [X4,X2,X0] :
      ( r1_orders_2(X0,k1_yellow_0(X0,X2),X4)
      | ~ r2_lattice3(X0,X2,X4)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ r1_yellow_0(X0,X2)
      | ~ m1_subset_1(k1_yellow_0(X0,X2),u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(equality_resolution,[],[f31])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( r2_lattice3(X0,X2,X1)
      | ~ r1_yellow_0(X0,X2)
      | k1_yellow_0(X0,X2) != X1
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f47,plain,(
    ! [X2,X0] :
      ( r2_lattice3(X0,X2,k1_yellow_0(X0,X2))
      | ~ r1_yellow_0(X0,X2)
      | ~ m1_subset_1(k1_yellow_0(X0,X2),u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(equality_resolution,[],[f30])).

fof(f45,plain,(
    sK3 != sK4 ),
    inference(cnf_transformation,[],[f24])).

cnf(c_1548,plain,
    ( k5_waybel_0(X0_45,X0_47) = k5_waybel_0(X0_45,X1_47)
    | X0_47 != X1_47 ),
    theory(equality)).

cnf(c_1544,plain,
    ( X0_49 != X1_49
    | X2_49 != X1_49
    | X2_49 = X0_49 ),
    theory(equality)).

cnf(c_1542,plain,
    ( X0_49 = X0_49 ),
    theory(equality)).

cnf(c_14,negated_conjecture,
    ( k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1538,negated_conjecture,
    ( k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_191,plain,
    ( ~ v5_orders_2(X0)
    | v5_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_190,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_188,plain,
    ( ~ v2_struct_0(X0)
    | v2_struct_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_187,plain,
    ( ~ v3_orders_2(X0)
    | v3_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_186,plain,
    ( ~ l1_orders_2(X0)
    | l1_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_1540,plain,
    ( X0_2 = X0_2 ),
    theory(equality)).

cnf(c_10,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | k1_yellow_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_18,negated_conjecture,
    ( v5_orders_2(sK2) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_317,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | k1_yellow_0(X0,X1) = X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_18])).

cnf(c_318,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
    | ~ l1_orders_2(sK2)
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(unflattening,[status(thm)],[c_317])).

cnf(c_17,negated_conjecture,
    ( l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_322,plain,
    ( m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r2_lattice3(sK2,X0,X1)
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_318,c_17])).

cnf(c_323,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(renaming,[status(thm)],[c_322])).

cnf(c_1532,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2))
    | k1_yellow_0(sK2,X0_46) = X0_47 ),
    inference(subtyping,[status(esa)],[c_323])).

cnf(c_1820,plain,
    ( k1_yellow_0(sK2,X0_46) = X0_47
    | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1532])).

cnf(c_9,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r2_lattice3(X0,X1,sK1(X0,X2,X1))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | k1_yellow_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_341,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r2_lattice3(X0,X1,sK1(X0,X2,X1))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | k1_yellow_0(X0,X1) = X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_18])).

cnf(c_342,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ l1_orders_2(sK2)
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(unflattening,[status(thm)],[c_341])).

cnf(c_346,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(sK2))
    | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
    | ~ r2_lattice3(sK2,X0,X1)
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_342,c_17])).

cnf(c_347,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(renaming,[status(thm)],[c_346])).

cnf(c_1531,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46))
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
    | k1_yellow_0(sK2,X0_46) = X0_47 ),
    inference(subtyping,[status(esa)],[c_347])).

cnf(c_1821,plain,
    ( k1_yellow_0(sK2,X0_46) = X0_47
    | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46)) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1531])).

cnf(c_4,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X3,X2)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_501,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X3,X2)
    | ~ r2_hidden(X3,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_17])).

cnf(c_502,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r1_orders_2(sK2,X2,X1)
    | ~ r2_hidden(X2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X2,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_501])).

cnf(c_2,plain,
    ( r2_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_535,plain,
    ( r2_lattice3(X0,X1,X2)
    | r2_hidden(sK0(X0,X1,X2),X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_17])).

cnf(c_536,plain,
    ( r2_lattice3(sK2,X0,X1)
    | r2_hidden(sK0(sK2,X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_535])).

cnf(c_583,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X2,X3)
    | r1_orders_2(sK2,X4,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | X2 != X0
    | sK0(sK2,X2,X3) != X4 ),
    inference(resolution_lifted,[status(thm)],[c_502,c_536])).

cnf(c_584,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X0,X2)
    | r1_orders_2(sK2,sK0(sK2,X0,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X2,u1_struct_0(sK2))
    | ~ m1_subset_1(sK0(sK2,X0,X2),u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_583])).

cnf(c_3,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_520,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_17])).

cnf(c_521,plain,
    ( r2_lattice3(sK2,X0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_520])).

cnf(c_598,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X0,X2)
    | r1_orders_2(sK2,sK0(sK2,X0,X2),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X2,u1_struct_0(sK2)) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_584,c_521])).

cnf(c_1524,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | r2_lattice3(sK2,X0_46,X1_47)
    | r1_orders_2(sK2,sK0(sK2,X0_46,X1_47),X0_47)
    | ~ m1_subset_1(X1_47,u1_struct_0(sK2))
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_598])).

cnf(c_1828,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r2_lattice3(sK2,X0_46,X1_47) = iProver_top
    | r1_orders_2(sK2,sK0(sK2,X0_46,X1_47),X0_47) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1524])).

cnf(c_8,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | k1_yellow_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_365,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | k1_yellow_0(X0,X1) = X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_18])).

cnf(c_366,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ l1_orders_2(sK2)
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(unflattening,[status(thm)],[c_365])).

cnf(c_370,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
    | ~ r2_lattice3(sK2,X0,X1)
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_366,c_17])).

cnf(c_371,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | k1_yellow_0(sK2,X0) = X1 ),
    inference(renaming,[status(thm)],[c_370])).

cnf(c_1530,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | ~ r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46))
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
    | k1_yellow_0(sK2,X0_46) = X0_47 ),
    inference(subtyping,[status(esa)],[c_371])).

cnf(c_1822,plain,
    ( k1_yellow_0(sK2,X0_46) = X0_47
    | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1530])).

cnf(c_2195,plain,
    ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X1_46)
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
    | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1828,c_1822])).

cnf(c_1526,plain,
    ( r2_lattice3(sK2,X0_46,X0_47)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_521])).

cnf(c_1585,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1526])).

cnf(c_2404,plain,
    ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X1_46) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2195,c_1585])).

cnf(c_2405,plain,
    ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X1_46)
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
    | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2404])).

cnf(c_2417,plain,
    ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1821,c_2405])).

cnf(c_2632,plain,
    ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2417,c_1585])).

cnf(c_2633,plain,
    ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2632])).

cnf(c_2644,plain,
    ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1820,c_2633])).

cnf(c_2715,plain,
    ( m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2644,c_1585])).

cnf(c_2716,plain,
    ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2715])).

cnf(c_7,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_389,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_18])).

cnf(c_390,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_389])).

cnf(c_394,plain,
    ( m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | r1_yellow_0(sK2,X0)
    | ~ r2_lattice3(sK2,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_390,c_17])).

cnf(c_395,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2)) ),
    inference(renaming,[status(thm)],[c_394])).

cnf(c_1529,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | r1_yellow_0(sK2,X0_46)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
    | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_395])).

cnf(c_1823,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1529])).

cnf(c_6,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r2_lattice3(X0,X1,sK1(X0,X2,X1))
    | r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_413,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r2_lattice3(X0,X1,sK1(X0,X2,X1))
    | r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_18])).

cnf(c_414,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
    | r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_413])).

cnf(c_418,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(sK2))
    | r1_yellow_0(sK2,X0)
    | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
    | ~ r2_lattice3(sK2,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_414,c_17])).

cnf(c_419,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
    | r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(renaming,[status(thm)],[c_418])).

cnf(c_1528,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46))
    | r1_yellow_0(sK2,X0_46)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_419])).

cnf(c_1824,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46)) = iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1528])).

cnf(c_5,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
    | r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_437,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
    | r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_18])).

cnf(c_438,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
    | r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_437])).

cnf(c_442,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(sK2))
    | r1_yellow_0(sK2,X0)
    | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
    | ~ r2_lattice3(sK2,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_438,c_17])).

cnf(c_443,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
    | r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(renaming,[status(thm)],[c_442])).

cnf(c_1527,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | ~ r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46))
    | r1_yellow_0(sK2,X0_46)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_443])).

cnf(c_1825,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1527])).

cnf(c_2242,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
    | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r1_yellow_0(sK2,X1_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1828,c_1825])).

cnf(c_2497,plain,
    ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | r1_yellow_0(sK2,X1_46) = iProver_top
    | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2242,c_1585])).

cnf(c_2498,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
    | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r1_yellow_0(sK2,X1_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2497])).

cnf(c_2509,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1824,c_2498])).

cnf(c_2527,plain,
    ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2509,c_1585])).

cnf(c_2528,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2527])).

cnf(c_2538,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1823,c_2528])).

cnf(c_2621,plain,
    ( m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r2_lattice3(sK2,X0_46,X0_47) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2538,c_1585])).

cnf(c_2622,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2621])).

cnf(c_0,plain,
    ( r1_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_19,negated_conjecture,
    ( v3_orders_2(sK2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_212,plain,
    ( r1_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_19])).

cnf(c_213,plain,
    ( r1_orders_2(sK2,X0,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | v2_struct_0(sK2)
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_212])).

cnf(c_20,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_217,plain,
    ( r1_orders_2(sK2,X0,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_213,c_20,c_17])).

cnf(c_1535,plain,
    ( r1_orders_2(sK2,X0_47,X0_47)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_217])).

cnf(c_1817,plain,
    ( r1_orders_2(sK2,X0_47,X0_47) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1535])).

cnf(c_2318,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0_47,X0_46),sK1(sK2,X0_47,X0_46)) = iProver_top
    | r1_yellow_0(sK2,X0_46) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1823,c_1817])).

cnf(c_2251,plain,
    ( k1_yellow_0(sK2,X0_46) = X0_47
    | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r1_orders_2(sK2,sK1(sK2,X0_47,X0_46),sK1(sK2,X0_47,X0_46)) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1820,c_1817])).

cnf(c_1826,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1526])).

cnf(c_2093,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r1_orders_2(sK2,sK0(sK2,X0_46,X0_47),sK0(sK2,X0_46,X0_47)) = iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1826,c_1817])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1536,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1816,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1536])).

cnf(c_1997,plain,
    ( r1_orders_2(sK2,sK3,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1816,c_1817])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1537,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1815,plain,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1537])).

cnf(c_1996,plain,
    ( r1_orders_2(sK2,sK4,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1815,c_1817])).

cnf(c_1,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_550,plain,
    ( r2_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_17])).

cnf(c_551,plain,
    ( r2_lattice3(sK2,X0,X1)
    | ~ r1_orders_2(sK2,sK0(sK2,X0,X1),X1)
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_550])).

cnf(c_1525,plain,
    ( r2_lattice3(sK2,X0_46,X0_47)
    | ~ r1_orders_2(sK2,sK0(sK2,X0_46,X0_47),X0_47)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_551])).

cnf(c_1827,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
    | r1_orders_2(sK2,sK0(sK2,X0_46,X0_47),X0_47) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1525])).

cnf(c_11,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,k1_yellow_0(X0,X1),X2)
    | ~ r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_290,plain,
    ( ~ r2_lattice3(X0,X1,X2)
    | r1_orders_2(X0,k1_yellow_0(X0,X1),X2)
    | ~ r1_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_18])).

cnf(c_291,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r1_orders_2(sK2,k1_yellow_0(sK2,X0),X1)
    | ~ r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_290])).

cnf(c_295,plain,
    ( ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r1_yellow_0(sK2,X0)
    | r1_orders_2(sK2,k1_yellow_0(sK2,X0),X1)
    | ~ r2_lattice3(sK2,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_291,c_17])).

cnf(c_296,plain,
    ( ~ r2_lattice3(sK2,X0,X1)
    | r1_orders_2(sK2,k1_yellow_0(sK2,X0),X1)
    | ~ r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2)) ),
    inference(renaming,[status(thm)],[c_295])).

cnf(c_1533,plain,
    ( ~ r2_lattice3(sK2,X0_46,X0_47)
    | r1_orders_2(sK2,k1_yellow_0(sK2,X0_46),X0_47)
    | ~ r1_yellow_0(sK2,X0_46)
    | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
    | ~ m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_296])).

cnf(c_1819,plain,
    ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
    | r1_orders_2(sK2,k1_yellow_0(sK2,X0_46),X0_47) = iProver_top
    | r1_yellow_0(sK2,X0_46) != iProver_top
    | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1533])).

cnf(c_12,plain,
    ( r2_lattice3(X0,X1,k1_yellow_0(X0,X1))
    | ~ r1_yellow_0(X0,X1)
    | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_269,plain,
    ( r2_lattice3(X0,X1,k1_yellow_0(X0,X1))
    | ~ r1_yellow_0(X0,X1)
    | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_18])).

cnf(c_270,plain,
    ( r2_lattice3(sK2,X0,k1_yellow_0(sK2,X0))
    | ~ r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_269])).

cnf(c_274,plain,
    ( ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
    | ~ r1_yellow_0(sK2,X0)
    | r2_lattice3(sK2,X0,k1_yellow_0(sK2,X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_270,c_17])).

cnf(c_275,plain,
    ( r2_lattice3(sK2,X0,k1_yellow_0(sK2,X0))
    | ~ r1_yellow_0(sK2,X0)
    | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2)) ),
    inference(renaming,[status(thm)],[c_274])).

cnf(c_1534,plain,
    ( r2_lattice3(sK2,X0_46,k1_yellow_0(sK2,X0_46))
    | ~ r1_yellow_0(sK2,X0_46)
    | ~ m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_275])).

cnf(c_1818,plain,
    ( r2_lattice3(sK2,X0_46,k1_yellow_0(sK2,X0_46)) = iProver_top
    | r1_yellow_0(sK2,X0_46) != iProver_top
    | m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1534])).

cnf(c_13,negated_conjecture,
    ( sK3 != sK4 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1539,negated_conjecture,
    ( sK3 != sK4 ),
    inference(subtyping,[status(esa)],[c_13])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:25:31 EST 2020
% 0.19/0.34  % CPUTime    : 
% 0.19/0.34  % Running in FOF mode
% 1.24/1.01  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.24/1.01  
% 1.24/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.24/1.01  
% 1.24/1.01  ------  iProver source info
% 1.24/1.01  
% 1.24/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.24/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.24/1.01  git: non_committed_changes: false
% 1.24/1.01  git: last_make_outside_of_git: false
% 1.24/1.01  
% 1.24/1.01  ------ 
% 1.24/1.01  
% 1.24/1.01  ------ Input Options
% 1.24/1.01  
% 1.24/1.01  --out_options                           all
% 1.24/1.01  --tptp_safe_out                         true
% 1.24/1.01  --problem_path                          ""
% 1.24/1.01  --include_path                          ""
% 1.24/1.01  --clausifier                            res/vclausify_rel
% 1.24/1.01  --clausifier_options                    --mode clausify
% 1.24/1.01  --stdin                                 false
% 1.24/1.01  --stats_out                             all
% 1.24/1.01  
% 1.24/1.01  ------ General Options
% 1.24/1.01  
% 1.24/1.01  --fof                                   false
% 1.24/1.01  --time_out_real                         305.
% 1.24/1.01  --time_out_virtual                      -1.
% 1.24/1.01  --symbol_type_check                     false
% 1.24/1.01  --clausify_out                          false
% 1.24/1.01  --sig_cnt_out                           false
% 1.24/1.01  --trig_cnt_out                          false
% 1.24/1.01  --trig_cnt_out_tolerance                1.
% 1.24/1.01  --trig_cnt_out_sk_spl                   false
% 1.24/1.01  --abstr_cl_out                          false
% 1.24/1.01  
% 1.24/1.01  ------ Global Options
% 1.24/1.01  
% 1.24/1.01  --schedule                              default
% 1.24/1.01  --add_important_lit                     false
% 1.24/1.01  --prop_solver_per_cl                    1000
% 1.24/1.01  --min_unsat_core                        false
% 1.24/1.01  --soft_assumptions                      false
% 1.24/1.01  --soft_lemma_size                       3
% 1.24/1.01  --prop_impl_unit_size                   0
% 1.24/1.01  --prop_impl_unit                        []
% 1.24/1.01  --share_sel_clauses                     true
% 1.24/1.01  --reset_solvers                         false
% 1.24/1.01  --bc_imp_inh                            [conj_cone]
% 1.24/1.01  --conj_cone_tolerance                   3.
% 1.24/1.01  --extra_neg_conj                        none
% 1.24/1.01  --large_theory_mode                     true
% 1.24/1.01  --prolific_symb_bound                   200
% 1.24/1.01  --lt_threshold                          2000
% 1.24/1.01  --clause_weak_htbl                      true
% 1.24/1.01  --gc_record_bc_elim                     false
% 1.24/1.01  
% 1.24/1.01  ------ Preprocessing Options
% 1.24/1.01  
% 1.24/1.01  --preprocessing_flag                    true
% 1.24/1.01  --time_out_prep_mult                    0.1
% 1.24/1.01  --splitting_mode                        input
% 1.24/1.01  --splitting_grd                         true
% 1.24/1.01  --splitting_cvd                         false
% 1.24/1.01  --splitting_cvd_svl                     false
% 1.24/1.01  --splitting_nvd                         32
% 1.24/1.01  --sub_typing                            true
% 1.24/1.01  --prep_gs_sim                           true
% 1.24/1.01  --prep_unflatten                        true
% 1.24/1.01  --prep_res_sim                          true
% 1.24/1.01  --prep_upred                            true
% 1.24/1.01  --prep_sem_filter                       exhaustive
% 1.24/1.01  --prep_sem_filter_out                   false
% 1.24/1.01  --pred_elim                             true
% 1.24/1.01  --res_sim_input                         true
% 1.24/1.01  --eq_ax_congr_red                       true
% 1.24/1.01  --pure_diseq_elim                       true
% 1.24/1.01  --brand_transform                       false
% 1.24/1.01  --non_eq_to_eq                          false
% 1.24/1.01  --prep_def_merge                        true
% 1.24/1.01  --prep_def_merge_prop_impl              false
% 1.24/1.01  --prep_def_merge_mbd                    true
% 1.24/1.01  --prep_def_merge_tr_red                 false
% 1.24/1.01  --prep_def_merge_tr_cl                  false
% 1.24/1.01  --smt_preprocessing                     true
% 1.24/1.01  --smt_ac_axioms                         fast
% 1.24/1.01  --preprocessed_out                      false
% 1.24/1.01  --preprocessed_stats                    false
% 1.24/1.01  
% 1.24/1.01  ------ Abstraction refinement Options
% 1.24/1.01  
% 1.24/1.01  --abstr_ref                             []
% 1.24/1.01  --abstr_ref_prep                        false
% 1.24/1.01  --abstr_ref_until_sat                   false
% 1.24/1.01  --abstr_ref_sig_restrict                funpre
% 1.24/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.24/1.01  --abstr_ref_under                       []
% 1.24/1.01  
% 1.24/1.01  ------ SAT Options
% 1.24/1.01  
% 1.24/1.01  --sat_mode                              false
% 1.24/1.01  --sat_fm_restart_options                ""
% 1.24/1.01  --sat_gr_def                            false
% 1.24/1.01  --sat_epr_types                         true
% 1.24/1.01  --sat_non_cyclic_types                  false
% 1.24/1.01  --sat_finite_models                     false
% 1.24/1.01  --sat_fm_lemmas                         false
% 1.24/1.01  --sat_fm_prep                           false
% 1.24/1.01  --sat_fm_uc_incr                        true
% 1.24/1.01  --sat_out_model                         small
% 1.24/1.01  --sat_out_clauses                       false
% 1.24/1.01  
% 1.24/1.01  ------ QBF Options
% 1.24/1.01  
% 1.24/1.01  --qbf_mode                              false
% 1.24/1.01  --qbf_elim_univ                         false
% 1.24/1.01  --qbf_dom_inst                          none
% 1.24/1.01  --qbf_dom_pre_inst                      false
% 1.24/1.01  --qbf_sk_in                             false
% 1.24/1.01  --qbf_pred_elim                         true
% 1.24/1.01  --qbf_split                             512
% 1.24/1.01  
% 1.24/1.01  ------ BMC1 Options
% 1.24/1.01  
% 1.24/1.01  --bmc1_incremental                      false
% 1.24/1.01  --bmc1_axioms                           reachable_all
% 1.24/1.01  --bmc1_min_bound                        0
% 1.24/1.01  --bmc1_max_bound                        -1
% 1.24/1.01  --bmc1_max_bound_default                -1
% 1.24/1.01  --bmc1_symbol_reachability              true
% 1.24/1.01  --bmc1_property_lemmas                  false
% 1.24/1.01  --bmc1_k_induction                      false
% 1.24/1.01  --bmc1_non_equiv_states                 false
% 1.24/1.01  --bmc1_deadlock                         false
% 1.24/1.01  --bmc1_ucm                              false
% 1.24/1.01  --bmc1_add_unsat_core                   none
% 1.24/1.01  --bmc1_unsat_core_children              false
% 1.24/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.24/1.01  --bmc1_out_stat                         full
% 1.24/1.01  --bmc1_ground_init                      false
% 1.24/1.01  --bmc1_pre_inst_next_state              false
% 1.24/1.01  --bmc1_pre_inst_state                   false
% 1.24/1.01  --bmc1_pre_inst_reach_state             false
% 1.24/1.01  --bmc1_out_unsat_core                   false
% 1.24/1.01  --bmc1_aig_witness_out                  false
% 1.24/1.01  --bmc1_verbose                          false
% 1.24/1.01  --bmc1_dump_clauses_tptp                false
% 1.24/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.24/1.01  --bmc1_dump_file                        -
% 1.24/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.24/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.24/1.01  --bmc1_ucm_extend_mode                  1
% 1.24/1.01  --bmc1_ucm_init_mode                    2
% 1.24/1.01  --bmc1_ucm_cone_mode                    none
% 1.24/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.24/1.01  --bmc1_ucm_relax_model                  4
% 1.24/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.24/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.24/1.01  --bmc1_ucm_layered_model                none
% 1.24/1.01  --bmc1_ucm_max_lemma_size               10
% 1.24/1.01  
% 1.24/1.01  ------ AIG Options
% 1.24/1.01  
% 1.24/1.01  --aig_mode                              false
% 1.24/1.01  
% 1.24/1.01  ------ Instantiation Options
% 1.24/1.01  
% 1.24/1.01  --instantiation_flag                    true
% 1.24/1.01  --inst_sos_flag                         false
% 1.24/1.01  --inst_sos_phase                        true
% 1.24/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.24/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.24/1.01  --inst_lit_sel_side                     num_symb
% 1.24/1.01  --inst_solver_per_active                1400
% 1.24/1.01  --inst_solver_calls_frac                1.
% 1.24/1.01  --inst_passive_queue_type               priority_queues
% 1.24/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.24/1.01  --inst_passive_queues_freq              [25;2]
% 1.24/1.01  --inst_dismatching                      true
% 1.24/1.01  --inst_eager_unprocessed_to_passive     true
% 1.24/1.01  --inst_prop_sim_given                   true
% 1.24/1.01  --inst_prop_sim_new                     false
% 1.24/1.01  --inst_subs_new                         false
% 1.24/1.01  --inst_eq_res_simp                      false
% 1.24/1.01  --inst_subs_given                       false
% 1.24/1.01  --inst_orphan_elimination               true
% 1.24/1.01  --inst_learning_loop_flag               true
% 1.24/1.01  --inst_learning_start                   3000
% 1.24/1.01  --inst_learning_factor                  2
% 1.24/1.01  --inst_start_prop_sim_after_learn       3
% 1.24/1.01  --inst_sel_renew                        solver
% 1.24/1.01  --inst_lit_activity_flag                true
% 1.24/1.01  --inst_restr_to_given                   false
% 1.24/1.01  --inst_activity_threshold               500
% 1.24/1.01  --inst_out_proof                        true
% 1.24/1.01  
% 1.24/1.01  ------ Resolution Options
% 1.24/1.01  
% 1.24/1.01  --resolution_flag                       true
% 1.24/1.01  --res_lit_sel                           adaptive
% 1.24/1.01  --res_lit_sel_side                      none
% 1.24/1.01  --res_ordering                          kbo
% 1.24/1.01  --res_to_prop_solver                    active
% 1.24/1.01  --res_prop_simpl_new                    false
% 1.24/1.01  --res_prop_simpl_given                  true
% 1.24/1.01  --res_passive_queue_type                priority_queues
% 1.24/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.24/1.01  --res_passive_queues_freq               [15;5]
% 1.24/1.01  --res_forward_subs                      full
% 1.24/1.01  --res_backward_subs                     full
% 1.24/1.01  --res_forward_subs_resolution           true
% 1.24/1.01  --res_backward_subs_resolution          true
% 1.24/1.01  --res_orphan_elimination                true
% 1.24/1.01  --res_time_limit                        2.
% 1.24/1.01  --res_out_proof                         true
% 1.24/1.01  
% 1.24/1.01  ------ Superposition Options
% 1.24/1.01  
% 1.24/1.01  --superposition_flag                    true
% 1.24/1.01  --sup_passive_queue_type                priority_queues
% 1.24/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.24/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.24/1.01  --demod_completeness_check              fast
% 1.24/1.01  --demod_use_ground                      true
% 1.24/1.01  --sup_to_prop_solver                    passive
% 1.24/1.01  --sup_prop_simpl_new                    true
% 1.24/1.01  --sup_prop_simpl_given                  true
% 1.24/1.01  --sup_fun_splitting                     false
% 1.24/1.01  --sup_smt_interval                      50000
% 1.24/1.01  
% 1.24/1.01  ------ Superposition Simplification Setup
% 1.24/1.01  
% 1.24/1.01  --sup_indices_passive                   []
% 1.24/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.24/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.24/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.24/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.24/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.24/1.01  --sup_full_bw                           [BwDemod]
% 1.24/1.01  --sup_immed_triv                        [TrivRules]
% 1.24/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.24/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.24/1.01  --sup_immed_bw_main                     []
% 1.24/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.24/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.24/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.24/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.24/1.01  
% 1.24/1.01  ------ Combination Options
% 1.24/1.01  
% 1.24/1.01  --comb_res_mult                         3
% 1.24/1.01  --comb_sup_mult                         2
% 1.24/1.01  --comb_inst_mult                        10
% 1.24/1.01  
% 1.24/1.01  ------ Debug Options
% 1.24/1.01  
% 1.24/1.01  --dbg_backtrace                         false
% 1.24/1.01  --dbg_dump_prop_clauses                 false
% 1.24/1.01  --dbg_dump_prop_clauses_file            -
% 1.24/1.01  --dbg_out_stat                          false
% 1.24/1.01  ------ Parsing...
% 1.24/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.24/1.01  
% 1.24/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 1.24/1.01  
% 1.24/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.24/1.01  
% 1.24/1.01  ------ Preprocessing... sf_s  rm: 5 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.24/1.01  ------ Proving...
% 1.24/1.01  ------ Problem Properties 
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  clauses                                 16
% 1.24/1.01  conjectures                             4
% 1.24/1.01  EPR                                     1
% 1.24/1.01  Horn                                    10
% 1.24/1.01  unary                                   4
% 1.24/1.01  binary                                  1
% 1.24/1.01  lits                                    49
% 1.24/1.01  lits eq                                 5
% 1.24/1.01  fd_pure                                 0
% 1.24/1.01  fd_pseudo                               0
% 1.24/1.01  fd_cond                                 0
% 1.24/1.01  fd_pseudo_cond                          3
% 1.24/1.01  AC symbols                              0
% 1.24/1.01  
% 1.24/1.01  ------ Schedule dynamic 5 is on 
% 1.24/1.01  
% 1.24/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  ------ 
% 1.24/1.01  Current options:
% 1.24/1.01  ------ 
% 1.24/1.01  
% 1.24/1.01  ------ Input Options
% 1.24/1.01  
% 1.24/1.01  --out_options                           all
% 1.24/1.01  --tptp_safe_out                         true
% 1.24/1.01  --problem_path                          ""
% 1.24/1.01  --include_path                          ""
% 1.24/1.01  --clausifier                            res/vclausify_rel
% 1.24/1.01  --clausifier_options                    --mode clausify
% 1.24/1.01  --stdin                                 false
% 1.24/1.01  --stats_out                             all
% 1.24/1.01  
% 1.24/1.01  ------ General Options
% 1.24/1.01  
% 1.24/1.01  --fof                                   false
% 1.24/1.01  --time_out_real                         305.
% 1.24/1.01  --time_out_virtual                      -1.
% 1.24/1.01  --symbol_type_check                     false
% 1.24/1.01  --clausify_out                          false
% 1.24/1.01  --sig_cnt_out                           false
% 1.24/1.01  --trig_cnt_out                          false
% 1.24/1.01  --trig_cnt_out_tolerance                1.
% 1.24/1.01  --trig_cnt_out_sk_spl                   false
% 1.24/1.01  --abstr_cl_out                          false
% 1.24/1.01  
% 1.24/1.01  ------ Global Options
% 1.24/1.01  
% 1.24/1.01  --schedule                              default
% 1.24/1.01  --add_important_lit                     false
% 1.24/1.01  --prop_solver_per_cl                    1000
% 1.24/1.01  --min_unsat_core                        false
% 1.24/1.01  --soft_assumptions                      false
% 1.24/1.01  --soft_lemma_size                       3
% 1.24/1.01  --prop_impl_unit_size                   0
% 1.24/1.01  --prop_impl_unit                        []
% 1.24/1.01  --share_sel_clauses                     true
% 1.24/1.01  --reset_solvers                         false
% 1.24/1.01  --bc_imp_inh                            [conj_cone]
% 1.24/1.01  --conj_cone_tolerance                   3.
% 1.24/1.01  --extra_neg_conj                        none
% 1.24/1.01  --large_theory_mode                     true
% 1.24/1.01  --prolific_symb_bound                   200
% 1.24/1.01  --lt_threshold                          2000
% 1.24/1.01  --clause_weak_htbl                      true
% 1.24/1.01  --gc_record_bc_elim                     false
% 1.24/1.01  
% 1.24/1.01  ------ Preprocessing Options
% 1.24/1.01  
% 1.24/1.01  --preprocessing_flag                    true
% 1.24/1.01  --time_out_prep_mult                    0.1
% 1.24/1.01  --splitting_mode                        input
% 1.24/1.01  --splitting_grd                         true
% 1.24/1.01  --splitting_cvd                         false
% 1.24/1.01  --splitting_cvd_svl                     false
% 1.24/1.01  --splitting_nvd                         32
% 1.24/1.01  --sub_typing                            true
% 1.24/1.01  --prep_gs_sim                           true
% 1.24/1.01  --prep_unflatten                        true
% 1.24/1.01  --prep_res_sim                          true
% 1.24/1.01  --prep_upred                            true
% 1.24/1.01  --prep_sem_filter                       exhaustive
% 1.24/1.01  --prep_sem_filter_out                   false
% 1.24/1.01  --pred_elim                             true
% 1.24/1.01  --res_sim_input                         true
% 1.24/1.01  --eq_ax_congr_red                       true
% 1.24/1.01  --pure_diseq_elim                       true
% 1.24/1.01  --brand_transform                       false
% 1.24/1.01  --non_eq_to_eq                          false
% 1.24/1.01  --prep_def_merge                        true
% 1.24/1.01  --prep_def_merge_prop_impl              false
% 1.24/1.01  --prep_def_merge_mbd                    true
% 1.24/1.01  --prep_def_merge_tr_red                 false
% 1.24/1.01  --prep_def_merge_tr_cl                  false
% 1.24/1.01  --smt_preprocessing                     true
% 1.24/1.01  --smt_ac_axioms                         fast
% 1.24/1.01  --preprocessed_out                      false
% 1.24/1.01  --preprocessed_stats                    false
% 1.24/1.01  
% 1.24/1.01  ------ Abstraction refinement Options
% 1.24/1.01  
% 1.24/1.01  --abstr_ref                             []
% 1.24/1.01  --abstr_ref_prep                        false
% 1.24/1.01  --abstr_ref_until_sat                   false
% 1.24/1.01  --abstr_ref_sig_restrict                funpre
% 1.24/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.24/1.01  --abstr_ref_under                       []
% 1.24/1.01  
% 1.24/1.01  ------ SAT Options
% 1.24/1.01  
% 1.24/1.01  --sat_mode                              false
% 1.24/1.01  --sat_fm_restart_options                ""
% 1.24/1.01  --sat_gr_def                            false
% 1.24/1.01  --sat_epr_types                         true
% 1.24/1.01  --sat_non_cyclic_types                  false
% 1.24/1.01  --sat_finite_models                     false
% 1.24/1.01  --sat_fm_lemmas                         false
% 1.24/1.01  --sat_fm_prep                           false
% 1.24/1.01  --sat_fm_uc_incr                        true
% 1.24/1.01  --sat_out_model                         small
% 1.24/1.01  --sat_out_clauses                       false
% 1.24/1.01  
% 1.24/1.01  ------ QBF Options
% 1.24/1.01  
% 1.24/1.01  --qbf_mode                              false
% 1.24/1.01  --qbf_elim_univ                         false
% 1.24/1.01  --qbf_dom_inst                          none
% 1.24/1.01  --qbf_dom_pre_inst                      false
% 1.24/1.01  --qbf_sk_in                             false
% 1.24/1.01  --qbf_pred_elim                         true
% 1.24/1.01  --qbf_split                             512
% 1.24/1.01  
% 1.24/1.01  ------ BMC1 Options
% 1.24/1.01  
% 1.24/1.01  --bmc1_incremental                      false
% 1.24/1.01  --bmc1_axioms                           reachable_all
% 1.24/1.01  --bmc1_min_bound                        0
% 1.24/1.01  --bmc1_max_bound                        -1
% 1.24/1.01  --bmc1_max_bound_default                -1
% 1.24/1.01  --bmc1_symbol_reachability              true
% 1.24/1.01  --bmc1_property_lemmas                  false
% 1.24/1.01  --bmc1_k_induction                      false
% 1.24/1.01  --bmc1_non_equiv_states                 false
% 1.24/1.01  --bmc1_deadlock                         false
% 1.24/1.01  --bmc1_ucm                              false
% 1.24/1.01  --bmc1_add_unsat_core                   none
% 1.24/1.01  --bmc1_unsat_core_children              false
% 1.24/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.24/1.01  --bmc1_out_stat                         full
% 1.24/1.01  --bmc1_ground_init                      false
% 1.24/1.01  --bmc1_pre_inst_next_state              false
% 1.24/1.01  --bmc1_pre_inst_state                   false
% 1.24/1.01  --bmc1_pre_inst_reach_state             false
% 1.24/1.01  --bmc1_out_unsat_core                   false
% 1.24/1.01  --bmc1_aig_witness_out                  false
% 1.24/1.01  --bmc1_verbose                          false
% 1.24/1.01  --bmc1_dump_clauses_tptp                false
% 1.24/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.24/1.01  --bmc1_dump_file                        -
% 1.24/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.24/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.24/1.01  --bmc1_ucm_extend_mode                  1
% 1.24/1.01  --bmc1_ucm_init_mode                    2
% 1.24/1.01  --bmc1_ucm_cone_mode                    none
% 1.24/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.24/1.01  --bmc1_ucm_relax_model                  4
% 1.24/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.24/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.24/1.01  --bmc1_ucm_layered_model                none
% 1.24/1.01  --bmc1_ucm_max_lemma_size               10
% 1.24/1.01  
% 1.24/1.01  ------ AIG Options
% 1.24/1.01  
% 1.24/1.01  --aig_mode                              false
% 1.24/1.01  
% 1.24/1.01  ------ Instantiation Options
% 1.24/1.01  
% 1.24/1.01  --instantiation_flag                    true
% 1.24/1.01  --inst_sos_flag                         false
% 1.24/1.01  --inst_sos_phase                        true
% 1.24/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.24/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.24/1.01  --inst_lit_sel_side                     none
% 1.24/1.01  --inst_solver_per_active                1400
% 1.24/1.01  --inst_solver_calls_frac                1.
% 1.24/1.01  --inst_passive_queue_type               priority_queues
% 1.24/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.24/1.01  --inst_passive_queues_freq              [25;2]
% 1.24/1.01  --inst_dismatching                      true
% 1.24/1.01  --inst_eager_unprocessed_to_passive     true
% 1.24/1.01  --inst_prop_sim_given                   true
% 1.24/1.01  --inst_prop_sim_new                     false
% 1.24/1.01  --inst_subs_new                         false
% 1.24/1.01  --inst_eq_res_simp                      false
% 1.24/1.01  --inst_subs_given                       false
% 1.24/1.01  --inst_orphan_elimination               true
% 1.24/1.01  --inst_learning_loop_flag               true
% 1.24/1.01  --inst_learning_start                   3000
% 1.24/1.01  --inst_learning_factor                  2
% 1.24/1.01  --inst_start_prop_sim_after_learn       3
% 1.24/1.01  --inst_sel_renew                        solver
% 1.24/1.01  --inst_lit_activity_flag                true
% 1.24/1.01  --inst_restr_to_given                   false
% 1.24/1.01  --inst_activity_threshold               500
% 1.24/1.01  --inst_out_proof                        true
% 1.24/1.01  
% 1.24/1.01  ------ Resolution Options
% 1.24/1.01  
% 1.24/1.01  --resolution_flag                       false
% 1.24/1.01  --res_lit_sel                           adaptive
% 1.24/1.01  --res_lit_sel_side                      none
% 1.24/1.01  --res_ordering                          kbo
% 1.24/1.01  --res_to_prop_solver                    active
% 1.24/1.01  --res_prop_simpl_new                    false
% 1.24/1.01  --res_prop_simpl_given                  true
% 1.24/1.01  --res_passive_queue_type                priority_queues
% 1.24/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.24/1.01  --res_passive_queues_freq               [15;5]
% 1.24/1.01  --res_forward_subs                      full
% 1.24/1.01  --res_backward_subs                     full
% 1.24/1.01  --res_forward_subs_resolution           true
% 1.24/1.01  --res_backward_subs_resolution          true
% 1.24/1.01  --res_orphan_elimination                true
% 1.24/1.01  --res_time_limit                        2.
% 1.24/1.01  --res_out_proof                         true
% 1.24/1.01  
% 1.24/1.01  ------ Superposition Options
% 1.24/1.01  
% 1.24/1.01  --superposition_flag                    true
% 1.24/1.01  --sup_passive_queue_type                priority_queues
% 1.24/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.24/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.24/1.01  --demod_completeness_check              fast
% 1.24/1.01  --demod_use_ground                      true
% 1.24/1.01  --sup_to_prop_solver                    passive
% 1.24/1.01  --sup_prop_simpl_new                    true
% 1.24/1.01  --sup_prop_simpl_given                  true
% 1.24/1.01  --sup_fun_splitting                     false
% 1.24/1.01  --sup_smt_interval                      50000
% 1.24/1.01  
% 1.24/1.01  ------ Superposition Simplification Setup
% 1.24/1.01  
% 1.24/1.01  --sup_indices_passive                   []
% 1.24/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.24/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.24/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.24/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.24/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.24/1.01  --sup_full_bw                           [BwDemod]
% 1.24/1.01  --sup_immed_triv                        [TrivRules]
% 1.24/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.24/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.24/1.01  --sup_immed_bw_main                     []
% 1.24/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.24/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.24/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.24/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.24/1.01  
% 1.24/1.01  ------ Combination Options
% 1.24/1.01  
% 1.24/1.01  --comb_res_mult                         3
% 1.24/1.01  --comb_sup_mult                         2
% 1.24/1.01  --comb_inst_mult                        10
% 1.24/1.01  
% 1.24/1.01  ------ Debug Options
% 1.24/1.01  
% 1.24/1.01  --dbg_backtrace                         false
% 1.24/1.01  --dbg_dump_prop_clauses                 false
% 1.24/1.01  --dbg_dump_prop_clauses_file            -
% 1.24/1.01  --dbg_out_stat                          false
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  ------ Proving...
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  % SZS status CounterSatisfiable for theBenchmark.p
% 1.24/1.01  
% 1.24/1.01  % SZS output start Saturation for theBenchmark.p
% 1.24/1.01  
% 1.24/1.01  fof(f4,conjecture,(
% 1.24/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2) => X1 = X2))))),
% 1.24/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.24/1.01  
% 1.24/1.01  fof(f5,negated_conjecture,(
% 1.24/1.01    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2) => X1 = X2))))),
% 1.24/1.01    inference(negated_conjecture,[],[f4])).
% 1.24/1.01  
% 1.24/1.01  fof(f13,plain,(
% 1.24/1.01    ? [X0] : (? [X1] : (? [X2] : ((X1 != X2 & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2)) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.24/1.01    inference(ennf_transformation,[],[f5])).
% 1.24/1.01  
% 1.24/1.01  fof(f14,plain,(
% 1.24/1.01    ? [X0] : (? [X1] : (? [X2] : (X1 != X2 & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.24/1.01    inference(flattening,[],[f13])).
% 1.24/1.01  
% 1.24/1.01  fof(f23,plain,(
% 1.24/1.01    ( ! [X0,X1] : (? [X2] : (X1 != X2 & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2) & m1_subset_1(X2,u1_struct_0(X0))) => (sK4 != X1 & k5_waybel_0(X0,sK4) = k5_waybel_0(X0,X1) & m1_subset_1(sK4,u1_struct_0(X0)))) )),
% 1.24/1.01    introduced(choice_axiom,[])).
% 1.24/1.01  
% 1.24/1.01  fof(f22,plain,(
% 1.24/1.01    ( ! [X0] : (? [X1] : (? [X2] : (X1 != X2 & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (sK3 != X2 & k5_waybel_0(X0,sK3) = k5_waybel_0(X0,X2) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 1.24/1.01    introduced(choice_axiom,[])).
% 1.24/1.01  
% 1.24/1.01  fof(f21,plain,(
% 1.24/1.01    ? [X0] : (? [X1] : (? [X2] : (X1 != X2 & k5_waybel_0(X0,X1) = k5_waybel_0(X0,X2) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (X1 != X2 & k5_waybel_0(sK2,X1) = k5_waybel_0(sK2,X2) & m1_subset_1(X2,u1_struct_0(sK2))) & m1_subset_1(X1,u1_struct_0(sK2))) & l1_orders_2(sK2) & v5_orders_2(sK2) & v3_orders_2(sK2) & ~v2_struct_0(sK2))),
% 1.24/1.01    introduced(choice_axiom,[])).
% 1.24/1.01  
% 1.24/1.01  fof(f24,plain,(
% 1.24/1.01    ((sK3 != sK4 & k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4) & m1_subset_1(sK4,u1_struct_0(sK2))) & m1_subset_1(sK3,u1_struct_0(sK2))) & l1_orders_2(sK2) & v5_orders_2(sK2) & v3_orders_2(sK2) & ~v2_struct_0(sK2)),
% 1.24/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f14,f23,f22,f21])).
% 1.24/1.01  
% 1.24/1.01  fof(f44,plain,(
% 1.24/1.01    k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4)),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f3,axiom,(
% 1.24/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (((! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_lattice3(X0,X2,X3) => r1_orders_2(X0,X1,X3))) & r2_lattice3(X0,X2,X1)) => (r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1)) & ((r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1) => (! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_lattice3(X0,X2,X3) => r1_orders_2(X0,X1,X3))) & r2_lattice3(X0,X2,X1))))))),
% 1.24/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.24/1.01  
% 1.24/1.01  fof(f6,plain,(
% 1.24/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (((! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_lattice3(X0,X2,X3) => r1_orders_2(X0,X1,X3))) & r2_lattice3(X0,X2,X1)) => (r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1)) & ((r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1) => (! [X4] : (m1_subset_1(X4,u1_struct_0(X0)) => (r2_lattice3(X0,X2,X4) => r1_orders_2(X0,X1,X4))) & r2_lattice3(X0,X2,X1))))))),
% 1.24/1.01    inference(rectify,[],[f3])).
% 1.24/1.01  
% 1.24/1.01  fof(f11,plain,(
% 1.24/1.01    ! [X0] : (! [X1] : (! [X2] : (((r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1) | (? [X3] : ((~r1_orders_2(X0,X1,X3) & r2_lattice3(X0,X2,X3)) & m1_subset_1(X3,u1_struct_0(X0))) | ~r2_lattice3(X0,X2,X1))) & ((! [X4] : ((r1_orders_2(X0,X1,X4) | ~r2_lattice3(X0,X2,X4)) | ~m1_subset_1(X4,u1_struct_0(X0))) & r2_lattice3(X0,X2,X1)) | (~r1_yellow_0(X0,X2) | k1_yellow_0(X0,X2) != X1))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v5_orders_2(X0)))),
% 1.24/1.01    inference(ennf_transformation,[],[f6])).
% 1.24/1.01  
% 1.24/1.01  fof(f12,plain,(
% 1.24/1.01    ! [X0] : (! [X1] : (! [X2] : (((r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1) | ? [X3] : (~r1_orders_2(X0,X1,X3) & r2_lattice3(X0,X2,X3) & m1_subset_1(X3,u1_struct_0(X0))) | ~r2_lattice3(X0,X2,X1)) & ((! [X4] : (r1_orders_2(X0,X1,X4) | ~r2_lattice3(X0,X2,X4) | ~m1_subset_1(X4,u1_struct_0(X0))) & r2_lattice3(X0,X2,X1)) | ~r1_yellow_0(X0,X2) | k1_yellow_0(X0,X2) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0))),
% 1.24/1.01    inference(flattening,[],[f11])).
% 1.24/1.01  
% 1.24/1.01  fof(f19,plain,(
% 1.24/1.01    ! [X2,X1,X0] : (? [X3] : (~r1_orders_2(X0,X1,X3) & r2_lattice3(X0,X2,X3) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_orders_2(X0,X1,sK1(X0,X1,X2)) & r2_lattice3(X0,X2,sK1(X0,X1,X2)) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))))),
% 1.24/1.01    introduced(choice_axiom,[])).
% 1.24/1.01  
% 1.24/1.01  fof(f20,plain,(
% 1.24/1.01    ! [X0] : (! [X1] : (! [X2] : (((r1_yellow_0(X0,X2) & k1_yellow_0(X0,X2) = X1) | (~r1_orders_2(X0,X1,sK1(X0,X1,X2)) & r2_lattice3(X0,X2,sK1(X0,X1,X2)) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))) | ~r2_lattice3(X0,X2,X1)) & ((! [X4] : (r1_orders_2(X0,X1,X4) | ~r2_lattice3(X0,X2,X4) | ~m1_subset_1(X4,u1_struct_0(X0))) & r2_lattice3(X0,X2,X1)) | ~r1_yellow_0(X0,X2) | k1_yellow_0(X0,X2) != X1)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0))),
% 1.24/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f12,f19])).
% 1.24/1.01  
% 1.24/1.01  fof(f32,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (k1_yellow_0(X0,X2) = X1 | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) | ~r2_lattice3(X0,X2,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f40,plain,(
% 1.24/1.01    v5_orders_2(sK2)),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f41,plain,(
% 1.24/1.01    l1_orders_2(sK2)),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f33,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (k1_yellow_0(X0,X2) = X1 | r2_lattice3(X0,X2,sK1(X0,X1,X2)) | ~r2_lattice3(X0,X2,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f2,axiom,(
% 1.24/1.01    ! [X0] : (l1_orders_2(X0) => ! [X1,X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_lattice3(X0,X1,X2) <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X1) => r1_orders_2(X0,X3,X2))))))),
% 1.24/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.24/1.01  
% 1.24/1.01  fof(f9,plain,(
% 1.24/1.01    ! [X0] : (! [X1,X2] : ((r2_lattice3(X0,X1,X2) <=> ! [X3] : ((r1_orders_2(X0,X3,X2) | ~r2_hidden(X3,X1)) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 1.24/1.01    inference(ennf_transformation,[],[f2])).
% 1.24/1.01  
% 1.24/1.01  fof(f10,plain,(
% 1.24/1.01    ! [X0] : (! [X1,X2] : ((r2_lattice3(X0,X1,X2) <=> ! [X3] : (r1_orders_2(X0,X3,X2) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 1.24/1.01    inference(flattening,[],[f9])).
% 1.24/1.01  
% 1.24/1.01  fof(f15,plain,(
% 1.24/1.01    ! [X0] : (! [X1,X2] : (((r2_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X3,X2) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X3] : (r1_orders_2(X0,X3,X2) | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~r2_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 1.24/1.01    inference(nnf_transformation,[],[f10])).
% 1.24/1.01  
% 1.24/1.01  fof(f16,plain,(
% 1.24/1.01    ! [X0] : (! [X1,X2] : (((r2_lattice3(X0,X1,X2) | ? [X3] : (~r1_orders_2(X0,X3,X2) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X4,X2) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r2_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 1.24/1.01    inference(rectify,[],[f15])).
% 1.24/1.01  
% 1.24/1.01  fof(f17,plain,(
% 1.24/1.01    ! [X2,X1,X0] : (? [X3] : (~r1_orders_2(X0,X3,X2) & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r1_orders_2(X0,sK0(X0,X1,X2),X2) & r2_hidden(sK0(X0,X1,X2),X1) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))))),
% 1.24/1.01    introduced(choice_axiom,[])).
% 1.24/1.01  
% 1.24/1.01  fof(f18,plain,(
% 1.24/1.01    ! [X0] : (! [X1,X2] : (((r2_lattice3(X0,X1,X2) | (~r1_orders_2(X0,sK0(X0,X1,X2),X2) & r2_hidden(sK0(X0,X1,X2),X1) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)))) & (! [X4] : (r1_orders_2(X0,X4,X2) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~r2_lattice3(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~l1_orders_2(X0))),
% 1.24/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).
% 1.24/1.01  
% 1.24/1.01  fof(f26,plain,(
% 1.24/1.01    ( ! [X4,X2,X0,X1] : (r1_orders_2(X0,X4,X2) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r2_lattice3(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f18])).
% 1.24/1.01  
% 1.24/1.01  fof(f28,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r2_lattice3(X0,X1,X2) | r2_hidden(sK0(X0,X1,X2),X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f18])).
% 1.24/1.01  
% 1.24/1.01  fof(f27,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r2_lattice3(X0,X1,X2) | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f18])).
% 1.24/1.01  
% 1.24/1.01  fof(f34,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (k1_yellow_0(X0,X2) = X1 | ~r1_orders_2(X0,X1,sK1(X0,X1,X2)) | ~r2_lattice3(X0,X2,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f35,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r1_yellow_0(X0,X2) | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) | ~r2_lattice3(X0,X2,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f36,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r1_yellow_0(X0,X2) | r2_lattice3(X0,X2,sK1(X0,X1,X2)) | ~r2_lattice3(X0,X2,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f37,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r1_yellow_0(X0,X2) | ~r1_orders_2(X0,X1,sK1(X0,X1,X2)) | ~r2_lattice3(X0,X2,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f1,axiom,(
% 1.24/1.01    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => r1_orders_2(X0,X1,X1)))),
% 1.24/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.24/1.01  
% 1.24/1.01  fof(f7,plain,(
% 1.24/1.01    ! [X0] : (! [X1] : (r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.24/1.01    inference(ennf_transformation,[],[f1])).
% 1.24/1.01  
% 1.24/1.01  fof(f8,plain,(
% 1.24/1.01    ! [X0] : (! [X1] : (r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.24/1.01    inference(flattening,[],[f7])).
% 1.24/1.01  
% 1.24/1.01  fof(f25,plain,(
% 1.24/1.01    ( ! [X0,X1] : (r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f8])).
% 1.24/1.01  
% 1.24/1.01  fof(f39,plain,(
% 1.24/1.01    v3_orders_2(sK2)),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f38,plain,(
% 1.24/1.01    ~v2_struct_0(sK2)),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f42,plain,(
% 1.24/1.01    m1_subset_1(sK3,u1_struct_0(sK2))),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f43,plain,(
% 1.24/1.01    m1_subset_1(sK4,u1_struct_0(sK2))),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  fof(f29,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r2_lattice3(X0,X1,X2) | ~r1_orders_2(X0,sK0(X0,X1,X2),X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f18])).
% 1.24/1.01  
% 1.24/1.01  fof(f31,plain,(
% 1.24/1.01    ( ! [X4,X2,X0,X1] : (r1_orders_2(X0,X1,X4) | ~r2_lattice3(X0,X2,X4) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r1_yellow_0(X0,X2) | k1_yellow_0(X0,X2) != X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f46,plain,(
% 1.24/1.01    ( ! [X4,X2,X0] : (r1_orders_2(X0,k1_yellow_0(X0,X2),X4) | ~r2_lattice3(X0,X2,X4) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~r1_yellow_0(X0,X2) | ~m1_subset_1(k1_yellow_0(X0,X2),u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(equality_resolution,[],[f31])).
% 1.24/1.01  
% 1.24/1.01  fof(f30,plain,(
% 1.24/1.01    ( ! [X2,X0,X1] : (r2_lattice3(X0,X2,X1) | ~r1_yellow_0(X0,X2) | k1_yellow_0(X0,X2) != X1 | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(cnf_transformation,[],[f20])).
% 1.24/1.01  
% 1.24/1.01  fof(f47,plain,(
% 1.24/1.01    ( ! [X2,X0] : (r2_lattice3(X0,X2,k1_yellow_0(X0,X2)) | ~r1_yellow_0(X0,X2) | ~m1_subset_1(k1_yellow_0(X0,X2),u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.24/1.01    inference(equality_resolution,[],[f30])).
% 1.24/1.01  
% 1.24/1.01  fof(f45,plain,(
% 1.24/1.01    sK3 != sK4),
% 1.24/1.01    inference(cnf_transformation,[],[f24])).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1548,plain,
% 1.24/1.01      ( k5_waybel_0(X0_45,X0_47) = k5_waybel_0(X0_45,X1_47) | X0_47 != X1_47 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1544,plain,
% 1.24/1.01      ( X0_49 != X1_49 | X2_49 != X1_49 | X2_49 = X0_49 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1542,plain,( X0_49 = X0_49 ),theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_14,negated_conjecture,
% 1.24/1.01      ( k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4) ),
% 1.24/1.01      inference(cnf_transformation,[],[f44]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1538,negated_conjecture,
% 1.24/1.01      ( k5_waybel_0(sK2,sK3) = k5_waybel_0(sK2,sK4) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_14]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_191,plain,
% 1.24/1.01      ( ~ v5_orders_2(X0) | v5_orders_2(X1) | X1 != X0 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_190,plain,
% 1.24/1.01      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X1) | X2 != X0 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_188,plain,
% 1.24/1.01      ( ~ v2_struct_0(X0) | v2_struct_0(X1) | X1 != X0 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_187,plain,
% 1.24/1.01      ( ~ v3_orders_2(X0) | v3_orders_2(X1) | X1 != X0 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_186,plain,
% 1.24/1.01      ( ~ l1_orders_2(X0) | l1_orders_2(X1) | X1 != X0 ),
% 1.24/1.01      theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1540,plain,( X0_2 = X0_2 ),theory(equality) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_10,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | k1_yellow_0(X0,X1) = X2 ),
% 1.24/1.01      inference(cnf_transformation,[],[f32]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_18,negated_conjecture,
% 1.24/1.01      ( v5_orders_2(sK2) ),
% 1.24/1.01      inference(cnf_transformation,[],[f40]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_317,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | k1_yellow_0(X0,X1) = X2
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_10,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_318,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2)
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_317]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_17,negated_conjecture,
% 1.24/1.01      ( l1_orders_2(sK2) ),
% 1.24/1.01      inference(cnf_transformation,[],[f41]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_322,plain,
% 1.24/1.01      ( m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_318,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_323,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_322]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1532,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2))
% 1.24/1.01      | k1_yellow_0(sK2,X0_46) = X0_47 ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_323]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1820,plain,
% 1.24/1.01      ( k1_yellow_0(sK2,X0_46) = X0_47
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2)) = iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1532]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_9,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r2_lattice3(X0,X1,sK1(X0,X2,X1))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | k1_yellow_0(X0,X1) = X2 ),
% 1.24/1.01      inference(cnf_transformation,[],[f33]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_341,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r2_lattice3(X0,X1,sK1(X0,X2,X1))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | k1_yellow_0(X0,X1) = X2
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_9,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_342,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2)
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_341]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_346,plain,
% 1.24/1.01      ( ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_342,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_347,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_346]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1531,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46))
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
% 1.24/1.01      | k1_yellow_0(sK2,X0_46) = X0_47 ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_347]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1821,plain,
% 1.24/1.01      ( k1_yellow_0(sK2,X0_46) = X0_47
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46)) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1531]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_4,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r1_orders_2(X0,X3,X2)
% 1.24/1.01      | ~ r2_hidden(X3,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f26]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_501,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r1_orders_2(X0,X3,X2)
% 1.24/1.01      | ~ r2_hidden(X3,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_4,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_502,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r1_orders_2(sK2,X2,X1)
% 1.24/1.01      | ~ r2_hidden(X2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_501]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r2_hidden(sK0(X0,X1,X2),X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f28]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_535,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r2_hidden(sK0(X0,X1,X2),X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_2,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_536,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_hidden(sK0(sK2,X0,X1),X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_535]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_583,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X2,X3)
% 1.24/1.01      | r1_orders_2(sK2,X4,X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.24/1.01      | X2 != X0
% 1.24/1.01      | sK0(sK2,X2,X3) != X4 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_502,c_536]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_584,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X0,X2)
% 1.24/1.01      | r1_orders_2(sK2,sK0(sK2,X0,X2),X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(sK0(sK2,X0,X2),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_583]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_3,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f27]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_520,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_3,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_521,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0,X1),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_520]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_598,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X0,X2)
% 1.24/1.01      | r1_orders_2(sK2,sK0(sK2,X0,X2),X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_584,c_521]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1524,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X1_47)
% 1.24/1.01      | r1_orders_2(sK2,sK0(sK2,X0_46,X1_47),X0_47)
% 1.24/1.01      | ~ m1_subset_1(X1_47,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_598]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1828,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X1_47) = iProver_top
% 1.24/1.01      | r1_orders_2(sK2,sK0(sK2,X0_46,X1_47),X0_47) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(X1_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1524]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_8,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | k1_yellow_0(X0,X1) = X2 ),
% 1.24/1.01      inference(cnf_transformation,[],[f34]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_365,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | k1_yellow_0(X0,X1) = X2
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_8,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_366,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2)
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_365]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_370,plain,
% 1.24/1.01      ( ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_366,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_371,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | k1_yellow_0(sK2,X0) = X1 ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_370]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1530,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | ~ r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46))
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
% 1.24/1.01      | k1_yellow_0(sK2,X0_46) = X0_47 ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_371]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1822,plain,
% 1.24/1.01      ( k1_yellow_0(sK2,X0_46) = X0_47
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1530]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2195,plain,
% 1.24/1.01      ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X1_46)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1828,c_1822]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1526,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_521]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1585,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) = iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1526]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2404,plain,
% 1.24/1.01      ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X1_46) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2195,c_1585]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2405,plain,
% 1.24/1.01      ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X1_46)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_2404]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2417,plain,
% 1.24/1.01      ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1821,c_2405]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2632,plain,
% 1.24/1.01      ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2417,c_1585]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2633,plain,
% 1.24/1.01      ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_2632]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2644,plain,
% 1.24/1.01      ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1820,c_2633]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2715,plain,
% 1.24/1.01      ( m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2644,c_1585]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2716,plain,
% 1.24/1.01      ( sK0(sK2,X0_46,X0_47) = k1_yellow_0(sK2,X0_46)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_2715]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_7,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f35]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_389,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | m1_subset_1(sK1(X0,X2,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_7,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_390,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_389]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_394,plain,
% 1.24/1.01      ( m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_390,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_395,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK1(sK2,X1,X0),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_394]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1529,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | r1_yellow_0(sK2,X0_46)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
% 1.24/1.01      | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_395]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1823,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,X0_47,X0_46),u1_struct_0(sK2)) = iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1529]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_6,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r2_lattice3(X0,X1,sK1(X0,X2,X1))
% 1.24/1.01      | r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f36]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_413,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r2_lattice3(X0,X1,sK1(X0,X2,X1))
% 1.24/1.01      | r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_6,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_414,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_413]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_418,plain,
% 1.24/1.01      ( ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_414,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_419,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r2_lattice3(sK2,X0,sK1(sK2,X1,X0))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_418]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1528,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46))
% 1.24/1.01      | r1_yellow_0(sK2,X0_46)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_419]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1824,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,X0_47,X0_46)) = iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1528]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_5,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
% 1.24/1.01      | r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f37]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_437,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ r1_orders_2(X0,X2,sK1(X0,X2,X1))
% 1.24/1.01      | r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_5,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_438,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_437]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_442,plain,
% 1.24/1.01      ( ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_438,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_443,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ r1_orders_2(sK2,X1,sK1(sK2,X1,X0))
% 1.24/1.01      | r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_442]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1527,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | ~ r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46))
% 1.24/1.01      | r1_yellow_0(sK2,X0_46)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_443]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1825,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r1_orders_2(sK2,X0_47,sK1(sK2,X0_47,X0_46)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1527]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2242,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X1_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1828,c_1825]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2497,plain,
% 1.24/1.01      ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X1_46) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2242,c_1585]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2498,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X1_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X1_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X1_46),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_2497]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2509,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1824,c_2498]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2527,plain,
% 1.24/1.01      ( m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2509,c_1585]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2528,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK1(sK2,sK0(sK2,X0_46,X0_47),X0_46),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_2527]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2538,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1823,c_2528]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2621,plain,
% 1.24/1.01      ( m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) = iProver_top ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2538,c_1585]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2622,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r2_lattice3(sK2,X0_46,sK0(sK2,X0_46,X0_47)) != iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_2621]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_0,plain,
% 1.24/1.01      ( r1_orders_2(X0,X1,X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.24/1.01      | v2_struct_0(X0)
% 1.24/1.01      | ~ v3_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f25]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_19,negated_conjecture,
% 1.24/1.01      ( v3_orders_2(sK2) ),
% 1.24/1.01      inference(cnf_transformation,[],[f39]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_212,plain,
% 1.24/1.01      ( r1_orders_2(X0,X1,X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.24/1.01      | v2_struct_0(X0)
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_19]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_213,plain,
% 1.24/1.01      ( r1_orders_2(sK2,X0,X0)
% 1.24/1.01      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.24/1.01      | v2_struct_0(sK2)
% 1.24/1.01      | ~ l1_orders_2(sK2) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_212]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_20,negated_conjecture,
% 1.24/1.01      ( ~ v2_struct_0(sK2) ),
% 1.24/1.01      inference(cnf_transformation,[],[f38]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_217,plain,
% 1.24/1.01      ( r1_orders_2(sK2,X0,X0) | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(global_propositional_subsumption,
% 1.24/1.01                [status(thm)],
% 1.24/1.01                [c_213,c_20,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1535,plain,
% 1.24/1.01      ( r1_orders_2(sK2,X0_47,X0_47) | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_217]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1817,plain,
% 1.24/1.01      ( r1_orders_2(sK2,X0_47,X0_47) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1535]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2318,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r1_orders_2(sK2,sK1(sK2,X0_47,X0_46),sK1(sK2,X0_47,X0_46)) = iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1823,c_1817]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2251,plain,
% 1.24/1.01      ( k1_yellow_0(sK2,X0_46) = X0_47
% 1.24/1.01      | r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r1_orders_2(sK2,sK1(sK2,X0_47,X0_46),sK1(sK2,X0_47,X0_46)) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1820,c_1817]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1826,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(sK0(sK2,X0_46,X0_47),u1_struct_0(sK2)) = iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1526]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_2093,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r1_orders_2(sK2,sK0(sK2,X0_46,X0_47),sK0(sK2,X0_46,X0_47)) = iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1826,c_1817]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_16,negated_conjecture,
% 1.24/1.01      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(cnf_transformation,[],[f42]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1536,negated_conjecture,
% 1.24/1.01      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_16]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1816,plain,
% 1.24/1.01      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1536]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1997,plain,
% 1.24/1.01      ( r1_orders_2(sK2,sK3,sK3) = iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1816,c_1817]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_15,negated_conjecture,
% 1.24/1.01      ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(cnf_transformation,[],[f43]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1537,negated_conjecture,
% 1.24/1.01      ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_15]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1815,plain,
% 1.24/1.01      ( m1_subset_1(sK4,u1_struct_0(sK2)) = iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1537]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1996,plain,
% 1.24/1.01      ( r1_orders_2(sK2,sK4,sK4) = iProver_top ),
% 1.24/1.01      inference(superposition,[status(thm)],[c_1815,c_1817]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f29]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_550,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,X2)
% 1.24/1.01      | ~ r1_orders_2(X0,sK0(X0,X1,X2),X2)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_1,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_551,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | ~ r1_orders_2(sK2,sK0(sK2,X0,X1),X1)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_550]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1525,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | ~ r1_orders_2(sK2,sK0(sK2,X0_46,X0_47),X0_47)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_551]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1827,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) = iProver_top
% 1.24/1.01      | r1_orders_2(sK2,sK0(sK2,X0_46,X0_47),X0_47) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1525]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_11,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r1_orders_2(X0,k1_yellow_0(X0,X1),X2)
% 1.24/1.01      | ~ r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f46]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_290,plain,
% 1.24/1.01      ( ~ r2_lattice3(X0,X1,X2)
% 1.24/1.01      | r1_orders_2(X0,k1_yellow_0(X0,X1),X2)
% 1.24/1.01      | ~ r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_11,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_291,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r1_orders_2(sK2,k1_yellow_0(sK2,X0),X1)
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_290]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_295,plain,
% 1.24/1.01      ( ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0)
% 1.24/1.01      | r1_orders_2(sK2,k1_yellow_0(sK2,X0),X1)
% 1.24/1.01      | ~ r2_lattice3(sK2,X0,X1) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_291,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_296,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0,X1)
% 1.24/1.01      | r1_orders_2(sK2,k1_yellow_0(sK2,X0),X1)
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_295]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1533,plain,
% 1.24/1.01      ( ~ r2_lattice3(sK2,X0_46,X0_47)
% 1.24/1.01      | r1_orders_2(sK2,k1_yellow_0(sK2,X0_46),X0_47)
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0_46)
% 1.24/1.01      | ~ m1_subset_1(X0_47,u1_struct_0(sK2))
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_296]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1819,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,X0_47) != iProver_top
% 1.24/1.01      | r1_orders_2(sK2,k1_yellow_0(sK2,X0_46),X0_47) = iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) != iProver_top
% 1.24/1.01      | m1_subset_1(X0_47,u1_struct_0(sK2)) != iProver_top
% 1.24/1.01      | m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1533]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_12,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,k1_yellow_0(X0,X1))
% 1.24/1.01      | ~ r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ v5_orders_2(X0)
% 1.24/1.01      | ~ l1_orders_2(X0) ),
% 1.24/1.01      inference(cnf_transformation,[],[f47]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_269,plain,
% 1.24/1.01      ( r2_lattice3(X0,X1,k1_yellow_0(X0,X1))
% 1.24/1.01      | ~ r1_yellow_0(X0,X1)
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(X0,X1),u1_struct_0(X0))
% 1.24/1.01      | ~ l1_orders_2(X0)
% 1.24/1.01      | sK2 != X0 ),
% 1.24/1.01      inference(resolution_lifted,[status(thm)],[c_12,c_18]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_270,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0,k1_yellow_0(sK2,X0))
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ l1_orders_2(sK2) ),
% 1.24/1.01      inference(unflattening,[status(thm)],[c_269]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_274,plain,
% 1.24/1.01      ( ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2))
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0)
% 1.24/1.01      | r2_lattice3(sK2,X0,k1_yellow_0(sK2,X0)) ),
% 1.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_270,c_17]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_275,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0,k1_yellow_0(sK2,X0))
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0)
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(sK2,X0),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(renaming,[status(thm)],[c_274]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1534,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,k1_yellow_0(sK2,X0_46))
% 1.24/1.01      | ~ r1_yellow_0(sK2,X0_46)
% 1.24/1.01      | ~ m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_275]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1818,plain,
% 1.24/1.01      ( r2_lattice3(sK2,X0_46,k1_yellow_0(sK2,X0_46)) = iProver_top
% 1.24/1.01      | r1_yellow_0(sK2,X0_46) != iProver_top
% 1.24/1.01      | m1_subset_1(k1_yellow_0(sK2,X0_46),u1_struct_0(sK2)) != iProver_top ),
% 1.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1534]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_13,negated_conjecture,
% 1.24/1.01      ( sK3 != sK4 ),
% 1.24/1.01      inference(cnf_transformation,[],[f45]) ).
% 1.24/1.01  
% 1.24/1.01  cnf(c_1539,negated_conjecture,
% 1.24/1.01      ( sK3 != sK4 ),
% 1.24/1.01      inference(subtyping,[status(esa)],[c_13]) ).
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  % SZS output end Saturation for theBenchmark.p
% 1.24/1.01  
% 1.24/1.01  ------                               Statistics
% 1.24/1.01  
% 1.24/1.01  ------ General
% 1.24/1.01  
% 1.24/1.01  abstr_ref_over_cycles:                  0
% 1.24/1.01  abstr_ref_under_cycles:                 0
% 1.24/1.01  gc_basic_clause_elim:                   0
% 1.24/1.01  forced_gc_time:                         0
% 1.24/1.01  parsing_time:                           0.022
% 1.24/1.01  unif_index_cands_time:                  0.
% 1.24/1.01  unif_index_add_time:                    0.
% 1.24/1.01  orderings_time:                         0.
% 1.24/1.01  out_proof_time:                         0.
% 1.24/1.01  total_time:                             0.13
% 1.24/1.01  num_of_symbols:                         50
% 1.24/1.01  num_of_terms:                           1819
% 1.24/1.01  
% 1.24/1.01  ------ Preprocessing
% 1.24/1.01  
% 1.24/1.01  num_of_splits:                          0
% 1.24/1.01  num_of_split_atoms:                     0
% 1.24/1.01  num_of_reused_defs:                     0
% 1.24/1.01  num_eq_ax_congr_red:                    37
% 1.24/1.01  num_of_sem_filtered_clauses:            5
% 1.24/1.01  num_of_subtypes:                        5
% 1.24/1.01  monotx_restored_types:                  0
% 1.24/1.01  sat_num_of_epr_types:                   0
% 1.24/1.01  sat_num_of_non_cyclic_types:            0
% 1.24/1.01  sat_guarded_non_collapsed_types:        1
% 1.24/1.01  num_pure_diseq_elim:                    0
% 1.24/1.01  simp_replaced_by:                       0
% 1.24/1.01  res_preprocessed:                       82
% 1.24/1.01  prep_upred:                             0
% 1.24/1.01  prep_unflattend:                        43
% 1.24/1.01  smt_new_axioms:                         0
% 1.24/1.01  pred_elim_cands:                        4
% 1.24/1.01  pred_elim:                              5
% 1.24/1.01  pred_elim_cl:                           5
% 1.24/1.01  pred_elim_cycles:                       10
% 1.24/1.01  merged_defs:                            0
% 1.24/1.01  merged_defs_ncl:                        0
% 1.24/1.01  bin_hyper_res:                          0
% 1.24/1.01  prep_cycles:                            4
% 1.24/1.01  pred_elim_time:                         0.018
% 1.24/1.01  splitting_time:                         0.
% 1.24/1.01  sem_filter_time:                        0.
% 1.24/1.01  monotx_time:                            0.
% 1.24/1.01  subtype_inf_time:                       0.
% 1.24/1.01  
% 1.24/1.01  ------ Problem properties
% 1.24/1.01  
% 1.24/1.01  clauses:                                16
% 1.24/1.01  conjectures:                            4
% 1.24/1.01  epr:                                    1
% 1.24/1.01  horn:                                   10
% 1.24/1.01  ground:                                 4
% 1.24/1.01  unary:                                  4
% 1.24/1.01  binary:                                 1
% 1.24/1.01  lits:                                   49
% 1.24/1.01  lits_eq:                                5
% 1.24/1.01  fd_pure:                                0
% 1.24/1.01  fd_pseudo:                              0
% 1.24/1.01  fd_cond:                                0
% 1.24/1.01  fd_pseudo_cond:                         3
% 1.24/1.01  ac_symbols:                             0
% 1.24/1.01  
% 1.24/1.01  ------ Propositional Solver
% 1.24/1.01  
% 1.24/1.01  prop_solver_calls:                      32
% 1.24/1.01  prop_fast_solver_calls:                 958
% 1.24/1.01  smt_solver_calls:                       0
% 1.24/1.01  smt_fast_solver_calls:                  0
% 1.24/1.01  prop_num_of_clauses:                    579
% 1.24/1.01  prop_preprocess_simplified:             2736
% 1.24/1.01  prop_fo_subsumed:                       22
% 1.24/1.01  prop_solver_time:                       0.
% 1.24/1.01  smt_solver_time:                        0.
% 1.24/1.01  smt_fast_solver_time:                   0.
% 1.24/1.01  prop_fast_solver_time:                  0.
% 1.24/1.01  prop_unsat_core_time:                   0.
% 1.24/1.01  
% 1.24/1.01  ------ QBF
% 1.24/1.01  
% 1.24/1.01  qbf_q_res:                              0
% 1.24/1.01  qbf_num_tautologies:                    0
% 1.24/1.01  qbf_prep_cycles:                        0
% 1.24/1.01  
% 1.24/1.01  ------ BMC1
% 1.24/1.01  
% 1.24/1.01  bmc1_current_bound:                     -1
% 1.24/1.01  bmc1_last_solved_bound:                 -1
% 1.24/1.01  bmc1_unsat_core_size:                   -1
% 1.24/1.01  bmc1_unsat_core_parents_size:           -1
% 1.24/1.01  bmc1_merge_next_fun:                    0
% 1.24/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.24/1.01  
% 1.24/1.01  ------ Instantiation
% 1.24/1.01  
% 1.24/1.01  inst_num_of_clauses:                    111
% 1.24/1.01  inst_num_in_passive:                    9
% 1.24/1.01  inst_num_in_active:                     94
% 1.24/1.01  inst_num_in_unprocessed:                8
% 1.24/1.01  inst_num_of_loops:                      140
% 1.24/1.01  inst_num_of_learning_restarts:          0
% 1.24/1.01  inst_num_moves_active_passive:          37
% 1.24/1.01  inst_lit_activity:                      0
% 1.24/1.01  inst_lit_activity_moves:                0
% 1.24/1.01  inst_num_tautologies:                   0
% 1.24/1.01  inst_num_prop_implied:                  0
% 1.24/1.01  inst_num_existing_simplified:           0
% 1.24/1.01  inst_num_eq_res_simplified:             0
% 1.24/1.01  inst_num_child_elim:                    0
% 1.24/1.01  inst_num_of_dismatching_blockings:      31
% 1.24/1.01  inst_num_of_non_proper_insts:           157
% 1.24/1.01  inst_num_of_duplicates:                 0
% 1.24/1.01  inst_inst_num_from_inst_to_res:         0
% 1.24/1.01  inst_dismatching_checking_time:         0.
% 1.24/1.01  
% 1.24/1.01  ------ Resolution
% 1.24/1.01  
% 1.24/1.01  res_num_of_clauses:                     0
% 1.24/1.01  res_num_in_passive:                     0
% 1.24/1.01  res_num_in_active:                      0
% 1.24/1.01  res_num_of_loops:                       86
% 1.24/1.01  res_forward_subset_subsumed:            15
% 1.24/1.01  res_backward_subset_subsumed:           0
% 1.24/1.01  res_forward_subsumed:                   0
% 1.24/1.01  res_backward_subsumed:                  0
% 1.24/1.01  res_forward_subsumption_resolution:     3
% 1.24/1.01  res_backward_subsumption_resolution:    0
% 1.24/1.01  res_clause_to_clause_subsumption:       210
% 1.24/1.01  res_orphan_elimination:                 0
% 1.24/1.01  res_tautology_del:                      27
% 1.24/1.01  res_num_eq_res_simplified:              0
% 1.24/1.01  res_num_sel_changes:                    0
% 1.24/1.01  res_moves_from_active_to_pass:          0
% 1.24/1.01  
% 1.24/1.01  ------ Superposition
% 1.24/1.01  
% 1.24/1.01  sup_time_total:                         0.
% 1.24/1.01  sup_time_generating:                    0.
% 1.24/1.01  sup_time_sim_full:                      0.
% 1.24/1.01  sup_time_sim_immed:                     0.
% 1.24/1.01  
% 1.24/1.01  sup_num_of_clauses:                     26
% 1.24/1.01  sup_num_in_active:                      25
% 1.24/1.01  sup_num_in_passive:                     1
% 1.24/1.01  sup_num_of_loops:                       27
% 1.24/1.01  sup_fw_superposition:                   12
% 1.24/1.01  sup_bw_superposition:                   4
% 1.24/1.01  sup_immediate_simplified:               2
% 1.24/1.01  sup_given_eliminated:                   0
% 1.24/1.01  comparisons_done:                       0
% 1.24/1.01  comparisons_avoided:                    0
% 1.24/1.01  
% 1.24/1.01  ------ Simplifications
% 1.24/1.01  
% 1.24/1.01  
% 1.24/1.01  sim_fw_subset_subsumed:                 0
% 1.24/1.01  sim_bw_subset_subsumed:                 2
% 1.24/1.01  sim_fw_subsumed:                        1
% 1.24/1.01  sim_bw_subsumed:                        1
% 1.24/1.01  sim_fw_subsumption_res:                 0
% 1.24/1.01  sim_bw_subsumption_res:                 0
% 1.24/1.01  sim_tautology_del:                      1
% 1.24/1.01  sim_eq_tautology_del:                   0
% 1.24/1.01  sim_eq_res_simp:                        0
% 1.24/1.01  sim_fw_demodulated:                     0
% 1.24/1.01  sim_bw_demodulated:                     0
% 1.24/1.01  sim_light_normalised:                   0
% 1.24/1.01  sim_joinable_taut:                      0
% 1.24/1.01  sim_joinable_simp:                      0
% 1.24/1.01  sim_ac_normalised:                      0
% 1.24/1.01  sim_smt_subsumption:                    0
% 1.24/1.01  
%------------------------------------------------------------------------------
