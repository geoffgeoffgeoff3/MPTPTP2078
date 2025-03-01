%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT1152+1.003 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n032.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:45:02 EST 2020

% Result     : Theorem 3.07s
% Output     : CNFRefutation 3.07s
% Verified   : 
% Statistics : Number of formulae       :  159 ( 472 expanded)
%              Number of clauses        :   88 ( 142 expanded)
%              Number of leaves         :   19 (  96 expanded)
%              Depth                    :   22
%              Number of atoms          :  566 (2276 expanded)
%              Number of equality atoms :  122 ( 381 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f40])).

fof(f42,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f41,f42])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
        & l1_orders_2(X1)
        & v5_orders_2(X1)
        & v4_orders_2(X1)
        & v3_orders_2(X1)
        & ~ v2_struct_0(X1) )
     => ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
      <=> ? [X3] :
            ( ! [X4] :
                ( m1_subset_1(X4,u1_struct_0(X1))
               => ( r2_hidden(X4,X2)
                 => r2_orders_2(X1,X3,X4) ) )
            & X0 = X3
            & m1_subset_1(X3,u1_struct_0(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
      <=> ? [X3] :
            ( ! [X4] :
                ( r2_orders_2(X1,X3,X4)
                | ~ r2_hidden(X4,X2)
                | ~ m1_subset_1(X4,u1_struct_0(X1)) )
            & X0 = X3
            & m1_subset_1(X3,u1_struct_0(X1)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
      <=> ? [X3] :
            ( ! [X4] :
                ( r2_orders_2(X1,X3,X4)
                | ~ r2_hidden(X4,X2)
                | ~ m1_subset_1(X4,u1_struct_0(X1)) )
            & X0 = X3
            & m1_subset_1(X3,u1_struct_0(X1)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(flattening,[],[f26])).

fof(f46,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
          | ! [X3] :
              ( ? [X4] :
                  ( ~ r2_orders_2(X1,X3,X4)
                  & r2_hidden(X4,X2)
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              | X0 != X3
              | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
        & ( ? [X3] :
              ( ! [X4] :
                  ( r2_orders_2(X1,X3,X4)
                  | ~ r2_hidden(X4,X2)
                  | ~ m1_subset_1(X4,u1_struct_0(X1)) )
              & X0 = X3
              & m1_subset_1(X3,u1_struct_0(X1)) )
          | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f47,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
          | ! [X3] :
              ( ? [X4] :
                  ( ~ r2_orders_2(X1,X3,X4)
                  & r2_hidden(X4,X2)
                  & m1_subset_1(X4,u1_struct_0(X1)) )
              | X0 != X3
              | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
        & ( ? [X5] :
              ( ! [X6] :
                  ( r2_orders_2(X1,X5,X6)
                  | ~ r2_hidden(X6,X2)
                  | ~ m1_subset_1(X6,u1_struct_0(X1)) )
              & X0 = X5
              & m1_subset_1(X5,u1_struct_0(X1)) )
          | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(rectify,[],[f46])).

fof(f49,plain,(
    ! [X2,X1,X0] :
      ( ? [X5] :
          ( ! [X6] :
              ( r2_orders_2(X1,X5,X6)
              | ~ r2_hidden(X6,X2)
              | ~ m1_subset_1(X6,u1_struct_0(X1)) )
          & X0 = X5
          & m1_subset_1(X5,u1_struct_0(X1)) )
     => ( ! [X6] :
            ( r2_orders_2(X1,sK3(X0,X1,X2),X6)
            | ~ r2_hidden(X6,X2)
            | ~ m1_subset_1(X6,u1_struct_0(X1)) )
        & sK3(X0,X1,X2) = X0
        & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,(
    ! [X3,X2,X1] :
      ( ? [X4] :
          ( ~ r2_orders_2(X1,X3,X4)
          & r2_hidden(X4,X2)
          & m1_subset_1(X4,u1_struct_0(X1)) )
     => ( ~ r2_orders_2(X1,X3,sK2(X1,X2,X3))
        & r2_hidden(sK2(X1,X2,X3),X2)
        & m1_subset_1(sK2(X1,X2,X3),u1_struct_0(X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,(
    ! [X0,X1,X2] :
      ( ( ( r2_hidden(X0,a_2_1_orders_2(X1,X2))
          | ! [X3] :
              ( ( ~ r2_orders_2(X1,X3,sK2(X1,X2,X3))
                & r2_hidden(sK2(X1,X2,X3),X2)
                & m1_subset_1(sK2(X1,X2,X3),u1_struct_0(X1)) )
              | X0 != X3
              | ~ m1_subset_1(X3,u1_struct_0(X1)) ) )
        & ( ( ! [X6] :
                ( r2_orders_2(X1,sK3(X0,X1,X2),X6)
                | ~ r2_hidden(X6,X2)
                | ~ m1_subset_1(X6,u1_struct_0(X1)) )
            & sK3(X0,X1,X2) = X0
            & m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1)) )
          | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2)) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f47,f49,f48])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1))
      | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f17,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => k2_orders_2(X0,k2_struct_0(X0)) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => k2_orders_2(X0,k2_struct_0(X0)) = k1_xboole_0 ) ),
    inference(negated_conjecture,[],[f17])).

fof(f36,plain,(
    ? [X0] :
      ( k2_orders_2(X0,k2_struct_0(X0)) != k1_xboole_0
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f37,plain,(
    ? [X0] :
      ( k2_orders_2(X0,k2_struct_0(X0)) != k1_xboole_0
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f36])).

fof(f52,plain,
    ( ? [X0] :
        ( k2_orders_2(X0,k2_struct_0(X0)) != k1_xboole_0
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( k2_orders_2(sK4,k2_struct_0(sK4)) != k1_xboole_0
      & l1_orders_2(sK4)
      & v5_orders_2(sK4)
      & v4_orders_2(sK4)
      & v3_orders_2(sK4)
      & ~ v2_struct_0(sK4) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( k2_orders_2(sK4,k2_struct_0(sK4)) != k1_xboole_0
    & l1_orders_2(sK4)
    & v5_orders_2(sK4)
    & v4_orders_2(sK4)
    & v3_orders_2(sK4)
    & ~ v2_struct_0(sK4) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f37,f52])).

fof(f83,plain,(
    v5_orders_2(sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f80,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f81,plain,(
    v3_orders_2(sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f82,plain,(
    v4_orders_2(sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f84,plain,(
    l1_orders_2(sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f31,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f30])).

fof(f73,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_orders_2(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f62,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f65,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(k2_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => u1_struct_0(X0) = k2_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( u1_struct_0(X0) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f58,plain,(
    ! [X0] :
      ( u1_struct_0(X0) = k2_struct_0(X0)
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f68,plain,(
    ! [X6,X2,X0,X1] :
      ( r2_orders_2(X1,sK3(X0,X1,X2),X6)
      | ~ r2_hidden(X6,X2)
      | ~ m1_subset_1(X6,u1_struct_0(X1))
      | ~ r2_hidden(X0,a_2_1_orders_2(X1,X2))
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
      | ~ l1_orders_2(X1)
      | ~ v5_orders_2(X1)
      | ~ v4_orders_2(X1)
      | ~ v3_orders_2(X1)
      | v2_struct_0(X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f32])).

fof(f77,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_orders_2(X0) )
     => ~ r2_orders_2(X0,X1,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ~ r2_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ~ r2_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f28])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f76,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f51])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f38])).

fof(f54,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f87,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f54])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k2_orders_2(X0,X1) = a_2_1_orders_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f6,axiom,(
    v1_xboole_0(o_0_0_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    v1_xboole_0(o_0_0_xboole_0) ),
    inference(cnf_transformation,[],[f6])).

fof(f16,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f79,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f12,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f74,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f12])).

fof(f56,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f85,plain,(
    k2_orders_2(sK4,k2_struct_0(sK4)) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_6,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1956,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_17,plain,
    ( ~ r2_hidden(X0,a_2_1_orders_2(X1,X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_28,negated_conjecture,
    ( v5_orders_2(sK4) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_701,plain,
    ( ~ r2_hidden(X0,a_2_1_orders_2(X1,X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK3(X0,X1,X2),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ l1_orders_2(X1)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_28])).

cnf(c_702,plain,
    ( ~ r2_hidden(X0,a_2_1_orders_2(sK4,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4)))
    | m1_subset_1(sK3(X0,sK4,X1),u1_struct_0(sK4))
    | v2_struct_0(sK4)
    | ~ v3_orders_2(sK4)
    | ~ v4_orders_2(sK4)
    | ~ l1_orders_2(sK4) ),
    inference(unflattening,[status(thm)],[c_701])).

cnf(c_31,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_30,negated_conjecture,
    ( v3_orders_2(sK4) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_29,negated_conjecture,
    ( v4_orders_2(sK4) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_27,negated_conjecture,
    ( l1_orders_2(sK4) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_706,plain,
    ( ~ r2_hidden(X0,a_2_1_orders_2(sK4,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4)))
    | m1_subset_1(sK3(X0,sK4,X1),u1_struct_0(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_702,c_31,c_30,c_29,c_27])).

cnf(c_1943,plain,
    ( r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK3(X0,sK4,X1),u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_706])).

cnf(c_19,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1952,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | m1_subset_1(X0,X1) != iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3841,plain,
    ( r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top
    | r2_hidden(sK3(X0,sK4,X1),u1_struct_0(sK4)) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1943,c_1952])).

cnf(c_8,plain,
    ( l1_struct_0(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_11,plain,
    ( ~ v1_xboole_0(k2_struct_0(X0))
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_414,plain,
    ( ~ v1_xboole_0(k2_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_orders_2(X0) ),
    inference(resolution,[status(thm)],[c_8,c_11])).

cnf(c_840,plain,
    ( ~ v1_xboole_0(k2_struct_0(X0))
    | ~ l1_orders_2(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_414,c_31])).

cnf(c_841,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK4))
    | ~ l1_orders_2(sK4) ),
    inference(unflattening,[status(thm)],[c_840])).

cnf(c_80,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK4))
    | ~ l1_struct_0(sK4)
    | v2_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_87,plain,
    ( l1_struct_0(sK4)
    | ~ l1_orders_2(sK4) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_843,plain,
    ( ~ v1_xboole_0(k2_struct_0(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_841,c_31,c_27,c_80,c_87])).

cnf(c_1938,plain,
    ( v1_xboole_0(k2_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_843])).

cnf(c_4,plain,
    ( ~ l1_struct_0(X0)
    | k2_struct_0(X0) = u1_struct_0(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_428,plain,
    ( ~ l1_orders_2(X0)
    | k2_struct_0(X0) = u1_struct_0(X0) ),
    inference(resolution,[status(thm)],[c_8,c_4])).

cnf(c_853,plain,
    ( k2_struct_0(X0) = u1_struct_0(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_428,c_27])).

cnf(c_854,plain,
    ( k2_struct_0(sK4) = u1_struct_0(sK4) ),
    inference(unflattening,[status(thm)],[c_853])).

cnf(c_1968,plain,
    ( v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1938,c_854])).

cnf(c_4336,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(sK3(X0,sK4,X1),u1_struct_0(sK4)) = iProver_top
    | r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3841,c_1968])).

cnf(c_4337,plain,
    ( r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top
    | r2_hidden(sK3(X0,sK4,X1),u1_struct_0(sK4)) = iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(renaming,[status(thm)],[c_4336])).

cnf(c_15,plain,
    ( r2_orders_2(X0,sK3(X1,X0,X2),X3)
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,a_2_1_orders_2(X0,X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_648,plain,
    ( r2_orders_2(X0,sK3(X1,X0,X2),X3)
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,a_2_1_orders_2(X0,X2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ l1_orders_2(X0)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_28])).

cnf(c_649,plain,
    ( r2_orders_2(sK4,sK3(X0,sK4,X1),X2)
    | ~ r2_hidden(X2,X1)
    | ~ r2_hidden(X0,a_2_1_orders_2(sK4,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X2,u1_struct_0(sK4))
    | v2_struct_0(sK4)
    | ~ v3_orders_2(sK4)
    | ~ v4_orders_2(sK4)
    | ~ l1_orders_2(sK4) ),
    inference(unflattening,[status(thm)],[c_648])).

cnf(c_653,plain,
    ( r2_orders_2(sK4,sK3(X0,sK4,X1),X2)
    | ~ r2_hidden(X2,X1)
    | ~ r2_hidden(X0,a_2_1_orders_2(sK4,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ m1_subset_1(X2,u1_struct_0(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_649,c_31,c_30,c_29,c_27])).

cnf(c_23,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_669,plain,
    ( r2_orders_2(sK4,sK3(X0,sK4,X1),X2)
    | ~ r2_hidden(X2,X1)
    | ~ r2_hidden(X0,a_2_1_orders_2(sK4,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_653,c_23])).

cnf(c_1945,plain,
    ( r2_orders_2(sK4,sK3(X0,sK4,X1),X2) = iProver_top
    | r2_hidden(X2,X1) != iProver_top
    | r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_669])).

cnf(c_18,plain,
    ( ~ r2_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_858,plain,
    ( ~ r2_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_27])).

cnf(c_859,plain,
    ( ~ r2_orders_2(sK4,X0,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK4))
    | ~ m1_subset_1(X0,u1_struct_0(sK4)) ),
    inference(unflattening,[status(thm)],[c_858])).

cnf(c_1341,plain,
    ( ~ r2_orders_2(sK4,X0,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_859])).

cnf(c_1936,plain,
    ( r2_orders_2(sK4,X0,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1341])).

cnf(c_1342,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_859])).

cnf(c_1340,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK4))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_859])).

cnf(c_1436,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK4))
    | ~ r2_orders_2(sK4,X0,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1341,c_1342,c_1340])).

cnf(c_1437,plain,
    ( ~ r2_orders_2(sK4,X0,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK4)) ),
    inference(renaming,[status(thm)],[c_1436])).

cnf(c_1438,plain,
    ( r2_orders_2(sK4,X0,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1437])).

cnf(c_2205,plain,
    ( m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top
    | r2_orders_2(sK4,X0,X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1936,c_1438])).

cnf(c_2206,plain,
    ( r2_orders_2(sK4,X0,X0) != iProver_top
    | m1_subset_1(X0,u1_struct_0(sK4)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2205])).

cnf(c_2249,plain,
    ( r2_orders_2(sK4,sK3(X0,sK4,X1),sK3(X0,sK4,X1)) != iProver_top
    | r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1943,c_2206])).

cnf(c_2833,plain,
    ( r2_hidden(X0,a_2_1_orders_2(sK4,X1)) != iProver_top
    | r2_hidden(sK3(X0,sK4,X1),X1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1945,c_2249])).

cnf(c_4346,plain,
    ( r2_hidden(X0,a_2_1_orders_2(sK4,u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_4337,c_2833])).

cnf(c_21,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_2216,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ r1_tarski(X0,u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_2324,plain,
    ( m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ r1_tarski(u1_struct_0(sK4),u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_2216])).

cnf(c_2326,plain,
    ( m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | r1_tarski(u1_struct_0(sK4),u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2324])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_2325,plain,
    ( r1_tarski(u1_struct_0(sK4),u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2328,plain,
    ( r1_tarski(u1_struct_0(sK4),u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2325])).

cnf(c_5989,plain,
    ( r2_hidden(X0,a_2_1_orders_2(sK4,u1_struct_0(sK4))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4346,c_2326,c_2328])).

cnf(c_1958,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1950,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | a_2_1_orders_2(X1,X0) = k2_orders_2(X1,X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_791,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ l1_orders_2(X1)
    | a_2_1_orders_2(X1,X0) = k2_orders_2(X1,X0)
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_28])).

cnf(c_792,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | v2_struct_0(sK4)
    | ~ v3_orders_2(sK4)
    | ~ v4_orders_2(sK4)
    | ~ l1_orders_2(sK4)
    | a_2_1_orders_2(sK4,X0) = k2_orders_2(sK4,X0) ),
    inference(unflattening,[status(thm)],[c_791])).

cnf(c_796,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4)))
    | a_2_1_orders_2(sK4,X0) = k2_orders_2(sK4,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_792,c_31,c_30,c_29,c_27])).

cnf(c_1939,plain,
    ( a_2_1_orders_2(sK4,X0) = k2_orders_2(sK4,X0)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_796])).

cnf(c_3025,plain,
    ( a_2_1_orders_2(sK4,X0) = k2_orders_2(sK4,X0)
    | r1_tarski(X0,u1_struct_0(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1950,c_1939])).

cnf(c_3115,plain,
    ( a_2_1_orders_2(sK4,u1_struct_0(sK4)) = k2_orders_2(sK4,u1_struct_0(sK4)) ),
    inference(superposition,[status(thm)],[c_1958,c_3025])).

cnf(c_5995,plain,
    ( r2_hidden(X0,k2_orders_2(sK4,u1_struct_0(sK4))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5989,c_3115])).

cnf(c_6000,plain,
    ( r1_tarski(k2_orders_2(sK4,u1_struct_0(sK4)),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1956,c_5995])).

cnf(c_9,plain,
    ( v1_xboole_0(o_0_0_xboole_0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1954,plain,
    ( v1_xboole_0(o_0_0_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_25,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1946,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_2859,plain,
    ( k1_xboole_0 = o_0_0_xboole_0 ),
    inference(superposition,[status(thm)],[c_1954,c_1946])).

cnf(c_20,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1951,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_5211,plain,
    ( r1_tarski(o_0_0_xboole_0,X0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2859,c_1951])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1959,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_5381,plain,
    ( o_0_0_xboole_0 = X0
    | r1_tarski(X0,o_0_0_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_5211,c_1959])).

cnf(c_7439,plain,
    ( k2_orders_2(sK4,u1_struct_0(sK4)) = o_0_0_xboole_0 ),
    inference(superposition,[status(thm)],[c_6000,c_5381])).

cnf(c_26,negated_conjecture,
    ( k2_orders_2(sK4,k2_struct_0(sK4)) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1977,plain,
    ( k2_orders_2(sK4,u1_struct_0(sK4)) != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_26,c_854])).

cnf(c_5212,plain,
    ( k2_orders_2(sK4,u1_struct_0(sK4)) != o_0_0_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2859,c_1977])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_7439,c_5212])).


%------------------------------------------------------------------------------
