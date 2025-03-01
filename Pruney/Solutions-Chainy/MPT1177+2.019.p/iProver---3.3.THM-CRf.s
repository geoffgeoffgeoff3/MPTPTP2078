%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:12:50 EST 2020

% Result     : Theorem 1.86s
% Output     : CNFRefutation 1.86s
% Verified   : 
% Statistics : Number of formulae       :  201 (4312 expanded)
%              Number of clauses        :  130 ( 780 expanded)
%              Number of leaves         :   19 (1421 expanded)
%              Depth                    :   26
%              Number of atoms          :  999 (41702 expanded)
%              Number of equality atoms :  216 ( 879 expanded)
%              Maximal formula depth    :   16 (   6 average)
%              Maximal clause size      :   24 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( r2_xboole_0(X0,X1)
    <=> ( X0 != X1
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( r2_xboole_0(X0,X1)
        | X0 = X1
        | ~ r1_tarski(X0,X1) )
      & ( ( X0 != X1
          & r1_tarski(X0,X1) )
        | ~ r2_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( r2_xboole_0(X0,X1)
        | X0 = X1
        | ~ r1_tarski(X0,X1) )
      & ( ( X0 != X1
          & r1_tarski(X0,X1) )
        | ~ r2_xboole_0(X0,X1) ) ) ),
    inference(flattening,[],[f36])).

fof(f50,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | ~ r2_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f79,plain,(
    ! [X1] : ~ r2_xboole_0(X1,X1) ),
    inference(equality_resolution,[],[f50])).

fof(f15,conjecture,(
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
                 => ( r2_xboole_0(X2,X3)
                  <=> m1_orders_2(X2,X0,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
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
                   => ( r2_xboole_0(X2,X3)
                    <=> m1_orders_2(X2,X0,X3) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f34,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( r2_xboole_0(X2,X3)
                  <~> m1_orders_2(X2,X0,X3) )
                  & m2_orders_2(X3,X0,X1) )
              & m2_orders_2(X2,X0,X1) )
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f35,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( r2_xboole_0(X2,X3)
                  <~> m1_orders_2(X2,X0,X3) )
                  & m2_orders_2(X3,X0,X1) )
              & m2_orders_2(X2,X0,X1) )
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f34])).

fof(f42,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ~ m1_orders_2(X2,X0,X3)
                    | ~ r2_xboole_0(X2,X3) )
                  & ( m1_orders_2(X2,X0,X3)
                    | r2_xboole_0(X2,X3) )
                  & m2_orders_2(X3,X0,X1) )
              & m2_orders_2(X2,X0,X1) )
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f43,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ~ m1_orders_2(X2,X0,X3)
                    | ~ r2_xboole_0(X2,X3) )
                  & ( m1_orders_2(X2,X0,X3)
                    | r2_xboole_0(X2,X3) )
                  & m2_orders_2(X3,X0,X1) )
              & m2_orders_2(X2,X0,X1) )
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f42])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ( ~ m1_orders_2(X2,X0,X3)
            | ~ r2_xboole_0(X2,X3) )
          & ( m1_orders_2(X2,X0,X3)
            | r2_xboole_0(X2,X3) )
          & m2_orders_2(X3,X0,X1) )
     => ( ( ~ m1_orders_2(X2,X0,sK3)
          | ~ r2_xboole_0(X2,sK3) )
        & ( m1_orders_2(X2,X0,sK3)
          | r2_xboole_0(X2,sK3) )
        & m2_orders_2(sK3,X0,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ( ~ m1_orders_2(X2,X0,X3)
                | ~ r2_xboole_0(X2,X3) )
              & ( m1_orders_2(X2,X0,X3)
                | r2_xboole_0(X2,X3) )
              & m2_orders_2(X3,X0,X1) )
          & m2_orders_2(X2,X0,X1) )
     => ( ? [X3] :
            ( ( ~ m1_orders_2(sK2,X0,X3)
              | ~ r2_xboole_0(sK2,X3) )
            & ( m1_orders_2(sK2,X0,X3)
              | r2_xboole_0(sK2,X3) )
            & m2_orders_2(X3,X0,X1) )
        & m2_orders_2(sK2,X0,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ~ m1_orders_2(X2,X0,X3)
                    | ~ r2_xboole_0(X2,X3) )
                  & ( m1_orders_2(X2,X0,X3)
                    | r2_xboole_0(X2,X3) )
                  & m2_orders_2(X3,X0,X1) )
              & m2_orders_2(X2,X0,X1) )
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ( ~ m1_orders_2(X2,X0,X3)
                  | ~ r2_xboole_0(X2,X3) )
                & ( m1_orders_2(X2,X0,X3)
                  | r2_xboole_0(X2,X3) )
                & m2_orders_2(X3,X0,sK1) )
            & m2_orders_2(X2,X0,sK1) )
        & m1_orders_1(sK1,k1_orders_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ( ~ m1_orders_2(X2,X0,X3)
                      | ~ r2_xboole_0(X2,X3) )
                    & ( m1_orders_2(X2,X0,X3)
                      | r2_xboole_0(X2,X3) )
                    & m2_orders_2(X3,X0,X1) )
                & m2_orders_2(X2,X0,X1) )
            & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ~ m1_orders_2(X2,sK0,X3)
                    | ~ r2_xboole_0(X2,X3) )
                  & ( m1_orders_2(X2,sK0,X3)
                    | r2_xboole_0(X2,X3) )
                  & m2_orders_2(X3,sK0,X1) )
              & m2_orders_2(X2,sK0,X1) )
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(sK0))) )
      & l1_orders_2(sK0)
      & v5_orders_2(sK0)
      & v4_orders_2(sK0)
      & v3_orders_2(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,
    ( ( ~ m1_orders_2(sK2,sK0,sK3)
      | ~ r2_xboole_0(sK2,sK3) )
    & ( m1_orders_2(sK2,sK0,sK3)
      | r2_xboole_0(sK2,sK3) )
    & m2_orders_2(sK3,sK0,sK1)
    & m2_orders_2(sK2,sK0,sK1)
    & m1_orders_1(sK1,k1_orders_1(u1_struct_0(sK0)))
    & l1_orders_2(sK0)
    & v5_orders_2(sK0)
    & v4_orders_2(sK0)
    & v3_orders_2(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f43,f47,f46,f45,f44])).

fof(f77,plain,
    ( m1_orders_2(sK2,sK0,sK3)
    | r2_xboole_0(sK2,sK3) ),
    inference(cnf_transformation,[],[f48])).

fof(f75,plain,(
    m2_orders_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f76,plain,(
    m2_orders_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f48])).

fof(f14,axiom,(
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
                 => ( X2 != X3
                   => ( m1_orders_2(X2,X0,X3)
                    <=> ~ m1_orders_2(X3,X0,X2) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( m1_orders_2(X2,X0,X3)
                  <=> ~ m1_orders_2(X3,X0,X2) )
                  | X2 = X3
                  | ~ m2_orders_2(X3,X0,X1) )
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( m1_orders_2(X2,X0,X3)
                  <=> ~ m1_orders_2(X3,X0,X2) )
                  | X2 = X3
                  | ~ m2_orders_2(X3,X0,X1) )
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( m1_orders_2(X2,X0,X3)
                      | m1_orders_2(X3,X0,X2) )
                    & ( ~ m1_orders_2(X3,X0,X2)
                      | ~ m1_orders_2(X2,X0,X3) ) )
                  | X2 = X3
                  | ~ m2_orders_2(X3,X0,X1) )
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f33])).

fof(f68,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_orders_2(X2,X0,X3)
      | m1_orders_2(X3,X0,X2)
      | X2 = X3
      | ~ m2_orders_2(X3,X0,X1)
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f74,plain,(
    m1_orders_1(sK1,k1_orders_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f48])).

fof(f73,plain,(
    l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f69,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f70,plain,(
    v3_orders_2(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f71,plain,(
    v4_orders_2(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f72,plain,(
    v5_orders_2(sK0) ),
    inference(cnf_transformation,[],[f48])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r2_xboole_0(X0,X1)
      | X0 = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f78,plain,
    ( ~ m1_orders_2(sK2,sK0,sK3)
    | ~ r2_xboole_0(sK2,sK3) ),
    inference(cnf_transformation,[],[f48])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X2] :
          ( m2_orders_2(X2,X0,X1)
         => ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(X2,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X2] :
          ( m2_orders_2(X2,X0,X1)
         => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m2_orders_2(X2,X0,X1) )
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m2_orders_2(X2,X0,X1) )
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_orders_2(X2,X0,X1)
             => r1_tarski(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_tarski(X2,X1)
              | ~ m1_orders_2(X2,X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_tarski(X2,X1)
              | ~ m1_orders_2(X2,X0,X1) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X2,X1)
      | ~ m1_orders_2(X2,X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f67,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ m1_orders_2(X3,X0,X2)
      | ~ m1_orders_2(X2,X0,X3)
      | X2 = X3
      | ~ m2_orders_2(X3,X0,X1)
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f38])).

fof(f55,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X2] :
          ( m1_orders_2(X2,X0,X1)
         => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_orders_2(X2,X0,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_orders_2(X2,X0,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_orders_2(X2,X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f81,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f53])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ~ ( m1_orders_2(X2,X0,X1)
                  & m1_orders_2(X1,X0,X2)
                  & k1_xboole_0 != X1 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ m1_orders_2(X2,X0,X1)
              | ~ m1_orders_2(X1,X0,X2)
              | k1_xboole_0 = X1
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ m1_orders_2(X2,X0,X1)
              | ~ m1_orders_2(X1,X0,X2)
              | k1_xboole_0 = X1
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_orders_2(X2,X0,X1)
      | ~ m1_orders_2(X1,X0,X2)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f5,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f8,axiom,(
    ! [X0,X1] :
      ~ ( r1_tarski(X1,X0)
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f61,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f13,axiom,(
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
             => r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2)
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2)
              | ~ m2_orders_2(X2,X0,X1) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2)
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f6,axiom,(
    ! [X0,X1] :
      ~ ( r2_xboole_0(X1,X0)
        & r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ~ r2_xboole_0(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f59,plain,(
    ! [X0,X1] :
      ( ~ r2_xboole_0(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

cnf(c_1,plain,
    ( ~ r2_xboole_0(X0,X0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_21,negated_conjecture,
    ( m1_orders_2(sK2,sK0,sK3)
    | r2_xboole_0(sK2,sK3) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_226,plain,
    ( r2_xboole_0(sK2,sK3)
    | m1_orders_2(sK2,sK0,sK3) ),
    inference(prop_impl,[status(thm)],[c_21])).

cnf(c_227,plain,
    ( m1_orders_2(sK2,sK0,sK3)
    | r2_xboole_0(sK2,sK3) ),
    inference(renaming,[status(thm)],[c_226])).

cnf(c_464,plain,
    ( m1_orders_2(sK2,sK0,sK3)
    | sK3 != X0
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_227])).

cnf(c_465,plain,
    ( m1_orders_2(sK2,sK0,sK3)
    | sK2 != sK3 ),
    inference(unflattening,[status(thm)],[c_464])).

cnf(c_1590,plain,
    ( sK2 != sK3
    | m1_orders_2(sK2,sK0,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_465])).

cnf(c_23,negated_conjecture,
    ( m2_orders_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1594,plain,
    ( m2_orders_2(sK2,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_22,negated_conjecture,
    ( m2_orders_2(sK3,sK0,sK1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1595,plain,
    ( m2_orders_2(sK3,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_18,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(X3,X1,X2)
    | m1_orders_2(X3,X1,X0)
    | m1_orders_2(X0,X1,X3)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X3 = X0 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_24,negated_conjecture,
    ( m1_orders_1(sK1,k1_orders_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_601,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(X3,X1,X2)
    | m1_orders_2(X3,X1,X0)
    | m1_orders_2(X0,X1,X3)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X3 = X0
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK1 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_24])).

cnf(c_602,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | ~ m2_orders_2(X2,X1,sK1)
    | m1_orders_2(X2,X1,X0)
    | m1_orders_2(X0,X1,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X2 = X0
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_601])).

cnf(c_25,negated_conjecture,
    ( l1_orders_2(sK0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_711,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | ~ m2_orders_2(X2,X1,sK1)
    | m1_orders_2(X0,X1,X2)
    | m1_orders_2(X2,X1,X0)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | X2 = X0
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_602,c_25])).

cnf(c_712,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ m2_orders_2(X1,sK0,sK1)
    | m1_orders_2(X1,sK0,X0)
    | m1_orders_2(X0,sK0,X1)
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0)
    | X1 = X0
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_711])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_28,negated_conjecture,
    ( v3_orders_2(sK0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_27,negated_conjecture,
    ( v4_orders_2(sK0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_26,negated_conjecture,
    ( v5_orders_2(sK0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_716,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ m2_orders_2(X1,sK0,sK1)
    | m1_orders_2(X1,sK0,X0)
    | m1_orders_2(X0,sK0,X1)
    | X1 = X0
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_712,c_29,c_28,c_27,c_26])).

cnf(c_917,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ m2_orders_2(X1,sK0,sK1)
    | m1_orders_2(X1,sK0,X0)
    | m1_orders_2(X0,sK0,X1)
    | X1 = X0 ),
    inference(equality_resolution_simp,[status(thm)],[c_716])).

cnf(c_1581,plain,
    ( X0 = X1
    | m2_orders_2(X1,sK0,sK1) != iProver_top
    | m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X0,sK0,X1) = iProver_top
    | m1_orders_2(X1,sK0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_917])).

cnf(c_2108,plain,
    ( sK3 = X0
    | m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X0,sK0,sK3) = iProver_top
    | m1_orders_2(sK3,sK0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1595,c_1581])).

cnf(c_2420,plain,
    ( sK3 = sK2
    | m1_orders_2(sK3,sK0,sK2) = iProver_top
    | m1_orders_2(sK2,sK0,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1594,c_2108])).

cnf(c_37,plain,
    ( m2_orders_2(sK3,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | r2_xboole_0(X0,X1)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_20,negated_conjecture,
    ( ~ m1_orders_2(sK2,sK0,sK3)
    | ~ r2_xboole_0(sK2,sK3) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_224,plain,
    ( ~ r2_xboole_0(sK2,sK3)
    | ~ m1_orders_2(sK2,sK0,sK3) ),
    inference(prop_impl,[status(thm)],[c_20])).

cnf(c_225,plain,
    ( ~ m1_orders_2(sK2,sK0,sK3)
    | ~ r2_xboole_0(sK2,sK3) ),
    inference(renaming,[status(thm)],[c_224])).

cnf(c_439,plain,
    ( ~ m1_orders_2(sK2,sK0,sK3)
    | ~ r1_tarski(X0,X1)
    | X1 = X0
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_225])).

cnf(c_440,plain,
    ( ~ m1_orders_2(sK2,sK0,sK3)
    | ~ r1_tarski(sK2,sK3)
    | sK3 = sK2 ),
    inference(unflattening,[status(thm)],[c_439])).

cnf(c_441,plain,
    ( sK3 = sK2
    | m1_orders_2(sK2,sK0,sK3) != iProver_top
    | r1_tarski(sK2,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_440])).

cnf(c_14,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_640,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK1 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_24])).

cnf(c_641,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_640])).

cnf(c_690,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_641,c_25])).

cnf(c_691,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0)
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_690])).

cnf(c_695,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_691,c_29,c_28,c_27,c_26])).

cnf(c_921,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(equality_resolution_simp,[status(thm)],[c_695])).

cnf(c_1755,plain,
    ( ~ m2_orders_2(sK3,sK0,sK1)
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_921])).

cnf(c_1756,plain,
    ( m2_orders_2(sK3,sK0,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1755])).

cnf(c_15,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(X0,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_816,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(X0,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_25])).

cnf(c_817,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(X0,X1)
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0) ),
    inference(unflattening,[status(thm)],[c_816])).

cnf(c_819,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_817,c_29,c_28,c_27,c_26])).

cnf(c_1761,plain,
    ( ~ m1_orders_2(sK2,sK0,sK3)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_819])).

cnf(c_1762,plain,
    ( m1_orders_2(sK2,sK0,sK3) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1761])).

cnf(c_2475,plain,
    ( m1_orders_2(sK3,sK0,sK2) = iProver_top
    | sK3 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2420,c_37,c_441,c_1756,c_1762])).

cnf(c_2476,plain,
    ( sK3 = sK2
    | m1_orders_2(sK3,sK0,sK2) = iProver_top ),
    inference(renaming,[status(thm)],[c_2475])).

cnf(c_19,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(X3,X1,X2)
    | ~ m1_orders_2(X3,X1,X0)
    | ~ m1_orders_2(X0,X1,X3)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X3 = X0 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_562,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(X3,X1,X2)
    | ~ m1_orders_2(X3,X1,X0)
    | ~ m1_orders_2(X0,X1,X3)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X3 = X0
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK1 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_24])).

cnf(c_563,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | ~ m2_orders_2(X2,X1,sK1)
    | ~ m1_orders_2(X2,X1,X0)
    | ~ m1_orders_2(X0,X1,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X2 = X0
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_562])).

cnf(c_741,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | ~ m2_orders_2(X2,X1,sK1)
    | ~ m1_orders_2(X0,X1,X2)
    | ~ m1_orders_2(X2,X1,X0)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | X2 = X0
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_563,c_25])).

cnf(c_742,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ m2_orders_2(X1,sK0,sK1)
    | ~ m1_orders_2(X1,sK0,X0)
    | ~ m1_orders_2(X0,sK0,X1)
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0)
    | X1 = X0
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_741])).

cnf(c_746,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ m2_orders_2(X1,sK0,sK1)
    | ~ m1_orders_2(X1,sK0,X0)
    | ~ m1_orders_2(X0,sK0,X1)
    | X1 = X0
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_742,c_29,c_28,c_27,c_26])).

cnf(c_913,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ m2_orders_2(X1,sK0,sK1)
    | ~ m1_orders_2(X1,sK0,X0)
    | ~ m1_orders_2(X0,sK0,X1)
    | X1 = X0 ),
    inference(equality_resolution_simp,[status(thm)],[c_746])).

cnf(c_1582,plain,
    ( X0 = X1
    | m2_orders_2(X1,sK0,sK1) != iProver_top
    | m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X1,sK0,X0) != iProver_top
    | m1_orders_2(X0,sK0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_913])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_81,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_821,plain,
    ( m1_orders_2(X0,sK0,X1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_819])).

cnf(c_1580,plain,
    ( m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_921])).

cnf(c_13,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_833,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_25])).

cnf(c_834,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0) ),
    inference(unflattening,[status(thm)],[c_833])).

cnf(c_836,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_834,c_29,c_28,c_27,c_26])).

cnf(c_1584,plain,
    ( m1_orders_2(X0,sK0,X1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_836])).

cnf(c_1819,plain,
    ( m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X1,sK0,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1580,c_1584])).

cnf(c_1585,plain,
    ( m1_orders_2(X0,sK0,X1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_819])).

cnf(c_1820,plain,
    ( m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X1,sK0,X0) != iProver_top
    | r1_tarski(X1,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1580,c_1585])).

cnf(c_2774,plain,
    ( X0 = X1
    | m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X1,sK0,X0) != iProver_top
    | m1_orders_2(X0,sK0,X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1582,c_81,c_821,c_1819,c_1820])).

cnf(c_2775,plain,
    ( X0 = X1
    | m2_orders_2(X0,sK0,sK1) != iProver_top
    | m1_orders_2(X0,sK0,X1) != iProver_top
    | m1_orders_2(X1,sK0,X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_2774])).

cnf(c_2783,plain,
    ( sK2 = X0
    | m1_orders_2(X0,sK0,sK2) != iProver_top
    | m1_orders_2(sK2,sK0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1594,c_2775])).

cnf(c_36,plain,
    ( m2_orders_2(sK2,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_6,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_78,plain,
    ( r1_tarski(sK0,sK0) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_82,plain,
    ( ~ r1_tarski(sK0,sK0)
    | sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1758,plain,
    ( ~ m2_orders_2(sK2,sK0,sK1)
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(instantiation,[status(thm)],[c_921])).

cnf(c_1759,plain,
    ( m2_orders_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1758])).

cnf(c_1081,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1916,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_1081])).

cnf(c_1088,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | m2_orders_2(X3,X4,X5)
    | X3 != X0
    | X4 != X1
    | X5 != X2 ),
    theory(equality)).

cnf(c_1784,plain,
    ( m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(sK2,sK0,sK1)
    | X2 != sK1
    | X1 != sK0
    | X0 != sK2 ),
    inference(instantiation,[status(thm)],[c_1088])).

cnf(c_2014,plain,
    ( m2_orders_2(X0,X1,sK1)
    | ~ m2_orders_2(sK2,sK0,sK1)
    | X1 != sK0
    | X0 != sK2
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_1784])).

cnf(c_2370,plain,
    ( ~ m2_orders_2(sK2,sK0,sK1)
    | m2_orders_2(k1_xboole_0,X0,sK1)
    | X0 != sK0
    | sK1 != sK1
    | k1_xboole_0 != sK2 ),
    inference(instantiation,[status(thm)],[c_2014])).

cnf(c_2372,plain,
    ( X0 != sK0
    | sK1 != sK1
    | k1_xboole_0 != sK2
    | m2_orders_2(sK2,sK0,sK1) != iProver_top
    | m2_orders_2(k1_xboole_0,X0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2370])).

cnf(c_2374,plain,
    ( sK1 != sK1
    | sK0 != sK0
    | k1_xboole_0 != sK2
    | m2_orders_2(sK2,sK0,sK1) != iProver_top
    | m2_orders_2(k1_xboole_0,sK0,sK1) = iProver_top ),
    inference(instantiation,[status(thm)],[c_2372])).

cnf(c_16,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_orders_2(X2,X1,X0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_164,plain,
    ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_orders_2(X2,X1,X0)
    | ~ m1_orders_2(X0,X1,X2)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_16,c_13])).

cnf(c_165,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_orders_2(X2,X1,X0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(renaming,[status(thm)],[c_164])).

cnf(c_792,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_orders_2(X2,X1,X0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK0 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_165,c_25])).

cnf(c_793,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_orders_2(X1,sK0,X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_792])).

cnf(c_797,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_orders_2(X1,sK0,X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_793,c_29,c_28,c_27,c_26])).

cnf(c_798,plain,
    ( ~ m1_orders_2(X0,sK0,X1)
    | ~ m1_orders_2(X1,sK0,X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_797])).

cnf(c_2371,plain,
    ( ~ m1_orders_2(X0,sK0,sK2)
    | ~ m1_orders_2(sK2,sK0,X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_798])).

cnf(c_2376,plain,
    ( k1_xboole_0 = sK2
    | m1_orders_2(X0,sK0,sK2) != iProver_top
    | m1_orders_2(sK2,sK0,X0) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2371])).

cnf(c_1599,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1598,plain,
    ( k4_xboole_0(X0,X1) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2298,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1599,c_1598])).

cnf(c_9,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1596,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2950,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2298,c_1596])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r1_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_17,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X0)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_382,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ r1_tarski(X3,X4)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | X0 != X3
    | k1_funct_1(X2,u1_struct_0(X1)) != X4 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_17])).

cnf(c_383,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ r1_tarski(X0,k1_funct_1(X2,u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(unflattening,[status(thm)],[c_382])).

cnf(c_532,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ r1_tarski(X0,k1_funct_1(X2,u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK1 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_383,c_24])).

cnf(c_533,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_532])).

cnf(c_771,plain,
    ( ~ m2_orders_2(X0,X1,sK1)
    | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_533,c_25])).

cnf(c_772,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0)))
    | v2_struct_0(sK0)
    | ~ v3_orders_2(sK0)
    | ~ v4_orders_2(sK0)
    | ~ v5_orders_2(sK0)
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(unflattening,[status(thm)],[c_771])).

cnf(c_776,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0)))
    | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_772,c_29,c_28,c_27,c_26])).

cnf(c_909,plain,
    ( ~ m2_orders_2(X0,sK0,sK1)
    | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0))) ),
    inference(equality_resolution_simp,[status(thm)],[c_776])).

cnf(c_1583,plain,
    ( m2_orders_2(X0,sK0,sK1) != iProver_top
    | r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_909])).

cnf(c_3040,plain,
    ( m2_orders_2(k1_xboole_0,sK0,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2950,c_1583])).

cnf(c_3123,plain,
    ( m1_orders_2(X0,sK0,sK2) != iProver_top
    | m1_orders_2(sK2,sK0,X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2783,c_36,c_78,c_82,c_1759,c_1916,c_2374,c_2376,c_3040])).

cnf(c_3131,plain,
    ( sK3 = sK2
    | m1_orders_2(sK2,sK0,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2476,c_3123])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_486,plain,
    ( m1_orders_2(sK2,sK0,sK3)
    | ~ r1_tarski(X0,X1)
    | sK3 != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_227])).

cnf(c_487,plain,
    ( m1_orders_2(sK2,sK0,sK3)
    | ~ r1_tarski(sK3,sK2) ),
    inference(unflattening,[status(thm)],[c_486])).

cnf(c_488,plain,
    ( m1_orders_2(sK2,sK0,sK3) = iProver_top
    | r1_tarski(sK3,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_487])).

cnf(c_1981,plain,
    ( m1_orders_2(X0,sK0,sK2) != iProver_top
    | r1_tarski(X0,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1594,c_1820])).

cnf(c_2481,plain,
    ( sK3 = sK2
    | r1_tarski(sK3,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_2476,c_1981])).

cnf(c_3177,plain,
    ( sK3 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3131,c_488,c_2481])).

cnf(c_3465,plain,
    ( sK2 != sK2
    | m1_orders_2(sK2,sK0,sK2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1590,c_3177])).

cnf(c_3466,plain,
    ( m1_orders_2(sK2,sK0,sK2) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3465])).

cnf(c_3472,plain,
    ( m1_orders_2(sK2,sK0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3466,c_3123])).

cnf(c_3476,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3472,c_3466])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n015.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:25:08 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.86/1.01  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.86/1.01  
% 1.86/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.86/1.01  
% 1.86/1.01  ------  iProver source info
% 1.86/1.01  
% 1.86/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.86/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.86/1.01  git: non_committed_changes: false
% 1.86/1.01  git: last_make_outside_of_git: false
% 1.86/1.01  
% 1.86/1.01  ------ 
% 1.86/1.01  
% 1.86/1.01  ------ Input Options
% 1.86/1.01  
% 1.86/1.01  --out_options                           all
% 1.86/1.01  --tptp_safe_out                         true
% 1.86/1.01  --problem_path                          ""
% 1.86/1.01  --include_path                          ""
% 1.86/1.01  --clausifier                            res/vclausify_rel
% 1.86/1.01  --clausifier_options                    --mode clausify
% 1.86/1.01  --stdin                                 false
% 1.86/1.01  --stats_out                             all
% 1.86/1.01  
% 1.86/1.01  ------ General Options
% 1.86/1.01  
% 1.86/1.01  --fof                                   false
% 1.86/1.01  --time_out_real                         305.
% 1.86/1.01  --time_out_virtual                      -1.
% 1.86/1.01  --symbol_type_check                     false
% 1.86/1.01  --clausify_out                          false
% 1.86/1.01  --sig_cnt_out                           false
% 1.86/1.01  --trig_cnt_out                          false
% 1.86/1.01  --trig_cnt_out_tolerance                1.
% 1.86/1.01  --trig_cnt_out_sk_spl                   false
% 1.86/1.01  --abstr_cl_out                          false
% 1.86/1.01  
% 1.86/1.01  ------ Global Options
% 1.86/1.01  
% 1.86/1.01  --schedule                              default
% 1.86/1.01  --add_important_lit                     false
% 1.86/1.01  --prop_solver_per_cl                    1000
% 1.86/1.01  --min_unsat_core                        false
% 1.86/1.01  --soft_assumptions                      false
% 1.86/1.01  --soft_lemma_size                       3
% 1.86/1.01  --prop_impl_unit_size                   0
% 1.86/1.01  --prop_impl_unit                        []
% 1.86/1.01  --share_sel_clauses                     true
% 1.86/1.01  --reset_solvers                         false
% 1.86/1.01  --bc_imp_inh                            [conj_cone]
% 1.86/1.01  --conj_cone_tolerance                   3.
% 1.86/1.01  --extra_neg_conj                        none
% 1.86/1.01  --large_theory_mode                     true
% 1.86/1.01  --prolific_symb_bound                   200
% 1.86/1.01  --lt_threshold                          2000
% 1.86/1.01  --clause_weak_htbl                      true
% 1.86/1.01  --gc_record_bc_elim                     false
% 1.86/1.01  
% 1.86/1.01  ------ Preprocessing Options
% 1.86/1.01  
% 1.86/1.01  --preprocessing_flag                    true
% 1.86/1.01  --time_out_prep_mult                    0.1
% 1.86/1.01  --splitting_mode                        input
% 1.86/1.01  --splitting_grd                         true
% 1.86/1.01  --splitting_cvd                         false
% 1.86/1.01  --splitting_cvd_svl                     false
% 1.86/1.01  --splitting_nvd                         32
% 1.86/1.01  --sub_typing                            true
% 1.86/1.01  --prep_gs_sim                           true
% 1.86/1.01  --prep_unflatten                        true
% 1.86/1.01  --prep_res_sim                          true
% 1.86/1.01  --prep_upred                            true
% 1.86/1.01  --prep_sem_filter                       exhaustive
% 1.86/1.01  --prep_sem_filter_out                   false
% 1.86/1.01  --pred_elim                             true
% 1.86/1.01  --res_sim_input                         true
% 1.86/1.01  --eq_ax_congr_red                       true
% 1.86/1.01  --pure_diseq_elim                       true
% 1.86/1.01  --brand_transform                       false
% 1.86/1.01  --non_eq_to_eq                          false
% 1.86/1.01  --prep_def_merge                        true
% 1.86/1.01  --prep_def_merge_prop_impl              false
% 1.86/1.01  --prep_def_merge_mbd                    true
% 1.86/1.01  --prep_def_merge_tr_red                 false
% 1.86/1.01  --prep_def_merge_tr_cl                  false
% 1.86/1.01  --smt_preprocessing                     true
% 1.86/1.01  --smt_ac_axioms                         fast
% 1.86/1.01  --preprocessed_out                      false
% 1.86/1.01  --preprocessed_stats                    false
% 1.86/1.01  
% 1.86/1.01  ------ Abstraction refinement Options
% 1.86/1.01  
% 1.86/1.01  --abstr_ref                             []
% 1.86/1.01  --abstr_ref_prep                        false
% 1.86/1.01  --abstr_ref_until_sat                   false
% 1.86/1.01  --abstr_ref_sig_restrict                funpre
% 1.86/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.86/1.01  --abstr_ref_under                       []
% 1.86/1.01  
% 1.86/1.01  ------ SAT Options
% 1.86/1.01  
% 1.86/1.01  --sat_mode                              false
% 1.86/1.01  --sat_fm_restart_options                ""
% 1.86/1.01  --sat_gr_def                            false
% 1.86/1.01  --sat_epr_types                         true
% 1.86/1.01  --sat_non_cyclic_types                  false
% 1.86/1.01  --sat_finite_models                     false
% 1.86/1.01  --sat_fm_lemmas                         false
% 1.86/1.01  --sat_fm_prep                           false
% 1.86/1.01  --sat_fm_uc_incr                        true
% 1.86/1.01  --sat_out_model                         small
% 1.86/1.01  --sat_out_clauses                       false
% 1.86/1.01  
% 1.86/1.01  ------ QBF Options
% 1.86/1.01  
% 1.86/1.01  --qbf_mode                              false
% 1.86/1.01  --qbf_elim_univ                         false
% 1.86/1.01  --qbf_dom_inst                          none
% 1.86/1.01  --qbf_dom_pre_inst                      false
% 1.86/1.01  --qbf_sk_in                             false
% 1.86/1.01  --qbf_pred_elim                         true
% 1.86/1.01  --qbf_split                             512
% 1.86/1.01  
% 1.86/1.01  ------ BMC1 Options
% 1.86/1.01  
% 1.86/1.01  --bmc1_incremental                      false
% 1.86/1.01  --bmc1_axioms                           reachable_all
% 1.86/1.01  --bmc1_min_bound                        0
% 1.86/1.01  --bmc1_max_bound                        -1
% 1.86/1.01  --bmc1_max_bound_default                -1
% 1.86/1.01  --bmc1_symbol_reachability              true
% 1.86/1.01  --bmc1_property_lemmas                  false
% 1.86/1.01  --bmc1_k_induction                      false
% 1.86/1.01  --bmc1_non_equiv_states                 false
% 1.86/1.01  --bmc1_deadlock                         false
% 1.86/1.01  --bmc1_ucm                              false
% 1.86/1.01  --bmc1_add_unsat_core                   none
% 1.86/1.01  --bmc1_unsat_core_children              false
% 1.86/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.86/1.01  --bmc1_out_stat                         full
% 1.86/1.01  --bmc1_ground_init                      false
% 1.86/1.01  --bmc1_pre_inst_next_state              false
% 1.86/1.01  --bmc1_pre_inst_state                   false
% 1.86/1.01  --bmc1_pre_inst_reach_state             false
% 1.86/1.01  --bmc1_out_unsat_core                   false
% 1.86/1.01  --bmc1_aig_witness_out                  false
% 1.86/1.01  --bmc1_verbose                          false
% 1.86/1.01  --bmc1_dump_clauses_tptp                false
% 1.86/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.86/1.01  --bmc1_dump_file                        -
% 1.86/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.86/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.86/1.01  --bmc1_ucm_extend_mode                  1
% 1.86/1.01  --bmc1_ucm_init_mode                    2
% 1.86/1.01  --bmc1_ucm_cone_mode                    none
% 1.86/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.86/1.01  --bmc1_ucm_relax_model                  4
% 1.86/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.86/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.86/1.01  --bmc1_ucm_layered_model                none
% 1.86/1.01  --bmc1_ucm_max_lemma_size               10
% 1.86/1.01  
% 1.86/1.01  ------ AIG Options
% 1.86/1.01  
% 1.86/1.01  --aig_mode                              false
% 1.86/1.01  
% 1.86/1.01  ------ Instantiation Options
% 1.86/1.01  
% 1.86/1.01  --instantiation_flag                    true
% 1.86/1.01  --inst_sos_flag                         false
% 1.86/1.01  --inst_sos_phase                        true
% 1.86/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.86/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.86/1.01  --inst_lit_sel_side                     num_symb
% 1.86/1.01  --inst_solver_per_active                1400
% 1.86/1.01  --inst_solver_calls_frac                1.
% 1.86/1.01  --inst_passive_queue_type               priority_queues
% 1.86/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.86/1.01  --inst_passive_queues_freq              [25;2]
% 1.86/1.01  --inst_dismatching                      true
% 1.86/1.01  --inst_eager_unprocessed_to_passive     true
% 1.86/1.01  --inst_prop_sim_given                   true
% 1.86/1.01  --inst_prop_sim_new                     false
% 1.86/1.01  --inst_subs_new                         false
% 1.86/1.01  --inst_eq_res_simp                      false
% 1.86/1.01  --inst_subs_given                       false
% 1.86/1.01  --inst_orphan_elimination               true
% 1.86/1.01  --inst_learning_loop_flag               true
% 1.86/1.01  --inst_learning_start                   3000
% 1.86/1.01  --inst_learning_factor                  2
% 1.86/1.01  --inst_start_prop_sim_after_learn       3
% 1.86/1.01  --inst_sel_renew                        solver
% 1.86/1.01  --inst_lit_activity_flag                true
% 1.86/1.01  --inst_restr_to_given                   false
% 1.86/1.01  --inst_activity_threshold               500
% 1.86/1.01  --inst_out_proof                        true
% 1.86/1.01  
% 1.86/1.01  ------ Resolution Options
% 1.86/1.01  
% 1.86/1.01  --resolution_flag                       true
% 1.86/1.01  --res_lit_sel                           adaptive
% 1.86/1.01  --res_lit_sel_side                      none
% 1.86/1.01  --res_ordering                          kbo
% 1.86/1.01  --res_to_prop_solver                    active
% 1.86/1.01  --res_prop_simpl_new                    false
% 1.86/1.01  --res_prop_simpl_given                  true
% 1.86/1.01  --res_passive_queue_type                priority_queues
% 1.86/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.86/1.01  --res_passive_queues_freq               [15;5]
% 1.86/1.01  --res_forward_subs                      full
% 1.86/1.01  --res_backward_subs                     full
% 1.86/1.01  --res_forward_subs_resolution           true
% 1.86/1.01  --res_backward_subs_resolution          true
% 1.86/1.01  --res_orphan_elimination                true
% 1.86/1.01  --res_time_limit                        2.
% 1.86/1.01  --res_out_proof                         true
% 1.86/1.01  
% 1.86/1.01  ------ Superposition Options
% 1.86/1.01  
% 1.86/1.01  --superposition_flag                    true
% 1.86/1.01  --sup_passive_queue_type                priority_queues
% 1.86/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.86/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.86/1.01  --demod_completeness_check              fast
% 1.86/1.01  --demod_use_ground                      true
% 1.86/1.01  --sup_to_prop_solver                    passive
% 1.86/1.01  --sup_prop_simpl_new                    true
% 1.86/1.01  --sup_prop_simpl_given                  true
% 1.86/1.01  --sup_fun_splitting                     false
% 1.86/1.01  --sup_smt_interval                      50000
% 1.86/1.01  
% 1.86/1.01  ------ Superposition Simplification Setup
% 1.86/1.01  
% 1.86/1.01  --sup_indices_passive                   []
% 1.86/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.86/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/1.01  --sup_full_bw                           [BwDemod]
% 1.86/1.01  --sup_immed_triv                        [TrivRules]
% 1.86/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.86/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/1.01  --sup_immed_bw_main                     []
% 1.86/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.86/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/1.01  
% 1.86/1.01  ------ Combination Options
% 1.86/1.01  
% 1.86/1.01  --comb_res_mult                         3
% 1.86/1.01  --comb_sup_mult                         2
% 1.86/1.01  --comb_inst_mult                        10
% 1.86/1.01  
% 1.86/1.01  ------ Debug Options
% 1.86/1.01  
% 1.86/1.01  --dbg_backtrace                         false
% 1.86/1.01  --dbg_dump_prop_clauses                 false
% 1.86/1.01  --dbg_dump_prop_clauses_file            -
% 1.86/1.01  --dbg_out_stat                          false
% 1.86/1.01  ------ Parsing...
% 1.86/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.86/1.01  
% 1.86/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 9 0s  sf_e  pe_s  pe_e 
% 1.86/1.01  
% 1.86/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.86/1.01  
% 1.86/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.86/1.01  ------ Proving...
% 1.86/1.01  ------ Problem Properties 
% 1.86/1.01  
% 1.86/1.01  
% 1.86/1.01  clauses                                 21
% 1.86/1.01  conjectures                             2
% 1.86/1.01  EPR                                     13
% 1.86/1.01  Horn                                    18
% 1.86/1.01  unary                                   4
% 1.86/1.01  binary                                  9
% 1.86/1.01  lits                                    51
% 1.86/1.01  lits eq                                 12
% 1.86/1.01  fd_pure                                 0
% 1.86/1.01  fd_pseudo                               0
% 1.86/1.01  fd_cond                                 3
% 1.86/1.01  fd_pseudo_cond                          3
% 1.86/1.01  AC symbols                              0
% 1.86/1.01  
% 1.86/1.01  ------ Schedule dynamic 5 is on 
% 1.86/1.01  
% 1.86/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.86/1.01  
% 1.86/1.01  
% 1.86/1.01  ------ 
% 1.86/1.01  Current options:
% 1.86/1.01  ------ 
% 1.86/1.01  
% 1.86/1.01  ------ Input Options
% 1.86/1.01  
% 1.86/1.01  --out_options                           all
% 1.86/1.01  --tptp_safe_out                         true
% 1.86/1.01  --problem_path                          ""
% 1.86/1.01  --include_path                          ""
% 1.86/1.01  --clausifier                            res/vclausify_rel
% 1.86/1.01  --clausifier_options                    --mode clausify
% 1.86/1.01  --stdin                                 false
% 1.86/1.01  --stats_out                             all
% 1.86/1.01  
% 1.86/1.01  ------ General Options
% 1.86/1.01  
% 1.86/1.01  --fof                                   false
% 1.86/1.01  --time_out_real                         305.
% 1.86/1.01  --time_out_virtual                      -1.
% 1.86/1.01  --symbol_type_check                     false
% 1.86/1.01  --clausify_out                          false
% 1.86/1.01  --sig_cnt_out                           false
% 1.86/1.01  --trig_cnt_out                          false
% 1.86/1.01  --trig_cnt_out_tolerance                1.
% 1.86/1.01  --trig_cnt_out_sk_spl                   false
% 1.86/1.01  --abstr_cl_out                          false
% 1.86/1.01  
% 1.86/1.01  ------ Global Options
% 1.86/1.01  
% 1.86/1.01  --schedule                              default
% 1.86/1.01  --add_important_lit                     false
% 1.86/1.01  --prop_solver_per_cl                    1000
% 1.86/1.01  --min_unsat_core                        false
% 1.86/1.01  --soft_assumptions                      false
% 1.86/1.01  --soft_lemma_size                       3
% 1.86/1.01  --prop_impl_unit_size                   0
% 1.86/1.01  --prop_impl_unit                        []
% 1.86/1.01  --share_sel_clauses                     true
% 1.86/1.01  --reset_solvers                         false
% 1.86/1.01  --bc_imp_inh                            [conj_cone]
% 1.86/1.01  --conj_cone_tolerance                   3.
% 1.86/1.01  --extra_neg_conj                        none
% 1.86/1.01  --large_theory_mode                     true
% 1.86/1.01  --prolific_symb_bound                   200
% 1.86/1.01  --lt_threshold                          2000
% 1.86/1.01  --clause_weak_htbl                      true
% 1.86/1.01  --gc_record_bc_elim                     false
% 1.86/1.01  
% 1.86/1.01  ------ Preprocessing Options
% 1.86/1.01  
% 1.86/1.01  --preprocessing_flag                    true
% 1.86/1.01  --time_out_prep_mult                    0.1
% 1.86/1.01  --splitting_mode                        input
% 1.86/1.01  --splitting_grd                         true
% 1.86/1.01  --splitting_cvd                         false
% 1.86/1.01  --splitting_cvd_svl                     false
% 1.86/1.01  --splitting_nvd                         32
% 1.86/1.01  --sub_typing                            true
% 1.86/1.01  --prep_gs_sim                           true
% 1.86/1.01  --prep_unflatten                        true
% 1.86/1.01  --prep_res_sim                          true
% 1.86/1.01  --prep_upred                            true
% 1.86/1.01  --prep_sem_filter                       exhaustive
% 1.86/1.01  --prep_sem_filter_out                   false
% 1.86/1.01  --pred_elim                             true
% 1.86/1.01  --res_sim_input                         true
% 1.86/1.01  --eq_ax_congr_red                       true
% 1.86/1.01  --pure_diseq_elim                       true
% 1.86/1.01  --brand_transform                       false
% 1.86/1.01  --non_eq_to_eq                          false
% 1.86/1.01  --prep_def_merge                        true
% 1.86/1.01  --prep_def_merge_prop_impl              false
% 1.86/1.01  --prep_def_merge_mbd                    true
% 1.86/1.01  --prep_def_merge_tr_red                 false
% 1.86/1.01  --prep_def_merge_tr_cl                  false
% 1.86/1.01  --smt_preprocessing                     true
% 1.86/1.01  --smt_ac_axioms                         fast
% 1.86/1.01  --preprocessed_out                      false
% 1.86/1.01  --preprocessed_stats                    false
% 1.86/1.01  
% 1.86/1.01  ------ Abstraction refinement Options
% 1.86/1.01  
% 1.86/1.01  --abstr_ref                             []
% 1.86/1.01  --abstr_ref_prep                        false
% 1.86/1.01  --abstr_ref_until_sat                   false
% 1.86/1.01  --abstr_ref_sig_restrict                funpre
% 1.86/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.86/1.01  --abstr_ref_under                       []
% 1.86/1.01  
% 1.86/1.01  ------ SAT Options
% 1.86/1.01  
% 1.86/1.01  --sat_mode                              false
% 1.86/1.01  --sat_fm_restart_options                ""
% 1.86/1.01  --sat_gr_def                            false
% 1.86/1.01  --sat_epr_types                         true
% 1.86/1.01  --sat_non_cyclic_types                  false
% 1.86/1.01  --sat_finite_models                     false
% 1.86/1.01  --sat_fm_lemmas                         false
% 1.86/1.01  --sat_fm_prep                           false
% 1.86/1.01  --sat_fm_uc_incr                        true
% 1.86/1.01  --sat_out_model                         small
% 1.86/1.01  --sat_out_clauses                       false
% 1.86/1.01  
% 1.86/1.01  ------ QBF Options
% 1.86/1.01  
% 1.86/1.01  --qbf_mode                              false
% 1.86/1.01  --qbf_elim_univ                         false
% 1.86/1.01  --qbf_dom_inst                          none
% 1.86/1.01  --qbf_dom_pre_inst                      false
% 1.86/1.01  --qbf_sk_in                             false
% 1.86/1.01  --qbf_pred_elim                         true
% 1.86/1.01  --qbf_split                             512
% 1.86/1.01  
% 1.86/1.01  ------ BMC1 Options
% 1.86/1.01  
% 1.86/1.01  --bmc1_incremental                      false
% 1.86/1.01  --bmc1_axioms                           reachable_all
% 1.86/1.01  --bmc1_min_bound                        0
% 1.86/1.01  --bmc1_max_bound                        -1
% 1.86/1.01  --bmc1_max_bound_default                -1
% 1.86/1.01  --bmc1_symbol_reachability              true
% 1.86/1.01  --bmc1_property_lemmas                  false
% 1.86/1.01  --bmc1_k_induction                      false
% 1.86/1.01  --bmc1_non_equiv_states                 false
% 1.86/1.01  --bmc1_deadlock                         false
% 1.86/1.01  --bmc1_ucm                              false
% 1.86/1.01  --bmc1_add_unsat_core                   none
% 1.86/1.01  --bmc1_unsat_core_children              false
% 1.86/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.86/1.01  --bmc1_out_stat                         full
% 1.86/1.01  --bmc1_ground_init                      false
% 1.86/1.01  --bmc1_pre_inst_next_state              false
% 1.86/1.01  --bmc1_pre_inst_state                   false
% 1.86/1.01  --bmc1_pre_inst_reach_state             false
% 1.86/1.01  --bmc1_out_unsat_core                   false
% 1.86/1.01  --bmc1_aig_witness_out                  false
% 1.86/1.01  --bmc1_verbose                          false
% 1.86/1.01  --bmc1_dump_clauses_tptp                false
% 1.86/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.86/1.01  --bmc1_dump_file                        -
% 1.86/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.86/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.86/1.01  --bmc1_ucm_extend_mode                  1
% 1.86/1.01  --bmc1_ucm_init_mode                    2
% 1.86/1.01  --bmc1_ucm_cone_mode                    none
% 1.86/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.86/1.01  --bmc1_ucm_relax_model                  4
% 1.86/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.86/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.86/1.01  --bmc1_ucm_layered_model                none
% 1.86/1.01  --bmc1_ucm_max_lemma_size               10
% 1.86/1.01  
% 1.86/1.01  ------ AIG Options
% 1.86/1.01  
% 1.86/1.01  --aig_mode                              false
% 1.86/1.01  
% 1.86/1.01  ------ Instantiation Options
% 1.86/1.01  
% 1.86/1.01  --instantiation_flag                    true
% 1.86/1.01  --inst_sos_flag                         false
% 1.86/1.01  --inst_sos_phase                        true
% 1.86/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.86/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.86/1.01  --inst_lit_sel_side                     none
% 1.86/1.01  --inst_solver_per_active                1400
% 1.86/1.01  --inst_solver_calls_frac                1.
% 1.86/1.01  --inst_passive_queue_type               priority_queues
% 1.86/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.86/1.01  --inst_passive_queues_freq              [25;2]
% 1.86/1.01  --inst_dismatching                      true
% 1.86/1.01  --inst_eager_unprocessed_to_passive     true
% 1.86/1.01  --inst_prop_sim_given                   true
% 1.86/1.01  --inst_prop_sim_new                     false
% 1.86/1.01  --inst_subs_new                         false
% 1.86/1.01  --inst_eq_res_simp                      false
% 1.86/1.01  --inst_subs_given                       false
% 1.86/1.01  --inst_orphan_elimination               true
% 1.86/1.01  --inst_learning_loop_flag               true
% 1.86/1.01  --inst_learning_start                   3000
% 1.86/1.01  --inst_learning_factor                  2
% 1.86/1.01  --inst_start_prop_sim_after_learn       3
% 1.86/1.01  --inst_sel_renew                        solver
% 1.86/1.01  --inst_lit_activity_flag                true
% 1.86/1.01  --inst_restr_to_given                   false
% 1.86/1.01  --inst_activity_threshold               500
% 1.86/1.01  --inst_out_proof                        true
% 1.86/1.01  
% 1.86/1.01  ------ Resolution Options
% 1.86/1.01  
% 1.86/1.01  --resolution_flag                       false
% 1.86/1.01  --res_lit_sel                           adaptive
% 1.86/1.01  --res_lit_sel_side                      none
% 1.86/1.01  --res_ordering                          kbo
% 1.86/1.01  --res_to_prop_solver                    active
% 1.86/1.01  --res_prop_simpl_new                    false
% 1.86/1.01  --res_prop_simpl_given                  true
% 1.86/1.01  --res_passive_queue_type                priority_queues
% 1.86/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.86/1.01  --res_passive_queues_freq               [15;5]
% 1.86/1.01  --res_forward_subs                      full
% 1.86/1.01  --res_backward_subs                     full
% 1.86/1.01  --res_forward_subs_resolution           true
% 1.86/1.01  --res_backward_subs_resolution          true
% 1.86/1.01  --res_orphan_elimination                true
% 1.86/1.01  --res_time_limit                        2.
% 1.86/1.01  --res_out_proof                         true
% 1.86/1.01  
% 1.86/1.01  ------ Superposition Options
% 1.86/1.01  
% 1.86/1.01  --superposition_flag                    true
% 1.86/1.01  --sup_passive_queue_type                priority_queues
% 1.86/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.86/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.86/1.01  --demod_completeness_check              fast
% 1.86/1.01  --demod_use_ground                      true
% 1.86/1.01  --sup_to_prop_solver                    passive
% 1.86/1.01  --sup_prop_simpl_new                    true
% 1.86/1.01  --sup_prop_simpl_given                  true
% 1.86/1.01  --sup_fun_splitting                     false
% 1.86/1.01  --sup_smt_interval                      50000
% 1.86/1.01  
% 1.86/1.01  ------ Superposition Simplification Setup
% 1.86/1.01  
% 1.86/1.01  --sup_indices_passive                   []
% 1.86/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.86/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.86/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/1.01  --sup_full_bw                           [BwDemod]
% 1.86/1.01  --sup_immed_triv                        [TrivRules]
% 1.86/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.86/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/1.01  --sup_immed_bw_main                     []
% 1.86/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.86/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.86/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.86/1.01  
% 1.86/1.01  ------ Combination Options
% 1.86/1.01  
% 1.86/1.01  --comb_res_mult                         3
% 1.86/1.01  --comb_sup_mult                         2
% 1.86/1.01  --comb_inst_mult                        10
% 1.86/1.01  
% 1.86/1.01  ------ Debug Options
% 1.86/1.01  
% 1.86/1.01  --dbg_backtrace                         false
% 1.86/1.01  --dbg_dump_prop_clauses                 false
% 1.86/1.01  --dbg_dump_prop_clauses_file            -
% 1.86/1.01  --dbg_out_stat                          false
% 1.86/1.01  
% 1.86/1.01  
% 1.86/1.01  
% 1.86/1.01  
% 1.86/1.01  ------ Proving...
% 1.86/1.01  
% 1.86/1.01  
% 1.86/1.01  % SZS status Theorem for theBenchmark.p
% 1.86/1.01  
% 1.86/1.01   Resolution empty clause
% 1.86/1.01  
% 1.86/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.86/1.01  
% 1.86/1.01  fof(f1,axiom,(
% 1.86/1.01    ! [X0,X1] : (r2_xboole_0(X0,X1) <=> (X0 != X1 & r1_tarski(X0,X1)))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f36,plain,(
% 1.86/1.01    ! [X0,X1] : ((r2_xboole_0(X0,X1) | (X0 = X1 | ~r1_tarski(X0,X1))) & ((X0 != X1 & r1_tarski(X0,X1)) | ~r2_xboole_0(X0,X1)))),
% 1.86/1.01    inference(nnf_transformation,[],[f1])).
% 1.86/1.01  
% 1.86/1.01  fof(f37,plain,(
% 1.86/1.01    ! [X0,X1] : ((r2_xboole_0(X0,X1) | X0 = X1 | ~r1_tarski(X0,X1)) & ((X0 != X1 & r1_tarski(X0,X1)) | ~r2_xboole_0(X0,X1)))),
% 1.86/1.01    inference(flattening,[],[f36])).
% 1.86/1.01  
% 1.86/1.01  fof(f50,plain,(
% 1.86/1.01    ( ! [X0,X1] : (X0 != X1 | ~r2_xboole_0(X0,X1)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f37])).
% 1.86/1.01  
% 1.86/1.01  fof(f79,plain,(
% 1.86/1.01    ( ! [X1] : (~r2_xboole_0(X1,X1)) )),
% 1.86/1.01    inference(equality_resolution,[],[f50])).
% 1.86/1.01  
% 1.86/1.01  fof(f15,conjecture,(
% 1.86/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (m2_orders_2(X2,X0,X1) => ! [X3] : (m2_orders_2(X3,X0,X1) => (r2_xboole_0(X2,X3) <=> m1_orders_2(X2,X0,X3))))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f16,negated_conjecture,(
% 1.86/1.01    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (m2_orders_2(X2,X0,X1) => ! [X3] : (m2_orders_2(X3,X0,X1) => (r2_xboole_0(X2,X3) <=> m1_orders_2(X2,X0,X3))))))),
% 1.86/1.01    inference(negated_conjecture,[],[f15])).
% 1.86/1.01  
% 1.86/1.01  fof(f34,plain,(
% 1.86/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((r2_xboole_0(X2,X3) <~> m1_orders_2(X2,X0,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f16])).
% 1.86/1.01  
% 1.86/1.01  fof(f35,plain,(
% 1.86/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((r2_xboole_0(X2,X3) <~> m1_orders_2(X2,X0,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f34])).
% 1.86/1.01  
% 1.86/1.01  fof(f42,plain,(
% 1.86/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3))) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.86/1.01    inference(nnf_transformation,[],[f35])).
% 1.86/1.01  
% 1.86/1.01  fof(f43,plain,(
% 1.86/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f42])).
% 1.86/1.01  
% 1.86/1.01  fof(f47,plain,(
% 1.86/1.01    ( ! [X2,X0,X1] : (? [X3] : ((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,X0,X1)) => ((~m1_orders_2(X2,X0,sK3) | ~r2_xboole_0(X2,sK3)) & (m1_orders_2(X2,X0,sK3) | r2_xboole_0(X2,sK3)) & m2_orders_2(sK3,X0,X1))) )),
% 1.86/1.01    introduced(choice_axiom,[])).
% 1.86/1.01  
% 1.86/1.01  fof(f46,plain,(
% 1.86/1.01    ( ! [X0,X1] : (? [X2] : (? [X3] : ((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) => (? [X3] : ((~m1_orders_2(sK2,X0,X3) | ~r2_xboole_0(sK2,X3)) & (m1_orders_2(sK2,X0,X3) | r2_xboole_0(sK2,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(sK2,X0,X1))) )),
% 1.86/1.01    introduced(choice_axiom,[])).
% 1.86/1.01  
% 1.86/1.01  fof(f45,plain,(
% 1.86/1.01    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : ((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) => (? [X2] : (? [X3] : ((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,X0,sK1)) & m2_orders_2(X2,X0,sK1)) & m1_orders_1(sK1,k1_orders_1(u1_struct_0(X0))))) )),
% 1.86/1.01    introduced(choice_axiom,[])).
% 1.86/1.01  
% 1.86/1.01  fof(f44,plain,(
% 1.86/1.01    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((~m1_orders_2(X2,X0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,X0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,X0,X1)) & m2_orders_2(X2,X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : ((~m1_orders_2(X2,sK0,X3) | ~r2_xboole_0(X2,X3)) & (m1_orders_2(X2,sK0,X3) | r2_xboole_0(X2,X3)) & m2_orders_2(X3,sK0,X1)) & m2_orders_2(X2,sK0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(sK0)))) & l1_orders_2(sK0) & v5_orders_2(sK0) & v4_orders_2(sK0) & v3_orders_2(sK0) & ~v2_struct_0(sK0))),
% 1.86/1.01    introduced(choice_axiom,[])).
% 1.86/1.01  
% 1.86/1.01  fof(f48,plain,(
% 1.86/1.01    ((((~m1_orders_2(sK2,sK0,sK3) | ~r2_xboole_0(sK2,sK3)) & (m1_orders_2(sK2,sK0,sK3) | r2_xboole_0(sK2,sK3)) & m2_orders_2(sK3,sK0,sK1)) & m2_orders_2(sK2,sK0,sK1)) & m1_orders_1(sK1,k1_orders_1(u1_struct_0(sK0)))) & l1_orders_2(sK0) & v5_orders_2(sK0) & v4_orders_2(sK0) & v3_orders_2(sK0) & ~v2_struct_0(sK0)),
% 1.86/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f43,f47,f46,f45,f44])).
% 1.86/1.01  
% 1.86/1.01  fof(f77,plain,(
% 1.86/1.01    m1_orders_2(sK2,sK0,sK3) | r2_xboole_0(sK2,sK3)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f75,plain,(
% 1.86/1.01    m2_orders_2(sK2,sK0,sK1)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f76,plain,(
% 1.86/1.01    m2_orders_2(sK3,sK0,sK1)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f14,axiom,(
% 1.86/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (m2_orders_2(X2,X0,X1) => ! [X3] : (m2_orders_2(X3,X0,X1) => (X2 != X3 => (m1_orders_2(X2,X0,X3) <=> ~m1_orders_2(X3,X0,X2)))))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f32,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((m1_orders_2(X2,X0,X3) <=> ~m1_orders_2(X3,X0,X2)) | X2 = X3) | ~m2_orders_2(X3,X0,X1)) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f14])).
% 1.86/1.01  
% 1.86/1.01  fof(f33,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((m1_orders_2(X2,X0,X3) <=> ~m1_orders_2(X3,X0,X2)) | X2 = X3 | ~m2_orders_2(X3,X0,X1)) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f32])).
% 1.86/1.01  
% 1.86/1.01  fof(f41,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((m1_orders_2(X2,X0,X3) | m1_orders_2(X3,X0,X2)) & (~m1_orders_2(X3,X0,X2) | ~m1_orders_2(X2,X0,X3))) | X2 = X3 | ~m2_orders_2(X3,X0,X1)) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(nnf_transformation,[],[f33])).
% 1.86/1.01  
% 1.86/1.01  fof(f68,plain,(
% 1.86/1.01    ( ! [X2,X0,X3,X1] : (m1_orders_2(X2,X0,X3) | m1_orders_2(X3,X0,X2) | X2 = X3 | ~m2_orders_2(X3,X0,X1) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f41])).
% 1.86/1.01  
% 1.86/1.01  fof(f74,plain,(
% 1.86/1.01    m1_orders_1(sK1,k1_orders_1(u1_struct_0(sK0)))),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f73,plain,(
% 1.86/1.01    l1_orders_2(sK0)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f69,plain,(
% 1.86/1.01    ~v2_struct_0(sK0)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f70,plain,(
% 1.86/1.01    v3_orders_2(sK0)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f71,plain,(
% 1.86/1.01    v4_orders_2(sK0)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f72,plain,(
% 1.86/1.01    v5_orders_2(sK0)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f51,plain,(
% 1.86/1.01    ( ! [X0,X1] : (r2_xboole_0(X0,X1) | X0 = X1 | ~r1_tarski(X0,X1)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f37])).
% 1.86/1.01  
% 1.86/1.01  fof(f78,plain,(
% 1.86/1.01    ~m1_orders_2(sK2,sK0,sK3) | ~r2_xboole_0(sK2,sK3)),
% 1.86/1.01    inference(cnf_transformation,[],[f48])).
% 1.86/1.01  
% 1.86/1.01  fof(f10,axiom,(
% 1.86/1.01    ! [X0,X1] : ((m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X2] : (m2_orders_2(X2,X0,X1) => (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X2,X0))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f18,plain,(
% 1.86/1.01    ! [X0,X1] : ((m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X2] : (m2_orders_2(X2,X0,X1) => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.86/1.01    inference(pure_predicate_removal,[],[f10])).
% 1.86/1.01  
% 1.86/1.01  fof(f24,plain,(
% 1.86/1.01    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m2_orders_2(X2,X0,X1)) | (~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f18])).
% 1.86/1.01  
% 1.86/1.01  fof(f25,plain,(
% 1.86/1.01    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f24])).
% 1.86/1.01  
% 1.86/1.01  fof(f63,plain,(
% 1.86/1.01    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f25])).
% 1.86/1.01  
% 1.86/1.01  fof(f11,axiom,(
% 1.86/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_orders_2(X2,X0,X1) => r1_tarski(X2,X1))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f26,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (r1_tarski(X2,X1) | ~m1_orders_2(X2,X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f11])).
% 1.86/1.01  
% 1.86/1.01  fof(f27,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (r1_tarski(X2,X1) | ~m1_orders_2(X2,X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f26])).
% 1.86/1.01  
% 1.86/1.01  fof(f64,plain,(
% 1.86/1.01    ( ! [X2,X0,X1] : (r1_tarski(X2,X1) | ~m1_orders_2(X2,X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f27])).
% 1.86/1.01  
% 1.86/1.01  fof(f67,plain,(
% 1.86/1.01    ( ! [X2,X0,X3,X1] : (~m1_orders_2(X3,X0,X2) | ~m1_orders_2(X2,X0,X3) | X2 = X3 | ~m2_orders_2(X3,X0,X1) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f41])).
% 1.86/1.01  
% 1.86/1.01  fof(f3,axiom,(
% 1.86/1.01    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f38,plain,(
% 1.86/1.01    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.86/1.01    inference(nnf_transformation,[],[f3])).
% 1.86/1.01  
% 1.86/1.01  fof(f39,plain,(
% 1.86/1.01    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.86/1.01    inference(flattening,[],[f38])).
% 1.86/1.01  
% 1.86/1.01  fof(f55,plain,(
% 1.86/1.01    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f39])).
% 1.86/1.01  
% 1.86/1.01  fof(f9,axiom,(
% 1.86/1.01    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X2] : (m1_orders_2(X2,X0,X1) => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f22,plain,(
% 1.86/1.01    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f9])).
% 1.86/1.01  
% 1.86/1.01  fof(f23,plain,(
% 1.86/1.01    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f22])).
% 1.86/1.01  
% 1.86/1.01  fof(f62,plain,(
% 1.86/1.01    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f23])).
% 1.86/1.01  
% 1.86/1.01  fof(f53,plain,(
% 1.86/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 1.86/1.01    inference(cnf_transformation,[],[f39])).
% 1.86/1.01  
% 1.86/1.01  fof(f81,plain,(
% 1.86/1.01    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 1.86/1.01    inference(equality_resolution,[],[f53])).
% 1.86/1.01  
% 1.86/1.01  fof(f12,axiom,(
% 1.86/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ~(m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f28,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : ((~m1_orders_2(X2,X0,X1) | ~m1_orders_2(X1,X0,X2) | k1_xboole_0 = X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f12])).
% 1.86/1.01  
% 1.86/1.01  fof(f29,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (~m1_orders_2(X2,X0,X1) | ~m1_orders_2(X1,X0,X2) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f28])).
% 1.86/1.01  
% 1.86/1.01  fof(f65,plain,(
% 1.86/1.01    ( ! [X2,X0,X1] : (~m1_orders_2(X2,X0,X1) | ~m1_orders_2(X1,X0,X2) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f29])).
% 1.86/1.01  
% 1.86/1.01  fof(f4,axiom,(
% 1.86/1.01    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f40,plain,(
% 1.86/1.01    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 1.86/1.01    inference(nnf_transformation,[],[f4])).
% 1.86/1.01  
% 1.86/1.01  fof(f57,plain,(
% 1.86/1.01    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f40])).
% 1.86/1.01  
% 1.86/1.01  fof(f5,axiom,(
% 1.86/1.01    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f58,plain,(
% 1.86/1.01    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f5])).
% 1.86/1.01  
% 1.86/1.01  fof(f8,axiom,(
% 1.86/1.01    ! [X0,X1] : ~(r1_tarski(X1,X0) & r2_hidden(X0,X1))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f21,plain,(
% 1.86/1.01    ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1))),
% 1.86/1.01    inference(ennf_transformation,[],[f8])).
% 1.86/1.01  
% 1.86/1.01  fof(f61,plain,(
% 1.86/1.01    ( ! [X0,X1] : (~r1_tarski(X1,X0) | ~r2_hidden(X0,X1)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f21])).
% 1.86/1.01  
% 1.86/1.01  fof(f13,axiom,(
% 1.86/1.01    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (m2_orders_2(X2,X0,X1) => r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2))))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f30,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.86/1.01    inference(ennf_transformation,[],[f13])).
% 1.86/1.01  
% 1.86/1.01  fof(f31,plain,(
% 1.86/1.01    ! [X0] : (! [X1] : (! [X2] : (r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.86/1.01    inference(flattening,[],[f30])).
% 1.86/1.01  
% 1.86/1.01  fof(f66,plain,(
% 1.86/1.01    ( ! [X2,X0,X1] : (r2_hidden(k1_funct_1(X1,u1_struct_0(X0)),X2) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f31])).
% 1.86/1.01  
% 1.86/1.01  fof(f6,axiom,(
% 1.86/1.01    ! [X0,X1] : ~(r2_xboole_0(X1,X0) & r1_tarski(X0,X1))),
% 1.86/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.86/1.01  
% 1.86/1.01  fof(f19,plain,(
% 1.86/1.01    ! [X0,X1] : (~r2_xboole_0(X1,X0) | ~r1_tarski(X0,X1))),
% 1.86/1.01    inference(ennf_transformation,[],[f6])).
% 1.86/1.01  
% 1.86/1.01  fof(f59,plain,(
% 1.86/1.01    ( ! [X0,X1] : (~r2_xboole_0(X1,X0) | ~r1_tarski(X0,X1)) )),
% 1.86/1.01    inference(cnf_transformation,[],[f19])).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1,plain,
% 1.86/1.01      ( ~ r2_xboole_0(X0,X0) ),
% 1.86/1.01      inference(cnf_transformation,[],[f79]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_21,negated_conjecture,
% 1.86/1.01      ( m1_orders_2(sK2,sK0,sK3) | r2_xboole_0(sK2,sK3) ),
% 1.86/1.01      inference(cnf_transformation,[],[f77]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_226,plain,
% 1.86/1.01      ( r2_xboole_0(sK2,sK3) | m1_orders_2(sK2,sK0,sK3) ),
% 1.86/1.01      inference(prop_impl,[status(thm)],[c_21]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_227,plain,
% 1.86/1.01      ( m1_orders_2(sK2,sK0,sK3) | r2_xboole_0(sK2,sK3) ),
% 1.86/1.01      inference(renaming,[status(thm)],[c_226]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_464,plain,
% 1.86/1.01      ( m1_orders_2(sK2,sK0,sK3) | sK3 != X0 | sK2 != X0 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_1,c_227]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_465,plain,
% 1.86/1.01      ( m1_orders_2(sK2,sK0,sK3) | sK2 != sK3 ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_464]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1590,plain,
% 1.86/1.01      ( sK2 != sK3 | m1_orders_2(sK2,sK0,sK3) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_465]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_23,negated_conjecture,
% 1.86/1.01      ( m2_orders_2(sK2,sK0,sK1) ),
% 1.86/1.01      inference(cnf_transformation,[],[f75]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1594,plain,
% 1.86/1.01      ( m2_orders_2(sK2,sK0,sK1) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_22,negated_conjecture,
% 1.86/1.01      ( m2_orders_2(sK3,sK0,sK1) ),
% 1.86/1.01      inference(cnf_transformation,[],[f76]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1595,plain,
% 1.86/1.01      ( m2_orders_2(sK3,sK0,sK1) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_18,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m2_orders_2(X3,X1,X2)
% 1.86/1.01      | m1_orders_2(X3,X1,X0)
% 1.86/1.01      | m1_orders_2(X0,X1,X3)
% 1.86/1.01      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | X3 = X0 ),
% 1.86/1.01      inference(cnf_transformation,[],[f68]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_24,negated_conjecture,
% 1.86/1.01      ( m1_orders_1(sK1,k1_orders_1(u1_struct_0(sK0))) ),
% 1.86/1.01      inference(cnf_transformation,[],[f74]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_601,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m2_orders_2(X3,X1,X2)
% 1.86/1.01      | m1_orders_2(X3,X1,X0)
% 1.86/1.01      | m1_orders_2(X0,X1,X3)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | X3 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.01      | sK1 != X2 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_24]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_602,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.01      | ~ m2_orders_2(X2,X1,sK1)
% 1.86/1.01      | m1_orders_2(X2,X1,X0)
% 1.86/1.01      | m1_orders_2(X0,X1,X2)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | X2 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_601]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_25,negated_conjecture,
% 1.86/1.01      ( l1_orders_2(sK0) ),
% 1.86/1.01      inference(cnf_transformation,[],[f73]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_711,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.01      | ~ m2_orders_2(X2,X1,sK1)
% 1.86/1.01      | m1_orders_2(X0,X1,X2)
% 1.86/1.01      | m1_orders_2(X2,X1,X0)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | X2 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.01      | sK0 != X1 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_602,c_25]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_712,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | ~ m2_orders_2(X1,sK0,sK1)
% 1.86/1.01      | m1_orders_2(X1,sK0,X0)
% 1.86/1.01      | m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | v2_struct_0(sK0)
% 1.86/1.01      | ~ v3_orders_2(sK0)
% 1.86/1.01      | ~ v4_orders_2(sK0)
% 1.86/1.01      | ~ v5_orders_2(sK0)
% 1.86/1.01      | X1 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_711]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_29,negated_conjecture,
% 1.86/1.01      ( ~ v2_struct_0(sK0) ),
% 1.86/1.01      inference(cnf_transformation,[],[f69]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_28,negated_conjecture,
% 1.86/1.01      ( v3_orders_2(sK0) ),
% 1.86/1.01      inference(cnf_transformation,[],[f70]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_27,negated_conjecture,
% 1.86/1.01      ( v4_orders_2(sK0) ),
% 1.86/1.01      inference(cnf_transformation,[],[f71]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_26,negated_conjecture,
% 1.86/1.01      ( v5_orders_2(sK0) ),
% 1.86/1.01      inference(cnf_transformation,[],[f72]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_716,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | ~ m2_orders_2(X1,sK0,sK1)
% 1.86/1.01      | m1_orders_2(X1,sK0,X0)
% 1.86/1.01      | m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | X1 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(global_propositional_subsumption,
% 1.86/1.01                [status(thm)],
% 1.86/1.01                [c_712,c_29,c_28,c_27,c_26]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_917,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | ~ m2_orders_2(X1,sK0,sK1)
% 1.86/1.01      | m1_orders_2(X1,sK0,X0)
% 1.86/1.01      | m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | X1 = X0 ),
% 1.86/1.01      inference(equality_resolution_simp,[status(thm)],[c_716]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1581,plain,
% 1.86/1.01      ( X0 = X1
% 1.86/1.01      | m2_orders_2(X1,sK0,sK1) != iProver_top
% 1.86/1.01      | m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.01      | m1_orders_2(X0,sK0,X1) = iProver_top
% 1.86/1.01      | m1_orders_2(X1,sK0,X0) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_917]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_2108,plain,
% 1.86/1.01      ( sK3 = X0
% 1.86/1.01      | m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.01      | m1_orders_2(X0,sK0,sK3) = iProver_top
% 1.86/1.01      | m1_orders_2(sK3,sK0,X0) = iProver_top ),
% 1.86/1.01      inference(superposition,[status(thm)],[c_1595,c_1581]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_2420,plain,
% 1.86/1.01      ( sK3 = sK2
% 1.86/1.01      | m1_orders_2(sK3,sK0,sK2) = iProver_top
% 1.86/1.01      | m1_orders_2(sK2,sK0,sK3) = iProver_top ),
% 1.86/1.01      inference(superposition,[status(thm)],[c_1594,c_2108]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_37,plain,
% 1.86/1.01      ( m2_orders_2(sK3,sK0,sK1) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_0,plain,
% 1.86/1.01      ( ~ r1_tarski(X0,X1) | r2_xboole_0(X0,X1) | X1 = X0 ),
% 1.86/1.01      inference(cnf_transformation,[],[f51]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_20,negated_conjecture,
% 1.86/1.01      ( ~ m1_orders_2(sK2,sK0,sK3) | ~ r2_xboole_0(sK2,sK3) ),
% 1.86/1.01      inference(cnf_transformation,[],[f78]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_224,plain,
% 1.86/1.01      ( ~ r2_xboole_0(sK2,sK3) | ~ m1_orders_2(sK2,sK0,sK3) ),
% 1.86/1.01      inference(prop_impl,[status(thm)],[c_20]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_225,plain,
% 1.86/1.01      ( ~ m1_orders_2(sK2,sK0,sK3) | ~ r2_xboole_0(sK2,sK3) ),
% 1.86/1.01      inference(renaming,[status(thm)],[c_224]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_439,plain,
% 1.86/1.01      ( ~ m1_orders_2(sK2,sK0,sK3)
% 1.86/1.01      | ~ r1_tarski(X0,X1)
% 1.86/1.01      | X1 = X0
% 1.86/1.01      | sK3 != X1
% 1.86/1.01      | sK2 != X0 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_225]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_440,plain,
% 1.86/1.01      ( ~ m1_orders_2(sK2,sK0,sK3) | ~ r1_tarski(sK2,sK3) | sK3 = sK2 ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_439]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_441,plain,
% 1.86/1.01      ( sK3 = sK2
% 1.86/1.01      | m1_orders_2(sK2,sK0,sK3) != iProver_top
% 1.86/1.01      | r1_tarski(sK2,sK3) != iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_440]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_14,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1) ),
% 1.86/1.01      inference(cnf_transformation,[],[f63]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_640,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.01      | sK1 != X2 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_14,c_24]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_641,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_640]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_690,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.01      | sK0 != X1 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_641,c_25]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_691,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | v2_struct_0(sK0)
% 1.86/1.01      | ~ v3_orders_2(sK0)
% 1.86/1.01      | ~ v4_orders_2(sK0)
% 1.86/1.01      | ~ v5_orders_2(sK0)
% 1.86/1.01      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_690]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_695,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(global_propositional_subsumption,
% 1.86/1.01                [status(thm)],
% 1.86/1.01                [c_691,c_29,c_28,c_27,c_26]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_921,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.86/1.01      inference(equality_resolution_simp,[status(thm)],[c_695]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1755,plain,
% 1.86/1.01      ( ~ m2_orders_2(sK3,sK0,sK1)
% 1.86/1.01      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.86/1.01      inference(instantiation,[status(thm)],[c_921]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1756,plain,
% 1.86/1.01      ( m2_orders_2(sK3,sK0,sK1) != iProver_top
% 1.86/1.01      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_1755]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_15,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | r1_tarski(X0,X2)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1) ),
% 1.86/1.01      inference(cnf_transformation,[],[f64]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_816,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | r1_tarski(X0,X2)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | sK0 != X1 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_15,c_25]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_817,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | r1_tarski(X0,X1)
% 1.86/1.01      | v2_struct_0(sK0)
% 1.86/1.01      | ~ v3_orders_2(sK0)
% 1.86/1.01      | ~ v4_orders_2(sK0)
% 1.86/1.01      | ~ v5_orders_2(sK0) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_816]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_819,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | r1_tarski(X0,X1) ),
% 1.86/1.01      inference(global_propositional_subsumption,
% 1.86/1.01                [status(thm)],
% 1.86/1.01                [c_817,c_29,c_28,c_27,c_26]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1761,plain,
% 1.86/1.01      ( ~ m1_orders_2(sK2,sK0,sK3)
% 1.86/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | r1_tarski(sK2,sK3) ),
% 1.86/1.01      inference(instantiation,[status(thm)],[c_819]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1762,plain,
% 1.86/1.01      ( m1_orders_2(sK2,sK0,sK3) != iProver_top
% 1.86/1.01      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.86/1.01      | r1_tarski(sK2,sK3) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_1761]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_2475,plain,
% 1.86/1.01      ( m1_orders_2(sK3,sK0,sK2) = iProver_top | sK3 = sK2 ),
% 1.86/1.01      inference(global_propositional_subsumption,
% 1.86/1.01                [status(thm)],
% 1.86/1.01                [c_2420,c_37,c_441,c_1756,c_1762]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_2476,plain,
% 1.86/1.01      ( sK3 = sK2 | m1_orders_2(sK3,sK0,sK2) = iProver_top ),
% 1.86/1.01      inference(renaming,[status(thm)],[c_2475]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_19,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m2_orders_2(X3,X1,X2)
% 1.86/1.01      | ~ m1_orders_2(X3,X1,X0)
% 1.86/1.01      | ~ m1_orders_2(X0,X1,X3)
% 1.86/1.01      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | X3 = X0 ),
% 1.86/1.01      inference(cnf_transformation,[],[f67]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_562,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m2_orders_2(X3,X1,X2)
% 1.86/1.01      | ~ m1_orders_2(X3,X1,X0)
% 1.86/1.01      | ~ m1_orders_2(X0,X1,X3)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | X3 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.01      | sK1 != X2 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_19,c_24]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_563,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.01      | ~ m2_orders_2(X2,X1,sK1)
% 1.86/1.01      | ~ m1_orders_2(X2,X1,X0)
% 1.86/1.01      | ~ m1_orders_2(X0,X1,X2)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1)
% 1.86/1.01      | X2 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_562]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_741,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.01      | ~ m2_orders_2(X2,X1,sK1)
% 1.86/1.01      | ~ m1_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m1_orders_2(X2,X1,X0)
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | X2 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.01      | sK0 != X1 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_563,c_25]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_742,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | ~ m2_orders_2(X1,sK0,sK1)
% 1.86/1.01      | ~ m1_orders_2(X1,sK0,X0)
% 1.86/1.01      | ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | v2_struct_0(sK0)
% 1.86/1.01      | ~ v3_orders_2(sK0)
% 1.86/1.01      | ~ v4_orders_2(sK0)
% 1.86/1.01      | ~ v5_orders_2(sK0)
% 1.86/1.01      | X1 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_741]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_746,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | ~ m2_orders_2(X1,sK0,sK1)
% 1.86/1.01      | ~ m1_orders_2(X1,sK0,X0)
% 1.86/1.01      | ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | X1 = X0
% 1.86/1.01      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.01      inference(global_propositional_subsumption,
% 1.86/1.01                [status(thm)],
% 1.86/1.01                [c_742,c_29,c_28,c_27,c_26]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_913,plain,
% 1.86/1.01      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.01      | ~ m2_orders_2(X1,sK0,sK1)
% 1.86/1.01      | ~ m1_orders_2(X1,sK0,X0)
% 1.86/1.01      | ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | X1 = X0 ),
% 1.86/1.01      inference(equality_resolution_simp,[status(thm)],[c_746]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1582,plain,
% 1.86/1.01      ( X0 = X1
% 1.86/1.01      | m2_orders_2(X1,sK0,sK1) != iProver_top
% 1.86/1.01      | m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.01      | m1_orders_2(X1,sK0,X0) != iProver_top
% 1.86/1.01      | m1_orders_2(X0,sK0,X1) != iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_913]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_4,plain,
% 1.86/1.01      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 1.86/1.01      inference(cnf_transformation,[],[f55]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_81,plain,
% 1.86/1.01      ( X0 = X1
% 1.86/1.01      | r1_tarski(X0,X1) != iProver_top
% 1.86/1.01      | r1_tarski(X1,X0) != iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_821,plain,
% 1.86/1.01      ( m1_orders_2(X0,sK0,X1) != iProver_top
% 1.86/1.01      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.86/1.01      | r1_tarski(X0,X1) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_819]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_1580,plain,
% 1.86/1.01      ( m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.86/1.01      inference(predicate_to_equality,[status(thm)],[c_921]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_13,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | ~ l1_orders_2(X1) ),
% 1.86/1.01      inference(cnf_transformation,[],[f62]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_833,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.01      | v2_struct_0(X1)
% 1.86/1.01      | ~ v3_orders_2(X1)
% 1.86/1.01      | ~ v4_orders_2(X1)
% 1.86/1.01      | ~ v5_orders_2(X1)
% 1.86/1.01      | sK0 != X1 ),
% 1.86/1.01      inference(resolution_lifted,[status(thm)],[c_13,c_25]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_834,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.01      | v2_struct_0(sK0)
% 1.86/1.01      | ~ v3_orders_2(sK0)
% 1.86/1.01      | ~ v4_orders_2(sK0)
% 1.86/1.01      | ~ v5_orders_2(sK0) ),
% 1.86/1.01      inference(unflattening,[status(thm)],[c_833]) ).
% 1.86/1.01  
% 1.86/1.01  cnf(c_836,plain,
% 1.86/1.01      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.01      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.02      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.86/1.02      inference(global_propositional_subsumption,
% 1.86/1.02                [status(thm)],
% 1.86/1.02                [c_834,c_29,c_28,c_27,c_26]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1584,plain,
% 1.86/1.02      ( m1_orders_2(X0,sK0,X1) != iProver_top
% 1.86/1.02      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.86/1.02      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_836]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1819,plain,
% 1.86/1.02      ( m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.02      | m1_orders_2(X1,sK0,X0) != iProver_top
% 1.86/1.02      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_1580,c_1584]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1585,plain,
% 1.86/1.02      ( m1_orders_2(X0,sK0,X1) != iProver_top
% 1.86/1.02      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.86/1.02      | r1_tarski(X0,X1) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_819]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1820,plain,
% 1.86/1.02      ( m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.02      | m1_orders_2(X1,sK0,X0) != iProver_top
% 1.86/1.02      | r1_tarski(X1,X0) = iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_1580,c_1585]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2774,plain,
% 1.86/1.02      ( X0 = X1
% 1.86/1.02      | m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.02      | m1_orders_2(X1,sK0,X0) != iProver_top
% 1.86/1.02      | m1_orders_2(X0,sK0,X1) != iProver_top ),
% 1.86/1.02      inference(global_propositional_subsumption,
% 1.86/1.02                [status(thm)],
% 1.86/1.02                [c_1582,c_81,c_821,c_1819,c_1820]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2775,plain,
% 1.86/1.02      ( X0 = X1
% 1.86/1.02      | m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.02      | m1_orders_2(X0,sK0,X1) != iProver_top
% 1.86/1.02      | m1_orders_2(X1,sK0,X0) != iProver_top ),
% 1.86/1.02      inference(renaming,[status(thm)],[c_2774]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2783,plain,
% 1.86/1.02      ( sK2 = X0
% 1.86/1.02      | m1_orders_2(X0,sK0,sK2) != iProver_top
% 1.86/1.02      | m1_orders_2(sK2,sK0,X0) != iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_1594,c_2775]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_36,plain,
% 1.86/1.02      ( m2_orders_2(sK2,sK0,sK1) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_6,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f81]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_78,plain,
% 1.86/1.02      ( r1_tarski(sK0,sK0) ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_6]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_82,plain,
% 1.86/1.02      ( ~ r1_tarski(sK0,sK0) | sK0 = sK0 ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_4]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1758,plain,
% 1.86/1.02      ( ~ m2_orders_2(sK2,sK0,sK1)
% 1.86/1.02      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_921]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1759,plain,
% 1.86/1.02      ( m2_orders_2(sK2,sK0,sK1) != iProver_top
% 1.86/1.02      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_1758]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1081,plain,( X0 = X0 ),theory(equality) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1916,plain,
% 1.86/1.02      ( sK1 = sK1 ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_1081]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1088,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.02      | m2_orders_2(X3,X4,X5)
% 1.86/1.02      | X3 != X0
% 1.86/1.02      | X4 != X1
% 1.86/1.02      | X5 != X2 ),
% 1.86/1.02      theory(equality) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1784,plain,
% 1.86/1.02      ( m2_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m2_orders_2(sK2,sK0,sK1)
% 1.86/1.02      | X2 != sK1
% 1.86/1.02      | X1 != sK0
% 1.86/1.02      | X0 != sK2 ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_1088]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2014,plain,
% 1.86/1.02      ( m2_orders_2(X0,X1,sK1)
% 1.86/1.02      | ~ m2_orders_2(sK2,sK0,sK1)
% 1.86/1.02      | X1 != sK0
% 1.86/1.02      | X0 != sK2
% 1.86/1.02      | sK1 != sK1 ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_1784]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2370,plain,
% 1.86/1.02      ( ~ m2_orders_2(sK2,sK0,sK1)
% 1.86/1.02      | m2_orders_2(k1_xboole_0,X0,sK1)
% 1.86/1.02      | X0 != sK0
% 1.86/1.02      | sK1 != sK1
% 1.86/1.02      | k1_xboole_0 != sK2 ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_2014]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2372,plain,
% 1.86/1.02      ( X0 != sK0
% 1.86/1.02      | sK1 != sK1
% 1.86/1.02      | k1_xboole_0 != sK2
% 1.86/1.02      | m2_orders_2(sK2,sK0,sK1) != iProver_top
% 1.86/1.02      | m2_orders_2(k1_xboole_0,X0,sK1) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_2370]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2374,plain,
% 1.86/1.02      ( sK1 != sK1
% 1.86/1.02      | sK0 != sK0
% 1.86/1.02      | k1_xboole_0 != sK2
% 1.86/1.02      | m2_orders_2(sK2,sK0,sK1) != iProver_top
% 1.86/1.02      | m2_orders_2(k1_xboole_0,sK0,sK1) = iProver_top ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_2372]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_16,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m1_orders_2(X2,X1,X0)
% 1.86/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1)
% 1.86/1.02      | k1_xboole_0 = X2 ),
% 1.86/1.02      inference(cnf_transformation,[],[f65]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_164,plain,
% 1.86/1.02      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.02      | ~ m1_orders_2(X2,X1,X0)
% 1.86/1.02      | ~ m1_orders_2(X0,X1,X2)
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1)
% 1.86/1.02      | k1_xboole_0 = X2 ),
% 1.86/1.02      inference(global_propositional_subsumption,[status(thm)],[c_16,c_13]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_165,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m1_orders_2(X2,X1,X0)
% 1.86/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1)
% 1.86/1.02      | k1_xboole_0 = X2 ),
% 1.86/1.02      inference(renaming,[status(thm)],[c_164]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_792,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m1_orders_2(X2,X1,X0)
% 1.86/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | sK0 != X1
% 1.86/1.02      | k1_xboole_0 = X2 ),
% 1.86/1.02      inference(resolution_lifted,[status(thm)],[c_165,c_25]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_793,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.02      | ~ m1_orders_2(X1,sK0,X0)
% 1.86/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.02      | v2_struct_0(sK0)
% 1.86/1.02      | ~ v3_orders_2(sK0)
% 1.86/1.02      | ~ v4_orders_2(sK0)
% 1.86/1.02      | ~ v5_orders_2(sK0)
% 1.86/1.02      | k1_xboole_0 = X0 ),
% 1.86/1.02      inference(unflattening,[status(thm)],[c_792]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_797,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.02      | ~ m1_orders_2(X1,sK0,X0)
% 1.86/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.02      | k1_xboole_0 = X0 ),
% 1.86/1.02      inference(global_propositional_subsumption,
% 1.86/1.02                [status(thm)],
% 1.86/1.02                [c_793,c_29,c_28,c_27,c_26]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_798,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,sK0,X1)
% 1.86/1.02      | ~ m1_orders_2(X1,sK0,X0)
% 1.86/1.02      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.02      | k1_xboole_0 = X1 ),
% 1.86/1.02      inference(renaming,[status(thm)],[c_797]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2371,plain,
% 1.86/1.02      ( ~ m1_orders_2(X0,sK0,sK2)
% 1.86/1.02      | ~ m1_orders_2(sK2,sK0,X0)
% 1.86/1.02      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.86/1.02      | k1_xboole_0 = sK2 ),
% 1.86/1.02      inference(instantiation,[status(thm)],[c_798]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2376,plain,
% 1.86/1.02      ( k1_xboole_0 = sK2
% 1.86/1.02      | m1_orders_2(X0,sK0,sK2) != iProver_top
% 1.86/1.02      | m1_orders_2(sK2,sK0,X0) != iProver_top
% 1.86/1.02      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_2371]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1599,plain,
% 1.86/1.02      ( r1_tarski(X0,X0) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_7,plain,
% 1.86/1.02      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 1.86/1.02      inference(cnf_transformation,[],[f57]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1598,plain,
% 1.86/1.02      ( k4_xboole_0(X0,X1) = k1_xboole_0 | r1_tarski(X0,X1) != iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2298,plain,
% 1.86/1.02      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_1599,c_1598]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_9,plain,
% 1.86/1.02      ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
% 1.86/1.02      inference(cnf_transformation,[],[f58]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1596,plain,
% 1.86/1.02      ( r1_tarski(k4_xboole_0(X0,X1),X0) = iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2950,plain,
% 1.86/1.02      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_2298,c_1596]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_12,plain,
% 1.86/1.02      ( ~ r2_hidden(X0,X1) | ~ r1_tarski(X1,X0) ),
% 1.86/1.02      inference(cnf_transformation,[],[f61]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_17,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.86/1.02      | r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X0)
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1) ),
% 1.86/1.02      inference(cnf_transformation,[],[f66]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_382,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.86/1.02      | ~ r1_tarski(X3,X4)
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1)
% 1.86/1.02      | X0 != X3
% 1.86/1.02      | k1_funct_1(X2,u1_struct_0(X1)) != X4 ),
% 1.86/1.02      inference(resolution_lifted,[status(thm)],[c_12,c_17]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_383,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(X2,u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1) ),
% 1.86/1.02      inference(unflattening,[status(thm)],[c_382]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_532,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,X2)
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(X2,u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1)
% 1.86/1.02      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.02      | sK1 != X2 ),
% 1.86/1.02      inference(resolution_lifted,[status(thm)],[c_383,c_24]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_533,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | ~ l1_orders_2(X1)
% 1.86/1.02      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.02      inference(unflattening,[status(thm)],[c_532]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_771,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,X1,sK1)
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(X1)))
% 1.86/1.02      | v2_struct_0(X1)
% 1.86/1.02      | ~ v3_orders_2(X1)
% 1.86/1.02      | ~ v4_orders_2(X1)
% 1.86/1.02      | ~ v5_orders_2(X1)
% 1.86/1.02      | k1_orders_1(u1_struct_0(X1)) != k1_orders_1(u1_struct_0(sK0))
% 1.86/1.02      | sK0 != X1 ),
% 1.86/1.02      inference(resolution_lifted,[status(thm)],[c_533,c_25]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_772,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0)))
% 1.86/1.02      | v2_struct_0(sK0)
% 1.86/1.02      | ~ v3_orders_2(sK0)
% 1.86/1.02      | ~ v4_orders_2(sK0)
% 1.86/1.02      | ~ v5_orders_2(sK0)
% 1.86/1.02      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.02      inference(unflattening,[status(thm)],[c_771]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_776,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0)))
% 1.86/1.02      | k1_orders_1(u1_struct_0(sK0)) != k1_orders_1(u1_struct_0(sK0)) ),
% 1.86/1.02      inference(global_propositional_subsumption,
% 1.86/1.02                [status(thm)],
% 1.86/1.02                [c_772,c_29,c_28,c_27,c_26]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_909,plain,
% 1.86/1.02      ( ~ m2_orders_2(X0,sK0,sK1)
% 1.86/1.02      | ~ r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0))) ),
% 1.86/1.02      inference(equality_resolution_simp,[status(thm)],[c_776]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1583,plain,
% 1.86/1.02      ( m2_orders_2(X0,sK0,sK1) != iProver_top
% 1.86/1.02      | r1_tarski(X0,k1_funct_1(sK1,u1_struct_0(sK0))) != iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_909]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3040,plain,
% 1.86/1.02      ( m2_orders_2(k1_xboole_0,sK0,sK1) != iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_2950,c_1583]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3123,plain,
% 1.86/1.02      ( m1_orders_2(X0,sK0,sK2) != iProver_top
% 1.86/1.02      | m1_orders_2(sK2,sK0,X0) != iProver_top ),
% 1.86/1.02      inference(global_propositional_subsumption,
% 1.86/1.02                [status(thm)],
% 1.86/1.02                [c_2783,c_36,c_78,c_82,c_1759,c_1916,c_2374,c_2376,c_3040]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3131,plain,
% 1.86/1.02      ( sK3 = sK2 | m1_orders_2(sK2,sK0,sK3) != iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_2476,c_3123]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_10,plain,
% 1.86/1.02      ( ~ r1_tarski(X0,X1) | ~ r2_xboole_0(X1,X0) ),
% 1.86/1.02      inference(cnf_transformation,[],[f59]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_486,plain,
% 1.86/1.02      ( m1_orders_2(sK2,sK0,sK3) | ~ r1_tarski(X0,X1) | sK3 != X0 | sK2 != X1 ),
% 1.86/1.02      inference(resolution_lifted,[status(thm)],[c_10,c_227]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_487,plain,
% 1.86/1.02      ( m1_orders_2(sK2,sK0,sK3) | ~ r1_tarski(sK3,sK2) ),
% 1.86/1.02      inference(unflattening,[status(thm)],[c_486]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_488,plain,
% 1.86/1.02      ( m1_orders_2(sK2,sK0,sK3) = iProver_top
% 1.86/1.02      | r1_tarski(sK3,sK2) != iProver_top ),
% 1.86/1.02      inference(predicate_to_equality,[status(thm)],[c_487]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_1981,plain,
% 1.86/1.02      ( m1_orders_2(X0,sK0,sK2) != iProver_top
% 1.86/1.02      | r1_tarski(X0,sK2) = iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_1594,c_1820]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_2481,plain,
% 1.86/1.02      ( sK3 = sK2 | r1_tarski(sK3,sK2) = iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_2476,c_1981]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3177,plain,
% 1.86/1.02      ( sK3 = sK2 ),
% 1.86/1.02      inference(global_propositional_subsumption,
% 1.86/1.02                [status(thm)],
% 1.86/1.02                [c_3131,c_488,c_2481]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3465,plain,
% 1.86/1.02      ( sK2 != sK2 | m1_orders_2(sK2,sK0,sK2) = iProver_top ),
% 1.86/1.02      inference(light_normalisation,[status(thm)],[c_1590,c_3177]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3466,plain,
% 1.86/1.02      ( m1_orders_2(sK2,sK0,sK2) = iProver_top ),
% 1.86/1.02      inference(equality_resolution_simp,[status(thm)],[c_3465]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3472,plain,
% 1.86/1.02      ( m1_orders_2(sK2,sK0,sK2) != iProver_top ),
% 1.86/1.02      inference(superposition,[status(thm)],[c_3466,c_3123]) ).
% 1.86/1.02  
% 1.86/1.02  cnf(c_3476,plain,
% 1.86/1.02      ( $false ),
% 1.86/1.02      inference(forward_subsumption_resolution,[status(thm)],[c_3472,c_3466]) ).
% 1.86/1.02  
% 1.86/1.02  
% 1.86/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 1.86/1.02  
% 1.86/1.02  ------                               Statistics
% 1.86/1.02  
% 1.86/1.02  ------ General
% 1.86/1.02  
% 1.86/1.02  abstr_ref_over_cycles:                  0
% 1.86/1.02  abstr_ref_under_cycles:                 0
% 1.86/1.02  gc_basic_clause_elim:                   0
% 1.86/1.02  forced_gc_time:                         0
% 1.86/1.02  parsing_time:                           0.008
% 1.86/1.02  unif_index_cands_time:                  0.
% 1.86/1.02  unif_index_add_time:                    0.
% 1.86/1.02  orderings_time:                         0.
% 1.86/1.02  out_proof_time:                         0.017
% 1.86/1.02  total_time:                             0.124
% 1.86/1.02  num_of_symbols:                         53
% 1.86/1.02  num_of_terms:                           1804
% 1.86/1.02  
% 1.86/1.02  ------ Preprocessing
% 1.86/1.02  
% 1.86/1.02  num_of_splits:                          0
% 1.86/1.02  num_of_split_atoms:                     0
% 1.86/1.02  num_of_reused_defs:                     0
% 1.86/1.02  num_eq_ax_congr_red:                    12
% 1.86/1.02  num_of_sem_filtered_clauses:            1
% 1.86/1.02  num_of_subtypes:                        0
% 1.86/1.02  monotx_restored_types:                  0
% 1.86/1.02  sat_num_of_epr_types:                   0
% 1.86/1.02  sat_num_of_non_cyclic_types:            0
% 1.86/1.02  sat_guarded_non_collapsed_types:        0
% 1.86/1.02  num_pure_diseq_elim:                    0
% 1.86/1.02  simp_replaced_by:                       0
% 1.86/1.02  res_preprocessed:                       110
% 1.86/1.02  prep_upred:                             0
% 1.86/1.02  prep_unflattend:                        31
% 1.86/1.02  smt_new_axioms:                         0
% 1.86/1.02  pred_elim_cands:                        4
% 1.86/1.02  pred_elim:                              8
% 1.86/1.02  pred_elim_cl:                           7
% 1.86/1.02  pred_elim_cycles:                       10
% 1.86/1.02  merged_defs:                            10
% 1.86/1.02  merged_defs_ncl:                        0
% 1.86/1.02  bin_hyper_res:                          10
% 1.86/1.02  prep_cycles:                            4
% 1.86/1.02  pred_elim_time:                         0.007
% 1.86/1.02  splitting_time:                         0.
% 1.86/1.02  sem_filter_time:                        0.
% 1.86/1.02  monotx_time:                            0.
% 1.86/1.02  subtype_inf_time:                       0.
% 1.86/1.02  
% 1.86/1.02  ------ Problem properties
% 1.86/1.02  
% 1.86/1.02  clauses:                                21
% 1.86/1.02  conjectures:                            2
% 1.86/1.02  epr:                                    13
% 1.86/1.02  horn:                                   18
% 1.86/1.02  ground:                                 7
% 1.86/1.02  unary:                                  4
% 1.86/1.02  binary:                                 9
% 1.86/1.02  lits:                                   51
% 1.86/1.02  lits_eq:                                12
% 1.86/1.02  fd_pure:                                0
% 1.86/1.02  fd_pseudo:                              0
% 1.86/1.02  fd_cond:                                3
% 1.86/1.02  fd_pseudo_cond:                         3
% 1.86/1.02  ac_symbols:                             0
% 1.86/1.02  
% 1.86/1.02  ------ Propositional Solver
% 1.86/1.02  
% 1.86/1.02  prop_solver_calls:                      27
% 1.86/1.02  prop_fast_solver_calls:                 894
% 1.86/1.02  smt_solver_calls:                       0
% 1.86/1.02  smt_fast_solver_calls:                  0
% 1.86/1.02  prop_num_of_clauses:                    967
% 1.86/1.02  prop_preprocess_simplified:             3992
% 1.86/1.02  prop_fo_subsumed:                       35
% 1.86/1.02  prop_solver_time:                       0.
% 1.86/1.02  smt_solver_time:                        0.
% 1.86/1.02  smt_fast_solver_time:                   0.
% 1.86/1.02  prop_fast_solver_time:                  0.
% 1.86/1.02  prop_unsat_core_time:                   0.
% 1.86/1.02  
% 1.86/1.02  ------ QBF
% 1.86/1.02  
% 1.86/1.02  qbf_q_res:                              0
% 1.86/1.02  qbf_num_tautologies:                    0
% 1.86/1.02  qbf_prep_cycles:                        0
% 1.86/1.02  
% 1.86/1.02  ------ BMC1
% 1.86/1.02  
% 1.86/1.02  bmc1_current_bound:                     -1
% 1.86/1.02  bmc1_last_solved_bound:                 -1
% 1.86/1.02  bmc1_unsat_core_size:                   -1
% 1.86/1.02  bmc1_unsat_core_parents_size:           -1
% 1.86/1.02  bmc1_merge_next_fun:                    0
% 1.86/1.02  bmc1_unsat_core_clauses_time:           0.
% 1.86/1.02  
% 1.86/1.02  ------ Instantiation
% 1.86/1.02  
% 1.86/1.02  inst_num_of_clauses:                    277
% 1.86/1.02  inst_num_in_passive:                    77
% 1.86/1.02  inst_num_in_active:                     189
% 1.86/1.02  inst_num_in_unprocessed:                11
% 1.86/1.02  inst_num_of_loops:                      210
% 1.86/1.02  inst_num_of_learning_restarts:          0
% 1.86/1.02  inst_num_moves_active_passive:          18
% 1.86/1.02  inst_lit_activity:                      0
% 1.86/1.02  inst_lit_activity_moves:                0
% 1.86/1.02  inst_num_tautologies:                   0
% 1.86/1.02  inst_num_prop_implied:                  0
% 1.86/1.02  inst_num_existing_simplified:           0
% 1.86/1.02  inst_num_eq_res_simplified:             0
% 1.86/1.02  inst_num_child_elim:                    0
% 1.86/1.02  inst_num_of_dismatching_blockings:      51
% 1.86/1.02  inst_num_of_non_proper_insts:           269
% 1.86/1.02  inst_num_of_duplicates:                 0
% 1.86/1.02  inst_inst_num_from_inst_to_res:         0
% 1.86/1.02  inst_dismatching_checking_time:         0.
% 1.86/1.02  
% 1.86/1.02  ------ Resolution
% 1.86/1.02  
% 1.86/1.02  res_num_of_clauses:                     0
% 1.86/1.02  res_num_in_passive:                     0
% 1.86/1.02  res_num_in_active:                      0
% 1.86/1.02  res_num_of_loops:                       114
% 1.86/1.02  res_forward_subset_subsumed:            20
% 1.86/1.02  res_backward_subset_subsumed:           0
% 1.86/1.02  res_forward_subsumed:                   0
% 1.86/1.02  res_backward_subsumed:                  0
% 1.86/1.02  res_forward_subsumption_resolution:     0
% 1.86/1.02  res_backward_subsumption_resolution:    0
% 1.86/1.02  res_clause_to_clause_subsumption:       146
% 1.86/1.02  res_orphan_elimination:                 0
% 1.86/1.02  res_tautology_del:                      38
% 1.86/1.02  res_num_eq_res_simplified:              4
% 1.86/1.02  res_num_sel_changes:                    0
% 1.86/1.02  res_moves_from_active_to_pass:          0
% 1.86/1.02  
% 1.86/1.02  ------ Superposition
% 1.86/1.02  
% 1.86/1.02  sup_time_total:                         0.
% 1.86/1.02  sup_time_generating:                    0.
% 1.86/1.02  sup_time_sim_full:                      0.
% 1.86/1.02  sup_time_sim_immed:                     0.
% 1.86/1.02  
% 1.86/1.02  sup_num_of_clauses:                     42
% 1.86/1.02  sup_num_in_active:                      35
% 1.86/1.02  sup_num_in_passive:                     7
% 1.86/1.02  sup_num_of_loops:                       40
% 1.86/1.02  sup_fw_superposition:                   29
% 1.86/1.02  sup_bw_superposition:                   27
% 1.86/1.02  sup_immediate_simplified:               8
% 1.86/1.02  sup_given_eliminated:                   0
% 1.86/1.02  comparisons_done:                       0
% 1.86/1.02  comparisons_avoided:                    0
% 1.86/1.02  
% 1.86/1.02  ------ Simplifications
% 1.86/1.02  
% 1.86/1.02  
% 1.86/1.02  sim_fw_subset_subsumed:                 2
% 1.86/1.02  sim_bw_subset_subsumed:                 3
% 1.86/1.02  sim_fw_subsumed:                        5
% 1.86/1.02  sim_bw_subsumed:                        0
% 1.86/1.02  sim_fw_subsumption_res:                 1
% 1.86/1.02  sim_bw_subsumption_res:                 0
% 1.86/1.02  sim_tautology_del:                      0
% 1.86/1.02  sim_eq_tautology_del:                   5
% 1.86/1.02  sim_eq_res_simp:                        1
% 1.86/1.02  sim_fw_demodulated:                     1
% 1.86/1.02  sim_bw_demodulated:                     5
% 1.86/1.02  sim_light_normalised:                   6
% 1.86/1.02  sim_joinable_taut:                      0
% 1.86/1.02  sim_joinable_simp:                      0
% 1.86/1.02  sim_ac_normalised:                      0
% 1.86/1.02  sim_smt_subsumption:                    0
% 1.86/1.02  
%------------------------------------------------------------------------------
