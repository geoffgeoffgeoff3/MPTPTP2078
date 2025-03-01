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
% DateTime   : Thu Dec  3 12:28:17 EST 2020

% Result     : Theorem 1.80s
% Output     : CNFRefutation 1.80s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 225 expanded)
%              Number of clauses        :   38 (  54 expanded)
%              Number of leaves         :   17 (  53 expanded)
%              Depth                    :   16
%              Number of atoms          :  372 (1068 expanded)
%              Number of equality atoms :   69 (  77 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
    ? [X1] : m1_subset_1(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ? [X1] : m1_subset_1(X1,X0)
     => m1_subset_1(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0] : m1_subset_1(sK1(X0),X0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f4,f32])).

fof(f47,plain,(
    ! [X0] : m1_subset_1(sK1(X0),X0) ),
    inference(cnf_transformation,[],[f33])).

fof(f2,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f66,plain,(
    ! [X0] : k6_subset_1(X0,k1_xboole_0) = X0 ),
    inference(definition_unfolding,[],[f45,f48])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( r2_waybel_0(X0,X1,X2)
            <=> ~ r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_waybel_0(X0,X1,X2)
            <=> ~ r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_waybel_0(X0,X1,X2)
            <=> ~ r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_waybel_0(X0,X1,X2)
                | r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) )
              & ( ~ r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
                | ~ r2_waybel_0(X0,X1,X2) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f25])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( r2_waybel_0(X0,X1,X2)
      | r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
      | ~ l1_waybel_0(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f12,conjecture,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & v7_waybel_0(X1)
            & v4_orders_2(X1)
            & ~ v2_struct_0(X1) )
         => r1_waybel_0(X0,X1,u1_struct_0(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_struct_0(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_waybel_0(X1,X0)
              & v7_waybel_0(X1)
              & v4_orders_2(X1)
              & ~ v2_struct_0(X1) )
           => r1_waybel_0(X0,X1,u1_struct_0(X0)) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f16,plain,(
    ~ ! [X0] :
        ( ( l1_struct_0(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_waybel_0(X1,X0)
              & v4_orders_2(X1)
              & ~ v2_struct_0(X1) )
           => r1_waybel_0(X0,X1,u1_struct_0(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f13])).

fof(f17,plain,(
    ~ ! [X0] :
        ( ( l1_struct_0(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_waybel_0(X1,X0)
              & ~ v2_struct_0(X1) )
           => r1_waybel_0(X0,X1,u1_struct_0(X0)) ) ) ),
    inference(pure_predicate_removal,[],[f16])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_waybel_0(X0,X1,u1_struct_0(X0))
          & l1_waybel_0(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_waybel_0(X0,X1,u1_struct_0(X0))
          & l1_waybel_0(X1,X0)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f41,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r1_waybel_0(X0,X1,u1_struct_0(X0))
          & l1_waybel_0(X1,X0)
          & ~ v2_struct_0(X1) )
     => ( ~ r1_waybel_0(X0,sK5,u1_struct_0(X0))
        & l1_waybel_0(sK5,X0)
        & ~ v2_struct_0(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r1_waybel_0(X0,X1,u1_struct_0(X0))
            & l1_waybel_0(X1,X0)
            & ~ v2_struct_0(X1) )
        & l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ~ r1_waybel_0(sK4,X1,u1_struct_0(sK4))
          & l1_waybel_0(X1,sK4)
          & ~ v2_struct_0(X1) )
      & l1_struct_0(sK4)
      & ~ v2_struct_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,
    ( ~ r1_waybel_0(sK4,sK5,u1_struct_0(sK4))
    & l1_waybel_0(sK5,sK4)
    & ~ v2_struct_0(sK5)
    & l1_struct_0(sK4)
    & ~ v2_struct_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f29,f41,f40])).

fof(f65,plain,(
    ~ r1_waybel_0(sK4,sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f42])).

fof(f61,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f62,plain,(
    l1_struct_0(sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f63,plain,(
    ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f42])).

fof(f64,plain,(
    l1_waybel_0(sK5,sK4) ),
    inference(cnf_transformation,[],[f42])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f7])).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2,X3] :
              ( r1_tarski(X2,X3)
             => ( ( r2_waybel_0(X0,X1,X2)
                 => r2_waybel_0(X0,X1,X3) )
                & ( r1_waybel_0(X0,X1,X2)
                 => r1_waybel_0(X0,X1,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2,X3] :
              ( ( ( r2_waybel_0(X0,X1,X3)
                  | ~ r2_waybel_0(X0,X1,X2) )
                & ( r1_waybel_0(X0,X1,X3)
                  | ~ r1_waybel_0(X0,X1,X2) ) )
              | ~ r1_tarski(X2,X3) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2,X3] :
              ( ( ( r2_waybel_0(X0,X1,X3)
                  | ~ r2_waybel_0(X0,X1,X2) )
                & ( r1_waybel_0(X0,X1,X3)
                  | ~ r1_waybel_0(X0,X1,X2) ) )
              | ~ r1_tarski(X2,X3) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_waybel_0(X0,X1,X3)
      | ~ r2_waybel_0(X0,X1,X2)
      | ~ r1_tarski(X2,X3)
      | ~ l1_waybel_0(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f6,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_waybel_0(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( r2_waybel_0(X0,X1,X2)
            <=> ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X1))
                 => ? [X4] :
                      ( r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                      & r1_orders_2(X1,X3,X4)
                      & m1_subset_1(X4,u1_struct_0(X1)) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_waybel_0(X0,X1,X2)
            <=> ! [X3] :
                  ( ? [X4] :
                      ( r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                      & r1_orders_2(X1,X3,X4)
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_waybel_0(X0,X1,X2)
            <=> ! [X3] :
                  ( ? [X4] :
                      ( r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                      & r1_orders_2(X1,X3,X4)
                      & m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_waybel_0(X0,X1,X2)
                | ? [X3] :
                    ( ! [X4] :
                        ( ~ r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                        | ~ r1_orders_2(X1,X3,X4)
                        | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                    & m1_subset_1(X3,u1_struct_0(X1)) ) )
              & ( ! [X3] :
                    ( ? [X4] :
                        ( r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                        & r1_orders_2(X1,X3,X4)
                        & m1_subset_1(X4,u1_struct_0(X1)) )
                    | ~ m1_subset_1(X3,u1_struct_0(X1)) )
                | ~ r2_waybel_0(X0,X1,X2) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_waybel_0(X0,X1,X2)
                | ? [X3] :
                    ( ! [X4] :
                        ( ~ r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                        | ~ r1_orders_2(X1,X3,X4)
                        | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                    & m1_subset_1(X3,u1_struct_0(X1)) ) )
              & ( ! [X5] :
                    ( ? [X6] :
                        ( r2_hidden(k2_waybel_0(X0,X1,X6),X2)
                        & r1_orders_2(X1,X5,X6)
                        & m1_subset_1(X6,u1_struct_0(X1)) )
                    | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                | ~ r2_waybel_0(X0,X1,X2) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f34])).

fof(f37,plain,(
    ! [X5,X2,X1,X0] :
      ( ? [X6] :
          ( r2_hidden(k2_waybel_0(X0,X1,X6),X2)
          & r1_orders_2(X1,X5,X6)
          & m1_subset_1(X6,u1_struct_0(X1)) )
     => ( r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X5)),X2)
        & r1_orders_2(X1,X5,sK3(X0,X1,X2,X5))
        & m1_subset_1(sK3(X0,X1,X2,X5),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ! [X4] :
              ( ~ r2_hidden(k2_waybel_0(X0,X1,X4),X2)
              | ~ r1_orders_2(X1,X3,X4)
              | ~ m1_subset_1(X4,u1_struct_0(X1)) )
          & m1_subset_1(X3,u1_struct_0(X1)) )
     => ( ! [X4] :
            ( ~ r2_hidden(k2_waybel_0(X0,X1,X4),X2)
            | ~ r1_orders_2(X1,sK2(X0,X1,X2),X4)
            | ~ m1_subset_1(X4,u1_struct_0(X1)) )
        & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r2_waybel_0(X0,X1,X2)
                | ( ! [X4] :
                      ( ~ r2_hidden(k2_waybel_0(X0,X1,X4),X2)
                      | ~ r1_orders_2(X1,sK2(X0,X1,X2),X4)
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X1)) ) )
              & ( ! [X5] :
                    ( ( r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X5)),X2)
                      & r1_orders_2(X1,X5,sK3(X0,X1,X2,X5))
                      & m1_subset_1(sK3(X0,X1,X2,X5),u1_struct_0(X1)) )
                    | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                | ~ r2_waybel_0(X0,X1,X2) ) )
          | ~ l1_waybel_0(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f35,f37,f36])).

fof(f54,plain,(
    ! [X2,X0,X5,X1] :
      ( r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X5)),X2)
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ r2_waybel_0(X0,X1,X2)
      | ~ l1_waybel_0(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f1])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f30,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f30])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f3,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

cnf(c_4,plain,
    ( m1_subset_1(sK1(X0),X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_877,plain,
    ( m1_subset_1(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_2,plain,
    ( k6_subset_1(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_13,plain,
    ( r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
    | r2_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_871,plain,
    ( r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) = iProver_top
    | r2_waybel_0(X0,X1,X2) = iProver_top
    | l1_waybel_0(X1,X0) != iProver_top
    | l1_struct_0(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1351,plain,
    ( r1_waybel_0(X0,X1,u1_struct_0(X0)) = iProver_top
    | r2_waybel_0(X0,X1,k1_xboole_0) = iProver_top
    | l1_waybel_0(X1,X0) != iProver_top
    | l1_struct_0(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_2,c_871])).

cnf(c_17,negated_conjecture,
    ( ~ r1_waybel_0(sK4,sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_869,plain,
    ( r1_waybel_0(sK4,sK5,u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1362,plain,
    ( r2_waybel_0(sK4,sK5,k1_xboole_0) = iProver_top
    | l1_waybel_0(sK5,sK4) != iProver_top
    | l1_struct_0(sK4) != iProver_top
    | v2_struct_0(sK5) = iProver_top
    | v2_struct_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1351,c_869])).

cnf(c_21,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_22,plain,
    ( v2_struct_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_20,negated_conjecture,
    ( l1_struct_0(sK4) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_23,plain,
    ( l1_struct_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_19,negated_conjecture,
    ( ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_24,plain,
    ( v2_struct_0(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_18,negated_conjecture,
    ( l1_waybel_0(sK5,sK4) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_25,plain,
    ( l1_waybel_0(sK5,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_1440,plain,
    ( r2_waybel_0(sK4,sK5,k1_xboole_0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1362,c_22,c_23,c_24,c_25])).

cnf(c_6,plain,
    ( r1_tarski(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_15,plain,
    ( ~ r2_waybel_0(X0,X1,X2)
    | r2_waybel_0(X0,X1,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ r1_tarski(X2,X3)
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_337,plain,
    ( ~ r2_waybel_0(X0,X1,X2)
    | r2_waybel_0(X0,X1,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X4,k1_zfmisc_1(X5))
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | X2 != X4
    | X3 != X5 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_15])).

cnf(c_338,plain,
    ( ~ r2_waybel_0(X0,X1,X2)
    | r2_waybel_0(X0,X1,X3)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(unflattening,[status(thm)],[c_337])).

cnf(c_860,plain,
    ( r2_waybel_0(X0,X1,X2) != iProver_top
    | r2_waybel_0(X0,X1,X3) = iProver_top
    | l1_waybel_0(X1,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(X3)) != iProver_top
    | l1_struct_0(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_338])).

cnf(c_1445,plain,
    ( r2_waybel_0(sK4,sK5,X0) = iProver_top
    | l1_waybel_0(sK5,sK4) != iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) != iProver_top
    | l1_struct_0(sK4) != iProver_top
    | v2_struct_0(sK5) = iProver_top
    | v2_struct_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1440,c_860])).

cnf(c_5,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_56,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1514,plain,
    ( r2_waybel_0(sK4,sK5,X0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1445,c_22,c_23,c_24,c_25,c_56])).

cnf(c_10,plain,
    ( ~ r2_waybel_0(X0,X1,X2)
    | ~ l1_waybel_0(X1,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X3)),X2)
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_873,plain,
    ( r2_waybel_0(X0,X1,X2) != iProver_top
    | l1_waybel_0(X1,X0) != iProver_top
    | m1_subset_1(X3,u1_struct_0(X1)) != iProver_top
    | r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X3)),X2) = iProver_top
    | l1_struct_0(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,X2))
    | ~ r1_xboole_0(X1,X2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_3,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_248,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,X2))
    | X3 != X1
    | k1_xboole_0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_3])).

cnf(c_249,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) ),
    inference(unflattening,[status(thm)],[c_248])).

cnf(c_863,plain,
    ( r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_249])).

cnf(c_1909,plain,
    ( r2_waybel_0(X0,X1,k3_xboole_0(X2,k1_xboole_0)) != iProver_top
    | l1_waybel_0(X1,X0) != iProver_top
    | m1_subset_1(X3,u1_struct_0(X1)) != iProver_top
    | l1_struct_0(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_873,c_863])).

cnf(c_2044,plain,
    ( l1_waybel_0(sK5,sK4) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top
    | l1_struct_0(sK4) != iProver_top
    | v2_struct_0(sK5) = iProver_top
    | v2_struct_0(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1514,c_1909])).

cnf(c_2049,plain,
    ( m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2044,c_22,c_23,c_24,c_25])).

cnf(c_2056,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_877,c_2049])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 09:18:38 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.80/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.80/0.99  
% 1.80/0.99  ------  iProver source info
% 1.80/0.99  
% 1.80/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.80/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.80/0.99  git: non_committed_changes: false
% 1.80/0.99  git: last_make_outside_of_git: false
% 1.80/0.99  
% 1.80/0.99  ------ 
% 1.80/0.99  
% 1.80/0.99  ------ Input Options
% 1.80/0.99  
% 1.80/0.99  --out_options                           all
% 1.80/0.99  --tptp_safe_out                         true
% 1.80/0.99  --problem_path                          ""
% 1.80/0.99  --include_path                          ""
% 1.80/0.99  --clausifier                            res/vclausify_rel
% 1.80/0.99  --clausifier_options                    --mode clausify
% 1.80/0.99  --stdin                                 false
% 1.80/0.99  --stats_out                             all
% 1.80/0.99  
% 1.80/0.99  ------ General Options
% 1.80/0.99  
% 1.80/0.99  --fof                                   false
% 1.80/0.99  --time_out_real                         305.
% 1.80/0.99  --time_out_virtual                      -1.
% 1.80/0.99  --symbol_type_check                     false
% 1.80/0.99  --clausify_out                          false
% 1.80/0.99  --sig_cnt_out                           false
% 1.80/0.99  --trig_cnt_out                          false
% 1.80/0.99  --trig_cnt_out_tolerance                1.
% 1.80/0.99  --trig_cnt_out_sk_spl                   false
% 1.80/0.99  --abstr_cl_out                          false
% 1.80/0.99  
% 1.80/0.99  ------ Global Options
% 1.80/0.99  
% 1.80/0.99  --schedule                              default
% 1.80/0.99  --add_important_lit                     false
% 1.80/0.99  --prop_solver_per_cl                    1000
% 1.80/0.99  --min_unsat_core                        false
% 1.80/0.99  --soft_assumptions                      false
% 1.80/0.99  --soft_lemma_size                       3
% 1.80/0.99  --prop_impl_unit_size                   0
% 1.80/0.99  --prop_impl_unit                        []
% 1.80/0.99  --share_sel_clauses                     true
% 1.80/0.99  --reset_solvers                         false
% 1.80/0.99  --bc_imp_inh                            [conj_cone]
% 1.80/0.99  --conj_cone_tolerance                   3.
% 1.80/0.99  --extra_neg_conj                        none
% 1.80/0.99  --large_theory_mode                     true
% 1.80/0.99  --prolific_symb_bound                   200
% 1.80/0.99  --lt_threshold                          2000
% 1.80/0.99  --clause_weak_htbl                      true
% 1.80/0.99  --gc_record_bc_elim                     false
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing Options
% 1.80/0.99  
% 1.80/0.99  --preprocessing_flag                    true
% 1.80/0.99  --time_out_prep_mult                    0.1
% 1.80/0.99  --splitting_mode                        input
% 1.80/0.99  --splitting_grd                         true
% 1.80/0.99  --splitting_cvd                         false
% 1.80/0.99  --splitting_cvd_svl                     false
% 1.80/0.99  --splitting_nvd                         32
% 1.80/0.99  --sub_typing                            true
% 1.80/0.99  --prep_gs_sim                           true
% 1.80/0.99  --prep_unflatten                        true
% 1.80/0.99  --prep_res_sim                          true
% 1.80/0.99  --prep_upred                            true
% 1.80/0.99  --prep_sem_filter                       exhaustive
% 1.80/0.99  --prep_sem_filter_out                   false
% 1.80/0.99  --pred_elim                             true
% 1.80/0.99  --res_sim_input                         true
% 1.80/0.99  --eq_ax_congr_red                       true
% 1.80/0.99  --pure_diseq_elim                       true
% 1.80/0.99  --brand_transform                       false
% 1.80/0.99  --non_eq_to_eq                          false
% 1.80/0.99  --prep_def_merge                        true
% 1.80/0.99  --prep_def_merge_prop_impl              false
% 1.80/0.99  --prep_def_merge_mbd                    true
% 1.80/0.99  --prep_def_merge_tr_red                 false
% 1.80/0.99  --prep_def_merge_tr_cl                  false
% 1.80/0.99  --smt_preprocessing                     true
% 1.80/0.99  --smt_ac_axioms                         fast
% 1.80/0.99  --preprocessed_out                      false
% 1.80/0.99  --preprocessed_stats                    false
% 1.80/0.99  
% 1.80/0.99  ------ Abstraction refinement Options
% 1.80/0.99  
% 1.80/0.99  --abstr_ref                             []
% 1.80/0.99  --abstr_ref_prep                        false
% 1.80/0.99  --abstr_ref_until_sat                   false
% 1.80/0.99  --abstr_ref_sig_restrict                funpre
% 1.80/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.80/0.99  --abstr_ref_under                       []
% 1.80/0.99  
% 1.80/0.99  ------ SAT Options
% 1.80/0.99  
% 1.80/0.99  --sat_mode                              false
% 1.80/0.99  --sat_fm_restart_options                ""
% 1.80/0.99  --sat_gr_def                            false
% 1.80/0.99  --sat_epr_types                         true
% 1.80/0.99  --sat_non_cyclic_types                  false
% 1.80/0.99  --sat_finite_models                     false
% 1.80/0.99  --sat_fm_lemmas                         false
% 1.80/0.99  --sat_fm_prep                           false
% 1.80/0.99  --sat_fm_uc_incr                        true
% 1.80/0.99  --sat_out_model                         small
% 1.80/0.99  --sat_out_clauses                       false
% 1.80/0.99  
% 1.80/0.99  ------ QBF Options
% 1.80/0.99  
% 1.80/0.99  --qbf_mode                              false
% 1.80/0.99  --qbf_elim_univ                         false
% 1.80/0.99  --qbf_dom_inst                          none
% 1.80/0.99  --qbf_dom_pre_inst                      false
% 1.80/0.99  --qbf_sk_in                             false
% 1.80/0.99  --qbf_pred_elim                         true
% 1.80/0.99  --qbf_split                             512
% 1.80/0.99  
% 1.80/0.99  ------ BMC1 Options
% 1.80/0.99  
% 1.80/0.99  --bmc1_incremental                      false
% 1.80/0.99  --bmc1_axioms                           reachable_all
% 1.80/0.99  --bmc1_min_bound                        0
% 1.80/0.99  --bmc1_max_bound                        -1
% 1.80/0.99  --bmc1_max_bound_default                -1
% 1.80/0.99  --bmc1_symbol_reachability              true
% 1.80/0.99  --bmc1_property_lemmas                  false
% 1.80/0.99  --bmc1_k_induction                      false
% 1.80/0.99  --bmc1_non_equiv_states                 false
% 1.80/0.99  --bmc1_deadlock                         false
% 1.80/0.99  --bmc1_ucm                              false
% 1.80/0.99  --bmc1_add_unsat_core                   none
% 1.80/0.99  --bmc1_unsat_core_children              false
% 1.80/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.80/0.99  --bmc1_out_stat                         full
% 1.80/0.99  --bmc1_ground_init                      false
% 1.80/0.99  --bmc1_pre_inst_next_state              false
% 1.80/0.99  --bmc1_pre_inst_state                   false
% 1.80/0.99  --bmc1_pre_inst_reach_state             false
% 1.80/0.99  --bmc1_out_unsat_core                   false
% 1.80/0.99  --bmc1_aig_witness_out                  false
% 1.80/0.99  --bmc1_verbose                          false
% 1.80/0.99  --bmc1_dump_clauses_tptp                false
% 1.80/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.80/0.99  --bmc1_dump_file                        -
% 1.80/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.80/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.80/0.99  --bmc1_ucm_extend_mode                  1
% 1.80/0.99  --bmc1_ucm_init_mode                    2
% 1.80/0.99  --bmc1_ucm_cone_mode                    none
% 1.80/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.80/0.99  --bmc1_ucm_relax_model                  4
% 1.80/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.80/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.80/0.99  --bmc1_ucm_layered_model                none
% 1.80/0.99  --bmc1_ucm_max_lemma_size               10
% 1.80/0.99  
% 1.80/0.99  ------ AIG Options
% 1.80/0.99  
% 1.80/0.99  --aig_mode                              false
% 1.80/0.99  
% 1.80/0.99  ------ Instantiation Options
% 1.80/0.99  
% 1.80/0.99  --instantiation_flag                    true
% 1.80/0.99  --inst_sos_flag                         false
% 1.80/0.99  --inst_sos_phase                        true
% 1.80/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel_side                     num_symb
% 1.80/0.99  --inst_solver_per_active                1400
% 1.80/0.99  --inst_solver_calls_frac                1.
% 1.80/0.99  --inst_passive_queue_type               priority_queues
% 1.80/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.80/0.99  --inst_passive_queues_freq              [25;2]
% 1.80/0.99  --inst_dismatching                      true
% 1.80/0.99  --inst_eager_unprocessed_to_passive     true
% 1.80/0.99  --inst_prop_sim_given                   true
% 1.80/0.99  --inst_prop_sim_new                     false
% 1.80/0.99  --inst_subs_new                         false
% 1.80/0.99  --inst_eq_res_simp                      false
% 1.80/0.99  --inst_subs_given                       false
% 1.80/0.99  --inst_orphan_elimination               true
% 1.80/0.99  --inst_learning_loop_flag               true
% 1.80/0.99  --inst_learning_start                   3000
% 1.80/0.99  --inst_learning_factor                  2
% 1.80/0.99  --inst_start_prop_sim_after_learn       3
% 1.80/0.99  --inst_sel_renew                        solver
% 1.80/0.99  --inst_lit_activity_flag                true
% 1.80/0.99  --inst_restr_to_given                   false
% 1.80/0.99  --inst_activity_threshold               500
% 1.80/0.99  --inst_out_proof                        true
% 1.80/0.99  
% 1.80/0.99  ------ Resolution Options
% 1.80/0.99  
% 1.80/0.99  --resolution_flag                       true
% 1.80/0.99  --res_lit_sel                           adaptive
% 1.80/0.99  --res_lit_sel_side                      none
% 1.80/0.99  --res_ordering                          kbo
% 1.80/0.99  --res_to_prop_solver                    active
% 1.80/0.99  --res_prop_simpl_new                    false
% 1.80/0.99  --res_prop_simpl_given                  true
% 1.80/0.99  --res_passive_queue_type                priority_queues
% 1.80/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.80/0.99  --res_passive_queues_freq               [15;5]
% 1.80/0.99  --res_forward_subs                      full
% 1.80/0.99  --res_backward_subs                     full
% 1.80/0.99  --res_forward_subs_resolution           true
% 1.80/0.99  --res_backward_subs_resolution          true
% 1.80/0.99  --res_orphan_elimination                true
% 1.80/0.99  --res_time_limit                        2.
% 1.80/0.99  --res_out_proof                         true
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Options
% 1.80/0.99  
% 1.80/0.99  --superposition_flag                    true
% 1.80/0.99  --sup_passive_queue_type                priority_queues
% 1.80/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.80/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.80/0.99  --demod_completeness_check              fast
% 1.80/0.99  --demod_use_ground                      true
% 1.80/0.99  --sup_to_prop_solver                    passive
% 1.80/0.99  --sup_prop_simpl_new                    true
% 1.80/0.99  --sup_prop_simpl_given                  true
% 1.80/0.99  --sup_fun_splitting                     false
% 1.80/0.99  --sup_smt_interval                      50000
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Simplification Setup
% 1.80/0.99  
% 1.80/0.99  --sup_indices_passive                   []
% 1.80/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.80/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_full_bw                           [BwDemod]
% 1.80/0.99  --sup_immed_triv                        [TrivRules]
% 1.80/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.80/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_immed_bw_main                     []
% 1.80/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.80/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  
% 1.80/0.99  ------ Combination Options
% 1.80/0.99  
% 1.80/0.99  --comb_res_mult                         3
% 1.80/0.99  --comb_sup_mult                         2
% 1.80/0.99  --comb_inst_mult                        10
% 1.80/0.99  
% 1.80/0.99  ------ Debug Options
% 1.80/0.99  
% 1.80/0.99  --dbg_backtrace                         false
% 1.80/0.99  --dbg_dump_prop_clauses                 false
% 1.80/0.99  --dbg_dump_prop_clauses_file            -
% 1.80/0.99  --dbg_out_stat                          false
% 1.80/0.99  ------ Parsing...
% 1.80/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.80/0.99  ------ Proving...
% 1.80/0.99  ------ Problem Properties 
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  clauses                                 19
% 1.80/0.99  conjectures                             5
% 1.80/0.99  EPR                                     4
% 1.80/0.99  Horn                                    11
% 1.80/0.99  unary                                   9
% 1.80/0.99  binary                                  1
% 1.80/0.99  lits                                    70
% 1.80/0.99  lits eq                                 1
% 1.80/0.99  fd_pure                                 0
% 1.80/0.99  fd_pseudo                               0
% 1.80/0.99  fd_cond                                 0
% 1.80/0.99  fd_pseudo_cond                          0
% 1.80/0.99  AC symbols                              0
% 1.80/0.99  
% 1.80/0.99  ------ Schedule dynamic 5 is on 
% 1.80/0.99  
% 1.80/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  ------ 
% 1.80/0.99  Current options:
% 1.80/0.99  ------ 
% 1.80/0.99  
% 1.80/0.99  ------ Input Options
% 1.80/0.99  
% 1.80/0.99  --out_options                           all
% 1.80/0.99  --tptp_safe_out                         true
% 1.80/0.99  --problem_path                          ""
% 1.80/0.99  --include_path                          ""
% 1.80/0.99  --clausifier                            res/vclausify_rel
% 1.80/0.99  --clausifier_options                    --mode clausify
% 1.80/0.99  --stdin                                 false
% 1.80/0.99  --stats_out                             all
% 1.80/0.99  
% 1.80/0.99  ------ General Options
% 1.80/0.99  
% 1.80/0.99  --fof                                   false
% 1.80/0.99  --time_out_real                         305.
% 1.80/0.99  --time_out_virtual                      -1.
% 1.80/0.99  --symbol_type_check                     false
% 1.80/0.99  --clausify_out                          false
% 1.80/0.99  --sig_cnt_out                           false
% 1.80/0.99  --trig_cnt_out                          false
% 1.80/0.99  --trig_cnt_out_tolerance                1.
% 1.80/0.99  --trig_cnt_out_sk_spl                   false
% 1.80/0.99  --abstr_cl_out                          false
% 1.80/0.99  
% 1.80/0.99  ------ Global Options
% 1.80/0.99  
% 1.80/0.99  --schedule                              default
% 1.80/0.99  --add_important_lit                     false
% 1.80/0.99  --prop_solver_per_cl                    1000
% 1.80/0.99  --min_unsat_core                        false
% 1.80/0.99  --soft_assumptions                      false
% 1.80/0.99  --soft_lemma_size                       3
% 1.80/0.99  --prop_impl_unit_size                   0
% 1.80/0.99  --prop_impl_unit                        []
% 1.80/0.99  --share_sel_clauses                     true
% 1.80/0.99  --reset_solvers                         false
% 1.80/0.99  --bc_imp_inh                            [conj_cone]
% 1.80/0.99  --conj_cone_tolerance                   3.
% 1.80/0.99  --extra_neg_conj                        none
% 1.80/0.99  --large_theory_mode                     true
% 1.80/0.99  --prolific_symb_bound                   200
% 1.80/0.99  --lt_threshold                          2000
% 1.80/0.99  --clause_weak_htbl                      true
% 1.80/0.99  --gc_record_bc_elim                     false
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing Options
% 1.80/0.99  
% 1.80/0.99  --preprocessing_flag                    true
% 1.80/0.99  --time_out_prep_mult                    0.1
% 1.80/0.99  --splitting_mode                        input
% 1.80/0.99  --splitting_grd                         true
% 1.80/0.99  --splitting_cvd                         false
% 1.80/0.99  --splitting_cvd_svl                     false
% 1.80/0.99  --splitting_nvd                         32
% 1.80/0.99  --sub_typing                            true
% 1.80/0.99  --prep_gs_sim                           true
% 1.80/0.99  --prep_unflatten                        true
% 1.80/0.99  --prep_res_sim                          true
% 1.80/0.99  --prep_upred                            true
% 1.80/0.99  --prep_sem_filter                       exhaustive
% 1.80/0.99  --prep_sem_filter_out                   false
% 1.80/0.99  --pred_elim                             true
% 1.80/0.99  --res_sim_input                         true
% 1.80/0.99  --eq_ax_congr_red                       true
% 1.80/0.99  --pure_diseq_elim                       true
% 1.80/0.99  --brand_transform                       false
% 1.80/0.99  --non_eq_to_eq                          false
% 1.80/0.99  --prep_def_merge                        true
% 1.80/0.99  --prep_def_merge_prop_impl              false
% 1.80/0.99  --prep_def_merge_mbd                    true
% 1.80/0.99  --prep_def_merge_tr_red                 false
% 1.80/0.99  --prep_def_merge_tr_cl                  false
% 1.80/0.99  --smt_preprocessing                     true
% 1.80/0.99  --smt_ac_axioms                         fast
% 1.80/0.99  --preprocessed_out                      false
% 1.80/0.99  --preprocessed_stats                    false
% 1.80/0.99  
% 1.80/0.99  ------ Abstraction refinement Options
% 1.80/0.99  
% 1.80/0.99  --abstr_ref                             []
% 1.80/0.99  --abstr_ref_prep                        false
% 1.80/0.99  --abstr_ref_until_sat                   false
% 1.80/0.99  --abstr_ref_sig_restrict                funpre
% 1.80/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.80/0.99  --abstr_ref_under                       []
% 1.80/0.99  
% 1.80/0.99  ------ SAT Options
% 1.80/0.99  
% 1.80/0.99  --sat_mode                              false
% 1.80/0.99  --sat_fm_restart_options                ""
% 1.80/0.99  --sat_gr_def                            false
% 1.80/0.99  --sat_epr_types                         true
% 1.80/0.99  --sat_non_cyclic_types                  false
% 1.80/0.99  --sat_finite_models                     false
% 1.80/0.99  --sat_fm_lemmas                         false
% 1.80/0.99  --sat_fm_prep                           false
% 1.80/0.99  --sat_fm_uc_incr                        true
% 1.80/0.99  --sat_out_model                         small
% 1.80/0.99  --sat_out_clauses                       false
% 1.80/0.99  
% 1.80/0.99  ------ QBF Options
% 1.80/0.99  
% 1.80/0.99  --qbf_mode                              false
% 1.80/0.99  --qbf_elim_univ                         false
% 1.80/0.99  --qbf_dom_inst                          none
% 1.80/0.99  --qbf_dom_pre_inst                      false
% 1.80/0.99  --qbf_sk_in                             false
% 1.80/0.99  --qbf_pred_elim                         true
% 1.80/0.99  --qbf_split                             512
% 1.80/0.99  
% 1.80/0.99  ------ BMC1 Options
% 1.80/0.99  
% 1.80/0.99  --bmc1_incremental                      false
% 1.80/0.99  --bmc1_axioms                           reachable_all
% 1.80/0.99  --bmc1_min_bound                        0
% 1.80/0.99  --bmc1_max_bound                        -1
% 1.80/0.99  --bmc1_max_bound_default                -1
% 1.80/0.99  --bmc1_symbol_reachability              true
% 1.80/0.99  --bmc1_property_lemmas                  false
% 1.80/0.99  --bmc1_k_induction                      false
% 1.80/0.99  --bmc1_non_equiv_states                 false
% 1.80/0.99  --bmc1_deadlock                         false
% 1.80/0.99  --bmc1_ucm                              false
% 1.80/0.99  --bmc1_add_unsat_core                   none
% 1.80/0.99  --bmc1_unsat_core_children              false
% 1.80/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.80/0.99  --bmc1_out_stat                         full
% 1.80/0.99  --bmc1_ground_init                      false
% 1.80/0.99  --bmc1_pre_inst_next_state              false
% 1.80/0.99  --bmc1_pre_inst_state                   false
% 1.80/0.99  --bmc1_pre_inst_reach_state             false
% 1.80/0.99  --bmc1_out_unsat_core                   false
% 1.80/0.99  --bmc1_aig_witness_out                  false
% 1.80/0.99  --bmc1_verbose                          false
% 1.80/0.99  --bmc1_dump_clauses_tptp                false
% 1.80/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.80/0.99  --bmc1_dump_file                        -
% 1.80/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.80/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.80/0.99  --bmc1_ucm_extend_mode                  1
% 1.80/0.99  --bmc1_ucm_init_mode                    2
% 1.80/0.99  --bmc1_ucm_cone_mode                    none
% 1.80/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.80/0.99  --bmc1_ucm_relax_model                  4
% 1.80/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.80/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.80/0.99  --bmc1_ucm_layered_model                none
% 1.80/0.99  --bmc1_ucm_max_lemma_size               10
% 1.80/0.99  
% 1.80/0.99  ------ AIG Options
% 1.80/0.99  
% 1.80/0.99  --aig_mode                              false
% 1.80/0.99  
% 1.80/0.99  ------ Instantiation Options
% 1.80/0.99  
% 1.80/0.99  --instantiation_flag                    true
% 1.80/0.99  --inst_sos_flag                         false
% 1.80/0.99  --inst_sos_phase                        true
% 1.80/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.80/0.99  --inst_lit_sel_side                     none
% 1.80/0.99  --inst_solver_per_active                1400
% 1.80/0.99  --inst_solver_calls_frac                1.
% 1.80/0.99  --inst_passive_queue_type               priority_queues
% 1.80/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.80/0.99  --inst_passive_queues_freq              [25;2]
% 1.80/0.99  --inst_dismatching                      true
% 1.80/0.99  --inst_eager_unprocessed_to_passive     true
% 1.80/0.99  --inst_prop_sim_given                   true
% 1.80/0.99  --inst_prop_sim_new                     false
% 1.80/0.99  --inst_subs_new                         false
% 1.80/0.99  --inst_eq_res_simp                      false
% 1.80/0.99  --inst_subs_given                       false
% 1.80/0.99  --inst_orphan_elimination               true
% 1.80/0.99  --inst_learning_loop_flag               true
% 1.80/0.99  --inst_learning_start                   3000
% 1.80/0.99  --inst_learning_factor                  2
% 1.80/0.99  --inst_start_prop_sim_after_learn       3
% 1.80/0.99  --inst_sel_renew                        solver
% 1.80/0.99  --inst_lit_activity_flag                true
% 1.80/0.99  --inst_restr_to_given                   false
% 1.80/0.99  --inst_activity_threshold               500
% 1.80/0.99  --inst_out_proof                        true
% 1.80/0.99  
% 1.80/0.99  ------ Resolution Options
% 1.80/0.99  
% 1.80/0.99  --resolution_flag                       false
% 1.80/0.99  --res_lit_sel                           adaptive
% 1.80/0.99  --res_lit_sel_side                      none
% 1.80/0.99  --res_ordering                          kbo
% 1.80/0.99  --res_to_prop_solver                    active
% 1.80/0.99  --res_prop_simpl_new                    false
% 1.80/0.99  --res_prop_simpl_given                  true
% 1.80/0.99  --res_passive_queue_type                priority_queues
% 1.80/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.80/0.99  --res_passive_queues_freq               [15;5]
% 1.80/0.99  --res_forward_subs                      full
% 1.80/0.99  --res_backward_subs                     full
% 1.80/0.99  --res_forward_subs_resolution           true
% 1.80/0.99  --res_backward_subs_resolution          true
% 1.80/0.99  --res_orphan_elimination                true
% 1.80/0.99  --res_time_limit                        2.
% 1.80/0.99  --res_out_proof                         true
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Options
% 1.80/0.99  
% 1.80/0.99  --superposition_flag                    true
% 1.80/0.99  --sup_passive_queue_type                priority_queues
% 1.80/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.80/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.80/0.99  --demod_completeness_check              fast
% 1.80/0.99  --demod_use_ground                      true
% 1.80/0.99  --sup_to_prop_solver                    passive
% 1.80/0.99  --sup_prop_simpl_new                    true
% 1.80/0.99  --sup_prop_simpl_given                  true
% 1.80/0.99  --sup_fun_splitting                     false
% 1.80/0.99  --sup_smt_interval                      50000
% 1.80/0.99  
% 1.80/0.99  ------ Superposition Simplification Setup
% 1.80/0.99  
% 1.80/0.99  --sup_indices_passive                   []
% 1.80/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.80/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.80/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_full_bw                           [BwDemod]
% 1.80/0.99  --sup_immed_triv                        [TrivRules]
% 1.80/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.80/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_immed_bw_main                     []
% 1.80/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.80/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.80/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.80/0.99  
% 1.80/0.99  ------ Combination Options
% 1.80/0.99  
% 1.80/0.99  --comb_res_mult                         3
% 1.80/0.99  --comb_sup_mult                         2
% 1.80/0.99  --comb_inst_mult                        10
% 1.80/0.99  
% 1.80/0.99  ------ Debug Options
% 1.80/0.99  
% 1.80/0.99  --dbg_backtrace                         false
% 1.80/0.99  --dbg_dump_prop_clauses                 false
% 1.80/0.99  --dbg_dump_prop_clauses_file            -
% 1.80/0.99  --dbg_out_stat                          false
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  ------ Proving...
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  % SZS status Theorem for theBenchmark.p
% 1.80/0.99  
% 1.80/0.99   Resolution empty clause
% 1.80/0.99  
% 1.80/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  fof(f4,axiom,(
% 1.80/0.99    ! [X0] : ? [X1] : m1_subset_1(X1,X0)),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f32,plain,(
% 1.80/0.99    ! [X0] : (? [X1] : m1_subset_1(X1,X0) => m1_subset_1(sK1(X0),X0))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f33,plain,(
% 1.80/0.99    ! [X0] : m1_subset_1(sK1(X0),X0)),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f4,f32])).
% 1.80/0.99  
% 1.80/0.99  fof(f47,plain,(
% 1.80/0.99    ( ! [X0] : (m1_subset_1(sK1(X0),X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f33])).
% 1.80/0.99  
% 1.80/0.99  fof(f2,axiom,(
% 1.80/0.99    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f45,plain,(
% 1.80/0.99    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.80/0.99    inference(cnf_transformation,[],[f2])).
% 1.80/0.99  
% 1.80/0.99  fof(f5,axiom,(
% 1.80/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k6_subset_1(X0,X1)),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f48,plain,(
% 1.80/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k6_subset_1(X0,X1)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f5])).
% 1.80/0.99  
% 1.80/0.99  fof(f66,plain,(
% 1.80/0.99    ( ! [X0] : (k6_subset_1(X0,k1_xboole_0) = X0) )),
% 1.80/0.99    inference(definition_unfolding,[],[f45,f48])).
% 1.80/0.99  
% 1.80/0.99  fof(f10,axiom,(
% 1.80/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : (r2_waybel_0(X0,X1,X2) <=> ~r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f24,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (r2_waybel_0(X0,X1,X2) <=> ~r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))) | (~l1_waybel_0(X1,X0) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f10])).
% 1.80/0.99  
% 1.80/0.99  fof(f25,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (r2_waybel_0(X0,X1,X2) <=> ~r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f24])).
% 1.80/0.99  
% 1.80/0.99  fof(f39,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : ((r2_waybel_0(X0,X1,X2) | r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))) & (~r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) | ~r2_waybel_0(X0,X1,X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(nnf_transformation,[],[f25])).
% 1.80/0.99  
% 1.80/0.99  fof(f58,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (r2_waybel_0(X0,X1,X2) | r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f39])).
% 1.80/0.99  
% 1.80/0.99  fof(f12,conjecture,(
% 1.80/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => r1_waybel_0(X0,X1,u1_struct_0(X0))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f13,negated_conjecture,(
% 1.80/0.99    ~! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v7_waybel_0(X1) & v4_orders_2(X1) & ~v2_struct_0(X1)) => r1_waybel_0(X0,X1,u1_struct_0(X0))))),
% 1.80/0.99    inference(negated_conjecture,[],[f12])).
% 1.80/0.99  
% 1.80/0.99  fof(f16,plain,(
% 1.80/0.99    ~! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & v4_orders_2(X1) & ~v2_struct_0(X1)) => r1_waybel_0(X0,X1,u1_struct_0(X0))))),
% 1.80/0.99    inference(pure_predicate_removal,[],[f13])).
% 1.80/0.99  
% 1.80/0.99  fof(f17,plain,(
% 1.80/0.99    ~! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => r1_waybel_0(X0,X1,u1_struct_0(X0))))),
% 1.80/0.99    inference(pure_predicate_removal,[],[f16])).
% 1.80/0.99  
% 1.80/0.99  fof(f28,plain,(
% 1.80/0.99    ? [X0] : (? [X1] : (~r1_waybel_0(X0,X1,u1_struct_0(X0)) & (l1_waybel_0(X1,X0) & ~v2_struct_0(X1))) & (l1_struct_0(X0) & ~v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f17])).
% 1.80/0.99  
% 1.80/0.99  fof(f29,plain,(
% 1.80/0.99    ? [X0] : (? [X1] : (~r1_waybel_0(X0,X1,u1_struct_0(X0)) & l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f28])).
% 1.80/0.99  
% 1.80/0.99  fof(f41,plain,(
% 1.80/0.99    ( ! [X0] : (? [X1] : (~r1_waybel_0(X0,X1,u1_struct_0(X0)) & l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => (~r1_waybel_0(X0,sK5,u1_struct_0(X0)) & l1_waybel_0(sK5,X0) & ~v2_struct_0(sK5))) )),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f40,plain,(
% 1.80/0.99    ? [X0] : (? [X1] : (~r1_waybel_0(X0,X1,u1_struct_0(X0)) & l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) & l1_struct_0(X0) & ~v2_struct_0(X0)) => (? [X1] : (~r1_waybel_0(sK4,X1,u1_struct_0(sK4)) & l1_waybel_0(X1,sK4) & ~v2_struct_0(X1)) & l1_struct_0(sK4) & ~v2_struct_0(sK4))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f42,plain,(
% 1.80/0.99    (~r1_waybel_0(sK4,sK5,u1_struct_0(sK4)) & l1_waybel_0(sK5,sK4) & ~v2_struct_0(sK5)) & l1_struct_0(sK4) & ~v2_struct_0(sK4)),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f29,f41,f40])).
% 1.80/0.99  
% 1.80/0.99  fof(f65,plain,(
% 1.80/0.99    ~r1_waybel_0(sK4,sK5,u1_struct_0(sK4))),
% 1.80/0.99    inference(cnf_transformation,[],[f42])).
% 1.80/0.99  
% 1.80/0.99  fof(f61,plain,(
% 1.80/0.99    ~v2_struct_0(sK4)),
% 1.80/0.99    inference(cnf_transformation,[],[f42])).
% 1.80/0.99  
% 1.80/0.99  fof(f62,plain,(
% 1.80/0.99    l1_struct_0(sK4)),
% 1.80/0.99    inference(cnf_transformation,[],[f42])).
% 1.80/0.99  
% 1.80/0.99  fof(f63,plain,(
% 1.80/0.99    ~v2_struct_0(sK5)),
% 1.80/0.99    inference(cnf_transformation,[],[f42])).
% 1.80/0.99  
% 1.80/0.99  fof(f64,plain,(
% 1.80/0.99    l1_waybel_0(sK5,sK4)),
% 1.80/0.99    inference(cnf_transformation,[],[f42])).
% 1.80/0.99  
% 1.80/0.99  fof(f7,axiom,(
% 1.80/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f15,plain,(
% 1.80/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) => r1_tarski(X0,X1))),
% 1.80/0.99    inference(unused_predicate_definition_removal,[],[f7])).
% 1.80/0.99  
% 1.80/0.99  fof(f19,plain,(
% 1.80/0.99    ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1)))),
% 1.80/0.99    inference(ennf_transformation,[],[f15])).
% 1.80/0.99  
% 1.80/0.99  fof(f50,plain,(
% 1.80/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f19])).
% 1.80/0.99  
% 1.80/0.99  fof(f11,axiom,(
% 1.80/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => ! [X2,X3] : (r1_tarski(X2,X3) => ((r2_waybel_0(X0,X1,X2) => r2_waybel_0(X0,X1,X3)) & (r1_waybel_0(X0,X1,X2) => r1_waybel_0(X0,X1,X3))))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f26,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2,X3] : (((r2_waybel_0(X0,X1,X3) | ~r2_waybel_0(X0,X1,X2)) & (r1_waybel_0(X0,X1,X3) | ~r1_waybel_0(X0,X1,X2))) | ~r1_tarski(X2,X3)) | (~l1_waybel_0(X1,X0) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f11])).
% 1.80/0.99  
% 1.80/0.99  fof(f27,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2,X3] : (((r2_waybel_0(X0,X1,X3) | ~r2_waybel_0(X0,X1,X2)) & (r1_waybel_0(X0,X1,X3) | ~r1_waybel_0(X0,X1,X2))) | ~r1_tarski(X2,X3)) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f60,plain,(
% 1.80/0.99    ( ! [X2,X0,X3,X1] : (r2_waybel_0(X0,X1,X3) | ~r2_waybel_0(X0,X1,X2) | ~r1_tarski(X2,X3) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f27])).
% 1.80/0.99  
% 1.80/0.99  fof(f6,axiom,(
% 1.80/0.99    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f49,plain,(
% 1.80/0.99    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f6])).
% 1.80/0.99  
% 1.80/0.99  fof(f9,axiom,(
% 1.80/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_waybel_0(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : (r2_waybel_0(X0,X1,X2) <=> ! [X3] : (m1_subset_1(X3,u1_struct_0(X1)) => ? [X4] : (r2_hidden(k2_waybel_0(X0,X1,X4),X2) & r1_orders_2(X1,X3,X4) & m1_subset_1(X4,u1_struct_0(X1)))))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f22,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (r2_waybel_0(X0,X1,X2) <=> ! [X3] : (? [X4] : (r2_hidden(k2_waybel_0(X0,X1,X4),X2) & r1_orders_2(X1,X3,X4) & m1_subset_1(X4,u1_struct_0(X1))) | ~m1_subset_1(X3,u1_struct_0(X1)))) | (~l1_waybel_0(X1,X0) | v2_struct_0(X1))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f9])).
% 1.80/0.99  
% 1.80/0.99  fof(f23,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (r2_waybel_0(X0,X1,X2) <=> ! [X3] : (? [X4] : (r2_hidden(k2_waybel_0(X0,X1,X4),X2) & r1_orders_2(X1,X3,X4) & m1_subset_1(X4,u1_struct_0(X1))) | ~m1_subset_1(X3,u1_struct_0(X1)))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f22])).
% 1.80/0.99  
% 1.80/0.99  fof(f34,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : ((r2_waybel_0(X0,X1,X2) | ? [X3] : (! [X4] : (~r2_hidden(k2_waybel_0(X0,X1,X4),X2) | ~r1_orders_2(X1,X3,X4) | ~m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X1)))) & (! [X3] : (? [X4] : (r2_hidden(k2_waybel_0(X0,X1,X4),X2) & r1_orders_2(X1,X3,X4) & m1_subset_1(X4,u1_struct_0(X1))) | ~m1_subset_1(X3,u1_struct_0(X1))) | ~r2_waybel_0(X0,X1,X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(nnf_transformation,[],[f23])).
% 1.80/0.99  
% 1.80/0.99  fof(f35,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : ((r2_waybel_0(X0,X1,X2) | ? [X3] : (! [X4] : (~r2_hidden(k2_waybel_0(X0,X1,X4),X2) | ~r1_orders_2(X1,X3,X4) | ~m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X1)))) & (! [X5] : (? [X6] : (r2_hidden(k2_waybel_0(X0,X1,X6),X2) & r1_orders_2(X1,X5,X6) & m1_subset_1(X6,u1_struct_0(X1))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~r2_waybel_0(X0,X1,X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(rectify,[],[f34])).
% 1.80/0.99  
% 1.80/0.99  fof(f37,plain,(
% 1.80/0.99    ! [X5,X2,X1,X0] : (? [X6] : (r2_hidden(k2_waybel_0(X0,X1,X6),X2) & r1_orders_2(X1,X5,X6) & m1_subset_1(X6,u1_struct_0(X1))) => (r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X5)),X2) & r1_orders_2(X1,X5,sK3(X0,X1,X2,X5)) & m1_subset_1(sK3(X0,X1,X2,X5),u1_struct_0(X1))))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f36,plain,(
% 1.80/0.99    ! [X2,X1,X0] : (? [X3] : (! [X4] : (~r2_hidden(k2_waybel_0(X0,X1,X4),X2) | ~r1_orders_2(X1,X3,X4) | ~m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(X3,u1_struct_0(X1))) => (! [X4] : (~r2_hidden(k2_waybel_0(X0,X1,X4),X2) | ~r1_orders_2(X1,sK2(X0,X1,X2),X4) | ~m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X1))))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f38,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : ((r2_waybel_0(X0,X1,X2) | (! [X4] : (~r2_hidden(k2_waybel_0(X0,X1,X4),X2) | ~r1_orders_2(X1,sK2(X0,X1,X2),X4) | ~m1_subset_1(X4,u1_struct_0(X1))) & m1_subset_1(sK2(X0,X1,X2),u1_struct_0(X1)))) & (! [X5] : ((r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X5)),X2) & r1_orders_2(X1,X5,sK3(X0,X1,X2,X5)) & m1_subset_1(sK3(X0,X1,X2,X5),u1_struct_0(X1))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~r2_waybel_0(X0,X1,X2))) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f35,f37,f36])).
% 1.80/0.99  
% 1.80/0.99  fof(f54,plain,(
% 1.80/0.99    ( ! [X2,X0,X5,X1] : (r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X5)),X2) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~r2_waybel_0(X0,X1,X2) | ~l1_waybel_0(X1,X0) | v2_struct_0(X1) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f38])).
% 1.80/0.99  
% 1.80/0.99  fof(f1,axiom,(
% 1.80/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f14,plain,(
% 1.80/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 1.80/0.99    inference(rectify,[],[f1])).
% 1.80/0.99  
% 1.80/0.99  fof(f18,plain,(
% 1.80/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 1.80/0.99    inference(ennf_transformation,[],[f14])).
% 1.80/0.99  
% 1.80/0.99  fof(f30,plain,(
% 1.80/0.99    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f31,plain,(
% 1.80/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f30])).
% 1.80/0.99  
% 1.80/0.99  fof(f44,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 1.80/0.99    inference(cnf_transformation,[],[f31])).
% 1.80/0.99  
% 1.80/0.99  fof(f3,axiom,(
% 1.80/0.99    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f46,plain,(
% 1.80/0.99    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f3])).
% 1.80/0.99  
% 1.80/0.99  cnf(c_4,plain,
% 1.80/0.99      ( m1_subset_1(sK1(X0),X0) ),
% 1.80/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_877,plain,
% 1.80/0.99      ( m1_subset_1(sK1(X0),X0) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2,plain,
% 1.80/0.99      ( k6_subset_1(X0,k1_xboole_0) = X0 ),
% 1.80/0.99      inference(cnf_transformation,[],[f66]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_13,plain,
% 1.80/0.99      ( r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2))
% 1.80/0.99      | r2_waybel_0(X0,X1,X2)
% 1.80/0.99      | ~ l1_waybel_0(X1,X0)
% 1.80/0.99      | ~ l1_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f58]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_871,plain,
% 1.80/0.99      ( r1_waybel_0(X0,X1,k6_subset_1(u1_struct_0(X0),X2)) = iProver_top
% 1.80/0.99      | r2_waybel_0(X0,X1,X2) = iProver_top
% 1.80/0.99      | l1_waybel_0(X1,X0) != iProver_top
% 1.80/0.99      | l1_struct_0(X0) != iProver_top
% 1.80/0.99      | v2_struct_0(X0) = iProver_top
% 1.80/0.99      | v2_struct_0(X1) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1351,plain,
% 1.80/0.99      ( r1_waybel_0(X0,X1,u1_struct_0(X0)) = iProver_top
% 1.80/0.99      | r2_waybel_0(X0,X1,k1_xboole_0) = iProver_top
% 1.80/0.99      | l1_waybel_0(X1,X0) != iProver_top
% 1.80/0.99      | l1_struct_0(X0) != iProver_top
% 1.80/0.99      | v2_struct_0(X0) = iProver_top
% 1.80/0.99      | v2_struct_0(X1) = iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_2,c_871]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_17,negated_conjecture,
% 1.80/0.99      ( ~ r1_waybel_0(sK4,sK5,u1_struct_0(sK4)) ),
% 1.80/0.99      inference(cnf_transformation,[],[f65]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_869,plain,
% 1.80/0.99      ( r1_waybel_0(sK4,sK5,u1_struct_0(sK4)) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1362,plain,
% 1.80/0.99      ( r2_waybel_0(sK4,sK5,k1_xboole_0) = iProver_top
% 1.80/0.99      | l1_waybel_0(sK5,sK4) != iProver_top
% 1.80/0.99      | l1_struct_0(sK4) != iProver_top
% 1.80/0.99      | v2_struct_0(sK5) = iProver_top
% 1.80/0.99      | v2_struct_0(sK4) = iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1351,c_869]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_21,negated_conjecture,
% 1.80/0.99      ( ~ v2_struct_0(sK4) ),
% 1.80/0.99      inference(cnf_transformation,[],[f61]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_22,plain,
% 1.80/0.99      ( v2_struct_0(sK4) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_20,negated_conjecture,
% 1.80/0.99      ( l1_struct_0(sK4) ),
% 1.80/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_23,plain,
% 1.80/0.99      ( l1_struct_0(sK4) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_19,negated_conjecture,
% 1.80/0.99      ( ~ v2_struct_0(sK5) ),
% 1.80/0.99      inference(cnf_transformation,[],[f63]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_24,plain,
% 1.80/0.99      ( v2_struct_0(sK5) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_18,negated_conjecture,
% 1.80/0.99      ( l1_waybel_0(sK5,sK4) ),
% 1.80/0.99      inference(cnf_transformation,[],[f64]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_25,plain,
% 1.80/0.99      ( l1_waybel_0(sK5,sK4) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1440,plain,
% 1.80/0.99      ( r2_waybel_0(sK4,sK5,k1_xboole_0) = iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_1362,c_22,c_23,c_24,c_25]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_6,plain,
% 1.80/0.99      ( r1_tarski(X0,X1) | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 1.80/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_15,plain,
% 1.80/0.99      ( ~ r2_waybel_0(X0,X1,X2)
% 1.80/0.99      | r2_waybel_0(X0,X1,X3)
% 1.80/0.99      | ~ l1_waybel_0(X1,X0)
% 1.80/0.99      | ~ r1_tarski(X2,X3)
% 1.80/0.99      | ~ l1_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f60]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_337,plain,
% 1.80/0.99      ( ~ r2_waybel_0(X0,X1,X2)
% 1.80/0.99      | r2_waybel_0(X0,X1,X3)
% 1.80/0.99      | ~ l1_waybel_0(X1,X0)
% 1.80/0.99      | ~ m1_subset_1(X4,k1_zfmisc_1(X5))
% 1.80/0.99      | ~ l1_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | X2 != X4
% 1.80/0.99      | X3 != X5 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_15]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_338,plain,
% 1.80/0.99      ( ~ r2_waybel_0(X0,X1,X2)
% 1.80/0.99      | r2_waybel_0(X0,X1,X3)
% 1.80/0.99      | ~ l1_waybel_0(X1,X0)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
% 1.80/0.99      | ~ l1_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X1) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_337]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_860,plain,
% 1.80/0.99      ( r2_waybel_0(X0,X1,X2) != iProver_top
% 1.80/0.99      | r2_waybel_0(X0,X1,X3) = iProver_top
% 1.80/0.99      | l1_waybel_0(X1,X0) != iProver_top
% 1.80/0.99      | m1_subset_1(X2,k1_zfmisc_1(X3)) != iProver_top
% 1.80/0.99      | l1_struct_0(X0) != iProver_top
% 1.80/0.99      | v2_struct_0(X0) = iProver_top
% 1.80/0.99      | v2_struct_0(X1) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_338]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1445,plain,
% 1.80/0.99      ( r2_waybel_0(sK4,sK5,X0) = iProver_top
% 1.80/0.99      | l1_waybel_0(sK5,sK4) != iProver_top
% 1.80/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) != iProver_top
% 1.80/0.99      | l1_struct_0(sK4) != iProver_top
% 1.80/0.99      | v2_struct_0(sK5) = iProver_top
% 1.80/0.99      | v2_struct_0(sK4) = iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1440,c_860]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_5,plain,
% 1.80/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.80/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_56,plain,
% 1.80/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1514,plain,
% 1.80/0.99      ( r2_waybel_0(sK4,sK5,X0) = iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_1445,c_22,c_23,c_24,c_25,c_56]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_10,plain,
% 1.80/0.99      ( ~ r2_waybel_0(X0,X1,X2)
% 1.80/0.99      | ~ l1_waybel_0(X1,X0)
% 1.80/0.99      | ~ m1_subset_1(X3,u1_struct_0(X1))
% 1.80/0.99      | r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X3)),X2)
% 1.80/0.99      | ~ l1_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X0)
% 1.80/0.99      | v2_struct_0(X1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_873,plain,
% 1.80/0.99      ( r2_waybel_0(X0,X1,X2) != iProver_top
% 1.80/0.99      | l1_waybel_0(X1,X0) != iProver_top
% 1.80/0.99      | m1_subset_1(X3,u1_struct_0(X1)) != iProver_top
% 1.80/0.99      | r2_hidden(k2_waybel_0(X0,X1,sK3(X0,X1,X2,X3)),X2) = iProver_top
% 1.80/0.99      | l1_struct_0(X0) != iProver_top
% 1.80/0.99      | v2_struct_0(X0) = iProver_top
% 1.80/0.99      | v2_struct_0(X1) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_0,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_xboole_0(X1,X2)) | ~ r1_xboole_0(X1,X2) ),
% 1.80/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_3,plain,
% 1.80/0.99      ( r1_xboole_0(X0,k1_xboole_0) ),
% 1.80/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_248,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_xboole_0(X1,X2)) | X3 != X1 | k1_xboole_0 != X2 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_3]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_249,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_248]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_863,plain,
% 1.80/0.99      ( r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_249]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1909,plain,
% 1.80/0.99      ( r2_waybel_0(X0,X1,k3_xboole_0(X2,k1_xboole_0)) != iProver_top
% 1.80/0.99      | l1_waybel_0(X1,X0) != iProver_top
% 1.80/0.99      | m1_subset_1(X3,u1_struct_0(X1)) != iProver_top
% 1.80/0.99      | l1_struct_0(X0) != iProver_top
% 1.80/0.99      | v2_struct_0(X0) = iProver_top
% 1.80/0.99      | v2_struct_0(X1) = iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_873,c_863]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2044,plain,
% 1.80/0.99      ( l1_waybel_0(sK5,sK4) != iProver_top
% 1.80/0.99      | m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top
% 1.80/0.99      | l1_struct_0(sK4) != iProver_top
% 1.80/0.99      | v2_struct_0(sK5) = iProver_top
% 1.80/0.99      | v2_struct_0(sK4) = iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1514,c_1909]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2049,plain,
% 1.80/0.99      ( m1_subset_1(X0,u1_struct_0(sK5)) != iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_2044,c_22,c_23,c_24,c_25]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2056,plain,
% 1.80/0.99      ( $false ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_877,c_2049]) ).
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  ------                               Statistics
% 1.80/0.99  
% 1.80/0.99  ------ General
% 1.80/0.99  
% 1.80/0.99  abstr_ref_over_cycles:                  0
% 1.80/0.99  abstr_ref_under_cycles:                 0
% 1.80/0.99  gc_basic_clause_elim:                   0
% 1.80/0.99  forced_gc_time:                         0
% 1.80/0.99  parsing_time:                           0.008
% 1.80/0.99  unif_index_cands_time:                  0.
% 1.80/0.99  unif_index_add_time:                    0.
% 1.80/0.99  orderings_time:                         0.
% 1.80/0.99  out_proof_time:                         0.01
% 1.80/0.99  total_time:                             0.102
% 1.80/0.99  num_of_symbols:                         53
% 1.80/0.99  num_of_terms:                           2139
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing
% 1.80/0.99  
% 1.80/0.99  num_of_splits:                          0
% 1.80/0.99  num_of_split_atoms:                     0
% 1.80/0.99  num_of_reused_defs:                     0
% 1.80/0.99  num_eq_ax_congr_red:                    54
% 1.80/0.99  num_of_sem_filtered_clauses:            1
% 1.80/0.99  num_of_subtypes:                        0
% 1.80/0.99  monotx_restored_types:                  0
% 1.80/0.99  sat_num_of_epr_types:                   0
% 1.80/0.99  sat_num_of_non_cyclic_types:            0
% 1.80/0.99  sat_guarded_non_collapsed_types:        0
% 1.80/0.99  num_pure_diseq_elim:                    0
% 1.80/0.99  simp_replaced_by:                       0
% 1.80/0.99  res_preprocessed:                       106
% 1.80/0.99  prep_upred:                             0
% 1.80/0.99  prep_unflattend:                        11
% 1.80/0.99  smt_new_axioms:                         0
% 1.80/0.99  pred_elim_cands:                        7
% 1.80/0.99  pred_elim:                              3
% 1.80/0.99  pred_elim_cl:                           3
% 1.80/0.99  pred_elim_cycles:                       5
% 1.80/0.99  merged_defs:                            0
% 1.80/0.99  merged_defs_ncl:                        0
% 1.80/0.99  bin_hyper_res:                          0
% 1.80/0.99  prep_cycles:                            4
% 1.80/0.99  pred_elim_time:                         0.003
% 1.80/0.99  splitting_time:                         0.
% 1.80/0.99  sem_filter_time:                        0.
% 1.80/0.99  monotx_time:                            0.001
% 1.80/0.99  subtype_inf_time:                       0.
% 1.80/0.99  
% 1.80/0.99  ------ Problem properties
% 1.80/0.99  
% 1.80/0.99  clauses:                                19
% 1.80/0.99  conjectures:                            5
% 1.80/0.99  epr:                                    4
% 1.80/0.99  horn:                                   11
% 1.80/0.99  ground:                                 5
% 1.80/0.99  unary:                                  9
% 1.80/0.99  binary:                                 1
% 1.80/0.99  lits:                                   70
% 1.80/0.99  lits_eq:                                1
% 1.80/0.99  fd_pure:                                0
% 1.80/0.99  fd_pseudo:                              0
% 1.80/0.99  fd_cond:                                0
% 1.80/0.99  fd_pseudo_cond:                         0
% 1.80/0.99  ac_symbols:                             0
% 1.80/0.99  
% 1.80/0.99  ------ Propositional Solver
% 1.80/0.99  
% 1.80/0.99  prop_solver_calls:                      26
% 1.80/0.99  prop_fast_solver_calls:                 862
% 1.80/0.99  smt_solver_calls:                       0
% 1.80/0.99  smt_fast_solver_calls:                  0
% 1.80/0.99  prop_num_of_clauses:                    633
% 1.80/0.99  prop_preprocess_simplified:             3395
% 1.80/0.99  prop_fo_subsumed:                       13
% 1.80/0.99  prop_solver_time:                       0.
% 1.80/0.99  smt_solver_time:                        0.
% 1.80/0.99  smt_fast_solver_time:                   0.
% 1.80/0.99  prop_fast_solver_time:                  0.
% 1.80/0.99  prop_unsat_core_time:                   0.
% 1.80/0.99  
% 1.80/0.99  ------ QBF
% 1.80/0.99  
% 1.80/0.99  qbf_q_res:                              0
% 1.80/0.99  qbf_num_tautologies:                    0
% 1.80/0.99  qbf_prep_cycles:                        0
% 1.80/0.99  
% 1.80/0.99  ------ BMC1
% 1.80/0.99  
% 1.80/0.99  bmc1_current_bound:                     -1
% 1.80/0.99  bmc1_last_solved_bound:                 -1
% 1.80/0.99  bmc1_unsat_core_size:                   -1
% 1.80/0.99  bmc1_unsat_core_parents_size:           -1
% 1.80/0.99  bmc1_merge_next_fun:                    0
% 1.80/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.80/0.99  
% 1.80/0.99  ------ Instantiation
% 1.80/0.99  
% 1.80/0.99  inst_num_of_clauses:                    184
% 1.80/0.99  inst_num_in_passive:                    21
% 1.80/0.99  inst_num_in_active:                     116
% 1.80/0.99  inst_num_in_unprocessed:                47
% 1.80/0.99  inst_num_of_loops:                      130
% 1.80/0.99  inst_num_of_learning_restarts:          0
% 1.80/0.99  inst_num_moves_active_passive:          12
% 1.80/0.99  inst_lit_activity:                      0
% 1.80/0.99  inst_lit_activity_moves:                0
% 1.80/0.99  inst_num_tautologies:                   0
% 1.80/0.99  inst_num_prop_implied:                  0
% 1.80/0.99  inst_num_existing_simplified:           0
% 1.80/0.99  inst_num_eq_res_simplified:             0
% 1.80/0.99  inst_num_child_elim:                    0
% 1.80/0.99  inst_num_of_dismatching_blockings:      4
% 1.80/0.99  inst_num_of_non_proper_insts:           110
% 1.80/0.99  inst_num_of_duplicates:                 0
% 1.80/0.99  inst_inst_num_from_inst_to_res:         0
% 1.80/0.99  inst_dismatching_checking_time:         0.
% 1.80/0.99  
% 1.80/0.99  ------ Resolution
% 1.80/0.99  
% 1.80/0.99  res_num_of_clauses:                     0
% 1.80/0.99  res_num_in_passive:                     0
% 1.80/0.99  res_num_in_active:                      0
% 1.80/0.99  res_num_of_loops:                       110
% 1.80/0.99  res_forward_subset_subsumed:            9
% 1.80/0.99  res_backward_subset_subsumed:           0
% 1.80/0.99  res_forward_subsumed:                   0
% 1.80/0.99  res_backward_subsumed:                  0
% 1.80/0.99  res_forward_subsumption_resolution:     2
% 1.80/0.99  res_backward_subsumption_resolution:    0
% 1.80/0.99  res_clause_to_clause_subsumption:       31
% 1.80/0.99  res_orphan_elimination:                 0
% 1.80/0.99  res_tautology_del:                      11
% 1.80/0.99  res_num_eq_res_simplified:              0
% 1.80/0.99  res_num_sel_changes:                    0
% 1.80/0.99  res_moves_from_active_to_pass:          0
% 1.80/0.99  
% 1.80/0.99  ------ Superposition
% 1.80/0.99  
% 1.80/0.99  sup_time_total:                         0.
% 1.80/0.99  sup_time_generating:                    0.
% 1.80/0.99  sup_time_sim_full:                      0.
% 1.80/0.99  sup_time_sim_immed:                     0.
% 1.80/0.99  
% 1.80/0.99  sup_num_of_clauses:                     33
% 1.80/0.99  sup_num_in_active:                      26
% 1.80/0.99  sup_num_in_passive:                     7
% 1.80/0.99  sup_num_of_loops:                       25
% 1.80/0.99  sup_fw_superposition:                   9
% 1.80/0.99  sup_bw_superposition:                   7
% 1.80/0.99  sup_immediate_simplified:               1
% 1.80/0.99  sup_given_eliminated:                   0
% 1.80/0.99  comparisons_done:                       0
% 1.80/0.99  comparisons_avoided:                    0
% 1.80/0.99  
% 1.80/0.99  ------ Simplifications
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  sim_fw_subset_subsumed:                 1
% 1.80/0.99  sim_bw_subset_subsumed:                 0
% 1.80/0.99  sim_fw_subsumed:                        0
% 1.80/0.99  sim_bw_subsumed:                        0
% 1.80/0.99  sim_fw_subsumption_res:                 0
% 1.80/0.99  sim_bw_subsumption_res:                 0
% 1.80/0.99  sim_tautology_del:                      2
% 1.80/0.99  sim_eq_tautology_del:                   0
% 1.80/0.99  sim_eq_res_simp:                        0
% 1.80/0.99  sim_fw_demodulated:                     0
% 1.80/0.99  sim_bw_demodulated:                     0
% 1.80/0.99  sim_light_normalised:                   0
% 1.80/0.99  sim_joinable_taut:                      0
% 1.80/0.99  sim_joinable_simp:                      0
% 1.80/0.99  sim_ac_normalised:                      0
% 1.80/0.99  sim_smt_subsumption:                    0
% 1.80/0.99  
%------------------------------------------------------------------------------
