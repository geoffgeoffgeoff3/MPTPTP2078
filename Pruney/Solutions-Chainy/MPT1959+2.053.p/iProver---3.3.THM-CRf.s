%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:28:35 EST 2020

% Result     : Theorem 2.50s
% Output     : CNFRefutation 2.50s
% Verified   : 
% Statistics : Number of formulae       :  151 ( 789 expanded)
%              Number of clauses        :   89 ( 231 expanded)
%              Number of leaves         :   21 ( 169 expanded)
%              Depth                    :   29
%              Number of atoms          :  637 (5572 expanded)
%              Number of equality atoms :  147 ( 343 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   22 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( ! [X3] :
                ( m1_subset_1(X3,X0)
               => ( r2_hidden(X3,X1)
                <=> r2_hidden(X3,X2) ) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( X1 = X2
          | ? [X3] :
              ( ( r2_hidden(X3,X1)
              <~> r2_hidden(X3,X2) )
              & m1_subset_1(X3,X0) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( X1 = X2
          | ? [X3] :
              ( ( r2_hidden(X3,X1)
              <~> r2_hidden(X3,X2) )
              & m1_subset_1(X3,X0) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f16])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( X1 = X2
          | ? [X3] :
              ( ( ~ r2_hidden(X3,X2)
                | ~ r2_hidden(X3,X1) )
              & ( r2_hidden(X3,X2)
                | r2_hidden(X3,X1) )
              & m1_subset_1(X3,X0) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( X1 = X2
          | ? [X3] :
              ( ( ~ r2_hidden(X3,X2)
                | ~ r2_hidden(X3,X1) )
              & ( r2_hidden(X3,X2)
                | r2_hidden(X3,X1) )
              & m1_subset_1(X3,X0) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f30])).

fof(f32,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(X3,X2)
            | ~ r2_hidden(X3,X1) )
          & ( r2_hidden(X3,X2)
            | r2_hidden(X3,X1) )
          & m1_subset_1(X3,X0) )
     => ( ( ~ r2_hidden(sK0(X0,X1,X2),X2)
          | ~ r2_hidden(sK0(X0,X1,X2),X1) )
        & ( r2_hidden(sK0(X0,X1,X2),X2)
          | r2_hidden(sK0(X0,X1,X2),X1) )
        & m1_subset_1(sK0(X0,X1,X2),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( X1 = X2
          | ( ( ~ r2_hidden(sK0(X0,X1,X2),X2)
              | ~ r2_hidden(sK0(X0,X1,X2),X1) )
            & ( r2_hidden(sK0(X0,X1,X2),X2)
              | r2_hidden(sK0(X0,X1,X2),X1) )
            & m1_subset_1(sK0(X0,X1,X2),X0) )
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f31,f32])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( X1 = X2
      | m1_subset_1(sK0(X0,X1,X2),X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( v1_subset_1(X1,X0)
      <=> X0 != X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( v1_subset_1(X1,X0)
      <=> X0 != X1 )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( ( v1_subset_1(X1,X0)
          | X0 = X1 )
        & ( X0 != X1
          | ~ v1_subset_1(X1,X0) ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f64,plain,(
    ! [X0,X1] :
      ( v1_subset_1(X1,X0)
      | X0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f10,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v1_yellow_0(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v13_waybel_0(X1,X0)
            & v2_waybel_0(X1,X0)
            & ~ v1_xboole_0(X1) )
         => ( v1_subset_1(X1,u1_struct_0(X0))
          <=> ~ r2_hidden(k3_yellow_0(X0),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v1_yellow_0(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v13_waybel_0(X1,X0)
              & v2_waybel_0(X1,X0)
              & ~ v1_xboole_0(X1) )
           => ( v1_subset_1(X1,u1_struct_0(X0))
            <=> ~ r2_hidden(k3_yellow_0(X0),X1) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f12,plain,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v1_yellow_0(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v13_waybel_0(X1,X0)
              & ~ v1_xboole_0(X1) )
           => ( v1_subset_1(X1,u1_struct_0(X0))
            <=> ~ r2_hidden(k3_yellow_0(X0),X1) ) ) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f13,plain,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v1_yellow_0(X0)
          & v5_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v13_waybel_0(X1,X0)
              & ~ v1_xboole_0(X1) )
           => ( v1_subset_1(X1,u1_struct_0(X0))
            <=> ~ r2_hidden(k3_yellow_0(X0),X1) ) ) ) ),
    inference(pure_predicate_removal,[],[f12])).

fof(f14,plain,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v1_yellow_0(X0)
          & v5_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v13_waybel_0(X1,X0)
              & ~ v1_xboole_0(X1) )
           => ( v1_subset_1(X1,u1_struct_0(X0))
            <=> ~ r2_hidden(k3_yellow_0(X0),X1) ) ) ) ),
    inference(pure_predicate_removal,[],[f13])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
          <~> ~ r2_hidden(k3_yellow_0(X0),X1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v13_waybel_0(X1,X0)
          & ~ v1_xboole_0(X1) )
      & l1_orders_2(X0)
      & v1_yellow_0(X0)
      & v5_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_subset_1(X1,u1_struct_0(X0))
          <~> ~ r2_hidden(k3_yellow_0(X0),X1) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v13_waybel_0(X1,X0)
          & ~ v1_xboole_0(X1) )
      & l1_orders_2(X0)
      & v1_yellow_0(X0)
      & v5_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f42,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( r2_hidden(k3_yellow_0(X0),X1)
            | ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & ( ~ r2_hidden(k3_yellow_0(X0),X1)
            | v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v13_waybel_0(X1,X0)
          & ~ v1_xboole_0(X1) )
      & l1_orders_2(X0)
      & v1_yellow_0(X0)
      & v5_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f43,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( r2_hidden(k3_yellow_0(X0),X1)
            | ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & ( ~ r2_hidden(k3_yellow_0(X0),X1)
            | v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v13_waybel_0(X1,X0)
          & ~ v1_xboole_0(X1) )
      & l1_orders_2(X0)
      & v1_yellow_0(X0)
      & v5_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f42])).

fof(f45,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( r2_hidden(k3_yellow_0(X0),X1)
            | ~ v1_subset_1(X1,u1_struct_0(X0)) )
          & ( ~ r2_hidden(k3_yellow_0(X0),X1)
            | v1_subset_1(X1,u1_struct_0(X0)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v13_waybel_0(X1,X0)
          & ~ v1_xboole_0(X1) )
     => ( ( r2_hidden(k3_yellow_0(X0),sK5)
          | ~ v1_subset_1(sK5,u1_struct_0(X0)) )
        & ( ~ r2_hidden(k3_yellow_0(X0),sK5)
          | v1_subset_1(sK5,u1_struct_0(X0)) )
        & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X0)))
        & v13_waybel_0(sK5,X0)
        & ~ v1_xboole_0(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( r2_hidden(k3_yellow_0(X0),X1)
              | ~ v1_subset_1(X1,u1_struct_0(X0)) )
            & ( ~ r2_hidden(k3_yellow_0(X0),X1)
              | v1_subset_1(X1,u1_struct_0(X0)) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v13_waybel_0(X1,X0)
            & ~ v1_xboole_0(X1) )
        & l1_orders_2(X0)
        & v1_yellow_0(X0)
        & v5_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( r2_hidden(k3_yellow_0(sK4),X1)
            | ~ v1_subset_1(X1,u1_struct_0(sK4)) )
          & ( ~ r2_hidden(k3_yellow_0(sK4),X1)
            | v1_subset_1(X1,u1_struct_0(sK4)) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4)))
          & v13_waybel_0(X1,sK4)
          & ~ v1_xboole_0(X1) )
      & l1_orders_2(sK4)
      & v1_yellow_0(sK4)
      & v5_orders_2(sK4)
      & ~ v2_struct_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,
    ( ( r2_hidden(k3_yellow_0(sK4),sK5)
      | ~ v1_subset_1(sK5,u1_struct_0(sK4)) )
    & ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
      | v1_subset_1(sK5,u1_struct_0(sK4)) )
    & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))
    & v13_waybel_0(sK5,sK4)
    & ~ v1_xboole_0(sK5)
    & l1_orders_2(sK4)
    & v1_yellow_0(sK4)
    & v5_orders_2(sK4)
    & ~ v2_struct_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f43,f45,f44])).

fof(f73,plain,
    ( r2_hidden(k3_yellow_0(sK4),sK5)
    | ~ v1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f46])).

fof(f71,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(cnf_transformation,[],[f46])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v13_waybel_0(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => ! [X3] :
                    ( m1_subset_1(X3,u1_struct_0(X0))
                   => ( ( r1_orders_2(X0,X2,X3)
                        & r2_hidden(X2,X1) )
                     => r2_hidden(X3,X1) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v13_waybel_0(X1,X0)
          <=> ! [X2] :
                ( ! [X3] :
                    ( r2_hidden(X3,X1)
                    | ~ r1_orders_2(X0,X2,X3)
                    | ~ r2_hidden(X2,X1)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v13_waybel_0(X1,X0)
          <=> ! [X2] :
                ( ! [X3] :
                    ( r2_hidden(X3,X1)
                    | ~ r1_orders_2(X0,X2,X3)
                    | ~ r2_hidden(X2,X1)
                    | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f25])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v13_waybel_0(X1,X0)
              | ? [X2] :
                  ( ? [X3] :
                      ( ~ r2_hidden(X3,X1)
                      & r1_orders_2(X0,X2,X3)
                      & r2_hidden(X2,X1)
                      & m1_subset_1(X3,u1_struct_0(X0)) )
                  & m1_subset_1(X2,u1_struct_0(X0)) ) )
            & ( ! [X2] :
                  ( ! [X3] :
                      ( r2_hidden(X3,X1)
                      | ~ r1_orders_2(X0,X2,X3)
                      | ~ r2_hidden(X2,X1)
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | ~ v13_waybel_0(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v13_waybel_0(X1,X0)
              | ? [X2] :
                  ( ? [X3] :
                      ( ~ r2_hidden(X3,X1)
                      & r1_orders_2(X0,X2,X3)
                      & r2_hidden(X2,X1)
                      & m1_subset_1(X3,u1_struct_0(X0)) )
                  & m1_subset_1(X2,u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( ! [X5] :
                      ( r2_hidden(X5,X1)
                      | ~ r1_orders_2(X0,X4,X5)
                      | ~ r2_hidden(X4,X1)
                      | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ v13_waybel_0(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(rectify,[],[f36])).

fof(f39,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ~ r2_hidden(X3,X1)
          & r1_orders_2(X0,X2,X3)
          & r2_hidden(X2,X1)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( ~ r2_hidden(sK3(X0,X1),X1)
        & r1_orders_2(X0,X2,sK3(X0,X1))
        & r2_hidden(X2,X1)
        & m1_subset_1(sK3(X0,X1),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r2_hidden(X3,X1)
              & r1_orders_2(X0,X2,X3)
              & r2_hidden(X2,X1)
              & m1_subset_1(X3,u1_struct_0(X0)) )
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( ? [X3] :
            ( ~ r2_hidden(X3,X1)
            & r1_orders_2(X0,sK2(X0,X1),X3)
            & r2_hidden(sK2(X0,X1),X1)
            & m1_subset_1(X3,u1_struct_0(X0)) )
        & m1_subset_1(sK2(X0,X1),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v13_waybel_0(X1,X0)
              | ( ~ r2_hidden(sK3(X0,X1),X1)
                & r1_orders_2(X0,sK2(X0,X1),sK3(X0,X1))
                & r2_hidden(sK2(X0,X1),X1)
                & m1_subset_1(sK3(X0,X1),u1_struct_0(X0))
                & m1_subset_1(sK2(X0,X1),u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( ! [X5] :
                      ( r2_hidden(X5,X1)
                      | ~ r1_orders_2(X0,X4,X5)
                      | ~ r2_hidden(X4,X1)
                      | ~ m1_subset_1(X5,u1_struct_0(X0)) )
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ v13_waybel_0(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f37,f39,f38])).

fof(f57,plain,(
    ! [X4,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r1_orders_2(X0,X4,X5)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X5,u1_struct_0(X0))
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ v13_waybel_0(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v1_yellow_0(X0)
        & v5_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => r1_orders_2(X0,k3_yellow_0(X0),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_orders_2(X0,k3_yellow_0(X0),X1)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v1_yellow_0(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_orders_2(X0,k3_yellow_0(X0),X1)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v1_yellow_0(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f56,plain,(
    ! [X0,X1] :
      ( r1_orders_2(X0,k3_yellow_0(X0),X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v1_yellow_0(X0)
      | ~ v5_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f67,plain,(
    v1_yellow_0(sK4) ),
    inference(cnf_transformation,[],[f46])).

fof(f65,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f46])).

fof(f66,plain,(
    v5_orders_2(sK4) ),
    inference(cnf_transformation,[],[f46])).

fof(f68,plain,(
    l1_orders_2(sK4) ),
    inference(cnf_transformation,[],[f46])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f55,plain,(
    ! [X0] :
      ( m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f70,plain,(
    v13_waybel_0(sK5,sK4) ),
    inference(cnf_transformation,[],[f46])).

fof(f3,axiom,(
    ! [X0] :
    ? [X1] :
      ( ~ v1_subset_1(X1,X0)
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ v1_subset_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => ( ~ v1_subset_1(sK1(X0),X0)
        & m1_subset_1(sK1(X0),k1_zfmisc_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ~ v1_subset_1(sK1(X0),X0)
      & m1_subset_1(sK1(X0),k1_zfmisc_1(X0)) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f3,f34])).

fof(f52,plain,(
    ! [X0] : ~ v1_subset_1(sK1(X0),X0) ),
    inference(cnf_transformation,[],[f35])).

fof(f72,plain,
    ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
    | v1_subset_1(sK5,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f46])).

fof(f51,plain,(
    ! [X0] : m1_subset_1(sK1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f35])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f19,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f18])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f69,plain,(
    ~ v1_xboole_0(sK5) ),
    inference(cnf_transformation,[],[f46])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( X1 = X2
      | ~ r2_hidden(sK0(X0,X1,X2),X2)
      | ~ r2_hidden(sK0(X0,X1,X2),X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | m1_subset_1(sK0(X1,X0,X2),X1)
    | X0 = X2 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1117,plain,
    ( X0 = X1
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
    | m1_subset_1(sK0(X2,X0,X1),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_16,plain,
    ( v1_subset_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_18,negated_conjecture,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | r2_hidden(k3_yellow_0(sK4),sK5) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_200,plain,
    ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
    | r2_hidden(k3_yellow_0(sK4),sK5) ),
    inference(prop_impl,[status(thm)],[c_18])).

cnf(c_416,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r2_hidden(k3_yellow_0(sK4),sK5)
    | X1 = X0
    | u1_struct_0(sK4) != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_200])).

cnf(c_417,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(k3_yellow_0(sK4),sK5)
    | u1_struct_0(sK4) = sK5 ),
    inference(unflattening,[status(thm)],[c_416])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_419,plain,
    ( r2_hidden(k3_yellow_0(sK4),sK5)
    | u1_struct_0(sK4) = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_417,c_20])).

cnf(c_1110,plain,
    ( u1_struct_0(sK4) = sK5
    | r2_hidden(k3_yellow_0(sK4),sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_419])).

cnf(c_1114,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_15,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ v13_waybel_0(X3,X0)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ r2_hidden(X1,X3)
    | r2_hidden(X2,X3)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_9,plain,
    ( r1_orders_2(X0,k3_yellow_0(X0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v5_orders_2(X0)
    | ~ v1_yellow_0(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_24,negated_conjecture,
    ( v1_yellow_0(sK4) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_371,plain,
    ( r1_orders_2(X0,k3_yellow_0(X0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_24])).

cnf(c_372,plain,
    ( r1_orders_2(sK4,k3_yellow_0(sK4),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | v2_struct_0(sK4)
    | ~ v5_orders_2(sK4)
    | ~ l1_orders_2(sK4) ),
    inference(unflattening,[status(thm)],[c_371])).

cnf(c_26,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_25,negated_conjecture,
    ( v5_orders_2(sK4) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_23,negated_conjecture,
    ( l1_orders_2(sK4) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_376,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK4))
    | r1_orders_2(sK4,k3_yellow_0(sK4),X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_372,c_26,c_25,c_23])).

cnf(c_377,plain,
    ( r1_orders_2(sK4,k3_yellow_0(sK4),X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK4)) ),
    inference(renaming,[status(thm)],[c_376])).

cnf(c_484,plain,
    ( ~ v13_waybel_0(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X3,X0)
    | ~ l1_orders_2(X1)
    | X4 != X3
    | k3_yellow_0(sK4) != X2
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_377])).

cnf(c_485,plain,
    ( ~ v13_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
    | r2_hidden(X1,X0)
    | ~ r2_hidden(k3_yellow_0(sK4),X0)
    | ~ l1_orders_2(sK4) ),
    inference(unflattening,[status(thm)],[c_484])).

cnf(c_8,plain,
    ( m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_62,plain,
    ( m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
    | ~ l1_orders_2(sK4) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_489,plain,
    ( ~ r2_hidden(k3_yellow_0(sK4),X0)
    | r2_hidden(X1,X0)
    | ~ v13_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_485,c_23,c_62])).

cnf(c_490,plain,
    ( ~ v13_waybel_0(X0,sK4)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(X1,X0)
    | ~ r2_hidden(k3_yellow_0(sK4),X0) ),
    inference(renaming,[status(thm)],[c_489])).

cnf(c_1108,plain,
    ( v13_waybel_0(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK4)) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(X1,X0) = iProver_top
    | r2_hidden(k3_yellow_0(sK4),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_490])).

cnf(c_1970,plain,
    ( v13_waybel_0(sK5,sK4) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X0,sK5) = iProver_top
    | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1114,c_1108])).

cnf(c_21,negated_conjecture,
    ( v13_waybel_0(sK5,sK4) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_32,plain,
    ( v13_waybel_0(sK5,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_1999,plain,
    ( m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X0,sK5) = iProver_top
    | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1970,c_32])).

cnf(c_2170,plain,
    ( u1_struct_0(sK4) = sK5
    | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
    | r2_hidden(X0,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1110,c_1999])).

cnf(c_2666,plain,
    ( X0 = X1
    | u1_struct_0(sK4) = sK5
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(sK0(u1_struct_0(sK4),X1,X0),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1117,c_2170])).

cnf(c_4,plain,
    ( ~ v1_subset_1(sK1(X0),X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_19,negated_conjecture,
    ( v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ r2_hidden(k3_yellow_0(sK4),sK5) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_198,plain,
    ( v1_subset_1(sK5,u1_struct_0(sK4))
    | ~ r2_hidden(k3_yellow_0(sK4),sK5) ),
    inference(prop_impl,[status(thm)],[c_19])).

cnf(c_404,plain,
    ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
    | u1_struct_0(sK4) != X0
    | sK1(X0) != sK5 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_198])).

cnf(c_405,plain,
    ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
    | sK1(u1_struct_0(sK4)) != sK5 ),
    inference(unflattening,[status(thm)],[c_404])).

cnf(c_1111,plain,
    ( sK1(u1_struct_0(sK4)) != sK5
    | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_405])).

cnf(c_393,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | X1 != X2
    | X1 = X0
    | sK1(X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_16])).

cnf(c_394,plain,
    ( ~ m1_subset_1(sK1(X0),k1_zfmisc_1(X0))
    | X0 = sK1(X0) ),
    inference(unflattening,[status(thm)],[c_393])).

cnf(c_5,plain,
    ( m1_subset_1(sK1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_398,plain,
    ( X0 = sK1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_394,c_5])).

cnf(c_1140,plain,
    ( u1_struct_0(sK4) != sK5
    | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1111,c_398])).

cnf(c_775,plain,
    ( X0 != X1
    | k3_yellow_0(X0) = k3_yellow_0(X1) ),
    theory(equality)).

cnf(c_784,plain,
    ( k3_yellow_0(sK4) = k3_yellow_0(sK4)
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_775])).

cnf(c_769,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_790,plain,
    ( sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_769])).

cnf(c_1238,plain,
    ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
    | u1_struct_0(sK4) != sK5 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1140])).

cnf(c_1428,plain,
    ( sK5 = sK5 ),
    inference(instantiation,[status(thm)],[c_769])).

cnf(c_770,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1382,plain,
    ( u1_struct_0(sK4) != X0
    | sK5 != X0
    | sK5 = u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_770])).

cnf(c_1654,plain,
    ( u1_struct_0(sK4) != sK5
    | sK5 = u1_struct_0(sK4)
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_1382])).

cnf(c_773,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1340,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
    | X1 != u1_struct_0(sK4)
    | X0 != k3_yellow_0(sK4) ),
    inference(instantiation,[status(thm)],[c_773])).

cnf(c_1882,plain,
    ( m1_subset_1(X0,sK5)
    | ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
    | X0 != k3_yellow_0(sK4)
    | sK5 != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_1340])).

cnf(c_2048,plain,
    ( ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
    | m1_subset_1(k3_yellow_0(sK4),sK5)
    | k3_yellow_0(sK4) != k3_yellow_0(sK4)
    | sK5 != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_1882])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_22,negated_conjecture,
    ( ~ v1_xboole_0(sK5) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_356,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | sK5 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_22])).

cnf(c_357,plain,
    ( ~ m1_subset_1(X0,sK5)
    | r2_hidden(X0,sK5) ),
    inference(unflattening,[status(thm)],[c_356])).

cnf(c_2800,plain,
    ( ~ m1_subset_1(k3_yellow_0(sK4),sK5)
    | r2_hidden(k3_yellow_0(sK4),sK5) ),
    inference(instantiation,[status(thm)],[c_357])).

cnf(c_2978,plain,
    ( u1_struct_0(sK4) != sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1140,c_23,c_62,c_784,c_790,c_1238,c_1428,c_1654,c_2048,c_2800])).

cnf(c_3111,plain,
    ( X0 = X1
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(sK0(u1_struct_0(sK4),X1,X0),sK5) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2666,c_23,c_62,c_784,c_790,c_1238,c_1428,c_1654,c_2048,c_2800])).

cnf(c_3112,plain,
    ( X0 = X1
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(sK0(u1_struct_0(sK4),X1,X0),sK5) = iProver_top ),
    inference(renaming,[status(thm)],[c_3111])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1120,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1716,plain,
    ( r2_hidden(X0,u1_struct_0(sK4)) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1114,c_1120])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(sK0(X1,X0,X2),X2)
    | ~ r2_hidden(sK0(X1,X0,X2),X0)
    | X0 = X2 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1119,plain,
    ( X0 = X1
    | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
    | r2_hidden(sK0(X2,X0,X1),X1) != iProver_top
    | r2_hidden(sK0(X2,X0,X1),X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_2244,plain,
    ( u1_struct_0(sK4) = X0
    | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(sK0(X1,X0,u1_struct_0(sK4)),X0) != iProver_top
    | r2_hidden(sK0(X1,X0,u1_struct_0(sK4)),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1716,c_1119])).

cnf(c_3121,plain,
    ( u1_struct_0(sK4) = sK5
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(sK0(u1_struct_0(sK4),sK5,u1_struct_0(sK4)),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3112,c_2244])).

cnf(c_3126,plain,
    ( u1_struct_0(sK4) = sK5
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3121,c_3112])).

cnf(c_1330,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(sK1(X2),k1_zfmisc_1(X2))
    | X0 != sK1(X2)
    | X1 != k1_zfmisc_1(X2) ),
    inference(instantiation,[status(thm)],[c_773])).

cnf(c_1638,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ m1_subset_1(sK1(X1),k1_zfmisc_1(X1))
    | X0 != sK1(X1)
    | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
    inference(instantiation,[status(thm)],[c_1330])).

cnf(c_2487,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4)))
    | X0 != sK1(u1_struct_0(sK4))
    | k1_zfmisc_1(u1_struct_0(sK4)) != k1_zfmisc_1(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_1638])).

cnf(c_2722,plain,
    ( m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4)))
    | u1_struct_0(sK4) != sK1(u1_struct_0(sK4))
    | k1_zfmisc_1(u1_struct_0(sK4)) != k1_zfmisc_1(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_2487])).

cnf(c_2723,plain,
    ( u1_struct_0(sK4) != sK1(u1_struct_0(sK4))
    | k1_zfmisc_1(u1_struct_0(sK4)) != k1_zfmisc_1(u1_struct_0(sK4))
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2722])).

cnf(c_772,plain,
    ( X0 != X1
    | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
    theory(equality)).

cnf(c_1509,plain,
    ( X0 != u1_struct_0(sK4)
    | k1_zfmisc_1(X0) = k1_zfmisc_1(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_772])).

cnf(c_2102,plain,
    ( u1_struct_0(sK4) != u1_struct_0(sK4)
    | k1_zfmisc_1(u1_struct_0(sK4)) = k1_zfmisc_1(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_1509])).

cnf(c_1677,plain,
    ( u1_struct_0(sK4) = sK1(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_398])).

cnf(c_1295,plain,
    ( m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_1300,plain,
    ( m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1295])).

cnf(c_776,plain,
    ( X0 != X1
    | u1_struct_0(X0) = u1_struct_0(X1) ),
    theory(equality)).

cnf(c_785,plain,
    ( u1_struct_0(sK4) = u1_struct_0(sK4)
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_776])).

cnf(c_33,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3126,c_2978,c_2723,c_2102,c_1677,c_1300,c_790,c_785,c_33])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 10:30:44 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.50/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.50/0.99  
% 2.50/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.50/0.99  
% 2.50/0.99  ------  iProver source info
% 2.50/0.99  
% 2.50/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.50/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.50/0.99  git: non_committed_changes: false
% 2.50/0.99  git: last_make_outside_of_git: false
% 2.50/0.99  
% 2.50/0.99  ------ 
% 2.50/0.99  
% 2.50/0.99  ------ Input Options
% 2.50/0.99  
% 2.50/0.99  --out_options                           all
% 2.50/0.99  --tptp_safe_out                         true
% 2.50/0.99  --problem_path                          ""
% 2.50/0.99  --include_path                          ""
% 2.50/0.99  --clausifier                            res/vclausify_rel
% 2.50/0.99  --clausifier_options                    --mode clausify
% 2.50/0.99  --stdin                                 false
% 2.50/0.99  --stats_out                             all
% 2.50/0.99  
% 2.50/0.99  ------ General Options
% 2.50/0.99  
% 2.50/0.99  --fof                                   false
% 2.50/0.99  --time_out_real                         305.
% 2.50/0.99  --time_out_virtual                      -1.
% 2.50/0.99  --symbol_type_check                     false
% 2.50/0.99  --clausify_out                          false
% 2.50/0.99  --sig_cnt_out                           false
% 2.50/0.99  --trig_cnt_out                          false
% 2.50/0.99  --trig_cnt_out_tolerance                1.
% 2.50/0.99  --trig_cnt_out_sk_spl                   false
% 2.50/0.99  --abstr_cl_out                          false
% 2.50/0.99  
% 2.50/0.99  ------ Global Options
% 2.50/0.99  
% 2.50/0.99  --schedule                              default
% 2.50/0.99  --add_important_lit                     false
% 2.50/0.99  --prop_solver_per_cl                    1000
% 2.50/0.99  --min_unsat_core                        false
% 2.50/0.99  --soft_assumptions                      false
% 2.50/0.99  --soft_lemma_size                       3
% 2.50/0.99  --prop_impl_unit_size                   0
% 2.50/0.99  --prop_impl_unit                        []
% 2.50/0.99  --share_sel_clauses                     true
% 2.50/0.99  --reset_solvers                         false
% 2.50/0.99  --bc_imp_inh                            [conj_cone]
% 2.50/0.99  --conj_cone_tolerance                   3.
% 2.50/0.99  --extra_neg_conj                        none
% 2.50/0.99  --large_theory_mode                     true
% 2.50/0.99  --prolific_symb_bound                   200
% 2.50/0.99  --lt_threshold                          2000
% 2.50/0.99  --clause_weak_htbl                      true
% 2.50/0.99  --gc_record_bc_elim                     false
% 2.50/0.99  
% 2.50/0.99  ------ Preprocessing Options
% 2.50/0.99  
% 2.50/0.99  --preprocessing_flag                    true
% 2.50/0.99  --time_out_prep_mult                    0.1
% 2.50/0.99  --splitting_mode                        input
% 2.50/0.99  --splitting_grd                         true
% 2.50/0.99  --splitting_cvd                         false
% 2.50/0.99  --splitting_cvd_svl                     false
% 2.50/0.99  --splitting_nvd                         32
% 2.50/0.99  --sub_typing                            true
% 2.50/0.99  --prep_gs_sim                           true
% 2.50/0.99  --prep_unflatten                        true
% 2.50/0.99  --prep_res_sim                          true
% 2.50/0.99  --prep_upred                            true
% 2.50/0.99  --prep_sem_filter                       exhaustive
% 2.50/0.99  --prep_sem_filter_out                   false
% 2.50/0.99  --pred_elim                             true
% 2.50/0.99  --res_sim_input                         true
% 2.50/0.99  --eq_ax_congr_red                       true
% 2.50/0.99  --pure_diseq_elim                       true
% 2.50/0.99  --brand_transform                       false
% 2.50/0.99  --non_eq_to_eq                          false
% 2.50/0.99  --prep_def_merge                        true
% 2.50/0.99  --prep_def_merge_prop_impl              false
% 2.50/0.99  --prep_def_merge_mbd                    true
% 2.50/0.99  --prep_def_merge_tr_red                 false
% 2.50/0.99  --prep_def_merge_tr_cl                  false
% 2.50/0.99  --smt_preprocessing                     true
% 2.50/0.99  --smt_ac_axioms                         fast
% 2.50/0.99  --preprocessed_out                      false
% 2.50/0.99  --preprocessed_stats                    false
% 2.50/0.99  
% 2.50/0.99  ------ Abstraction refinement Options
% 2.50/0.99  
% 2.50/0.99  --abstr_ref                             []
% 2.50/0.99  --abstr_ref_prep                        false
% 2.50/0.99  --abstr_ref_until_sat                   false
% 2.50/0.99  --abstr_ref_sig_restrict                funpre
% 2.50/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.50/0.99  --abstr_ref_under                       []
% 2.50/0.99  
% 2.50/0.99  ------ SAT Options
% 2.50/0.99  
% 2.50/0.99  --sat_mode                              false
% 2.50/0.99  --sat_fm_restart_options                ""
% 2.50/0.99  --sat_gr_def                            false
% 2.50/0.99  --sat_epr_types                         true
% 2.50/0.99  --sat_non_cyclic_types                  false
% 2.50/0.99  --sat_finite_models                     false
% 2.50/0.99  --sat_fm_lemmas                         false
% 2.50/0.99  --sat_fm_prep                           false
% 2.50/0.99  --sat_fm_uc_incr                        true
% 2.50/0.99  --sat_out_model                         small
% 2.50/0.99  --sat_out_clauses                       false
% 2.50/0.99  
% 2.50/0.99  ------ QBF Options
% 2.50/0.99  
% 2.50/0.99  --qbf_mode                              false
% 2.50/0.99  --qbf_elim_univ                         false
% 2.50/0.99  --qbf_dom_inst                          none
% 2.50/0.99  --qbf_dom_pre_inst                      false
% 2.50/0.99  --qbf_sk_in                             false
% 2.50/0.99  --qbf_pred_elim                         true
% 2.50/0.99  --qbf_split                             512
% 2.50/0.99  
% 2.50/0.99  ------ BMC1 Options
% 2.50/0.99  
% 2.50/0.99  --bmc1_incremental                      false
% 2.50/0.99  --bmc1_axioms                           reachable_all
% 2.50/0.99  --bmc1_min_bound                        0
% 2.50/0.99  --bmc1_max_bound                        -1
% 2.50/0.99  --bmc1_max_bound_default                -1
% 2.50/0.99  --bmc1_symbol_reachability              true
% 2.50/0.99  --bmc1_property_lemmas                  false
% 2.50/0.99  --bmc1_k_induction                      false
% 2.50/0.99  --bmc1_non_equiv_states                 false
% 2.50/0.99  --bmc1_deadlock                         false
% 2.50/0.99  --bmc1_ucm                              false
% 2.50/0.99  --bmc1_add_unsat_core                   none
% 2.50/0.99  --bmc1_unsat_core_children              false
% 2.50/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.50/0.99  --bmc1_out_stat                         full
% 2.50/0.99  --bmc1_ground_init                      false
% 2.50/0.99  --bmc1_pre_inst_next_state              false
% 2.50/0.99  --bmc1_pre_inst_state                   false
% 2.50/0.99  --bmc1_pre_inst_reach_state             false
% 2.50/0.99  --bmc1_out_unsat_core                   false
% 2.50/0.99  --bmc1_aig_witness_out                  false
% 2.50/0.99  --bmc1_verbose                          false
% 2.50/0.99  --bmc1_dump_clauses_tptp                false
% 2.50/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.50/0.99  --bmc1_dump_file                        -
% 2.50/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.50/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.50/0.99  --bmc1_ucm_extend_mode                  1
% 2.50/0.99  --bmc1_ucm_init_mode                    2
% 2.50/0.99  --bmc1_ucm_cone_mode                    none
% 2.50/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.50/0.99  --bmc1_ucm_relax_model                  4
% 2.50/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.50/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.50/0.99  --bmc1_ucm_layered_model                none
% 2.50/0.99  --bmc1_ucm_max_lemma_size               10
% 2.50/0.99  
% 2.50/0.99  ------ AIG Options
% 2.50/0.99  
% 2.50/0.99  --aig_mode                              false
% 2.50/0.99  
% 2.50/0.99  ------ Instantiation Options
% 2.50/0.99  
% 2.50/0.99  --instantiation_flag                    true
% 2.50/0.99  --inst_sos_flag                         false
% 2.50/0.99  --inst_sos_phase                        true
% 2.50/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.50/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.50/0.99  --inst_lit_sel_side                     num_symb
% 2.50/0.99  --inst_solver_per_active                1400
% 2.50/0.99  --inst_solver_calls_frac                1.
% 2.50/0.99  --inst_passive_queue_type               priority_queues
% 2.50/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.50/0.99  --inst_passive_queues_freq              [25;2]
% 2.50/0.99  --inst_dismatching                      true
% 2.50/0.99  --inst_eager_unprocessed_to_passive     true
% 2.50/0.99  --inst_prop_sim_given                   true
% 2.50/0.99  --inst_prop_sim_new                     false
% 2.50/0.99  --inst_subs_new                         false
% 2.50/0.99  --inst_eq_res_simp                      false
% 2.50/0.99  --inst_subs_given                       false
% 2.50/0.99  --inst_orphan_elimination               true
% 2.50/0.99  --inst_learning_loop_flag               true
% 2.50/0.99  --inst_learning_start                   3000
% 2.50/0.99  --inst_learning_factor                  2
% 2.50/0.99  --inst_start_prop_sim_after_learn       3
% 2.50/0.99  --inst_sel_renew                        solver
% 2.50/0.99  --inst_lit_activity_flag                true
% 2.50/0.99  --inst_restr_to_given                   false
% 2.50/0.99  --inst_activity_threshold               500
% 2.50/0.99  --inst_out_proof                        true
% 2.50/0.99  
% 2.50/0.99  ------ Resolution Options
% 2.50/0.99  
% 2.50/0.99  --resolution_flag                       true
% 2.50/0.99  --res_lit_sel                           adaptive
% 2.50/0.99  --res_lit_sel_side                      none
% 2.50/0.99  --res_ordering                          kbo
% 2.50/0.99  --res_to_prop_solver                    active
% 2.50/0.99  --res_prop_simpl_new                    false
% 2.50/0.99  --res_prop_simpl_given                  true
% 2.50/0.99  --res_passive_queue_type                priority_queues
% 2.50/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.50/0.99  --res_passive_queues_freq               [15;5]
% 2.50/0.99  --res_forward_subs                      full
% 2.50/0.99  --res_backward_subs                     full
% 2.50/0.99  --res_forward_subs_resolution           true
% 2.50/0.99  --res_backward_subs_resolution          true
% 2.50/0.99  --res_orphan_elimination                true
% 2.50/0.99  --res_time_limit                        2.
% 2.50/0.99  --res_out_proof                         true
% 2.50/0.99  
% 2.50/0.99  ------ Superposition Options
% 2.50/0.99  
% 2.50/0.99  --superposition_flag                    true
% 2.50/0.99  --sup_passive_queue_type                priority_queues
% 2.50/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.50/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.50/0.99  --demod_completeness_check              fast
% 2.50/0.99  --demod_use_ground                      true
% 2.50/0.99  --sup_to_prop_solver                    passive
% 2.50/0.99  --sup_prop_simpl_new                    true
% 2.50/0.99  --sup_prop_simpl_given                  true
% 2.50/0.99  --sup_fun_splitting                     false
% 2.50/0.99  --sup_smt_interval                      50000
% 2.50/0.99  
% 2.50/0.99  ------ Superposition Simplification Setup
% 2.50/0.99  
% 2.50/0.99  --sup_indices_passive                   []
% 2.50/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.50/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.50/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.50/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.50/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.50/0.99  --sup_full_bw                           [BwDemod]
% 2.50/0.99  --sup_immed_triv                        [TrivRules]
% 2.50/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.50/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.50/0.99  --sup_immed_bw_main                     []
% 2.50/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.50/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.50/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.50/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.50/0.99  
% 2.50/0.99  ------ Combination Options
% 2.50/0.99  
% 2.50/0.99  --comb_res_mult                         3
% 2.50/0.99  --comb_sup_mult                         2
% 2.50/0.99  --comb_inst_mult                        10
% 2.50/0.99  
% 2.50/0.99  ------ Debug Options
% 2.50/0.99  
% 2.50/0.99  --dbg_backtrace                         false
% 2.50/0.99  --dbg_dump_prop_clauses                 false
% 2.50/0.99  --dbg_dump_prop_clauses_file            -
% 2.50/0.99  --dbg_out_stat                          false
% 2.50/0.99  ------ Parsing...
% 2.50/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.50/0.99  
% 2.50/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 2.50/0.99  
% 2.50/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.50/0.99  
% 2.50/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.50/0.99  ------ Proving...
% 2.50/0.99  ------ Problem Properties 
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  clauses                                 20
% 2.50/0.99  conjectures                             2
% 2.50/0.99  EPR                                     2
% 2.50/0.99  Horn                                    13
% 2.50/0.99  unary                                   5
% 2.50/0.99  binary                                  3
% 2.50/0.99  lits                                    57
% 2.50/0.99  lits eq                                 7
% 2.50/0.99  fd_pure                                 0
% 2.50/0.99  fd_pseudo                               0
% 2.50/0.99  fd_cond                                 0
% 2.50/0.99  fd_pseudo_cond                          3
% 2.50/0.99  AC symbols                              0
% 2.50/0.99  
% 2.50/0.99  ------ Schedule dynamic 5 is on 
% 2.50/0.99  
% 2.50/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  ------ 
% 2.50/0.99  Current options:
% 2.50/0.99  ------ 
% 2.50/0.99  
% 2.50/0.99  ------ Input Options
% 2.50/0.99  
% 2.50/0.99  --out_options                           all
% 2.50/0.99  --tptp_safe_out                         true
% 2.50/0.99  --problem_path                          ""
% 2.50/0.99  --include_path                          ""
% 2.50/0.99  --clausifier                            res/vclausify_rel
% 2.50/0.99  --clausifier_options                    --mode clausify
% 2.50/0.99  --stdin                                 false
% 2.50/0.99  --stats_out                             all
% 2.50/0.99  
% 2.50/0.99  ------ General Options
% 2.50/0.99  
% 2.50/0.99  --fof                                   false
% 2.50/0.99  --time_out_real                         305.
% 2.50/0.99  --time_out_virtual                      -1.
% 2.50/0.99  --symbol_type_check                     false
% 2.50/0.99  --clausify_out                          false
% 2.50/0.99  --sig_cnt_out                           false
% 2.50/0.99  --trig_cnt_out                          false
% 2.50/0.99  --trig_cnt_out_tolerance                1.
% 2.50/0.99  --trig_cnt_out_sk_spl                   false
% 2.50/0.99  --abstr_cl_out                          false
% 2.50/0.99  
% 2.50/0.99  ------ Global Options
% 2.50/0.99  
% 2.50/0.99  --schedule                              default
% 2.50/0.99  --add_important_lit                     false
% 2.50/0.99  --prop_solver_per_cl                    1000
% 2.50/0.99  --min_unsat_core                        false
% 2.50/0.99  --soft_assumptions                      false
% 2.50/0.99  --soft_lemma_size                       3
% 2.50/0.99  --prop_impl_unit_size                   0
% 2.50/0.99  --prop_impl_unit                        []
% 2.50/0.99  --share_sel_clauses                     true
% 2.50/0.99  --reset_solvers                         false
% 2.50/0.99  --bc_imp_inh                            [conj_cone]
% 2.50/0.99  --conj_cone_tolerance                   3.
% 2.50/0.99  --extra_neg_conj                        none
% 2.50/0.99  --large_theory_mode                     true
% 2.50/0.99  --prolific_symb_bound                   200
% 2.50/0.99  --lt_threshold                          2000
% 2.50/0.99  --clause_weak_htbl                      true
% 2.50/0.99  --gc_record_bc_elim                     false
% 2.50/0.99  
% 2.50/0.99  ------ Preprocessing Options
% 2.50/0.99  
% 2.50/0.99  --preprocessing_flag                    true
% 2.50/0.99  --time_out_prep_mult                    0.1
% 2.50/0.99  --splitting_mode                        input
% 2.50/0.99  --splitting_grd                         true
% 2.50/0.99  --splitting_cvd                         false
% 2.50/0.99  --splitting_cvd_svl                     false
% 2.50/0.99  --splitting_nvd                         32
% 2.50/0.99  --sub_typing                            true
% 2.50/0.99  --prep_gs_sim                           true
% 2.50/0.99  --prep_unflatten                        true
% 2.50/0.99  --prep_res_sim                          true
% 2.50/0.99  --prep_upred                            true
% 2.50/0.99  --prep_sem_filter                       exhaustive
% 2.50/0.99  --prep_sem_filter_out                   false
% 2.50/0.99  --pred_elim                             true
% 2.50/0.99  --res_sim_input                         true
% 2.50/0.99  --eq_ax_congr_red                       true
% 2.50/0.99  --pure_diseq_elim                       true
% 2.50/0.99  --brand_transform                       false
% 2.50/0.99  --non_eq_to_eq                          false
% 2.50/0.99  --prep_def_merge                        true
% 2.50/0.99  --prep_def_merge_prop_impl              false
% 2.50/0.99  --prep_def_merge_mbd                    true
% 2.50/0.99  --prep_def_merge_tr_red                 false
% 2.50/0.99  --prep_def_merge_tr_cl                  false
% 2.50/0.99  --smt_preprocessing                     true
% 2.50/0.99  --smt_ac_axioms                         fast
% 2.50/0.99  --preprocessed_out                      false
% 2.50/0.99  --preprocessed_stats                    false
% 2.50/0.99  
% 2.50/0.99  ------ Abstraction refinement Options
% 2.50/0.99  
% 2.50/0.99  --abstr_ref                             []
% 2.50/0.99  --abstr_ref_prep                        false
% 2.50/0.99  --abstr_ref_until_sat                   false
% 2.50/0.99  --abstr_ref_sig_restrict                funpre
% 2.50/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.50/0.99  --abstr_ref_under                       []
% 2.50/0.99  
% 2.50/0.99  ------ SAT Options
% 2.50/0.99  
% 2.50/0.99  --sat_mode                              false
% 2.50/0.99  --sat_fm_restart_options                ""
% 2.50/0.99  --sat_gr_def                            false
% 2.50/0.99  --sat_epr_types                         true
% 2.50/0.99  --sat_non_cyclic_types                  false
% 2.50/0.99  --sat_finite_models                     false
% 2.50/0.99  --sat_fm_lemmas                         false
% 2.50/0.99  --sat_fm_prep                           false
% 2.50/0.99  --sat_fm_uc_incr                        true
% 2.50/0.99  --sat_out_model                         small
% 2.50/0.99  --sat_out_clauses                       false
% 2.50/0.99  
% 2.50/0.99  ------ QBF Options
% 2.50/0.99  
% 2.50/0.99  --qbf_mode                              false
% 2.50/0.99  --qbf_elim_univ                         false
% 2.50/0.99  --qbf_dom_inst                          none
% 2.50/0.99  --qbf_dom_pre_inst                      false
% 2.50/0.99  --qbf_sk_in                             false
% 2.50/0.99  --qbf_pred_elim                         true
% 2.50/0.99  --qbf_split                             512
% 2.50/0.99  
% 2.50/0.99  ------ BMC1 Options
% 2.50/0.99  
% 2.50/0.99  --bmc1_incremental                      false
% 2.50/0.99  --bmc1_axioms                           reachable_all
% 2.50/0.99  --bmc1_min_bound                        0
% 2.50/0.99  --bmc1_max_bound                        -1
% 2.50/0.99  --bmc1_max_bound_default                -1
% 2.50/0.99  --bmc1_symbol_reachability              true
% 2.50/0.99  --bmc1_property_lemmas                  false
% 2.50/0.99  --bmc1_k_induction                      false
% 2.50/0.99  --bmc1_non_equiv_states                 false
% 2.50/0.99  --bmc1_deadlock                         false
% 2.50/0.99  --bmc1_ucm                              false
% 2.50/0.99  --bmc1_add_unsat_core                   none
% 2.50/0.99  --bmc1_unsat_core_children              false
% 2.50/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.50/0.99  --bmc1_out_stat                         full
% 2.50/0.99  --bmc1_ground_init                      false
% 2.50/0.99  --bmc1_pre_inst_next_state              false
% 2.50/0.99  --bmc1_pre_inst_state                   false
% 2.50/0.99  --bmc1_pre_inst_reach_state             false
% 2.50/0.99  --bmc1_out_unsat_core                   false
% 2.50/0.99  --bmc1_aig_witness_out                  false
% 2.50/0.99  --bmc1_verbose                          false
% 2.50/0.99  --bmc1_dump_clauses_tptp                false
% 2.50/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.50/0.99  --bmc1_dump_file                        -
% 2.50/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.50/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.50/0.99  --bmc1_ucm_extend_mode                  1
% 2.50/0.99  --bmc1_ucm_init_mode                    2
% 2.50/0.99  --bmc1_ucm_cone_mode                    none
% 2.50/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.50/0.99  --bmc1_ucm_relax_model                  4
% 2.50/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.50/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.50/0.99  --bmc1_ucm_layered_model                none
% 2.50/0.99  --bmc1_ucm_max_lemma_size               10
% 2.50/0.99  
% 2.50/0.99  ------ AIG Options
% 2.50/0.99  
% 2.50/0.99  --aig_mode                              false
% 2.50/0.99  
% 2.50/0.99  ------ Instantiation Options
% 2.50/0.99  
% 2.50/0.99  --instantiation_flag                    true
% 2.50/0.99  --inst_sos_flag                         false
% 2.50/0.99  --inst_sos_phase                        true
% 2.50/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.50/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.50/0.99  --inst_lit_sel_side                     none
% 2.50/0.99  --inst_solver_per_active                1400
% 2.50/0.99  --inst_solver_calls_frac                1.
% 2.50/0.99  --inst_passive_queue_type               priority_queues
% 2.50/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.50/0.99  --inst_passive_queues_freq              [25;2]
% 2.50/0.99  --inst_dismatching                      true
% 2.50/0.99  --inst_eager_unprocessed_to_passive     true
% 2.50/0.99  --inst_prop_sim_given                   true
% 2.50/0.99  --inst_prop_sim_new                     false
% 2.50/0.99  --inst_subs_new                         false
% 2.50/0.99  --inst_eq_res_simp                      false
% 2.50/0.99  --inst_subs_given                       false
% 2.50/0.99  --inst_orphan_elimination               true
% 2.50/0.99  --inst_learning_loop_flag               true
% 2.50/0.99  --inst_learning_start                   3000
% 2.50/0.99  --inst_learning_factor                  2
% 2.50/0.99  --inst_start_prop_sim_after_learn       3
% 2.50/0.99  --inst_sel_renew                        solver
% 2.50/0.99  --inst_lit_activity_flag                true
% 2.50/0.99  --inst_restr_to_given                   false
% 2.50/0.99  --inst_activity_threshold               500
% 2.50/0.99  --inst_out_proof                        true
% 2.50/0.99  
% 2.50/0.99  ------ Resolution Options
% 2.50/0.99  
% 2.50/0.99  --resolution_flag                       false
% 2.50/0.99  --res_lit_sel                           adaptive
% 2.50/0.99  --res_lit_sel_side                      none
% 2.50/0.99  --res_ordering                          kbo
% 2.50/0.99  --res_to_prop_solver                    active
% 2.50/0.99  --res_prop_simpl_new                    false
% 2.50/0.99  --res_prop_simpl_given                  true
% 2.50/0.99  --res_passive_queue_type                priority_queues
% 2.50/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.50/0.99  --res_passive_queues_freq               [15;5]
% 2.50/0.99  --res_forward_subs                      full
% 2.50/0.99  --res_backward_subs                     full
% 2.50/0.99  --res_forward_subs_resolution           true
% 2.50/0.99  --res_backward_subs_resolution          true
% 2.50/0.99  --res_orphan_elimination                true
% 2.50/0.99  --res_time_limit                        2.
% 2.50/0.99  --res_out_proof                         true
% 2.50/0.99  
% 2.50/0.99  ------ Superposition Options
% 2.50/0.99  
% 2.50/0.99  --superposition_flag                    true
% 2.50/0.99  --sup_passive_queue_type                priority_queues
% 2.50/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.50/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.50/0.99  --demod_completeness_check              fast
% 2.50/0.99  --demod_use_ground                      true
% 2.50/0.99  --sup_to_prop_solver                    passive
% 2.50/0.99  --sup_prop_simpl_new                    true
% 2.50/0.99  --sup_prop_simpl_given                  true
% 2.50/0.99  --sup_fun_splitting                     false
% 2.50/0.99  --sup_smt_interval                      50000
% 2.50/0.99  
% 2.50/0.99  ------ Superposition Simplification Setup
% 2.50/0.99  
% 2.50/0.99  --sup_indices_passive                   []
% 2.50/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.50/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.50/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.50/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.50/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.50/0.99  --sup_full_bw                           [BwDemod]
% 2.50/0.99  --sup_immed_triv                        [TrivRules]
% 2.50/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.50/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.50/0.99  --sup_immed_bw_main                     []
% 2.50/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.50/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.50/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.50/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.50/0.99  
% 2.50/0.99  ------ Combination Options
% 2.50/0.99  
% 2.50/0.99  --comb_res_mult                         3
% 2.50/0.99  --comb_sup_mult                         2
% 2.50/0.99  --comb_inst_mult                        10
% 2.50/0.99  
% 2.50/0.99  ------ Debug Options
% 2.50/0.99  
% 2.50/0.99  --dbg_backtrace                         false
% 2.50/0.99  --dbg_dump_prop_clauses                 false
% 2.50/0.99  --dbg_dump_prop_clauses_file            -
% 2.50/0.99  --dbg_out_stat                          false
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  ------ Proving...
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  % SZS status Theorem for theBenchmark.p
% 2.50/0.99  
% 2.50/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.50/0.99  
% 2.50/0.99  fof(f2,axiom,(
% 2.50/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (! [X3] : (m1_subset_1(X3,X0) => (r2_hidden(X3,X1) <=> r2_hidden(X3,X2))) => X1 = X2)))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f16,plain,(
% 2.50/0.99    ! [X0,X1] : (! [X2] : ((X1 = X2 | ? [X3] : ((r2_hidden(X3,X1) <~> r2_hidden(X3,X2)) & m1_subset_1(X3,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(ennf_transformation,[],[f2])).
% 2.50/0.99  
% 2.50/0.99  fof(f17,plain,(
% 2.50/0.99    ! [X0,X1] : (! [X2] : (X1 = X2 | ? [X3] : ((r2_hidden(X3,X1) <~> r2_hidden(X3,X2)) & m1_subset_1(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(flattening,[],[f16])).
% 2.50/0.99  
% 2.50/0.99  fof(f30,plain,(
% 2.50/0.99    ! [X0,X1] : (! [X2] : (X1 = X2 | ? [X3] : (((~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & (r2_hidden(X3,X2) | r2_hidden(X3,X1))) & m1_subset_1(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(nnf_transformation,[],[f17])).
% 2.50/0.99  
% 2.50/0.99  fof(f31,plain,(
% 2.50/0.99    ! [X0,X1] : (! [X2] : (X1 = X2 | ? [X3] : ((~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & (r2_hidden(X3,X2) | r2_hidden(X3,X1)) & m1_subset_1(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(flattening,[],[f30])).
% 2.50/0.99  
% 2.50/0.99  fof(f32,plain,(
% 2.50/0.99    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & (r2_hidden(X3,X2) | r2_hidden(X3,X1)) & m1_subset_1(X3,X0)) => ((~r2_hidden(sK0(X0,X1,X2),X2) | ~r2_hidden(sK0(X0,X1,X2),X1)) & (r2_hidden(sK0(X0,X1,X2),X2) | r2_hidden(sK0(X0,X1,X2),X1)) & m1_subset_1(sK0(X0,X1,X2),X0)))),
% 2.50/0.99    introduced(choice_axiom,[])).
% 2.50/0.99  
% 2.50/0.99  fof(f33,plain,(
% 2.50/0.99    ! [X0,X1] : (! [X2] : (X1 = X2 | ((~r2_hidden(sK0(X0,X1,X2),X2) | ~r2_hidden(sK0(X0,X1,X2),X1)) & (r2_hidden(sK0(X0,X1,X2),X2) | r2_hidden(sK0(X0,X1,X2),X1)) & m1_subset_1(sK0(X0,X1,X2),X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f31,f32])).
% 2.50/0.99  
% 2.50/0.99  fof(f48,plain,(
% 2.50/0.99    ( ! [X2,X0,X1] : (X1 = X2 | m1_subset_1(sK0(X0,X1,X2),X0) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.50/0.99    inference(cnf_transformation,[],[f33])).
% 2.50/0.99  
% 2.50/0.99  fof(f9,axiom,(
% 2.50/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (v1_subset_1(X1,X0) <=> X0 != X1))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f27,plain,(
% 2.50/0.99    ! [X0,X1] : ((v1_subset_1(X1,X0) <=> X0 != X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(ennf_transformation,[],[f9])).
% 2.50/0.99  
% 2.50/0.99  fof(f41,plain,(
% 2.50/0.99    ! [X0,X1] : (((v1_subset_1(X1,X0) | X0 = X1) & (X0 != X1 | ~v1_subset_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(nnf_transformation,[],[f27])).
% 2.50/0.99  
% 2.50/0.99  fof(f64,plain,(
% 2.50/0.99    ( ! [X0,X1] : (v1_subset_1(X1,X0) | X0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.50/0.99    inference(cnf_transformation,[],[f41])).
% 2.50/0.99  
% 2.50/0.99  fof(f10,conjecture,(
% 2.50/0.99    ! [X0] : ((l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & v2_waybel_0(X1,X0) & ~v1_xboole_0(X1)) => (v1_subset_1(X1,u1_struct_0(X0)) <=> ~r2_hidden(k3_yellow_0(X0),X1))))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f11,negated_conjecture,(
% 2.50/0.99    ~! [X0] : ((l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & v2_waybel_0(X1,X0) & ~v1_xboole_0(X1)) => (v1_subset_1(X1,u1_struct_0(X0)) <=> ~r2_hidden(k3_yellow_0(X0),X1))))),
% 2.50/0.99    inference(negated_conjecture,[],[f10])).
% 2.50/0.99  
% 2.50/0.99  fof(f12,plain,(
% 2.50/0.99    ~! [X0] : ((l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) => (v1_subset_1(X1,u1_struct_0(X0)) <=> ~r2_hidden(k3_yellow_0(X0),X1))))),
% 2.50/0.99    inference(pure_predicate_removal,[],[f11])).
% 2.50/0.99  
% 2.50/0.99  fof(f13,plain,(
% 2.50/0.99    ~! [X0] : ((l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) => (v1_subset_1(X1,u1_struct_0(X0)) <=> ~r2_hidden(k3_yellow_0(X0),X1))))),
% 2.50/0.99    inference(pure_predicate_removal,[],[f12])).
% 2.50/0.99  
% 2.50/0.99  fof(f14,plain,(
% 2.50/0.99    ~! [X0] : ((l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) => (v1_subset_1(X1,u1_struct_0(X0)) <=> ~r2_hidden(k3_yellow_0(X0),X1))))),
% 2.50/0.99    inference(pure_predicate_removal,[],[f13])).
% 2.50/0.99  
% 2.50/0.99  fof(f28,plain,(
% 2.50/0.99    ? [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) <~> ~r2_hidden(k3_yellow_0(X0),X1)) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1))) & (l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0)))),
% 2.50/0.99    inference(ennf_transformation,[],[f14])).
% 2.50/0.99  
% 2.50/0.99  fof(f29,plain,(
% 2.50/0.99    ? [X0] : (? [X1] : ((v1_subset_1(X1,u1_struct_0(X0)) <~> ~r2_hidden(k3_yellow_0(X0),X1)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) & l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0))),
% 2.50/0.99    inference(flattening,[],[f28])).
% 2.50/0.99  
% 2.50/0.99  fof(f42,plain,(
% 2.50/0.99    ? [X0] : (? [X1] : (((r2_hidden(k3_yellow_0(X0),X1) | ~v1_subset_1(X1,u1_struct_0(X0))) & (~r2_hidden(k3_yellow_0(X0),X1) | v1_subset_1(X1,u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) & l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0))),
% 2.50/0.99    inference(nnf_transformation,[],[f29])).
% 2.50/0.99  
% 2.50/0.99  fof(f43,plain,(
% 2.50/0.99    ? [X0] : (? [X1] : ((r2_hidden(k3_yellow_0(X0),X1) | ~v1_subset_1(X1,u1_struct_0(X0))) & (~r2_hidden(k3_yellow_0(X0),X1) | v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) & l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0))),
% 2.50/0.99    inference(flattening,[],[f42])).
% 2.50/0.99  
% 2.50/0.99  fof(f45,plain,(
% 2.50/0.99    ( ! [X0] : (? [X1] : ((r2_hidden(k3_yellow_0(X0),X1) | ~v1_subset_1(X1,u1_struct_0(X0))) & (~r2_hidden(k3_yellow_0(X0),X1) | v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) => ((r2_hidden(k3_yellow_0(X0),sK5) | ~v1_subset_1(sK5,u1_struct_0(X0))) & (~r2_hidden(k3_yellow_0(X0),sK5) | v1_subset_1(sK5,u1_struct_0(X0))) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(sK5,X0) & ~v1_xboole_0(sK5))) )),
% 2.50/0.99    introduced(choice_axiom,[])).
% 2.50/0.99  
% 2.50/0.99  fof(f44,plain,(
% 2.50/0.99    ? [X0] : (? [X1] : ((r2_hidden(k3_yellow_0(X0),X1) | ~v1_subset_1(X1,u1_struct_0(X0))) & (~r2_hidden(k3_yellow_0(X0),X1) | v1_subset_1(X1,u1_struct_0(X0))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v13_waybel_0(X1,X0) & ~v1_xboole_0(X1)) & l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : ((r2_hidden(k3_yellow_0(sK4),X1) | ~v1_subset_1(X1,u1_struct_0(sK4))) & (~r2_hidden(k3_yellow_0(sK4),X1) | v1_subset_1(X1,u1_struct_0(sK4))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) & v13_waybel_0(X1,sK4) & ~v1_xboole_0(X1)) & l1_orders_2(sK4) & v1_yellow_0(sK4) & v5_orders_2(sK4) & ~v2_struct_0(sK4))),
% 2.50/0.99    introduced(choice_axiom,[])).
% 2.50/0.99  
% 2.50/0.99  fof(f46,plain,(
% 2.50/0.99    ((r2_hidden(k3_yellow_0(sK4),sK5) | ~v1_subset_1(sK5,u1_struct_0(sK4))) & (~r2_hidden(k3_yellow_0(sK4),sK5) | v1_subset_1(sK5,u1_struct_0(sK4))) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) & v13_waybel_0(sK5,sK4) & ~v1_xboole_0(sK5)) & l1_orders_2(sK4) & v1_yellow_0(sK4) & v5_orders_2(sK4) & ~v2_struct_0(sK4)),
% 2.50/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f43,f45,f44])).
% 2.50/0.99  
% 2.50/0.99  fof(f73,plain,(
% 2.50/0.99    r2_hidden(k3_yellow_0(sK4),sK5) | ~v1_subset_1(sK5,u1_struct_0(sK4))),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f71,plain,(
% 2.50/0.99    m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f8,axiom,(
% 2.50/0.99    ! [X0] : (l1_orders_2(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v13_waybel_0(X1,X0) <=> ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => ! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => ((r1_orders_2(X0,X2,X3) & r2_hidden(X2,X1)) => r2_hidden(X3,X1)))))))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f25,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : ((v13_waybel_0(X1,X0) <=> ! [X2] : (! [X3] : ((r2_hidden(X3,X1) | (~r1_orders_2(X0,X2,X3) | ~r2_hidden(X2,X1))) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 2.50/0.99    inference(ennf_transformation,[],[f8])).
% 2.50/0.99  
% 2.50/0.99  fof(f26,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : ((v13_waybel_0(X1,X0) <=> ! [X2] : (! [X3] : (r2_hidden(X3,X1) | ~r1_orders_2(X0,X2,X3) | ~r2_hidden(X2,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 2.50/0.99    inference(flattening,[],[f25])).
% 2.50/0.99  
% 2.50/0.99  fof(f36,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : (((v13_waybel_0(X1,X0) | ? [X2] : (? [X3] : (~r2_hidden(X3,X1) & r1_orders_2(X0,X2,X3) & r2_hidden(X2,X1) & m1_subset_1(X3,u1_struct_0(X0))) & m1_subset_1(X2,u1_struct_0(X0)))) & (! [X2] : (! [X3] : (r2_hidden(X3,X1) | ~r1_orders_2(X0,X2,X3) | ~r2_hidden(X2,X1) | ~m1_subset_1(X3,u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~v13_waybel_0(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 2.50/0.99    inference(nnf_transformation,[],[f26])).
% 2.50/0.99  
% 2.50/0.99  fof(f37,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : (((v13_waybel_0(X1,X0) | ? [X2] : (? [X3] : (~r2_hidden(X3,X1) & r1_orders_2(X0,X2,X3) & r2_hidden(X2,X1) & m1_subset_1(X3,u1_struct_0(X0))) & m1_subset_1(X2,u1_struct_0(X0)))) & (! [X4] : (! [X5] : (r2_hidden(X5,X1) | ~r1_orders_2(X0,X4,X5) | ~r2_hidden(X4,X1) | ~m1_subset_1(X5,u1_struct_0(X0))) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~v13_waybel_0(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 2.50/0.99    inference(rectify,[],[f36])).
% 2.50/0.99  
% 2.50/0.99  fof(f39,plain,(
% 2.50/0.99    ( ! [X2] : (! [X1,X0] : (? [X3] : (~r2_hidden(X3,X1) & r1_orders_2(X0,X2,X3) & r2_hidden(X2,X1) & m1_subset_1(X3,u1_struct_0(X0))) => (~r2_hidden(sK3(X0,X1),X1) & r1_orders_2(X0,X2,sK3(X0,X1)) & r2_hidden(X2,X1) & m1_subset_1(sK3(X0,X1),u1_struct_0(X0))))) )),
% 2.50/0.99    introduced(choice_axiom,[])).
% 2.50/0.99  
% 2.50/0.99  fof(f38,plain,(
% 2.50/0.99    ! [X1,X0] : (? [X2] : (? [X3] : (~r2_hidden(X3,X1) & r1_orders_2(X0,X2,X3) & r2_hidden(X2,X1) & m1_subset_1(X3,u1_struct_0(X0))) & m1_subset_1(X2,u1_struct_0(X0))) => (? [X3] : (~r2_hidden(X3,X1) & r1_orders_2(X0,sK2(X0,X1),X3) & r2_hidden(sK2(X0,X1),X1) & m1_subset_1(X3,u1_struct_0(X0))) & m1_subset_1(sK2(X0,X1),u1_struct_0(X0))))),
% 2.50/0.99    introduced(choice_axiom,[])).
% 2.50/0.99  
% 2.50/0.99  fof(f40,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : (((v13_waybel_0(X1,X0) | ((~r2_hidden(sK3(X0,X1),X1) & r1_orders_2(X0,sK2(X0,X1),sK3(X0,X1)) & r2_hidden(sK2(X0,X1),X1) & m1_subset_1(sK3(X0,X1),u1_struct_0(X0))) & m1_subset_1(sK2(X0,X1),u1_struct_0(X0)))) & (! [X4] : (! [X5] : (r2_hidden(X5,X1) | ~r1_orders_2(X0,X4,X5) | ~r2_hidden(X4,X1) | ~m1_subset_1(X5,u1_struct_0(X0))) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~v13_waybel_0(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0))),
% 2.50/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f37,f39,f38])).
% 2.50/0.99  
% 2.50/0.99  fof(f57,plain,(
% 2.50/0.99    ( ! [X4,X0,X5,X1] : (r2_hidden(X5,X1) | ~r1_orders_2(X0,X4,X5) | ~r2_hidden(X4,X1) | ~m1_subset_1(X5,u1_struct_0(X0)) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~v13_waybel_0(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0)) )),
% 2.50/0.99    inference(cnf_transformation,[],[f40])).
% 2.50/0.99  
% 2.50/0.99  fof(f7,axiom,(
% 2.50/0.99    ! [X0] : ((l1_orders_2(X0) & v1_yellow_0(X0) & v5_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => r1_orders_2(X0,k3_yellow_0(X0),X1)))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f23,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : (r1_orders_2(X0,k3_yellow_0(X0),X1) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v1_yellow_0(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)))),
% 2.50/0.99    inference(ennf_transformation,[],[f7])).
% 2.50/0.99  
% 2.50/0.99  fof(f24,plain,(
% 2.50/0.99    ! [X0] : (! [X1] : (r1_orders_2(X0,k3_yellow_0(X0),X1) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v1_yellow_0(X0) | ~v5_orders_2(X0) | v2_struct_0(X0))),
% 2.50/0.99    inference(flattening,[],[f23])).
% 2.50/0.99  
% 2.50/0.99  fof(f56,plain,(
% 2.50/0.99    ( ! [X0,X1] : (r1_orders_2(X0,k3_yellow_0(X0),X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v1_yellow_0(X0) | ~v5_orders_2(X0) | v2_struct_0(X0)) )),
% 2.50/0.99    inference(cnf_transformation,[],[f24])).
% 2.50/0.99  
% 2.50/0.99  fof(f67,plain,(
% 2.50/0.99    v1_yellow_0(sK4)),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f65,plain,(
% 2.50/0.99    ~v2_struct_0(sK4)),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f66,plain,(
% 2.50/0.99    v5_orders_2(sK4)),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f68,plain,(
% 2.50/0.99    l1_orders_2(sK4)),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f6,axiom,(
% 2.50/0.99    ! [X0] : (l1_orders_2(X0) => m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0)))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f22,plain,(
% 2.50/0.99    ! [X0] : (m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0)) | ~l1_orders_2(X0))),
% 2.50/0.99    inference(ennf_transformation,[],[f6])).
% 2.50/0.99  
% 2.50/0.99  fof(f55,plain,(
% 2.50/0.99    ( ! [X0] : (m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 2.50/0.99    inference(cnf_transformation,[],[f22])).
% 2.50/0.99  
% 2.50/0.99  fof(f70,plain,(
% 2.50/0.99    v13_waybel_0(sK5,sK4)),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f3,axiom,(
% 2.50/0.99    ! [X0] : ? [X1] : (~v1_subset_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f34,plain,(
% 2.50/0.99    ! [X0] : (? [X1] : (~v1_subset_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (~v1_subset_1(sK1(X0),X0) & m1_subset_1(sK1(X0),k1_zfmisc_1(X0))))),
% 2.50/0.99    introduced(choice_axiom,[])).
% 2.50/0.99  
% 2.50/0.99  fof(f35,plain,(
% 2.50/0.99    ! [X0] : (~v1_subset_1(sK1(X0),X0) & m1_subset_1(sK1(X0),k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f3,f34])).
% 2.50/0.99  
% 2.50/0.99  fof(f52,plain,(
% 2.50/0.99    ( ! [X0] : (~v1_subset_1(sK1(X0),X0)) )),
% 2.50/0.99    inference(cnf_transformation,[],[f35])).
% 2.50/0.99  
% 2.50/0.99  fof(f72,plain,(
% 2.50/0.99    ~r2_hidden(k3_yellow_0(sK4),sK5) | v1_subset_1(sK5,u1_struct_0(sK4))),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f51,plain,(
% 2.50/0.99    ( ! [X0] : (m1_subset_1(sK1(X0),k1_zfmisc_1(X0))) )),
% 2.50/0.99    inference(cnf_transformation,[],[f35])).
% 2.50/0.99  
% 2.50/0.99  fof(f4,axiom,(
% 2.50/0.99    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f18,plain,(
% 2.50/0.99    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 2.50/0.99    inference(ennf_transformation,[],[f4])).
% 2.50/0.99  
% 2.50/0.99  fof(f19,plain,(
% 2.50/0.99    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 2.50/0.99    inference(flattening,[],[f18])).
% 2.50/0.99  
% 2.50/0.99  fof(f53,plain,(
% 2.50/0.99    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 2.50/0.99    inference(cnf_transformation,[],[f19])).
% 2.50/0.99  
% 2.50/0.99  fof(f69,plain,(
% 2.50/0.99    ~v1_xboole_0(sK5)),
% 2.50/0.99    inference(cnf_transformation,[],[f46])).
% 2.50/0.99  
% 2.50/0.99  fof(f1,axiom,(
% 2.50/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.50/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.50/0.99  
% 2.50/0.99  fof(f15,plain,(
% 2.50/0.99    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.50/0.99    inference(ennf_transformation,[],[f1])).
% 2.50/0.99  
% 2.50/0.99  fof(f47,plain,(
% 2.50/0.99    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.50/0.99    inference(cnf_transformation,[],[f15])).
% 2.50/0.99  
% 2.50/0.99  fof(f50,plain,(
% 2.50/0.99    ( ! [X2,X0,X1] : (X1 = X2 | ~r2_hidden(sK0(X0,X1,X2),X2) | ~r2_hidden(sK0(X0,X1,X2),X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.50/0.99    inference(cnf_transformation,[],[f33])).
% 2.50/0.99  
% 2.50/0.99  cnf(c_3,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.50/0.99      | m1_subset_1(sK0(X1,X0,X2),X1)
% 2.50/0.99      | X0 = X2 ),
% 2.50/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1117,plain,
% 2.50/0.99      ( X0 = X1
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
% 2.50/0.99      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
% 2.50/0.99      | m1_subset_1(sK0(X2,X0,X1),X2) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_16,plain,
% 2.50/0.99      ( v1_subset_1(X0,X1)
% 2.50/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | X0 = X1 ),
% 2.50/0.99      inference(cnf_transformation,[],[f64]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_18,negated_conjecture,
% 2.50/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) ),
% 2.50/0.99      inference(cnf_transformation,[],[f73]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_200,plain,
% 2.50/0.99      ( ~ v1_subset_1(sK5,u1_struct_0(sK4))
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) ),
% 2.50/0.99      inference(prop_impl,[status(thm)],[c_18]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_416,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5)
% 2.50/0.99      | X1 = X0
% 2.50/0.99      | u1_struct_0(sK4) != X1
% 2.50/0.99      | sK5 != X0 ),
% 2.50/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_200]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_417,plain,
% 2.50/0.99      ( ~ m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5)
% 2.50/0.99      | u1_struct_0(sK4) = sK5 ),
% 2.50/0.99      inference(unflattening,[status(thm)],[c_416]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_20,negated_conjecture,
% 2.50/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) ),
% 2.50/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_419,plain,
% 2.50/0.99      ( r2_hidden(k3_yellow_0(sK4),sK5) | u1_struct_0(sK4) = sK5 ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_417,c_20]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1110,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = sK5
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_419]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1114,plain,
% 2.50/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_15,plain,
% 2.50/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 2.50/0.99      | ~ v13_waybel_0(X3,X0)
% 2.50/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.50/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.50/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
% 2.50/0.99      | ~ r2_hidden(X1,X3)
% 2.50/0.99      | r2_hidden(X2,X3)
% 2.50/0.99      | ~ l1_orders_2(X0) ),
% 2.50/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_9,plain,
% 2.50/0.99      ( r1_orders_2(X0,k3_yellow_0(X0),X1)
% 2.50/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.50/0.99      | v2_struct_0(X0)
% 2.50/0.99      | ~ v5_orders_2(X0)
% 2.50/0.99      | ~ v1_yellow_0(X0)
% 2.50/0.99      | ~ l1_orders_2(X0) ),
% 2.50/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_24,negated_conjecture,
% 2.50/0.99      ( v1_yellow_0(sK4) ),
% 2.50/0.99      inference(cnf_transformation,[],[f67]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_371,plain,
% 2.50/0.99      ( r1_orders_2(X0,k3_yellow_0(X0),X1)
% 2.50/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.50/0.99      | v2_struct_0(X0)
% 2.50/0.99      | ~ v5_orders_2(X0)
% 2.50/0.99      | ~ l1_orders_2(X0)
% 2.50/0.99      | sK4 != X0 ),
% 2.50/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_24]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_372,plain,
% 2.50/0.99      ( r1_orders_2(sK4,k3_yellow_0(sK4),X0)
% 2.50/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.50/0.99      | v2_struct_0(sK4)
% 2.50/0.99      | ~ v5_orders_2(sK4)
% 2.50/0.99      | ~ l1_orders_2(sK4) ),
% 2.50/0.99      inference(unflattening,[status(thm)],[c_371]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_26,negated_conjecture,
% 2.50/0.99      ( ~ v2_struct_0(sK4) ),
% 2.50/0.99      inference(cnf_transformation,[],[f65]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_25,negated_conjecture,
% 2.50/0.99      ( v5_orders_2(sK4) ),
% 2.50/0.99      inference(cnf_transformation,[],[f66]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_23,negated_conjecture,
% 2.50/0.99      ( l1_orders_2(sK4) ),
% 2.50/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_376,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.50/0.99      | r1_orders_2(sK4,k3_yellow_0(sK4),X0) ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_372,c_26,c_25,c_23]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_377,plain,
% 2.50/0.99      ( r1_orders_2(sK4,k3_yellow_0(sK4),X0)
% 2.50/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4)) ),
% 2.50/0.99      inference(renaming,[status(thm)],[c_376]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_484,plain,
% 2.50/0.99      ( ~ v13_waybel_0(X0,X1)
% 2.50/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.50/0.99      | ~ m1_subset_1(X3,u1_struct_0(X1))
% 2.50/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK4))
% 2.50/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.50/0.99      | ~ r2_hidden(X2,X0)
% 2.50/0.99      | r2_hidden(X3,X0)
% 2.50/0.99      | ~ l1_orders_2(X1)
% 2.50/0.99      | X4 != X3
% 2.50/0.99      | k3_yellow_0(sK4) != X2
% 2.50/0.99      | sK4 != X1 ),
% 2.50/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_377]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_485,plain,
% 2.50/0.99      ( ~ v13_waybel_0(X0,sK4)
% 2.50/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.50/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
% 2.50/0.99      | r2_hidden(X1,X0)
% 2.50/0.99      | ~ r2_hidden(k3_yellow_0(sK4),X0)
% 2.50/0.99      | ~ l1_orders_2(sK4) ),
% 2.50/0.99      inference(unflattening,[status(thm)],[c_484]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_8,plain,
% 2.50/0.99      ( m1_subset_1(k3_yellow_0(X0),u1_struct_0(X0))
% 2.50/0.99      | ~ l1_orders_2(X0) ),
% 2.50/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_62,plain,
% 2.50/0.99      ( m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
% 2.50/0.99      | ~ l1_orders_2(sK4) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_8]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_489,plain,
% 2.50/0.99      ( ~ r2_hidden(k3_yellow_0(sK4),X0)
% 2.50/0.99      | r2_hidden(X1,X0)
% 2.50/0.99      | ~ v13_waybel_0(X0,sK4)
% 2.50/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.50/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_485,c_23,c_62]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_490,plain,
% 2.50/0.99      ( ~ v13_waybel_0(X0,sK4)
% 2.50/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK4))
% 2.50/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | r2_hidden(X1,X0)
% 2.50/0.99      | ~ r2_hidden(k3_yellow_0(sK4),X0) ),
% 2.50/0.99      inference(renaming,[status(thm)],[c_489]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1108,plain,
% 2.50/0.99      ( v13_waybel_0(X0,sK4) != iProver_top
% 2.50/0.99      | m1_subset_1(X1,u1_struct_0(sK4)) != iProver_top
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | r2_hidden(X1,X0) = iProver_top
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),X0) != iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_490]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1970,plain,
% 2.50/0.99      ( v13_waybel_0(sK5,sK4) != iProver_top
% 2.50/0.99      | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
% 2.50/0.99      | r2_hidden(X0,sK5) = iProver_top
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
% 2.50/0.99      inference(superposition,[status(thm)],[c_1114,c_1108]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_21,negated_conjecture,
% 2.50/0.99      ( v13_waybel_0(sK5,sK4) ),
% 2.50/0.99      inference(cnf_transformation,[],[f70]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_32,plain,
% 2.50/0.99      ( v13_waybel_0(sK5,sK4) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1999,plain,
% 2.50/0.99      ( m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
% 2.50/0.99      | r2_hidden(X0,sK5) = iProver_top
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_1970,c_32]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2170,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = sK5
% 2.50/0.99      | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
% 2.50/0.99      | r2_hidden(X0,sK5) = iProver_top ),
% 2.50/0.99      inference(superposition,[status(thm)],[c_1110,c_1999]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2666,plain,
% 2.50/0.99      ( X0 = X1
% 2.50/0.99      | u1_struct_0(sK4) = sK5
% 2.50/0.99      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(u1_struct_0(sK4),X1,X0),sK5) = iProver_top ),
% 2.50/0.99      inference(superposition,[status(thm)],[c_1117,c_2170]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_4,plain,
% 2.50/0.99      ( ~ v1_subset_1(sK1(X0),X0) ),
% 2.50/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_19,negated_conjecture,
% 2.50/0.99      ( v1_subset_1(sK5,u1_struct_0(sK4))
% 2.50/0.99      | ~ r2_hidden(k3_yellow_0(sK4),sK5) ),
% 2.50/0.99      inference(cnf_transformation,[],[f72]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_198,plain,
% 2.50/0.99      ( v1_subset_1(sK5,u1_struct_0(sK4))
% 2.50/0.99      | ~ r2_hidden(k3_yellow_0(sK4),sK5) ),
% 2.50/0.99      inference(prop_impl,[status(thm)],[c_19]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_404,plain,
% 2.50/0.99      ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
% 2.50/0.99      | u1_struct_0(sK4) != X0
% 2.50/0.99      | sK1(X0) != sK5 ),
% 2.50/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_198]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_405,plain,
% 2.50/0.99      ( ~ r2_hidden(k3_yellow_0(sK4),sK5)
% 2.50/0.99      | sK1(u1_struct_0(sK4)) != sK5 ),
% 2.50/0.99      inference(unflattening,[status(thm)],[c_404]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1111,plain,
% 2.50/0.99      ( sK1(u1_struct_0(sK4)) != sK5
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_405]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_393,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | X1 != X2
% 2.50/0.99      | X1 = X0
% 2.50/0.99      | sK1(X2) != X0 ),
% 2.50/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_16]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_394,plain,
% 2.50/0.99      ( ~ m1_subset_1(sK1(X0),k1_zfmisc_1(X0)) | X0 = sK1(X0) ),
% 2.50/0.99      inference(unflattening,[status(thm)],[c_393]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_5,plain,
% 2.50/0.99      ( m1_subset_1(sK1(X0),k1_zfmisc_1(X0)) ),
% 2.50/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_398,plain,
% 2.50/0.99      ( X0 = sK1(X0) ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_394,c_5]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1140,plain,
% 2.50/0.99      ( u1_struct_0(sK4) != sK5
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) != iProver_top ),
% 2.50/0.99      inference(demodulation,[status(thm)],[c_1111,c_398]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_775,plain,
% 2.50/0.99      ( X0 != X1 | k3_yellow_0(X0) = k3_yellow_0(X1) ),
% 2.50/0.99      theory(equality) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_784,plain,
% 2.50/0.99      ( k3_yellow_0(sK4) = k3_yellow_0(sK4) | sK4 != sK4 ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_775]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_769,plain,( X0 = X0 ),theory(equality) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_790,plain,
% 2.50/0.99      ( sK4 = sK4 ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_769]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1238,plain,
% 2.50/0.99      ( ~ r2_hidden(k3_yellow_0(sK4),sK5) | u1_struct_0(sK4) != sK5 ),
% 2.50/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_1140]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1428,plain,
% 2.50/0.99      ( sK5 = sK5 ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_769]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_770,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1382,plain,
% 2.50/0.99      ( u1_struct_0(sK4) != X0 | sK5 != X0 | sK5 = u1_struct_0(sK4) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_770]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1654,plain,
% 2.50/0.99      ( u1_struct_0(sK4) != sK5 | sK5 = u1_struct_0(sK4) | sK5 != sK5 ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_1382]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_773,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.50/0.99      theory(equality) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1340,plain,
% 2.50/0.99      ( m1_subset_1(X0,X1)
% 2.50/0.99      | ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
% 2.50/0.99      | X1 != u1_struct_0(sK4)
% 2.50/0.99      | X0 != k3_yellow_0(sK4) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_773]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1882,plain,
% 2.50/0.99      ( m1_subset_1(X0,sK5)
% 2.50/0.99      | ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
% 2.50/0.99      | X0 != k3_yellow_0(sK4)
% 2.50/0.99      | sK5 != u1_struct_0(sK4) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_1340]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2048,plain,
% 2.50/0.99      ( ~ m1_subset_1(k3_yellow_0(sK4),u1_struct_0(sK4))
% 2.50/0.99      | m1_subset_1(k3_yellow_0(sK4),sK5)
% 2.50/0.99      | k3_yellow_0(sK4) != k3_yellow_0(sK4)
% 2.50/0.99      | sK5 != u1_struct_0(sK4) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_1882]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_6,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.50/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_22,negated_conjecture,
% 2.50/0.99      ( ~ v1_xboole_0(sK5) ),
% 2.50/0.99      inference(cnf_transformation,[],[f69]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_356,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | sK5 != X1 ),
% 2.50/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_22]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_357,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,sK5) | r2_hidden(X0,sK5) ),
% 2.50/0.99      inference(unflattening,[status(thm)],[c_356]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2800,plain,
% 2.50/0.99      ( ~ m1_subset_1(k3_yellow_0(sK4),sK5)
% 2.50/0.99      | r2_hidden(k3_yellow_0(sK4),sK5) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_357]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2978,plain,
% 2.50/0.99      ( u1_struct_0(sK4) != sK5 ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_1140,c_23,c_62,c_784,c_790,c_1238,c_1428,c_1654,
% 2.50/0.99                 c_2048,c_2800]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_3111,plain,
% 2.50/0.99      ( X0 = X1
% 2.50/0.99      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(u1_struct_0(sK4),X1,X0),sK5) = iProver_top ),
% 2.50/0.99      inference(global_propositional_subsumption,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_2666,c_23,c_62,c_784,c_790,c_1238,c_1428,c_1654,
% 2.50/0.99                 c_2048,c_2800]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_3112,plain,
% 2.50/0.99      ( X0 = X1
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(u1_struct_0(sK4),X1,X0),sK5) = iProver_top ),
% 2.50/0.99      inference(renaming,[status(thm)],[c_3111]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_0,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | ~ r2_hidden(X2,X0)
% 2.50/0.99      | r2_hidden(X2,X1) ),
% 2.50/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1120,plain,
% 2.50/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.50/0.99      | r2_hidden(X2,X0) != iProver_top
% 2.50/0.99      | r2_hidden(X2,X1) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1716,plain,
% 2.50/0.99      ( r2_hidden(X0,u1_struct_0(sK4)) = iProver_top
% 2.50/0.99      | r2_hidden(X0,sK5) != iProver_top ),
% 2.50/0.99      inference(superposition,[status(thm)],[c_1114,c_1120]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1,plain,
% 2.50/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.50/0.99      | ~ r2_hidden(sK0(X1,X0,X2),X2)
% 2.50/0.99      | ~ r2_hidden(sK0(X1,X0,X2),X0)
% 2.50/0.99      | X0 = X2 ),
% 2.50/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1119,plain,
% 2.50/0.99      ( X0 = X1
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(X2)) != iProver_top
% 2.50/0.99      | m1_subset_1(X1,k1_zfmisc_1(X2)) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(X2,X0,X1),X1) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(X2,X0,X1),X0) != iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2244,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = X0
% 2.50/0.99      | m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.50/0.99      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(X1)) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(X1,X0,u1_struct_0(sK4)),X0) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(X1,X0,u1_struct_0(sK4)),sK5) != iProver_top ),
% 2.50/0.99      inference(superposition,[status(thm)],[c_1716,c_1119]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_3121,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = sK5
% 2.50/0.99      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | r2_hidden(sK0(u1_struct_0(sK4),sK5,u1_struct_0(sK4)),sK5) != iProver_top ),
% 2.50/0.99      inference(superposition,[status(thm)],[c_3112,c_2244]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_3126,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = sK5
% 2.50/0.99      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.50/0.99      | m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
% 2.50/0.99      inference(forward_subsumption_resolution,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_3121,c_3112]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1330,plain,
% 2.50/0.99      ( m1_subset_1(X0,X1)
% 2.50/0.99      | ~ m1_subset_1(sK1(X2),k1_zfmisc_1(X2))
% 2.50/0.99      | X0 != sK1(X2)
% 2.50/0.99      | X1 != k1_zfmisc_1(X2) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_773]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1638,plain,
% 2.50/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.50/0.99      | ~ m1_subset_1(sK1(X1),k1_zfmisc_1(X1))
% 2.50/0.99      | X0 != sK1(X1)
% 2.50/0.99      | k1_zfmisc_1(X1) != k1_zfmisc_1(X1) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_1330]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2487,plain,
% 2.50/0.99      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | ~ m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | X0 != sK1(u1_struct_0(sK4))
% 2.50/0.99      | k1_zfmisc_1(u1_struct_0(sK4)) != k1_zfmisc_1(u1_struct_0(sK4)) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_1638]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2722,plain,
% 2.50/0.99      ( m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | ~ m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.50/0.99      | u1_struct_0(sK4) != sK1(u1_struct_0(sK4))
% 2.50/0.99      | k1_zfmisc_1(u1_struct_0(sK4)) != k1_zfmisc_1(u1_struct_0(sK4)) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_2487]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2723,plain,
% 2.50/0.99      ( u1_struct_0(sK4) != sK1(u1_struct_0(sK4))
% 2.50/0.99      | k1_zfmisc_1(u1_struct_0(sK4)) != k1_zfmisc_1(u1_struct_0(sK4))
% 2.50/0.99      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
% 2.50/0.99      | m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_2722]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_772,plain,
% 2.50/0.99      ( X0 != X1 | k1_zfmisc_1(X0) = k1_zfmisc_1(X1) ),
% 2.50/0.99      theory(equality) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1509,plain,
% 2.50/0.99      ( X0 != u1_struct_0(sK4)
% 2.50/0.99      | k1_zfmisc_1(X0) = k1_zfmisc_1(u1_struct_0(sK4)) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_772]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_2102,plain,
% 2.50/0.99      ( u1_struct_0(sK4) != u1_struct_0(sK4)
% 2.50/0.99      | k1_zfmisc_1(u1_struct_0(sK4)) = k1_zfmisc_1(u1_struct_0(sK4)) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_1509]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1677,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = sK1(u1_struct_0(sK4)) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_398]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1295,plain,
% 2.50/0.99      ( m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4))) ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_5]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_1300,plain,
% 2.50/0.99      ( m1_subset_1(sK1(u1_struct_0(sK4)),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_1295]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_776,plain,
% 2.50/0.99      ( X0 != X1 | u1_struct_0(X0) = u1_struct_0(X1) ),
% 2.50/0.99      theory(equality) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_785,plain,
% 2.50/0.99      ( u1_struct_0(sK4) = u1_struct_0(sK4) | sK4 != sK4 ),
% 2.50/0.99      inference(instantiation,[status(thm)],[c_776]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(c_33,plain,
% 2.50/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 2.50/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.50/0.99  
% 2.50/0.99  cnf(contradiction,plain,
% 2.50/0.99      ( $false ),
% 2.50/0.99      inference(minisat,
% 2.50/0.99                [status(thm)],
% 2.50/0.99                [c_3126,c_2978,c_2723,c_2102,c_1677,c_1300,c_790,c_785,
% 2.50/0.99                 c_33]) ).
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.50/0.99  
% 2.50/0.99  ------                               Statistics
% 2.50/0.99  
% 2.50/0.99  ------ General
% 2.50/0.99  
% 2.50/0.99  abstr_ref_over_cycles:                  0
% 2.50/0.99  abstr_ref_under_cycles:                 0
% 2.50/0.99  gc_basic_clause_elim:                   0
% 2.50/0.99  forced_gc_time:                         0
% 2.50/0.99  parsing_time:                           0.013
% 2.50/0.99  unif_index_cands_time:                  0.
% 2.50/0.99  unif_index_add_time:                    0.
% 2.50/0.99  orderings_time:                         0.
% 2.50/0.99  out_proof_time:                         0.015
% 2.50/0.99  total_time:                             0.143
% 2.50/0.99  num_of_symbols:                         50
% 2.50/0.99  num_of_terms:                           2479
% 2.50/0.99  
% 2.50/0.99  ------ Preprocessing
% 2.50/0.99  
% 2.50/0.99  num_of_splits:                          0
% 2.50/0.99  num_of_split_atoms:                     0
% 2.50/0.99  num_of_reused_defs:                     0
% 2.50/0.99  num_eq_ax_congr_red:                    19
% 2.50/0.99  num_of_sem_filtered_clauses:            1
% 2.50/0.99  num_of_subtypes:                        0
% 2.50/0.99  monotx_restored_types:                  0
% 2.50/0.99  sat_num_of_epr_types:                   0
% 2.50/0.99  sat_num_of_non_cyclic_types:            0
% 2.50/0.99  sat_guarded_non_collapsed_types:        0
% 2.50/0.99  num_pure_diseq_elim:                    0
% 2.50/0.99  simp_replaced_by:                       0
% 2.50/0.99  res_preprocessed:                       110
% 2.50/0.99  prep_upred:                             0
% 2.50/0.99  prep_unflattend:                        22
% 2.50/0.99  smt_new_axioms:                         0
% 2.50/0.99  pred_elim_cands:                        3
% 2.50/0.99  pred_elim:                              7
% 2.50/0.99  pred_elim_cl:                           7
% 2.50/0.99  pred_elim_cycles:                       9
% 2.50/0.99  merged_defs:                            2
% 2.50/0.99  merged_defs_ncl:                        0
% 2.50/0.99  bin_hyper_res:                          2
% 2.50/0.99  prep_cycles:                            4
% 2.50/0.99  pred_elim_time:                         0.006
% 2.50/0.99  splitting_time:                         0.
% 2.50/0.99  sem_filter_time:                        0.
% 2.50/0.99  monotx_time:                            0.001
% 2.50/0.99  subtype_inf_time:                       0.
% 2.50/0.99  
% 2.50/0.99  ------ Problem properties
% 2.50/0.99  
% 2.50/0.99  clauses:                                20
% 2.50/0.99  conjectures:                            2
% 2.50/0.99  epr:                                    2
% 2.50/0.99  horn:                                   13
% 2.50/0.99  ground:                                 6
% 2.50/0.99  unary:                                  5
% 2.50/0.99  binary:                                 3
% 2.50/0.99  lits:                                   57
% 2.50/0.99  lits_eq:                                7
% 2.50/0.99  fd_pure:                                0
% 2.50/0.99  fd_pseudo:                              0
% 2.50/0.99  fd_cond:                                0
% 2.50/0.99  fd_pseudo_cond:                         3
% 2.50/0.99  ac_symbols:                             0
% 2.50/0.99  
% 2.50/0.99  ------ Propositional Solver
% 2.50/0.99  
% 2.50/0.99  prop_solver_calls:                      28
% 2.50/0.99  prop_fast_solver_calls:                 811
% 2.50/0.99  smt_solver_calls:                       0
% 2.50/0.99  smt_fast_solver_calls:                  0
% 2.50/0.99  prop_num_of_clauses:                    968
% 2.50/0.99  prop_preprocess_simplified:             3899
% 2.50/0.99  prop_fo_subsumed:                       14
% 2.50/0.99  prop_solver_time:                       0.
% 2.50/0.99  smt_solver_time:                        0.
% 2.50/0.99  smt_fast_solver_time:                   0.
% 2.50/0.99  prop_fast_solver_time:                  0.
% 2.50/0.99  prop_unsat_core_time:                   0.
% 2.50/0.99  
% 2.50/0.99  ------ QBF
% 2.50/0.99  
% 2.50/0.99  qbf_q_res:                              0
% 2.50/0.99  qbf_num_tautologies:                    0
% 2.50/0.99  qbf_prep_cycles:                        0
% 2.50/0.99  
% 2.50/0.99  ------ BMC1
% 2.50/0.99  
% 2.50/0.99  bmc1_current_bound:                     -1
% 2.50/0.99  bmc1_last_solved_bound:                 -1
% 2.50/0.99  bmc1_unsat_core_size:                   -1
% 2.50/0.99  bmc1_unsat_core_parents_size:           -1
% 2.50/0.99  bmc1_merge_next_fun:                    0
% 2.50/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.50/0.99  
% 2.50/0.99  ------ Instantiation
% 2.50/0.99  
% 2.50/0.99  inst_num_of_clauses:                    273
% 2.50/0.99  inst_num_in_passive:                    107
% 2.50/0.99  inst_num_in_active:                     159
% 2.50/0.99  inst_num_in_unprocessed:                7
% 2.50/0.99  inst_num_of_loops:                      180
% 2.50/0.99  inst_num_of_learning_restarts:          0
% 2.50/0.99  inst_num_moves_active_passive:          18
% 2.50/0.99  inst_lit_activity:                      0
% 2.50/0.99  inst_lit_activity_moves:                0
% 2.50/0.99  inst_num_tautologies:                   0
% 2.50/0.99  inst_num_prop_implied:                  0
% 2.50/0.99  inst_num_existing_simplified:           0
% 2.50/0.99  inst_num_eq_res_simplified:             0
% 2.50/0.99  inst_num_child_elim:                    0
% 2.50/0.99  inst_num_of_dismatching_blockings:      42
% 2.50/0.99  inst_num_of_non_proper_insts:           260
% 2.50/0.99  inst_num_of_duplicates:                 0
% 2.50/0.99  inst_inst_num_from_inst_to_res:         0
% 2.50/0.99  inst_dismatching_checking_time:         0.
% 2.50/0.99  
% 2.50/0.99  ------ Resolution
% 2.50/0.99  
% 2.50/0.99  res_num_of_clauses:                     0
% 2.50/0.99  res_num_in_passive:                     0
% 2.50/0.99  res_num_in_active:                      0
% 2.50/0.99  res_num_of_loops:                       114
% 2.50/0.99  res_forward_subset_subsumed:            36
% 2.50/0.99  res_backward_subset_subsumed:           0
% 2.50/0.99  res_forward_subsumed:                   0
% 2.50/0.99  res_backward_subsumed:                  0
% 2.50/0.99  res_forward_subsumption_resolution:     2
% 2.50/0.99  res_backward_subsumption_resolution:    0
% 2.50/0.99  res_clause_to_clause_subsumption:       232
% 2.50/0.99  res_orphan_elimination:                 0
% 2.50/0.99  res_tautology_del:                      29
% 2.50/0.99  res_num_eq_res_simplified:              0
% 2.50/0.99  res_num_sel_changes:                    0
% 2.50/0.99  res_moves_from_active_to_pass:          0
% 2.50/0.99  
% 2.50/0.99  ------ Superposition
% 2.50/0.99  
% 2.50/0.99  sup_time_total:                         0.
% 2.50/0.99  sup_time_generating:                    0.
% 2.50/0.99  sup_time_sim_full:                      0.
% 2.50/0.99  sup_time_sim_immed:                     0.
% 2.50/0.99  
% 2.50/0.99  sup_num_of_clauses:                     59
% 2.50/0.99  sup_num_in_active:                      36
% 2.50/0.99  sup_num_in_passive:                     23
% 2.50/0.99  sup_num_of_loops:                       35
% 2.50/0.99  sup_fw_superposition:                   39
% 2.50/0.99  sup_bw_superposition:                   18
% 2.50/0.99  sup_immediate_simplified:               8
% 2.50/0.99  sup_given_eliminated:                   0
% 2.50/0.99  comparisons_done:                       0
% 2.50/0.99  comparisons_avoided:                    0
% 2.50/0.99  
% 2.50/0.99  ------ Simplifications
% 2.50/0.99  
% 2.50/0.99  
% 2.50/0.99  sim_fw_subset_subsumed:                 4
% 2.50/0.99  sim_bw_subset_subsumed:                 0
% 2.50/0.99  sim_fw_subsumed:                        3
% 2.50/0.99  sim_bw_subsumed:                        0
% 2.50/0.99  sim_fw_subsumption_res:                 3
% 2.50/0.99  sim_bw_subsumption_res:                 0
% 2.50/0.99  sim_tautology_del:                      4
% 2.50/0.99  sim_eq_tautology_del:                   5
% 2.50/0.99  sim_eq_res_simp:                        0
% 2.50/0.99  sim_fw_demodulated:                     1
% 2.50/0.99  sim_bw_demodulated:                     0
% 2.50/0.99  sim_light_normalised:                   1
% 2.50/0.99  sim_joinable_taut:                      0
% 2.50/0.99  sim_joinable_simp:                      0
% 2.50/0.99  sim_ac_normalised:                      0
% 2.50/0.99  sim_smt_subsumption:                    0
% 2.50/0.99  
%------------------------------------------------------------------------------
