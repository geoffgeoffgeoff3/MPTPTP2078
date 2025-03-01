%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT1538+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n032.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:45:49 EST 2020

% Result     : Theorem 1.63s
% Output     : CNFRefutation 1.63s
% Verified   : 
% Statistics : Number of formulae       :  135 (2158 expanded)
%              Number of clauses        :   86 ( 450 expanded)
%              Number of leaves         :   12 ( 665 expanded)
%              Depth                    :   25
%              Number of atoms          :  741 (21368 expanded)
%              Number of equality atoms :  198 (1008 expanded)
%              Maximal formula depth    :   14 (   6 average)
%              Maximal clause size      :   28 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,plain,(
    ! [X2,X0,X1] :
      ( sP0(X2,X0,X1)
    <=> ! [X3] :
          ( X2 = X3
          | ? [X4] :
              ( ~ r1_orders_2(X0,X4,X3)
              & r1_lattice3(X0,X1,X4)
              & m1_subset_1(X4,u1_struct_0(X0)) )
          | ~ r1_lattice3(X0,X1,X3)
          | ~ m1_subset_1(X3,u1_struct_0(X0)) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f14,plain,(
    ! [X2,X0,X1] :
      ( ( sP0(X2,X0,X1)
        | ? [X3] :
            ( X2 != X3
            & ! [X4] :
                ( r1_orders_2(X0,X4,X3)
                | ~ r1_lattice3(X0,X1,X4)
                | ~ m1_subset_1(X4,u1_struct_0(X0)) )
            & r1_lattice3(X0,X1,X3)
            & m1_subset_1(X3,u1_struct_0(X0)) ) )
      & ( ! [X3] :
            ( X2 = X3
            | ? [X4] :
                ( ~ r1_orders_2(X0,X4,X3)
                & r1_lattice3(X0,X1,X4)
                & m1_subset_1(X4,u1_struct_0(X0)) )
            | ~ r1_lattice3(X0,X1,X3)
            | ~ m1_subset_1(X3,u1_struct_0(X0)) )
        | ~ sP0(X2,X0,X1) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ? [X3] :
            ( X0 != X3
            & ! [X4] :
                ( r1_orders_2(X1,X4,X3)
                | ~ r1_lattice3(X1,X2,X4)
                | ~ m1_subset_1(X4,u1_struct_0(X1)) )
            & r1_lattice3(X1,X2,X3)
            & m1_subset_1(X3,u1_struct_0(X1)) ) )
      & ( ! [X5] :
            ( X0 = X5
            | ? [X6] :
                ( ~ r1_orders_2(X1,X6,X5)
                & r1_lattice3(X1,X2,X6)
                & m1_subset_1(X6,u1_struct_0(X1)) )
            | ~ r1_lattice3(X1,X2,X5)
            | ~ m1_subset_1(X5,u1_struct_0(X1)) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(rectify,[],[f14])).

fof(f17,plain,(
    ! [X5,X2,X1] :
      ( ? [X6] :
          ( ~ r1_orders_2(X1,X6,X5)
          & r1_lattice3(X1,X2,X6)
          & m1_subset_1(X6,u1_struct_0(X1)) )
     => ( ~ r1_orders_2(X1,sK2(X1,X2,X5),X5)
        & r1_lattice3(X1,X2,sK2(X1,X2,X5))
        & m1_subset_1(sK2(X1,X2,X5),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( X0 != X3
          & ! [X4] :
              ( r1_orders_2(X1,X4,X3)
              | ~ r1_lattice3(X1,X2,X4)
              | ~ m1_subset_1(X4,u1_struct_0(X1)) )
          & r1_lattice3(X1,X2,X3)
          & m1_subset_1(X3,u1_struct_0(X1)) )
     => ( sK1(X0,X1,X2) != X0
        & ! [X4] :
            ( r1_orders_2(X1,X4,sK1(X0,X1,X2))
            | ~ r1_lattice3(X1,X2,X4)
            | ~ m1_subset_1(X4,u1_struct_0(X1)) )
        & r1_lattice3(X1,X2,sK1(X0,X1,X2))
        & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( sP0(X0,X1,X2)
        | ( sK1(X0,X1,X2) != X0
          & ! [X4] :
              ( r1_orders_2(X1,X4,sK1(X0,X1,X2))
              | ~ r1_lattice3(X1,X2,X4)
              | ~ m1_subset_1(X4,u1_struct_0(X1)) )
          & r1_lattice3(X1,X2,sK1(X0,X1,X2))
          & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X1)) ) )
      & ( ! [X5] :
            ( X0 = X5
            | ( ~ r1_orders_2(X1,sK2(X1,X2,X5),X5)
              & r1_lattice3(X1,X2,sK2(X1,X2,X5))
              & m1_subset_1(sK2(X1,X2,X5),u1_struct_0(X1)) )
            | ~ r1_lattice3(X1,X2,X5)
            | ~ m1_subset_1(X5,u1_struct_0(X1)) )
        | ~ sP0(X0,X1,X2) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f15,f17,f16])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | r1_lattice3(X1,X2,sK1(X0,X1,X2)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0) )
     => ! [X1] :
          ( r2_yellow_0(X0,X1)
        <=> ? [X2] :
              ( ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ( r1_lattice3(X0,X1,X3)
                   => r1_orders_2(X0,X3,X2) ) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0) )
       => ! [X1] :
            ( r2_yellow_0(X0,X1)
          <=> ? [X2] :
                ( ! [X3] :
                    ( m1_subset_1(X3,u1_struct_0(X0))
                   => ( r1_lattice3(X0,X1,X3)
                     => r1_orders_2(X0,X3,X2) ) )
                & r1_lattice3(X0,X1,X2)
                & m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f10,plain,(
    ? [X0] :
      ( ? [X1] :
          ( r2_yellow_0(X0,X1)
        <~> ? [X2] :
              ( ! [X3] :
                  ( r1_orders_2(X0,X3,X2)
                  | ~ r1_lattice3(X0,X1,X3)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) )
      & l1_orders_2(X0)
      & v5_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f11,plain,(
    ? [X0] :
      ( ? [X1] :
          ( r2_yellow_0(X0,X1)
        <~> ? [X2] :
              ( ! [X3] :
                  ( r1_orders_2(X0,X3,X2)
                  | ~ r1_lattice3(X0,X1,X3)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) )
      & l1_orders_2(X0)
      & v5_orders_2(X0) ) ),
    inference(flattening,[],[f10])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ! [X2] :
                ( ? [X3] :
                    ( ~ r1_orders_2(X0,X3,X2)
                    & r1_lattice3(X0,X1,X3)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r1_lattice3(X0,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ r2_yellow_0(X0,X1) )
          & ( ? [X2] :
                ( ! [X3] :
                    ( r1_orders_2(X0,X3,X2)
                    | ~ r1_lattice3(X0,X1,X3)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                & r1_lattice3(X0,X1,X2)
                & m1_subset_1(X2,u1_struct_0(X0)) )
            | r2_yellow_0(X0,X1) ) )
      & l1_orders_2(X0)
      & v5_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ! [X2] :
                ( ? [X3] :
                    ( ~ r1_orders_2(X0,X3,X2)
                    & r1_lattice3(X0,X1,X3)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r1_lattice3(X0,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ r2_yellow_0(X0,X1) )
          & ( ? [X4] :
                ( ! [X5] :
                    ( r1_orders_2(X0,X5,X4)
                    | ~ r1_lattice3(X0,X1,X5)
                    | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                & r1_lattice3(X0,X1,X4)
                & m1_subset_1(X4,u1_struct_0(X0)) )
            | r2_yellow_0(X0,X1) ) )
      & l1_orders_2(X0)
      & v5_orders_2(X0) ) ),
    inference(rectify,[],[f24])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ? [X4] :
          ( ! [X5] :
              ( r1_orders_2(X0,X5,X4)
              | ~ r1_lattice3(X0,X1,X5)
              | ~ m1_subset_1(X5,u1_struct_0(X0)) )
          & r1_lattice3(X0,X1,X4)
          & m1_subset_1(X4,u1_struct_0(X0)) )
     => ( ! [X5] :
            ( r1_orders_2(X0,X5,sK8)
            | ~ r1_lattice3(X0,X1,X5)
            | ~ m1_subset_1(X5,u1_struct_0(X0)) )
        & r1_lattice3(X0,X1,sK8)
        & m1_subset_1(sK8,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X3,X2)
          & r1_lattice3(X0,X1,X3)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,sK7(X2),X2)
        & r1_lattice3(X0,X1,sK7(X2))
        & m1_subset_1(sK7(X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ! [X2] :
                ( ? [X3] :
                    ( ~ r1_orders_2(X0,X3,X2)
                    & r1_lattice3(X0,X1,X3)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r1_lattice3(X0,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ r2_yellow_0(X0,X1) )
          & ( ? [X4] :
                ( ! [X5] :
                    ( r1_orders_2(X0,X5,X4)
                    | ~ r1_lattice3(X0,X1,X5)
                    | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                & r1_lattice3(X0,X1,X4)
                & m1_subset_1(X4,u1_struct_0(X0)) )
            | r2_yellow_0(X0,X1) ) )
     => ( ( ! [X2] :
              ( ? [X3] :
                  ( ~ r1_orders_2(X0,X3,X2)
                  & r1_lattice3(X0,sK6,X3)
                  & m1_subset_1(X3,u1_struct_0(X0)) )
              | ~ r1_lattice3(X0,sK6,X2)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ r2_yellow_0(X0,sK6) )
        & ( ? [X4] :
              ( ! [X5] :
                  ( r1_orders_2(X0,X5,X4)
                  | ~ r1_lattice3(X0,sK6,X5)
                  | ~ m1_subset_1(X5,u1_struct_0(X0)) )
              & r1_lattice3(X0,sK6,X4)
              & m1_subset_1(X4,u1_struct_0(X0)) )
          | r2_yellow_0(X0,sK6) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ! [X2] :
                  ( ? [X3] :
                      ( ~ r1_orders_2(X0,X3,X2)
                      & r1_lattice3(X0,X1,X3)
                      & m1_subset_1(X3,u1_struct_0(X0)) )
                  | ~ r1_lattice3(X0,X1,X2)
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | ~ r2_yellow_0(X0,X1) )
            & ( ? [X4] :
                  ( ! [X5] :
                      ( r1_orders_2(X0,X5,X4)
                      | ~ r1_lattice3(X0,X1,X5)
                      | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                  & r1_lattice3(X0,X1,X4)
                  & m1_subset_1(X4,u1_struct_0(X0)) )
              | r2_yellow_0(X0,X1) ) )
        & l1_orders_2(X0)
        & v5_orders_2(X0) )
   => ( ? [X1] :
          ( ( ! [X2] :
                ( ? [X3] :
                    ( ~ r1_orders_2(sK5,X3,X2)
                    & r1_lattice3(sK5,X1,X3)
                    & m1_subset_1(X3,u1_struct_0(sK5)) )
                | ~ r1_lattice3(sK5,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(sK5)) )
            | ~ r2_yellow_0(sK5,X1) )
          & ( ? [X4] :
                ( ! [X5] :
                    ( r1_orders_2(sK5,X5,X4)
                    | ~ r1_lattice3(sK5,X1,X5)
                    | ~ m1_subset_1(X5,u1_struct_0(sK5)) )
                & r1_lattice3(sK5,X1,X4)
                & m1_subset_1(X4,u1_struct_0(sK5)) )
            | r2_yellow_0(sK5,X1) ) )
      & l1_orders_2(sK5)
      & v5_orders_2(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ( ! [X2] :
          ( ( ~ r1_orders_2(sK5,sK7(X2),X2)
            & r1_lattice3(sK5,sK6,sK7(X2))
            & m1_subset_1(sK7(X2),u1_struct_0(sK5)) )
          | ~ r1_lattice3(sK5,sK6,X2)
          | ~ m1_subset_1(X2,u1_struct_0(sK5)) )
      | ~ r2_yellow_0(sK5,sK6) )
    & ( ( ! [X5] :
            ( r1_orders_2(sK5,X5,sK8)
            | ~ r1_lattice3(sK5,sK6,X5)
            | ~ m1_subset_1(X5,u1_struct_0(sK5)) )
        & r1_lattice3(sK5,sK6,sK8)
        & m1_subset_1(sK8,u1_struct_0(sK5)) )
      | r2_yellow_0(sK5,sK6) )
    & l1_orders_2(sK5)
    & v5_orders_2(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7,sK8])],[f25,f29,f28,f27,f26])).

fof(f50,plain,(
    ! [X5] :
      ( r1_orders_2(sK5,X5,sK8)
      | ~ r1_lattice3(sK5,sK6,X5)
      | ~ m1_subset_1(X5,u1_struct_0(sK5))
      | r2_yellow_0(sK5,sK6) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f52,plain,(
    ! [X2] :
      ( r1_lattice3(sK5,sK6,sK7(X2))
      | ~ r1_lattice3(sK5,sK6,X2)
      | ~ m1_subset_1(X2,u1_struct_0(sK5))
      | ~ r2_yellow_0(sK5,sK6) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f1,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1] :
          ( r2_yellow_0(X0,X1)
        <=> ? [X2] :
              ( ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ( ( ! [X4] :
                          ( m1_subset_1(X4,u1_struct_0(X0))
                         => ( r1_lattice3(X0,X1,X4)
                           => r1_orders_2(X0,X4,X3) ) )
                      & r1_lattice3(X0,X1,X3) )
                   => X2 = X3 ) )
              & ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ( r1_lattice3(X0,X1,X3)
                   => r1_orders_2(X0,X3,X2) ) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f5,plain,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1] :
          ( r2_yellow_0(X0,X1)
        <=> ? [X2] :
              ( ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X0))
                 => ( ( ! [X4] :
                          ( m1_subset_1(X4,u1_struct_0(X0))
                         => ( r1_lattice3(X0,X1,X4)
                           => r1_orders_2(X0,X4,X3) ) )
                      & r1_lattice3(X0,X1,X3) )
                   => X2 = X3 ) )
              & ! [X5] :
                  ( m1_subset_1(X5,u1_struct_0(X0))
                 => ( r1_lattice3(X0,X1,X5)
                   => r1_orders_2(X0,X5,X2) ) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    inference(rectify,[],[f1])).

fof(f6,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_yellow_0(X0,X1)
        <=> ? [X2] :
              ( ! [X3] :
                  ( X2 = X3
                  | ? [X4] :
                      ( ~ r1_orders_2(X0,X4,X3)
                      & r1_lattice3(X0,X1,X4)
                      & m1_subset_1(X4,u1_struct_0(X0)) )
                  | ~ r1_lattice3(X0,X1,X3)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & ! [X5] :
                  ( r1_orders_2(X0,X5,X2)
                  | ~ r1_lattice3(X0,X1,X5)
                  | ~ m1_subset_1(X5,u1_struct_0(X0)) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f7,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_yellow_0(X0,X1)
        <=> ? [X2] :
              ( ! [X3] :
                  ( X2 = X3
                  | ? [X4] :
                      ( ~ r1_orders_2(X0,X4,X3)
                      & r1_lattice3(X0,X1,X4)
                      & m1_subset_1(X4,u1_struct_0(X0)) )
                  | ~ r1_lattice3(X0,X1,X3)
                  | ~ m1_subset_1(X3,u1_struct_0(X0)) )
              & ! [X5] :
                  ( r1_orders_2(X0,X5,X2)
                  | ~ r1_lattice3(X0,X1,X5)
                  | ~ m1_subset_1(X5,u1_struct_0(X0)) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f6])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r2_yellow_0(X0,X1)
        <=> ? [X2] :
              ( sP0(X2,X0,X1)
              & ! [X5] :
                  ( r1_orders_2(X0,X5,X2)
                  | ~ r1_lattice3(X0,X1,X5)
                  | ~ m1_subset_1(X5,u1_struct_0(X0)) )
              & r1_lattice3(X0,X1,X2)
              & m1_subset_1(X2,u1_struct_0(X0)) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(definition_folding,[],[f7,f12])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r2_yellow_0(X0,X1)
            | ! [X2] :
                ( ~ sP0(X2,X0,X1)
                | ? [X5] :
                    ( ~ r1_orders_2(X0,X5,X2)
                    & r1_lattice3(X0,X1,X5)
                    & m1_subset_1(X5,u1_struct_0(X0)) )
                | ~ r1_lattice3(X0,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          & ( ? [X2] :
                ( sP0(X2,X0,X1)
                & ! [X5] :
                    ( r1_orders_2(X0,X5,X2)
                    | ~ r1_lattice3(X0,X1,X5)
                    | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                & r1_lattice3(X0,X1,X2)
                & m1_subset_1(X2,u1_struct_0(X0)) )
            | ~ r2_yellow_0(X0,X1) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r2_yellow_0(X0,X1)
            | ! [X2] :
                ( ~ sP0(X2,X0,X1)
                | ? [X3] :
                    ( ~ r1_orders_2(X0,X3,X2)
                    & r1_lattice3(X0,X1,X3)
                    & m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ r1_lattice3(X0,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          & ( ? [X4] :
                ( sP0(X4,X0,X1)
                & ! [X5] :
                    ( r1_orders_2(X0,X5,X4)
                    | ~ r1_lattice3(X0,X1,X5)
                    | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                & r1_lattice3(X0,X1,X4)
                & m1_subset_1(X4,u1_struct_0(X0)) )
            | ~ r2_yellow_0(X0,X1) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(rectify,[],[f19])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X4] :
          ( sP0(X4,X0,X1)
          & ! [X5] :
              ( r1_orders_2(X0,X5,X4)
              | ~ r1_lattice3(X0,X1,X5)
              | ~ m1_subset_1(X5,u1_struct_0(X0)) )
          & r1_lattice3(X0,X1,X4)
          & m1_subset_1(X4,u1_struct_0(X0)) )
     => ( sP0(sK4(X0,X1),X0,X1)
        & ! [X5] :
            ( r1_orders_2(X0,X5,sK4(X0,X1))
            | ~ r1_lattice3(X0,X1,X5)
            | ~ m1_subset_1(X5,u1_struct_0(X0)) )
        & r1_lattice3(X0,X1,sK4(X0,X1))
        & m1_subset_1(sK4(X0,X1),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r1_orders_2(X0,X3,X2)
          & r1_lattice3(X0,X1,X3)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r1_orders_2(X0,sK3(X0,X1,X2),X2)
        & r1_lattice3(X0,X1,sK3(X0,X1,X2))
        & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r2_yellow_0(X0,X1)
            | ! [X2] :
                ( ~ sP0(X2,X0,X1)
                | ( ~ r1_orders_2(X0,sK3(X0,X1,X2),X2)
                  & r1_lattice3(X0,X1,sK3(X0,X1,X2))
                  & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0)) )
                | ~ r1_lattice3(X0,X1,X2)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          & ( ( sP0(sK4(X0,X1),X0,X1)
              & ! [X5] :
                  ( r1_orders_2(X0,X5,sK4(X0,X1))
                  | ~ r1_lattice3(X0,X1,X5)
                  | ~ m1_subset_1(X5,u1_struct_0(X0)) )
              & r1_lattice3(X0,X1,sK4(X0,X1))
              & m1_subset_1(sK4(X0,X1),u1_struct_0(X0)) )
            | ~ r2_yellow_0(X0,X1) ) )
      | ~ l1_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f20,f22,f21])).

fof(f40,plain,(
    ! [X0,X5,X1] :
      ( r1_orders_2(X0,X5,sK4(X0,X1))
      | ~ r1_lattice3(X0,X1,X5)
      | ~ m1_subset_1(X5,u1_struct_0(X0))
      | ~ r2_yellow_0(X0,X1)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f47,plain,(
    l1_orders_2(sK5) ),
    inference(cnf_transformation,[],[f30])).

fof(f53,plain,(
    ! [X2] :
      ( ~ r1_orders_2(sK5,sK7(X2),X2)
      | ~ r1_lattice3(sK5,sK6,X2)
      | ~ m1_subset_1(X2,u1_struct_0(sK5))
      | ~ r2_yellow_0(sK5,sK6) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f38,plain,(
    ! [X0,X1] :
      ( m1_subset_1(sK4(X0,X1),u1_struct_0(X0))
      | ~ r2_yellow_0(X0,X1)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_lattice3(X0,X1,sK4(X0,X1))
      | ~ r2_yellow_0(X0,X1)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f51,plain,(
    ! [X2] :
      ( m1_subset_1(sK7(X2),u1_struct_0(sK5))
      | ~ r1_lattice3(sK5,sK6,X2)
      | ~ m1_subset_1(X2,u1_struct_0(sK5))
      | ~ r2_yellow_0(sK5,sK6) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X1)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f48,plain,
    ( m1_subset_1(sK8,u1_struct_0(sK5))
    | r2_yellow_0(sK5,sK6) ),
    inference(cnf_transformation,[],[f30])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( ( r1_orders_2(X0,X2,X1)
                  & r1_orders_2(X0,X1,X2) )
               => X1 = X2 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( X1 = X2
              | ~ r1_orders_2(X0,X2,X1)
              | ~ r1_orders_2(X0,X1,X2)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( X1 = X2
              | ~ r1_orders_2(X0,X2,X1)
              | ~ r1_orders_2(X0,X1,X2)
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(flattening,[],[f8])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( X1 = X2
      | ~ r1_orders_2(X0,X2,X1)
      | ~ r1_orders_2(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f46,plain,(
    v5_orders_2(sK5) ),
    inference(cnf_transformation,[],[f30])).

fof(f49,plain,
    ( r1_lattice3(sK5,sK6,sK8)
    | r2_yellow_0(sK5,sK6) ),
    inference(cnf_transformation,[],[f30])).

fof(f36,plain,(
    ! [X4,X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | r1_orders_2(X1,X4,sK1(X0,X1,X2))
      | ~ r1_lattice3(X1,X2,X4)
      | ~ m1_subset_1(X4,u1_struct_0(X1)) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( r2_yellow_0(X0,X1)
      | ~ sP0(X2,X0,X1)
      | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0))
      | ~ r1_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( r2_yellow_0(X0,X1)
      | ~ sP0(X2,X0,X1)
      | r1_lattice3(X0,X1,sK3(X0,X1,X2))
      | ~ r1_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( r2_yellow_0(X0,X1)
      | ~ sP0(X2,X0,X1)
      | ~ r1_orders_2(X0,sK3(X0,X1,X2),X2)
      | ~ r1_lattice3(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( sP0(X0,X1,X2)
      | sK1(X0,X1,X2) != X0 ) ),
    inference(cnf_transformation,[],[f18])).

cnf(c_2,plain,
    ( r1_lattice3(X0,X1,sK1(X2,X0,X1))
    | sP0(X2,X0,X1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_4492,plain,
    ( r1_lattice3(X0,X1,sK1(X2,X0,X1)) = iProver_top
    | sP0(X2,X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_18,negated_conjecture,
    ( ~ r1_lattice3(sK5,sK6,X0)
    | r1_orders_2(sK5,X0,sK8)
    | r2_yellow_0(sK5,sK6)
    | ~ m1_subset_1(X0,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_4484,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_orders_2(sK5,X0,sK8) = iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4959,plain,
    ( r1_orders_2(sK5,sK1(X0,sK5,sK6),sK8) = iProver_top
    | sP0(X0,sK5,sK6) = iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(sK1(X0,sK5,sK6),u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4492,c_4484])).

cnf(c_16,negated_conjecture,
    ( ~ r1_lattice3(sK5,sK6,X0)
    | r1_lattice3(sK5,sK6,sK7(X0))
    | ~ r2_yellow_0(sK5,sK6)
    | ~ m1_subset_1(X0,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_4486,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_lattice3(sK5,sK6,sK7(X0)) = iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_11,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X2,sK4(X0,X1))
    | ~ r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_21,negated_conjecture,
    ( l1_orders_2(sK5) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_318,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X2,sK4(X0,X1))
    | ~ r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_21])).

cnf(c_319,plain,
    ( ~ r1_lattice3(sK5,X0,X1)
    | r1_orders_2(sK5,X1,sK4(sK5,X0))
    | ~ r2_yellow_0(sK5,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK5)) ),
    inference(unflattening,[status(thm)],[c_318])).

cnf(c_4478,plain,
    ( r1_lattice3(sK5,X0,X1) != iProver_top
    | r1_orders_2(sK5,X1,sK4(sK5,X0)) = iProver_top
    | r2_yellow_0(sK5,X0) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_319])).

cnf(c_15,negated_conjecture,
    ( ~ r1_lattice3(sK5,sK6,X0)
    | ~ r1_orders_2(sK5,sK7(X0),X0)
    | ~ r2_yellow_0(sK5,sK6)
    | ~ m1_subset_1(X0,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_4487,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_orders_2(sK5,sK7(X0),X0) != iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_5114,plain,
    ( r1_lattice3(sK5,X0,sK7(sK4(sK5,X0))) != iProver_top
    | r1_lattice3(sK5,sK6,sK4(sK5,X0)) != iProver_top
    | r2_yellow_0(sK5,X0) != iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(sK4(sK5,X0),u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK7(sK4(sK5,X0)),u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4478,c_4487])).

cnf(c_13,plain,
    ( ~ r2_yellow_0(X0,X1)
    | m1_subset_1(sK4(X0,X1),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_294,plain,
    ( ~ r2_yellow_0(X0,X1)
    | m1_subset_1(sK4(X0,X1),u1_struct_0(X0))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_21])).

cnf(c_295,plain,
    ( ~ r2_yellow_0(sK5,X0)
    | m1_subset_1(sK4(sK5,X0),u1_struct_0(sK5)) ),
    inference(unflattening,[status(thm)],[c_294])).

cnf(c_296,plain,
    ( r2_yellow_0(sK5,X0) != iProver_top
    | m1_subset_1(sK4(sK5,X0),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_295])).

cnf(c_5295,plain,
    ( r2_yellow_0(sK5,sK6) != iProver_top
    | r2_yellow_0(sK5,X0) != iProver_top
    | r1_lattice3(sK5,sK6,sK4(sK5,X0)) != iProver_top
    | r1_lattice3(sK5,X0,sK7(sK4(sK5,X0))) != iProver_top
    | m1_subset_1(sK7(sK4(sK5,X0)),u1_struct_0(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5114,c_296])).

cnf(c_5296,plain,
    ( r1_lattice3(sK5,X0,sK7(sK4(sK5,X0))) != iProver_top
    | r1_lattice3(sK5,sK6,sK4(sK5,X0)) != iProver_top
    | r2_yellow_0(sK5,X0) != iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(sK7(sK4(sK5,X0)),u1_struct_0(sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5295])).

cnf(c_5306,plain,
    ( r1_lattice3(sK5,sK6,sK4(sK5,sK6)) != iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(sK4(sK5,sK6),u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK7(sK4(sK5,sK6)),u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4486,c_5296])).

cnf(c_4692,plain,
    ( ~ r2_yellow_0(sK5,sK6)
    | m1_subset_1(sK4(sK5,sK6),u1_struct_0(sK5)) ),
    inference(instantiation,[status(thm)],[c_295])).

cnf(c_4693,plain,
    ( r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(sK4(sK5,sK6),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4692])).

cnf(c_12,plain,
    ( r1_lattice3(X0,X1,sK4(X0,X1))
    | ~ r2_yellow_0(X0,X1)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_306,plain,
    ( r1_lattice3(X0,X1,sK4(X0,X1))
    | ~ r2_yellow_0(X0,X1)
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_21])).

cnf(c_307,plain,
    ( r1_lattice3(sK5,X0,sK4(sK5,X0))
    | ~ r2_yellow_0(sK5,X0) ),
    inference(unflattening,[status(thm)],[c_306])).

cnf(c_4695,plain,
    ( r1_lattice3(sK5,sK6,sK4(sK5,sK6))
    | ~ r2_yellow_0(sK5,sK6) ),
    inference(instantiation,[status(thm)],[c_307])).

cnf(c_4696,plain,
    ( r1_lattice3(sK5,sK6,sK4(sK5,sK6)) = iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4695])).

cnf(c_17,negated_conjecture,
    ( ~ r1_lattice3(sK5,sK6,X0)
    | ~ r2_yellow_0(sK5,sK6)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | m1_subset_1(sK7(X0),u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_4772,plain,
    ( ~ r1_lattice3(sK5,sK6,sK4(sK5,sK6))
    | ~ r2_yellow_0(sK5,sK6)
    | ~ m1_subset_1(sK4(sK5,sK6),u1_struct_0(sK5))
    | m1_subset_1(sK7(sK4(sK5,sK6)),u1_struct_0(sK5)) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_4776,plain,
    ( r1_lattice3(sK5,sK6,sK4(sK5,sK6)) != iProver_top
    | r2_yellow_0(sK5,sK6) != iProver_top
    | m1_subset_1(sK4(sK5,sK6),u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK7(sK4(sK5,sK6)),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4772])).

cnf(c_5450,plain,
    ( r2_yellow_0(sK5,sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5306,c_4693,c_4696,c_4776])).

cnf(c_5764,plain,
    ( sP0(X0,sK5,sK6) = iProver_top
    | r1_orders_2(sK5,sK1(X0,sK5,sK6),sK8) = iProver_top
    | m1_subset_1(sK1(X0,sK5,sK6),u1_struct_0(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4959,c_4693,c_4696,c_4776,c_5306])).

cnf(c_5765,plain,
    ( r1_orders_2(sK5,sK1(X0,sK5,sK6),sK8) = iProver_top
    | sP0(X0,sK5,sK6) = iProver_top
    | m1_subset_1(sK1(X0,sK5,sK6),u1_struct_0(sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5764])).

cnf(c_3,plain,
    ( sP0(X0,X1,X2)
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X1)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_4491,plain,
    ( sP0(X0,X1,X2) = iProver_top
    | m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_5773,plain,
    ( r1_orders_2(sK5,sK1(X0,sK5,sK6),sK8) = iProver_top
    | sP0(X0,sK5,sK6) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5765,c_4491])).

cnf(c_20,negated_conjecture,
    ( r2_yellow_0(sK5,sK6)
    | m1_subset_1(sK8,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_4482,plain,
    ( r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_14,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | X1 = X2 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_22,negated_conjecture,
    ( v5_orders_2(sK5) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_261,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | X1 = X2
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_22])).

cnf(c_262,plain,
    ( ~ r1_orders_2(sK5,X0,X1)
    | ~ r1_orders_2(sK5,X1,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ l1_orders_2(sK5)
    | X1 = X0 ),
    inference(unflattening,[status(thm)],[c_261])).

cnf(c_266,plain,
    ( ~ m1_subset_1(X1,u1_struct_0(sK5))
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ r1_orders_2(sK5,X1,X0)
    | ~ r1_orders_2(sK5,X0,X1)
    | X1 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_262,c_21])).

cnf(c_267,plain,
    ( ~ r1_orders_2(sK5,X0,X1)
    | ~ r1_orders_2(sK5,X1,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK5))
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | X1 = X0 ),
    inference(renaming,[status(thm)],[c_266])).

cnf(c_4481,plain,
    ( X0 = X1
    | r1_orders_2(sK5,X1,X0) != iProver_top
    | r1_orders_2(sK5,X0,X1) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_267])).

cnf(c_5154,plain,
    ( sK8 = X0
    | r1_orders_2(sK5,X0,sK8) != iProver_top
    | r1_orders_2(sK5,sK8,X0) != iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4482,c_4481])).

cnf(c_5778,plain,
    ( r1_orders_2(sK5,sK8,X0) != iProver_top
    | r1_orders_2(sK5,X0,sK8) != iProver_top
    | sK8 = X0
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5154,c_4693,c_4696,c_4776,c_5306])).

cnf(c_5779,plain,
    ( sK8 = X0
    | r1_orders_2(sK5,X0,sK8) != iProver_top
    | r1_orders_2(sK5,sK8,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5778])).

cnf(c_5788,plain,
    ( sK1(X0,sK5,X1) = sK8
    | r1_orders_2(sK5,sK1(X0,sK5,X1),sK8) != iProver_top
    | r1_orders_2(sK5,sK8,sK1(X0,sK5,X1)) != iProver_top
    | sP0(X0,sK5,X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_4491,c_5779])).

cnf(c_6315,plain,
    ( sK1(X0,sK5,sK6) = sK8
    | r1_orders_2(sK5,sK8,sK1(X0,sK5,sK6)) != iProver_top
    | sP0(X0,sK5,sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_5773,c_5788])).

cnf(c_25,plain,
    ( r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_19,negated_conjecture,
    ( r1_lattice3(sK5,sK6,sK8)
    | r2_yellow_0(sK5,sK6) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_26,plain,
    ( r1_lattice3(sK5,sK6,sK8) = iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_1,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r1_orders_2(X0,X2,sK1(X3,X0,X1))
    | sP0(X3,X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_4493,plain,
    ( r1_lattice3(X0,X1,X2) != iProver_top
    | r1_orders_2(X0,X2,sK1(X3,X0,X1)) = iProver_top
    | sP0(X3,X0,X1) = iProver_top
    | m1_subset_1(X2,u1_struct_0(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_5152,plain,
    ( sK1(X0,sK5,X1) = X2
    | r1_orders_2(sK5,X2,sK1(X0,sK5,X1)) != iProver_top
    | r1_orders_2(sK5,sK1(X0,sK5,X1),X2) != iProver_top
    | sP0(X0,sK5,X1) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4491,c_4481])).

cnf(c_6545,plain,
    ( sK1(X0,sK5,X1) = X2
    | r1_lattice3(sK5,X1,X2) != iProver_top
    | r1_orders_2(sK5,sK1(X0,sK5,X1),X2) != iProver_top
    | sP0(X0,sK5,X1) = iProver_top
    | m1_subset_1(X2,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4493,c_5152])).

cnf(c_7007,plain,
    ( sK1(X0,sK5,sK6) = sK8
    | r1_lattice3(sK5,sK6,sK8) != iProver_top
    | sP0(X0,sK5,sK6) = iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5773,c_6545])).

cnf(c_7387,plain,
    ( sK1(X0,sK5,sK6) = sK8
    | sP0(X0,sK5,sK6) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6315,c_25,c_26,c_4693,c_4696,c_4776,c_5306,c_7007])).

cnf(c_9,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | ~ sP0(X2,X0,X1)
    | r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_348,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | ~ sP0(X2,X0,X1)
    | r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X0))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_21])).

cnf(c_349,plain,
    ( ~ r1_lattice3(sK5,X0,X1)
    | ~ sP0(X1,sK5,X0)
    | r2_yellow_0(sK5,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK5))
    | m1_subset_1(sK3(sK5,X0,X1),u1_struct_0(sK5)) ),
    inference(unflattening,[status(thm)],[c_348])).

cnf(c_4476,plain,
    ( r1_lattice3(sK5,X0,X1) != iProver_top
    | sP0(X1,sK5,X0) != iProver_top
    | r2_yellow_0(sK5,X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK3(sK5,X0,X1),u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_349])).

cnf(c_8,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r1_lattice3(X0,X1,sK3(X0,X1,X2))
    | ~ sP0(X2,X0,X1)
    | r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_369,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | r1_lattice3(X0,X1,sK3(X0,X1,X2))
    | ~ sP0(X2,X0,X1)
    | r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_21])).

cnf(c_370,plain,
    ( ~ r1_lattice3(sK5,X0,X1)
    | r1_lattice3(sK5,X0,sK3(sK5,X0,X1))
    | ~ sP0(X1,sK5,X0)
    | r2_yellow_0(sK5,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK5)) ),
    inference(unflattening,[status(thm)],[c_369])).

cnf(c_4475,plain,
    ( r1_lattice3(sK5,X0,X1) != iProver_top
    | r1_lattice3(sK5,X0,sK3(sK5,X0,X1)) = iProver_top
    | sP0(X1,sK5,X0) != iProver_top
    | r2_yellow_0(sK5,X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_370])).

cnf(c_5533,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,sK6,X0),sK8) = iProver_top
    | sP0(X0,sK5,sK6) != iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK3(sK5,sK6,X0),u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4475,c_4484])).

cnf(c_5920,plain,
    ( sP0(X0,sK5,sK6) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,sK6,X0),sK8) = iProver_top
    | r1_lattice3(sK5,sK6,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK3(sK5,sK6,X0),u1_struct_0(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5533,c_4693,c_4696,c_4776,c_5306])).

cnf(c_5921,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,sK6,X0),sK8) = iProver_top
    | sP0(X0,sK5,sK6) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK3(sK5,sK6,X0),u1_struct_0(sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5920])).

cnf(c_5931,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,sK6,X0),sK8) = iProver_top
    | sP0(X0,sK5,sK6) != iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4476,c_5921])).

cnf(c_6708,plain,
    ( sP0(X0,sK5,sK6) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,sK6,X0),sK8) = iProver_top
    | r1_lattice3(sK5,sK6,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5931,c_4693,c_4696,c_4776,c_5306])).

cnf(c_6709,plain,
    ( r1_lattice3(sK5,sK6,X0) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,sK6,X0),sK8) = iProver_top
    | sP0(X0,sK5,sK6) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(renaming,[status(thm)],[c_6708])).

cnf(c_7,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK3(X0,X1,X2),X2)
    | ~ sP0(X2,X0,X1)
    | r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_390,plain,
    ( ~ r1_lattice3(X0,X1,X2)
    | ~ r1_orders_2(X0,sK3(X0,X1,X2),X2)
    | ~ sP0(X2,X0,X1)
    | r2_yellow_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_21])).

cnf(c_391,plain,
    ( ~ r1_lattice3(sK5,X0,X1)
    | ~ r1_orders_2(sK5,sK3(sK5,X0,X1),X1)
    | ~ sP0(X1,sK5,X0)
    | r2_yellow_0(sK5,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK5)) ),
    inference(unflattening,[status(thm)],[c_390])).

cnf(c_4474,plain,
    ( r1_lattice3(sK5,X0,X1) != iProver_top
    | r1_orders_2(sK5,sK3(sK5,X0,X1),X1) != iProver_top
    | sP0(X1,sK5,X0) != iProver_top
    | r2_yellow_0(sK5,X0) = iProver_top
    | m1_subset_1(X1,u1_struct_0(sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_391])).

cnf(c_6718,plain,
    ( r1_lattice3(sK5,sK6,sK8) != iProver_top
    | sP0(sK8,sK5,sK6) != iProver_top
    | r2_yellow_0(sK5,sK6) = iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6709,c_4474])).

cnf(c_6840,plain,
    ( sP0(sK8,sK5,sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6718,c_25,c_26,c_4693,c_4696,c_4776,c_5306])).

cnf(c_7397,plain,
    ( sK1(sK8,sK5,sK6) = sK8 ),
    inference(superposition,[status(thm)],[c_7387,c_6840])).

cnf(c_0,plain,
    ( sP0(X0,X1,X2)
    | sK1(X0,X1,X2) != X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_5074,plain,
    ( sP0(sK8,sK5,sK6)
    | sK1(sK8,sK5,sK6) != sK8 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_5078,plain,
    ( sK1(sK8,sK5,sK6) != sK8
    | sP0(sK8,sK5,sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5074])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_7397,c_6718,c_5450,c_5078,c_26,c_25])).


%------------------------------------------------------------------------------
