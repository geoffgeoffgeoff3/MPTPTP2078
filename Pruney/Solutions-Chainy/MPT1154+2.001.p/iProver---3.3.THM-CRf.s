%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:12:16 EST 2020

% Result     : Theorem 2.85s
% Output     : CNFRefutation 2.85s
% Verified   : 
% Statistics : Number of formulae       :  138 (1390 expanded)
%              Number of clauses        :   77 ( 376 expanded)
%              Number of leaves         :   18 ( 356 expanded)
%              Depth                    :   24
%              Number of atoms          :  466 (7232 expanded)
%              Number of equality atoms :  169 ( 708 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ~ r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ~ r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f25,plain,(
    ? [X0] :
      ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f37,plain,(
    ! [X0] :
      ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( r2_hidden(sK3,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),sK3)))
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( r2_hidden(X1,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l1_orders_2(sK2)
      & v5_orders_2(sK2)
      & v4_orders_2(sK2)
      & v3_orders_2(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3)))
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l1_orders_2(sK2)
    & v5_orders_2(sK2)
    & v4_orders_2(sK2)
    & v3_orders_2(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f25,f37,f36])).

fof(f60,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f38])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f41,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f61,plain,(
    r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3))) ),
    inference(cnf_transformation,[],[f38])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | X0 != X2 )
            & ( X0 = X2
              | ~ r2_hidden(X2,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f30])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK1(X0,X1) != X0
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( sK1(X0,X1) = X0
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK1(X0,X1) != X0
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( sK1(X0,X1) = X0
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f31,f32])).

fof(f43,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | X0 != X3
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f62,plain,(
    ! [X3,X1] :
      ( r2_hidden(X3,X1)
      | k1_tarski(X3) != X1 ) ),
    inference(equality_resolution,[],[f43])).

fof(f63,plain,(
    ! [X3] : r2_hidden(X3,k1_tarski(X3)) ),
    inference(equality_resolution,[],[f62])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(k6_domain_1(u1_struct_0(X0),X1),X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f53,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f59,plain,(
    l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f55,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f56,plain,(
    v3_orders_2(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ~ ( r2_hidden(X1,k1_orders_2(X0,X2))
                  & r2_hidden(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ r2_hidden(X1,k1_orders_2(X0,X2))
              | ~ r2_hidden(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ~ r2_hidden(X1,k1_orders_2(X0,X2))
              | ~ r2_hidden(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X1,k1_orders_2(X0,X2))
      | ~ r2_hidden(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f58,plain,(
    v5_orders_2(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f57,plain,(
    v4_orders_2(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f5,axiom,(
    k1_tarski(k1_xboole_0) = k1_zfmisc_1(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    k1_tarski(k1_xboole_0) = k1_zfmisc_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f5])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f17,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f51,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f34])).

fof(f48,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X1 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f65,plain,(
    ! [X0] : k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0) ),
    inference(equality_resolution,[],[f48])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => v1_xboole_0(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_xboole_0(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( v1_xboole_0(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f27,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f26])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f28])).

fof(f39,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f47,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f66,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f47])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_649,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_651,plain,
    ( k6_domain_1(X0,X1) = k1_tarski(X1)
    | m1_subset_1(X1,X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1127,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK3) = k1_tarski(sK3)
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_649,c_651])).

cnf(c_2,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_657,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2091,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK3) = k1_tarski(sK3)
    | u1_struct_0(sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1127,c_657])).

cnf(c_16,negated_conjecture,
    ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_650,plain,
    ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2190,plain,
    ( u1_struct_0(sK2) = k1_xboole_0
    | r2_hidden(sK3,k1_orders_2(sK2,k1_tarski(sK3))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2091,c_650])).

cnf(c_5,plain,
    ( r2_hidden(X0,k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_861,plain,
    ( r2_hidden(sK3,k1_tarski(sK3)) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_864,plain,
    ( r2_hidden(sK3,k1_tarski(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_861])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_18,negated_conjecture,
    ( l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_269,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_18])).

cnf(c_270,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK2)
    | ~ v3_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_269])).

cnf(c_22,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_21,negated_conjecture,
    ( v3_orders_2(sK2) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_274,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_270,c_22,c_21])).

cnf(c_646,plain,
    ( m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_274])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k1_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_19,negated_conjecture,
    ( v5_orders_2(sK2) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_219,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k1_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ l1_orders_2(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_19])).

cnf(c_220,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k1_orders_2(sK2,X1))
    | v2_struct_0(sK2)
    | ~ v3_orders_2(sK2)
    | ~ v4_orders_2(sK2)
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_219])).

cnf(c_20,negated_conjecture,
    ( v4_orders_2(sK2) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_224,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k1_orders_2(sK2,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_220,c_22,c_21,c_20,c_18])).

cnf(c_648,plain,
    ( m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k1_orders_2(sK2,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_224])).

cnf(c_819,plain,
    ( m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(X1,k6_domain_1(u1_struct_0(sK2),X0)) != iProver_top
    | r2_hidden(X1,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_646,c_648])).

cnf(c_1008,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(sK3,k6_domain_1(u1_struct_0(sK2),sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_650,c_819])).

cnf(c_28,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1011,plain,
    ( r2_hidden(sK3,k6_domain_1(u1_struct_0(sK2),sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1008,c_28])).

cnf(c_2189,plain,
    ( u1_struct_0(sK2) = k1_xboole_0
    | r2_hidden(sK3,k1_tarski(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2091,c_1011])).

cnf(c_2388,plain,
    ( u1_struct_0(sK2) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2190,c_864,c_2189])).

cnf(c_2399,plain,
    ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3)
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2388,c_1127])).

cnf(c_2405,plain,
    ( m1_subset_1(X0,k1_xboole_0) != iProver_top
    | m1_subset_1(k6_domain_1(k1_xboole_0,X0),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2388,c_646])).

cnf(c_10,plain,
    ( k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_2414,plain,
    ( m1_subset_1(X0,k1_xboole_0) != iProver_top
    | m1_subset_1(k6_domain_1(k1_xboole_0,X0),k1_tarski(k1_xboole_0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2405,c_10])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k1_orders_2(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_243,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k1_orders_2(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ l1_orders_2(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_19])).

cnf(c_244,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2)))
    | v2_struct_0(sK2)
    | ~ v3_orders_2(sK2)
    | ~ v4_orders_2(sK2)
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_243])).

cnf(c_248,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_244,c_22,c_21,c_20,c_18])).

cnf(c_647,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_248])).

cnf(c_2404,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2388,c_647])).

cnf(c_2419,plain,
    ( m1_subset_1(X0,k1_tarski(k1_xboole_0)) != iProver_top
    | m1_subset_1(k1_orders_2(sK2,X0),k1_tarski(k1_xboole_0)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2404,c_10])).

cnf(c_7,plain,
    ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_652,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1940,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_7,c_652])).

cnf(c_1952,plain,
    ( m1_subset_1(X0,k1_tarski(k1_xboole_0)) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1940,c_10])).

cnf(c_3660,plain,
    ( m1_subset_1(X0,k1_tarski(k1_xboole_0)) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(k1_orders_2(sK2,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2419,c_1952])).

cnf(c_4827,plain,
    ( m1_subset_1(X0,k1_xboole_0) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(k1_orders_2(sK2,k6_domain_1(k1_xboole_0,X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2414,c_3660])).

cnf(c_4926,plain,
    ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3)
    | m1_subset_1(X0,k1_xboole_0) != iProver_top
    | v1_xboole_0(k1_orders_2(sK2,k6_domain_1(k1_xboole_0,X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2399,c_4827])).

cnf(c_2406,plain,
    ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(k1_xboole_0,sK3))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2388,c_650])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_658,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_2954,plain,
    ( v1_xboole_0(k1_orders_2(sK2,k6_domain_1(k1_xboole_0,sK3))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2406,c_658])).

cnf(c_4952,plain,
    ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3)
    | m1_subset_1(sK3,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_4926,c_2954])).

cnf(c_9,plain,
    ( k2_zfmisc_1(X0,X1) != k1_xboole_0
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_43,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_8,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_44,plain,
    ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_392,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_892,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_392])).

cnf(c_398,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_794,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(sK3,u1_struct_0(sK2))
    | X1 != u1_struct_0(sK2)
    | X0 != sK3 ),
    inference(instantiation,[status(thm)],[c_398])).

cnf(c_1032,plain,
    ( m1_subset_1(sK3,X0)
    | ~ m1_subset_1(sK3,u1_struct_0(sK2))
    | X0 != u1_struct_0(sK2)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_794])).

cnf(c_1034,plain,
    ( X0 != u1_struct_0(sK2)
    | sK3 != sK3
    | m1_subset_1(sK3,X0) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1032])).

cnf(c_1036,plain,
    ( sK3 != sK3
    | k1_xboole_0 != u1_struct_0(sK2)
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK3,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_1034])).

cnf(c_393,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1453,plain,
    ( X0 != X1
    | X0 = u1_struct_0(sK2)
    | u1_struct_0(sK2) != X1 ),
    inference(instantiation,[status(thm)],[c_393])).

cnf(c_1454,plain,
    ( u1_struct_0(sK2) != k1_xboole_0
    | k1_xboole_0 = u1_struct_0(sK2)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1453])).

cnf(c_5024,plain,
    ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4952,c_28,c_43,c_44,c_864,c_892,c_1036,c_1454,c_2189])).

cnf(c_2400,plain,
    ( r2_hidden(sK3,k6_domain_1(k1_xboole_0,sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2388,c_1011])).

cnf(c_5033,plain,
    ( r2_hidden(sK3,k1_tarski(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5024,c_2400])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5033,c_864])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:09:51 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.85/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.85/0.99  
% 2.85/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.85/0.99  
% 2.85/0.99  ------  iProver source info
% 2.85/0.99  
% 2.85/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.85/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.85/0.99  git: non_committed_changes: false
% 2.85/0.99  git: last_make_outside_of_git: false
% 2.85/0.99  
% 2.85/0.99  ------ 
% 2.85/0.99  
% 2.85/0.99  ------ Input Options
% 2.85/0.99  
% 2.85/0.99  --out_options                           all
% 2.85/0.99  --tptp_safe_out                         true
% 2.85/0.99  --problem_path                          ""
% 2.85/0.99  --include_path                          ""
% 2.85/0.99  --clausifier                            res/vclausify_rel
% 2.85/0.99  --clausifier_options                    --mode clausify
% 2.85/0.99  --stdin                                 false
% 2.85/0.99  --stats_out                             all
% 2.85/0.99  
% 2.85/0.99  ------ General Options
% 2.85/0.99  
% 2.85/0.99  --fof                                   false
% 2.85/0.99  --time_out_real                         305.
% 2.85/0.99  --time_out_virtual                      -1.
% 2.85/0.99  --symbol_type_check                     false
% 2.85/0.99  --clausify_out                          false
% 2.85/0.99  --sig_cnt_out                           false
% 2.85/0.99  --trig_cnt_out                          false
% 2.85/0.99  --trig_cnt_out_tolerance                1.
% 2.85/0.99  --trig_cnt_out_sk_spl                   false
% 2.85/0.99  --abstr_cl_out                          false
% 2.85/0.99  
% 2.85/0.99  ------ Global Options
% 2.85/0.99  
% 2.85/0.99  --schedule                              default
% 2.85/0.99  --add_important_lit                     false
% 2.85/0.99  --prop_solver_per_cl                    1000
% 2.85/0.99  --min_unsat_core                        false
% 2.85/0.99  --soft_assumptions                      false
% 2.85/0.99  --soft_lemma_size                       3
% 2.85/0.99  --prop_impl_unit_size                   0
% 2.85/0.99  --prop_impl_unit                        []
% 2.85/0.99  --share_sel_clauses                     true
% 2.85/0.99  --reset_solvers                         false
% 2.85/0.99  --bc_imp_inh                            [conj_cone]
% 2.85/0.99  --conj_cone_tolerance                   3.
% 2.85/0.99  --extra_neg_conj                        none
% 2.85/0.99  --large_theory_mode                     true
% 2.85/0.99  --prolific_symb_bound                   200
% 2.85/0.99  --lt_threshold                          2000
% 2.85/0.99  --clause_weak_htbl                      true
% 2.85/0.99  --gc_record_bc_elim                     false
% 2.85/0.99  
% 2.85/0.99  ------ Preprocessing Options
% 2.85/0.99  
% 2.85/0.99  --preprocessing_flag                    true
% 2.85/0.99  --time_out_prep_mult                    0.1
% 2.85/0.99  --splitting_mode                        input
% 2.85/0.99  --splitting_grd                         true
% 2.85/0.99  --splitting_cvd                         false
% 2.85/0.99  --splitting_cvd_svl                     false
% 2.85/0.99  --splitting_nvd                         32
% 2.85/0.99  --sub_typing                            true
% 2.85/0.99  --prep_gs_sim                           true
% 2.85/0.99  --prep_unflatten                        true
% 2.85/0.99  --prep_res_sim                          true
% 2.85/0.99  --prep_upred                            true
% 2.85/0.99  --prep_sem_filter                       exhaustive
% 2.85/0.99  --prep_sem_filter_out                   false
% 2.85/0.99  --pred_elim                             true
% 2.85/0.99  --res_sim_input                         true
% 2.85/0.99  --eq_ax_congr_red                       true
% 2.85/0.99  --pure_diseq_elim                       true
% 2.85/0.99  --brand_transform                       false
% 2.85/0.99  --non_eq_to_eq                          false
% 2.85/0.99  --prep_def_merge                        true
% 2.85/0.99  --prep_def_merge_prop_impl              false
% 2.85/0.99  --prep_def_merge_mbd                    true
% 2.85/0.99  --prep_def_merge_tr_red                 false
% 2.85/0.99  --prep_def_merge_tr_cl                  false
% 2.85/0.99  --smt_preprocessing                     true
% 2.85/0.99  --smt_ac_axioms                         fast
% 2.85/0.99  --preprocessed_out                      false
% 2.85/0.99  --preprocessed_stats                    false
% 2.85/0.99  
% 2.85/0.99  ------ Abstraction refinement Options
% 2.85/0.99  
% 2.85/0.99  --abstr_ref                             []
% 2.85/0.99  --abstr_ref_prep                        false
% 2.85/0.99  --abstr_ref_until_sat                   false
% 2.85/0.99  --abstr_ref_sig_restrict                funpre
% 2.85/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.85/0.99  --abstr_ref_under                       []
% 2.85/0.99  
% 2.85/0.99  ------ SAT Options
% 2.85/0.99  
% 2.85/0.99  --sat_mode                              false
% 2.85/0.99  --sat_fm_restart_options                ""
% 2.85/0.99  --sat_gr_def                            false
% 2.85/0.99  --sat_epr_types                         true
% 2.85/0.99  --sat_non_cyclic_types                  false
% 2.85/0.99  --sat_finite_models                     false
% 2.85/0.99  --sat_fm_lemmas                         false
% 2.85/0.99  --sat_fm_prep                           false
% 2.85/0.99  --sat_fm_uc_incr                        true
% 2.85/0.99  --sat_out_model                         small
% 2.85/0.99  --sat_out_clauses                       false
% 2.85/0.99  
% 2.85/0.99  ------ QBF Options
% 2.85/0.99  
% 2.85/0.99  --qbf_mode                              false
% 2.85/0.99  --qbf_elim_univ                         false
% 2.85/0.99  --qbf_dom_inst                          none
% 2.85/0.99  --qbf_dom_pre_inst                      false
% 2.85/0.99  --qbf_sk_in                             false
% 2.85/0.99  --qbf_pred_elim                         true
% 2.85/0.99  --qbf_split                             512
% 2.85/0.99  
% 2.85/0.99  ------ BMC1 Options
% 2.85/0.99  
% 2.85/0.99  --bmc1_incremental                      false
% 2.85/0.99  --bmc1_axioms                           reachable_all
% 2.85/0.99  --bmc1_min_bound                        0
% 2.85/0.99  --bmc1_max_bound                        -1
% 2.85/0.99  --bmc1_max_bound_default                -1
% 2.85/0.99  --bmc1_symbol_reachability              true
% 2.85/0.99  --bmc1_property_lemmas                  false
% 2.85/0.99  --bmc1_k_induction                      false
% 2.85/0.99  --bmc1_non_equiv_states                 false
% 2.85/0.99  --bmc1_deadlock                         false
% 2.85/0.99  --bmc1_ucm                              false
% 2.85/0.99  --bmc1_add_unsat_core                   none
% 2.85/0.99  --bmc1_unsat_core_children              false
% 2.85/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.85/0.99  --bmc1_out_stat                         full
% 2.85/0.99  --bmc1_ground_init                      false
% 2.85/0.99  --bmc1_pre_inst_next_state              false
% 2.85/0.99  --bmc1_pre_inst_state                   false
% 2.85/0.99  --bmc1_pre_inst_reach_state             false
% 2.85/0.99  --bmc1_out_unsat_core                   false
% 2.85/0.99  --bmc1_aig_witness_out                  false
% 2.85/0.99  --bmc1_verbose                          false
% 2.85/0.99  --bmc1_dump_clauses_tptp                false
% 2.85/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.85/0.99  --bmc1_dump_file                        -
% 2.85/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.85/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.85/0.99  --bmc1_ucm_extend_mode                  1
% 2.85/0.99  --bmc1_ucm_init_mode                    2
% 2.85/0.99  --bmc1_ucm_cone_mode                    none
% 2.85/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.85/0.99  --bmc1_ucm_relax_model                  4
% 2.85/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.85/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.85/0.99  --bmc1_ucm_layered_model                none
% 2.85/0.99  --bmc1_ucm_max_lemma_size               10
% 2.85/0.99  
% 2.85/0.99  ------ AIG Options
% 2.85/0.99  
% 2.85/0.99  --aig_mode                              false
% 2.85/0.99  
% 2.85/0.99  ------ Instantiation Options
% 2.85/0.99  
% 2.85/0.99  --instantiation_flag                    true
% 2.85/0.99  --inst_sos_flag                         false
% 2.85/0.99  --inst_sos_phase                        true
% 2.85/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.85/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.85/0.99  --inst_lit_sel_side                     num_symb
% 2.85/0.99  --inst_solver_per_active                1400
% 2.85/0.99  --inst_solver_calls_frac                1.
% 2.85/0.99  --inst_passive_queue_type               priority_queues
% 2.85/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.85/0.99  --inst_passive_queues_freq              [25;2]
% 2.85/0.99  --inst_dismatching                      true
% 2.85/0.99  --inst_eager_unprocessed_to_passive     true
% 2.85/0.99  --inst_prop_sim_given                   true
% 2.85/0.99  --inst_prop_sim_new                     false
% 2.85/0.99  --inst_subs_new                         false
% 2.85/0.99  --inst_eq_res_simp                      false
% 2.85/0.99  --inst_subs_given                       false
% 2.85/0.99  --inst_orphan_elimination               true
% 2.85/0.99  --inst_learning_loop_flag               true
% 2.85/0.99  --inst_learning_start                   3000
% 2.85/0.99  --inst_learning_factor                  2
% 2.85/0.99  --inst_start_prop_sim_after_learn       3
% 2.85/0.99  --inst_sel_renew                        solver
% 2.85/0.99  --inst_lit_activity_flag                true
% 2.85/0.99  --inst_restr_to_given                   false
% 2.85/0.99  --inst_activity_threshold               500
% 2.85/0.99  --inst_out_proof                        true
% 2.85/0.99  
% 2.85/0.99  ------ Resolution Options
% 2.85/0.99  
% 2.85/0.99  --resolution_flag                       true
% 2.85/0.99  --res_lit_sel                           adaptive
% 2.85/0.99  --res_lit_sel_side                      none
% 2.85/0.99  --res_ordering                          kbo
% 2.85/0.99  --res_to_prop_solver                    active
% 2.85/0.99  --res_prop_simpl_new                    false
% 2.85/0.99  --res_prop_simpl_given                  true
% 2.85/0.99  --res_passive_queue_type                priority_queues
% 2.85/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.85/0.99  --res_passive_queues_freq               [15;5]
% 2.85/0.99  --res_forward_subs                      full
% 2.85/0.99  --res_backward_subs                     full
% 2.85/0.99  --res_forward_subs_resolution           true
% 2.85/0.99  --res_backward_subs_resolution          true
% 2.85/0.99  --res_orphan_elimination                true
% 2.85/0.99  --res_time_limit                        2.
% 2.85/0.99  --res_out_proof                         true
% 2.85/0.99  
% 2.85/0.99  ------ Superposition Options
% 2.85/0.99  
% 2.85/0.99  --superposition_flag                    true
% 2.85/0.99  --sup_passive_queue_type                priority_queues
% 2.85/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.85/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.85/0.99  --demod_completeness_check              fast
% 2.85/0.99  --demod_use_ground                      true
% 2.85/0.99  --sup_to_prop_solver                    passive
% 2.85/0.99  --sup_prop_simpl_new                    true
% 2.85/0.99  --sup_prop_simpl_given                  true
% 2.85/0.99  --sup_fun_splitting                     false
% 2.85/0.99  --sup_smt_interval                      50000
% 2.85/0.99  
% 2.85/0.99  ------ Superposition Simplification Setup
% 2.85/0.99  
% 2.85/0.99  --sup_indices_passive                   []
% 2.85/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.85/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/0.99  --sup_full_bw                           [BwDemod]
% 2.85/0.99  --sup_immed_triv                        [TrivRules]
% 2.85/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.85/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/0.99  --sup_immed_bw_main                     []
% 2.85/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.85/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/0.99  
% 2.85/0.99  ------ Combination Options
% 2.85/0.99  
% 2.85/0.99  --comb_res_mult                         3
% 2.85/0.99  --comb_sup_mult                         2
% 2.85/0.99  --comb_inst_mult                        10
% 2.85/0.99  
% 2.85/0.99  ------ Debug Options
% 2.85/0.99  
% 2.85/0.99  --dbg_backtrace                         false
% 2.85/0.99  --dbg_dump_prop_clauses                 false
% 2.85/0.99  --dbg_dump_prop_clauses_file            -
% 2.85/0.99  --dbg_out_stat                          false
% 2.85/0.99  ------ Parsing...
% 2.85/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.85/0.99  
% 2.85/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 2.85/0.99  
% 2.85/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.85/0.99  
% 2.85/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.85/0.99  ------ Proving...
% 2.85/0.99  ------ Problem Properties 
% 2.85/0.99  
% 2.85/0.99  
% 2.85/0.99  clauses                                 18
% 2.85/0.99  conjectures                             2
% 2.85/0.99  EPR                                     2
% 2.85/0.99  Horn                                    14
% 2.85/0.99  unary                                   6
% 2.85/0.99  binary                                  6
% 2.85/0.99  lits                                    37
% 2.85/0.99  lits eq                                 13
% 2.85/0.99  fd_pure                                 0
% 2.85/0.99  fd_pseudo                               0
% 2.85/0.99  fd_cond                                 2
% 2.85/0.99  fd_pseudo_cond                          2
% 2.85/0.99  AC symbols                              0
% 2.85/0.99  
% 2.85/0.99  ------ Schedule dynamic 5 is on 
% 2.85/0.99  
% 2.85/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.85/0.99  
% 2.85/0.99  
% 2.85/0.99  ------ 
% 2.85/0.99  Current options:
% 2.85/0.99  ------ 
% 2.85/0.99  
% 2.85/0.99  ------ Input Options
% 2.85/0.99  
% 2.85/0.99  --out_options                           all
% 2.85/0.99  --tptp_safe_out                         true
% 2.85/0.99  --problem_path                          ""
% 2.85/0.99  --include_path                          ""
% 2.85/0.99  --clausifier                            res/vclausify_rel
% 2.85/0.99  --clausifier_options                    --mode clausify
% 2.85/0.99  --stdin                                 false
% 2.85/0.99  --stats_out                             all
% 2.85/0.99  
% 2.85/0.99  ------ General Options
% 2.85/0.99  
% 2.85/0.99  --fof                                   false
% 2.85/0.99  --time_out_real                         305.
% 2.85/0.99  --time_out_virtual                      -1.
% 2.85/0.99  --symbol_type_check                     false
% 2.85/0.99  --clausify_out                          false
% 2.85/0.99  --sig_cnt_out                           false
% 2.85/0.99  --trig_cnt_out                          false
% 2.85/0.99  --trig_cnt_out_tolerance                1.
% 2.85/0.99  --trig_cnt_out_sk_spl                   false
% 2.85/0.99  --abstr_cl_out                          false
% 2.85/0.99  
% 2.85/0.99  ------ Global Options
% 2.85/0.99  
% 2.85/0.99  --schedule                              default
% 2.85/0.99  --add_important_lit                     false
% 2.85/0.99  --prop_solver_per_cl                    1000
% 2.85/0.99  --min_unsat_core                        false
% 2.85/0.99  --soft_assumptions                      false
% 2.85/0.99  --soft_lemma_size                       3
% 2.85/0.99  --prop_impl_unit_size                   0
% 2.85/0.99  --prop_impl_unit                        []
% 2.85/0.99  --share_sel_clauses                     true
% 2.85/0.99  --reset_solvers                         false
% 2.85/0.99  --bc_imp_inh                            [conj_cone]
% 2.85/0.99  --conj_cone_tolerance                   3.
% 2.85/0.99  --extra_neg_conj                        none
% 2.85/0.99  --large_theory_mode                     true
% 2.85/0.99  --prolific_symb_bound                   200
% 2.85/0.99  --lt_threshold                          2000
% 2.85/0.99  --clause_weak_htbl                      true
% 2.85/0.99  --gc_record_bc_elim                     false
% 2.85/0.99  
% 2.85/0.99  ------ Preprocessing Options
% 2.85/0.99  
% 2.85/0.99  --preprocessing_flag                    true
% 2.85/0.99  --time_out_prep_mult                    0.1
% 2.85/0.99  --splitting_mode                        input
% 2.85/0.99  --splitting_grd                         true
% 2.85/0.99  --splitting_cvd                         false
% 2.85/0.99  --splitting_cvd_svl                     false
% 2.85/0.99  --splitting_nvd                         32
% 2.85/0.99  --sub_typing                            true
% 2.85/0.99  --prep_gs_sim                           true
% 2.85/0.99  --prep_unflatten                        true
% 2.85/0.99  --prep_res_sim                          true
% 2.85/0.99  --prep_upred                            true
% 2.85/0.99  --prep_sem_filter                       exhaustive
% 2.85/0.99  --prep_sem_filter_out                   false
% 2.85/0.99  --pred_elim                             true
% 2.85/0.99  --res_sim_input                         true
% 2.85/0.99  --eq_ax_congr_red                       true
% 2.85/0.99  --pure_diseq_elim                       true
% 2.85/0.99  --brand_transform                       false
% 2.85/0.99  --non_eq_to_eq                          false
% 2.85/0.99  --prep_def_merge                        true
% 2.85/0.99  --prep_def_merge_prop_impl              false
% 2.85/0.99  --prep_def_merge_mbd                    true
% 2.85/0.99  --prep_def_merge_tr_red                 false
% 2.85/0.99  --prep_def_merge_tr_cl                  false
% 2.85/0.99  --smt_preprocessing                     true
% 2.85/0.99  --smt_ac_axioms                         fast
% 2.85/0.99  --preprocessed_out                      false
% 2.85/0.99  --preprocessed_stats                    false
% 2.85/0.99  
% 2.85/0.99  ------ Abstraction refinement Options
% 2.85/0.99  
% 2.85/0.99  --abstr_ref                             []
% 2.85/0.99  --abstr_ref_prep                        false
% 2.85/0.99  --abstr_ref_until_sat                   false
% 2.85/0.99  --abstr_ref_sig_restrict                funpre
% 2.85/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.85/0.99  --abstr_ref_under                       []
% 2.85/0.99  
% 2.85/0.99  ------ SAT Options
% 2.85/0.99  
% 2.85/0.99  --sat_mode                              false
% 2.85/0.99  --sat_fm_restart_options                ""
% 2.85/0.99  --sat_gr_def                            false
% 2.85/0.99  --sat_epr_types                         true
% 2.85/0.99  --sat_non_cyclic_types                  false
% 2.85/0.99  --sat_finite_models                     false
% 2.85/0.99  --sat_fm_lemmas                         false
% 2.85/0.99  --sat_fm_prep                           false
% 2.85/0.99  --sat_fm_uc_incr                        true
% 2.85/0.99  --sat_out_model                         small
% 2.85/0.99  --sat_out_clauses                       false
% 2.85/0.99  
% 2.85/0.99  ------ QBF Options
% 2.85/0.99  
% 2.85/0.99  --qbf_mode                              false
% 2.85/0.99  --qbf_elim_univ                         false
% 2.85/0.99  --qbf_dom_inst                          none
% 2.85/0.99  --qbf_dom_pre_inst                      false
% 2.85/0.99  --qbf_sk_in                             false
% 2.85/0.99  --qbf_pred_elim                         true
% 2.85/0.99  --qbf_split                             512
% 2.85/0.99  
% 2.85/0.99  ------ BMC1 Options
% 2.85/0.99  
% 2.85/0.99  --bmc1_incremental                      false
% 2.85/0.99  --bmc1_axioms                           reachable_all
% 2.85/0.99  --bmc1_min_bound                        0
% 2.85/0.99  --bmc1_max_bound                        -1
% 2.85/0.99  --bmc1_max_bound_default                -1
% 2.85/0.99  --bmc1_symbol_reachability              true
% 2.85/0.99  --bmc1_property_lemmas                  false
% 2.85/0.99  --bmc1_k_induction                      false
% 2.85/0.99  --bmc1_non_equiv_states                 false
% 2.85/0.99  --bmc1_deadlock                         false
% 2.85/0.99  --bmc1_ucm                              false
% 2.85/0.99  --bmc1_add_unsat_core                   none
% 2.85/0.99  --bmc1_unsat_core_children              false
% 2.85/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.85/0.99  --bmc1_out_stat                         full
% 2.85/0.99  --bmc1_ground_init                      false
% 2.85/0.99  --bmc1_pre_inst_next_state              false
% 2.85/0.99  --bmc1_pre_inst_state                   false
% 2.85/0.99  --bmc1_pre_inst_reach_state             false
% 2.85/0.99  --bmc1_out_unsat_core                   false
% 2.85/0.99  --bmc1_aig_witness_out                  false
% 2.85/0.99  --bmc1_verbose                          false
% 2.85/0.99  --bmc1_dump_clauses_tptp                false
% 2.85/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.85/0.99  --bmc1_dump_file                        -
% 2.85/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.85/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.85/0.99  --bmc1_ucm_extend_mode                  1
% 2.85/0.99  --bmc1_ucm_init_mode                    2
% 2.85/0.99  --bmc1_ucm_cone_mode                    none
% 2.85/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.85/0.99  --bmc1_ucm_relax_model                  4
% 2.85/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.85/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.85/0.99  --bmc1_ucm_layered_model                none
% 2.85/0.99  --bmc1_ucm_max_lemma_size               10
% 2.85/0.99  
% 2.85/0.99  ------ AIG Options
% 2.85/0.99  
% 2.85/0.99  --aig_mode                              false
% 2.85/0.99  
% 2.85/0.99  ------ Instantiation Options
% 2.85/0.99  
% 2.85/0.99  --instantiation_flag                    true
% 2.85/0.99  --inst_sos_flag                         false
% 2.85/0.99  --inst_sos_phase                        true
% 2.85/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.85/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.85/0.99  --inst_lit_sel_side                     none
% 2.85/0.99  --inst_solver_per_active                1400
% 2.85/0.99  --inst_solver_calls_frac                1.
% 2.85/0.99  --inst_passive_queue_type               priority_queues
% 2.85/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.85/0.99  --inst_passive_queues_freq              [25;2]
% 2.85/0.99  --inst_dismatching                      true
% 2.85/0.99  --inst_eager_unprocessed_to_passive     true
% 2.85/0.99  --inst_prop_sim_given                   true
% 2.85/0.99  --inst_prop_sim_new                     false
% 2.85/0.99  --inst_subs_new                         false
% 2.85/0.99  --inst_eq_res_simp                      false
% 2.85/0.99  --inst_subs_given                       false
% 2.85/0.99  --inst_orphan_elimination               true
% 2.85/0.99  --inst_learning_loop_flag               true
% 2.85/0.99  --inst_learning_start                   3000
% 2.85/0.99  --inst_learning_factor                  2
% 2.85/0.99  --inst_start_prop_sim_after_learn       3
% 2.85/0.99  --inst_sel_renew                        solver
% 2.85/0.99  --inst_lit_activity_flag                true
% 2.85/0.99  --inst_restr_to_given                   false
% 2.85/0.99  --inst_activity_threshold               500
% 2.85/0.99  --inst_out_proof                        true
% 2.85/0.99  
% 2.85/0.99  ------ Resolution Options
% 2.85/0.99  
% 2.85/0.99  --resolution_flag                       false
% 2.85/0.99  --res_lit_sel                           adaptive
% 2.85/0.99  --res_lit_sel_side                      none
% 2.85/0.99  --res_ordering                          kbo
% 2.85/0.99  --res_to_prop_solver                    active
% 2.85/0.99  --res_prop_simpl_new                    false
% 2.85/0.99  --res_prop_simpl_given                  true
% 2.85/0.99  --res_passive_queue_type                priority_queues
% 2.85/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.85/0.99  --res_passive_queues_freq               [15;5]
% 2.85/0.99  --res_forward_subs                      full
% 2.85/0.99  --res_backward_subs                     full
% 2.85/0.99  --res_forward_subs_resolution           true
% 2.85/0.99  --res_backward_subs_resolution          true
% 2.85/0.99  --res_orphan_elimination                true
% 2.85/0.99  --res_time_limit                        2.
% 2.85/0.99  --res_out_proof                         true
% 2.85/0.99  
% 2.85/0.99  ------ Superposition Options
% 2.85/0.99  
% 2.85/0.99  --superposition_flag                    true
% 2.85/0.99  --sup_passive_queue_type                priority_queues
% 2.85/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.85/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.85/0.99  --demod_completeness_check              fast
% 2.85/0.99  --demod_use_ground                      true
% 2.85/0.99  --sup_to_prop_solver                    passive
% 2.85/0.99  --sup_prop_simpl_new                    true
% 2.85/0.99  --sup_prop_simpl_given                  true
% 2.85/0.99  --sup_fun_splitting                     false
% 2.85/0.99  --sup_smt_interval                      50000
% 2.85/0.99  
% 2.85/0.99  ------ Superposition Simplification Setup
% 2.85/0.99  
% 2.85/0.99  --sup_indices_passive                   []
% 2.85/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.85/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.85/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/0.99  --sup_full_bw                           [BwDemod]
% 2.85/0.99  --sup_immed_triv                        [TrivRules]
% 2.85/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.85/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/0.99  --sup_immed_bw_main                     []
% 2.85/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.85/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.85/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.85/0.99  
% 2.85/0.99  ------ Combination Options
% 2.85/0.99  
% 2.85/0.99  --comb_res_mult                         3
% 2.85/0.99  --comb_sup_mult                         2
% 2.85/0.99  --comb_inst_mult                        10
% 2.85/0.99  
% 2.85/0.99  ------ Debug Options
% 2.85/0.99  
% 2.85/0.99  --dbg_backtrace                         false
% 2.85/0.99  --dbg_dump_prop_clauses                 false
% 2.85/0.99  --dbg_dump_prop_clauses_file            -
% 2.85/0.99  --dbg_out_stat                          false
% 2.85/0.99  
% 2.85/0.99  
% 2.85/0.99  
% 2.85/0.99  
% 2.85/0.99  ------ Proving...
% 2.85/0.99  
% 2.85/0.99  
% 2.85/0.99  % SZS status Theorem for theBenchmark.p
% 2.85/0.99  
% 2.85/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.85/0.99  
% 2.85/0.99  fof(f11,conjecture,(
% 2.85/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ~r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f12,negated_conjecture,(
% 2.85/0.99    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ~r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1)))))),
% 2.85/0.99    inference(negated_conjecture,[],[f11])).
% 2.85/0.99  
% 2.85/0.99  fof(f24,plain,(
% 2.85/0.99    ? [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 2.85/0.99    inference(ennf_transformation,[],[f12])).
% 2.85/0.99  
% 2.85/0.99  fof(f25,plain,(
% 2.85/0.99    ? [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 2.85/0.99    inference(flattening,[],[f24])).
% 2.85/0.99  
% 2.85/0.99  fof(f37,plain,(
% 2.85/0.99    ( ! [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) => (r2_hidden(sK3,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),sK3))) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 2.85/0.99    introduced(choice_axiom,[])).
% 2.85/0.99  
% 2.85/0.99  fof(f36,plain,(
% 2.85/0.99    ? [X0] : (? [X1] : (r2_hidden(X1,k1_orders_2(X0,k6_domain_1(u1_struct_0(X0),X1))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (r2_hidden(X1,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),X1))) & m1_subset_1(X1,u1_struct_0(sK2))) & l1_orders_2(sK2) & v5_orders_2(sK2) & v4_orders_2(sK2) & v3_orders_2(sK2) & ~v2_struct_0(sK2))),
% 2.85/0.99    introduced(choice_axiom,[])).
% 2.85/0.99  
% 2.85/0.99  fof(f38,plain,(
% 2.85/0.99    (r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3))) & m1_subset_1(sK3,u1_struct_0(sK2))) & l1_orders_2(sK2) & v5_orders_2(sK2) & v4_orders_2(sK2) & v3_orders_2(sK2) & ~v2_struct_0(sK2)),
% 2.85/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f25,f37,f36])).
% 2.85/0.99  
% 2.85/0.99  fof(f60,plain,(
% 2.85/0.99    m1_subset_1(sK3,u1_struct_0(sK2))),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f8,axiom,(
% 2.85/0.99    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f18,plain,(
% 2.85/0.99    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.85/0.99    inference(ennf_transformation,[],[f8])).
% 2.85/0.99  
% 2.85/0.99  fof(f19,plain,(
% 2.85/0.99    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.85/0.99    inference(flattening,[],[f18])).
% 2.85/0.99  
% 2.85/0.99  fof(f52,plain,(
% 2.85/0.99    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.85/0.99    inference(cnf_transformation,[],[f19])).
% 2.85/0.99  
% 2.85/0.99  fof(f2,axiom,(
% 2.85/0.99    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f14,plain,(
% 2.85/0.99    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 2.85/0.99    inference(ennf_transformation,[],[f2])).
% 2.85/0.99  
% 2.85/0.99  fof(f41,plain,(
% 2.85/0.99    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.85/0.99    inference(cnf_transformation,[],[f14])).
% 2.85/0.99  
% 2.85/0.99  fof(f61,plain,(
% 2.85/0.99    r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3)))),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f3,axiom,(
% 2.85/0.99    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f30,plain,(
% 2.85/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 2.85/0.99    inference(nnf_transformation,[],[f3])).
% 2.85/0.99  
% 2.85/0.99  fof(f31,plain,(
% 2.85/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.85/0.99    inference(rectify,[],[f30])).
% 2.85/0.99  
% 2.85/0.99  fof(f32,plain,(
% 2.85/0.99    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK1(X0,X1) != X0 | ~r2_hidden(sK1(X0,X1),X1)) & (sK1(X0,X1) = X0 | r2_hidden(sK1(X0,X1),X1))))),
% 2.85/0.99    introduced(choice_axiom,[])).
% 2.85/0.99  
% 2.85/0.99  fof(f33,plain,(
% 2.85/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK1(X0,X1) != X0 | ~r2_hidden(sK1(X0,X1),X1)) & (sK1(X0,X1) = X0 | r2_hidden(sK1(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.85/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f31,f32])).
% 2.85/0.99  
% 2.85/0.99  fof(f43,plain,(
% 2.85/0.99    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | X0 != X3 | k1_tarski(X0) != X1) )),
% 2.85/0.99    inference(cnf_transformation,[],[f33])).
% 2.85/0.99  
% 2.85/0.99  fof(f62,plain,(
% 2.85/0.99    ( ! [X3,X1] : (r2_hidden(X3,X1) | k1_tarski(X3) != X1) )),
% 2.85/0.99    inference(equality_resolution,[],[f43])).
% 2.85/0.99  
% 2.85/0.99  fof(f63,plain,(
% 2.85/0.99    ( ! [X3] : (r2_hidden(X3,k1_tarski(X3))) )),
% 2.85/0.99    inference(equality_resolution,[],[f62])).
% 2.85/0.99  
% 2.85/0.99  fof(f9,axiom,(
% 2.85/0.99    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(k6_domain_1(u1_struct_0(X0),X1),X0))))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f13,plain,(
% 2.85/0.99    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.85/0.99    inference(pure_predicate_removal,[],[f9])).
% 2.85/0.99  
% 2.85/0.99  fof(f20,plain,(
% 2.85/0.99    ! [X0] : (! [X1] : (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 2.85/0.99    inference(ennf_transformation,[],[f13])).
% 2.85/0.99  
% 2.85/0.99  fof(f21,plain,(
% 2.85/0.99    ! [X0] : (! [X1] : (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 2.85/0.99    inference(flattening,[],[f20])).
% 2.85/0.99  
% 2.85/0.99  fof(f53,plain,(
% 2.85/0.99    ( ! [X0,X1] : (m1_subset_1(k6_domain_1(u1_struct_0(X0),X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 2.85/0.99    inference(cnf_transformation,[],[f21])).
% 2.85/0.99  
% 2.85/0.99  fof(f59,plain,(
% 2.85/0.99    l1_orders_2(sK2)),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f55,plain,(
% 2.85/0.99    ~v2_struct_0(sK2)),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f56,plain,(
% 2.85/0.99    v3_orders_2(sK2)),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f10,axiom,(
% 2.85/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ~(r2_hidden(X1,k1_orders_2(X0,X2)) & r2_hidden(X1,X2)))))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f22,plain,(
% 2.85/0.99    ! [X0] : (! [X1] : (! [X2] : ((~r2_hidden(X1,k1_orders_2(X0,X2)) | ~r2_hidden(X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 2.85/0.99    inference(ennf_transformation,[],[f10])).
% 2.85/0.99  
% 2.85/0.99  fof(f23,plain,(
% 2.85/0.99    ! [X0] : (! [X1] : (! [X2] : (~r2_hidden(X1,k1_orders_2(X0,X2)) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 2.85/0.99    inference(flattening,[],[f22])).
% 2.85/0.99  
% 2.85/0.99  fof(f54,plain,(
% 2.85/0.99    ( ! [X2,X0,X1] : (~r2_hidden(X1,k1_orders_2(X0,X2)) | ~r2_hidden(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 2.85/0.99    inference(cnf_transformation,[],[f23])).
% 2.85/0.99  
% 2.85/0.99  fof(f58,plain,(
% 2.85/0.99    v5_orders_2(sK2)),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f57,plain,(
% 2.85/0.99    v4_orders_2(sK2)),
% 2.85/0.99    inference(cnf_transformation,[],[f38])).
% 2.85/0.99  
% 2.85/0.99  fof(f5,axiom,(
% 2.85/0.99    k1_tarski(k1_xboole_0) = k1_zfmisc_1(k1_xboole_0)),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f49,plain,(
% 2.85/0.99    k1_tarski(k1_xboole_0) = k1_zfmisc_1(k1_xboole_0)),
% 2.85/0.99    inference(cnf_transformation,[],[f5])).
% 2.85/0.99  
% 2.85/0.99  fof(f7,axiom,(
% 2.85/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f16,plain,(
% 2.85/0.99    ! [X0,X1] : (m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 2.85/0.99    inference(ennf_transformation,[],[f7])).
% 2.85/0.99  
% 2.85/0.99  fof(f17,plain,(
% 2.85/0.99    ! [X0,X1] : (m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 2.85/0.99    inference(flattening,[],[f16])).
% 2.85/0.99  
% 2.85/0.99  fof(f51,plain,(
% 2.85/0.99    ( ! [X0,X1] : (m1_subset_1(k1_orders_2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 2.85/0.99    inference(cnf_transformation,[],[f17])).
% 2.85/0.99  
% 2.85/0.99  fof(f4,axiom,(
% 2.85/0.99    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f34,plain,(
% 2.85/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.85/0.99    inference(nnf_transformation,[],[f4])).
% 2.85/0.99  
% 2.85/0.99  fof(f35,plain,(
% 2.85/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.85/0.99    inference(flattening,[],[f34])).
% 2.85/0.99  
% 2.85/0.99  fof(f48,plain,(
% 2.85/0.99    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X1) )),
% 2.85/0.99    inference(cnf_transformation,[],[f35])).
% 2.85/0.99  
% 2.85/0.99  fof(f65,plain,(
% 2.85/0.99    ( ! [X0] : (k1_xboole_0 = k2_zfmisc_1(X0,k1_xboole_0)) )),
% 2.85/0.99    inference(equality_resolution,[],[f48])).
% 2.85/0.99  
% 2.85/0.99  fof(f6,axiom,(
% 2.85/0.99    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_xboole_0(X2)))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f15,plain,(
% 2.85/0.99    ! [X0,X1] : (! [X2] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | ~v1_xboole_0(X0))),
% 2.85/0.99    inference(ennf_transformation,[],[f6])).
% 2.85/0.99  
% 2.85/0.99  fof(f50,plain,(
% 2.85/0.99    ( ! [X2,X0,X1] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_xboole_0(X0)) )),
% 2.85/0.99    inference(cnf_transformation,[],[f15])).
% 2.85/0.99  
% 2.85/0.99  fof(f1,axiom,(
% 2.85/0.99    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.85/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.85/0.99  
% 2.85/0.99  fof(f26,plain,(
% 2.85/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.85/0.99    inference(nnf_transformation,[],[f1])).
% 2.85/0.99  
% 2.85/0.99  fof(f27,plain,(
% 2.85/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.85/1.00    inference(rectify,[],[f26])).
% 2.85/1.00  
% 2.85/1.00  fof(f28,plain,(
% 2.85/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.85/1.00    introduced(choice_axiom,[])).
% 2.85/1.00  
% 2.85/1.00  fof(f29,plain,(
% 2.85/1.00    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.85/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f28])).
% 2.85/1.00  
% 2.85/1.00  fof(f39,plain,(
% 2.85/1.00    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 2.85/1.00    inference(cnf_transformation,[],[f29])).
% 2.85/1.00  
% 2.85/1.00  fof(f46,plain,(
% 2.85/1.00    ( ! [X0,X1] : (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)) )),
% 2.85/1.00    inference(cnf_transformation,[],[f35])).
% 2.85/1.00  
% 2.85/1.00  fof(f47,plain,(
% 2.85/1.00    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 2.85/1.00    inference(cnf_transformation,[],[f35])).
% 2.85/1.00  
% 2.85/1.00  fof(f66,plain,(
% 2.85/1.00    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 2.85/1.00    inference(equality_resolution,[],[f47])).
% 2.85/1.00  
% 2.85/1.00  cnf(c_17,negated_conjecture,
% 2.85/1.00      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 2.85/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_649,plain,
% 2.85/1.00      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_13,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,X1)
% 2.85/1.00      | v1_xboole_0(X1)
% 2.85/1.00      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 2.85/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_651,plain,
% 2.85/1.00      ( k6_domain_1(X0,X1) = k1_tarski(X1)
% 2.85/1.00      | m1_subset_1(X1,X0) != iProver_top
% 2.85/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1127,plain,
% 2.85/1.00      ( k6_domain_1(u1_struct_0(sK2),sK3) = k1_tarski(sK3)
% 2.85/1.00      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_649,c_651]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2,plain,
% 2.85/1.00      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.85/1.00      inference(cnf_transformation,[],[f41]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_657,plain,
% 2.85/1.00      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2091,plain,
% 2.85/1.00      ( k6_domain_1(u1_struct_0(sK2),sK3) = k1_tarski(sK3)
% 2.85/1.00      | u1_struct_0(sK2) = k1_xboole_0 ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_1127,c_657]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_16,negated_conjecture,
% 2.85/1.00      ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3))) ),
% 2.85/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_650,plain,
% 2.85/1.00      ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),sK3))) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2190,plain,
% 2.85/1.00      ( u1_struct_0(sK2) = k1_xboole_0
% 2.85/1.00      | r2_hidden(sK3,k1_orders_2(sK2,k1_tarski(sK3))) = iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_2091,c_650]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_5,plain,
% 2.85/1.00      ( r2_hidden(X0,k1_tarski(X0)) ),
% 2.85/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_861,plain,
% 2.85/1.00      ( r2_hidden(sK3,k1_tarski(sK3)) ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_864,plain,
% 2.85/1.00      ( r2_hidden(sK3,k1_tarski(sK3)) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_861]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_14,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.85/1.00      | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | v2_struct_0(X1)
% 2.85/1.00      | ~ v3_orders_2(X1)
% 2.85/1.00      | ~ l1_orders_2(X1) ),
% 2.85/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_18,negated_conjecture,
% 2.85/1.00      ( l1_orders_2(sK2) ),
% 2.85/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_269,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.85/1.00      | m1_subset_1(k6_domain_1(u1_struct_0(X1),X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | v2_struct_0(X1)
% 2.85/1.00      | ~ v3_orders_2(X1)
% 2.85/1.00      | sK2 != X1 ),
% 2.85/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_18]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_270,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.85/1.00      | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.85/1.00      | v2_struct_0(sK2)
% 2.85/1.00      | ~ v3_orders_2(sK2) ),
% 2.85/1.00      inference(unflattening,[status(thm)],[c_269]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_22,negated_conjecture,
% 2.85/1.00      ( ~ v2_struct_0(sK2) ),
% 2.85/1.00      inference(cnf_transformation,[],[f55]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_21,negated_conjecture,
% 2.85/1.00      ( v3_orders_2(sK2) ),
% 2.85/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_274,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.85/1.00      | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.85/1.00      inference(global_propositional_subsumption,
% 2.85/1.00                [status(thm)],
% 2.85/1.00                [c_270,c_22,c_21]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_646,plain,
% 2.85/1.00      ( m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top
% 2.85/1.00      | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_274]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_15,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.85/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | ~ r2_hidden(X0,X2)
% 2.85/1.00      | ~ r2_hidden(X0,k1_orders_2(X1,X2))
% 2.85/1.00      | v2_struct_0(X1)
% 2.85/1.00      | ~ v3_orders_2(X1)
% 2.85/1.00      | ~ v4_orders_2(X1)
% 2.85/1.00      | ~ v5_orders_2(X1)
% 2.85/1.00      | ~ l1_orders_2(X1) ),
% 2.85/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_19,negated_conjecture,
% 2.85/1.00      ( v5_orders_2(sK2) ),
% 2.85/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_219,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.85/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | ~ r2_hidden(X0,X2)
% 2.85/1.00      | ~ r2_hidden(X0,k1_orders_2(X1,X2))
% 2.85/1.00      | v2_struct_0(X1)
% 2.85/1.00      | ~ v3_orders_2(X1)
% 2.85/1.00      | ~ v4_orders_2(X1)
% 2.85/1.00      | ~ l1_orders_2(X1)
% 2.85/1.00      | sK2 != X1 ),
% 2.85/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_19]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_220,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.85/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.85/1.00      | ~ r2_hidden(X0,X1)
% 2.85/1.00      | ~ r2_hidden(X0,k1_orders_2(sK2,X1))
% 2.85/1.00      | v2_struct_0(sK2)
% 2.85/1.00      | ~ v3_orders_2(sK2)
% 2.85/1.00      | ~ v4_orders_2(sK2)
% 2.85/1.00      | ~ l1_orders_2(sK2) ),
% 2.85/1.00      inference(unflattening,[status(thm)],[c_219]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_20,negated_conjecture,
% 2.85/1.00      ( v4_orders_2(sK2) ),
% 2.85/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_224,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.85/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.85/1.00      | ~ r2_hidden(X0,X1)
% 2.85/1.00      | ~ r2_hidden(X0,k1_orders_2(sK2,X1)) ),
% 2.85/1.00      inference(global_propositional_subsumption,
% 2.85/1.00                [status(thm)],
% 2.85/1.00                [c_220,c_22,c_21,c_20,c_18]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_648,plain,
% 2.85/1.00      ( m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top
% 2.85/1.00      | m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.85/1.00      | r2_hidden(X0,X1) != iProver_top
% 2.85/1.00      | r2_hidden(X0,k1_orders_2(sK2,X1)) != iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_224]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_819,plain,
% 2.85/1.00      ( m1_subset_1(X0,u1_struct_0(sK2)) != iProver_top
% 2.85/1.00      | m1_subset_1(X1,u1_struct_0(sK2)) != iProver_top
% 2.85/1.00      | r2_hidden(X1,k6_domain_1(u1_struct_0(sK2),X0)) != iProver_top
% 2.85/1.00      | r2_hidden(X1,k1_orders_2(sK2,k6_domain_1(u1_struct_0(sK2),X0))) != iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_646,c_648]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1008,plain,
% 2.85/1.00      ( m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 2.85/1.00      | r2_hidden(sK3,k6_domain_1(u1_struct_0(sK2),sK3)) != iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_650,c_819]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_28,plain,
% 2.85/1.00      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1011,plain,
% 2.85/1.00      ( r2_hidden(sK3,k6_domain_1(u1_struct_0(sK2),sK3)) != iProver_top ),
% 2.85/1.00      inference(global_propositional_subsumption,
% 2.85/1.00                [status(thm)],
% 2.85/1.00                [c_1008,c_28]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2189,plain,
% 2.85/1.00      ( u1_struct_0(sK2) = k1_xboole_0
% 2.85/1.00      | r2_hidden(sK3,k1_tarski(sK3)) != iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_2091,c_1011]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2388,plain,
% 2.85/1.00      ( u1_struct_0(sK2) = k1_xboole_0 ),
% 2.85/1.00      inference(global_propositional_subsumption,
% 2.85/1.00                [status(thm)],
% 2.85/1.00                [c_2190,c_864,c_2189]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2399,plain,
% 2.85/1.00      ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3)
% 2.85/1.00      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.85/1.00      inference(demodulation,[status(thm)],[c_2388,c_1127]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2405,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_xboole_0) != iProver_top
% 2.85/1.00      | m1_subset_1(k6_domain_1(k1_xboole_0,X0),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 2.85/1.00      inference(demodulation,[status(thm)],[c_2388,c_646]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_10,plain,
% 2.85/1.00      ( k1_zfmisc_1(k1_xboole_0) = k1_tarski(k1_xboole_0) ),
% 2.85/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2414,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_xboole_0) != iProver_top
% 2.85/1.00      | m1_subset_1(k6_domain_1(k1_xboole_0,X0),k1_tarski(k1_xboole_0)) = iProver_top ),
% 2.85/1.00      inference(light_normalisation,[status(thm)],[c_2405,c_10]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_12,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | m1_subset_1(k1_orders_2(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | v2_struct_0(X1)
% 2.85/1.00      | ~ v3_orders_2(X1)
% 2.85/1.00      | ~ v4_orders_2(X1)
% 2.85/1.00      | ~ v5_orders_2(X1)
% 2.85/1.00      | ~ l1_orders_2(X1) ),
% 2.85/1.00      inference(cnf_transformation,[],[f51]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_243,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | m1_subset_1(k1_orders_2(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.85/1.00      | v2_struct_0(X1)
% 2.85/1.00      | ~ v3_orders_2(X1)
% 2.85/1.00      | ~ v4_orders_2(X1)
% 2.85/1.00      | ~ l1_orders_2(X1)
% 2.85/1.00      | sK2 != X1 ),
% 2.85/1.00      inference(resolution_lifted,[status(thm)],[c_12,c_19]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_244,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.85/1.00      | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.85/1.00      | v2_struct_0(sK2)
% 2.85/1.00      | ~ v3_orders_2(sK2)
% 2.85/1.00      | ~ v4_orders_2(sK2)
% 2.85/1.00      | ~ l1_orders_2(sK2) ),
% 2.85/1.00      inference(unflattening,[status(thm)],[c_243]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_248,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.85/1.00      | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.85/1.00      inference(global_propositional_subsumption,
% 2.85/1.00                [status(thm)],
% 2.85/1.00                [c_244,c_22,c_21,c_20,c_18]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_647,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.85/1.00      | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_248]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2404,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 2.85/1.00      | m1_subset_1(k1_orders_2(sK2,X0),k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 2.85/1.00      inference(demodulation,[status(thm)],[c_2388,c_647]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2419,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_tarski(k1_xboole_0)) != iProver_top
% 2.85/1.00      | m1_subset_1(k1_orders_2(sK2,X0),k1_tarski(k1_xboole_0)) = iProver_top ),
% 2.85/1.00      inference(light_normalisation,[status(thm)],[c_2404,c_10]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_7,plain,
% 2.85/1.00      ( k2_zfmisc_1(X0,k1_xboole_0) = k1_xboole_0 ),
% 2.85/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_11,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.85/1.00      | ~ v1_xboole_0(X1)
% 2.85/1.00      | v1_xboole_0(X0) ),
% 2.85/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_652,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.85/1.00      | v1_xboole_0(X1) != iProver_top
% 2.85/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1940,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 2.85/1.00      | v1_xboole_0(X1) != iProver_top
% 2.85/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_7,c_652]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1952,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_tarski(k1_xboole_0)) != iProver_top
% 2.85/1.00      | v1_xboole_0(X1) != iProver_top
% 2.85/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.85/1.00      inference(light_normalisation,[status(thm)],[c_1940,c_10]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_3660,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_tarski(k1_xboole_0)) != iProver_top
% 2.85/1.00      | v1_xboole_0(X1) != iProver_top
% 2.85/1.00      | v1_xboole_0(k1_orders_2(sK2,X0)) = iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_2419,c_1952]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_4827,plain,
% 2.85/1.00      ( m1_subset_1(X0,k1_xboole_0) != iProver_top
% 2.85/1.00      | v1_xboole_0(X1) != iProver_top
% 2.85/1.00      | v1_xboole_0(k1_orders_2(sK2,k6_domain_1(k1_xboole_0,X0))) = iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_2414,c_3660]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_4926,plain,
% 2.85/1.00      ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3)
% 2.85/1.00      | m1_subset_1(X0,k1_xboole_0) != iProver_top
% 2.85/1.00      | v1_xboole_0(k1_orders_2(sK2,k6_domain_1(k1_xboole_0,X0))) = iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_2399,c_4827]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2406,plain,
% 2.85/1.00      ( r2_hidden(sK3,k1_orders_2(sK2,k6_domain_1(k1_xboole_0,sK3))) = iProver_top ),
% 2.85/1.00      inference(demodulation,[status(thm)],[c_2388,c_650]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1,plain,
% 2.85/1.00      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.85/1.00      inference(cnf_transformation,[],[f39]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_658,plain,
% 2.85/1.00      ( r2_hidden(X0,X1) != iProver_top
% 2.85/1.00      | v1_xboole_0(X1) != iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2954,plain,
% 2.85/1.00      ( v1_xboole_0(k1_orders_2(sK2,k6_domain_1(k1_xboole_0,sK3))) != iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_2406,c_658]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_4952,plain,
% 2.85/1.00      ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3)
% 2.85/1.00      | m1_subset_1(sK3,k1_xboole_0) != iProver_top ),
% 2.85/1.00      inference(superposition,[status(thm)],[c_4926,c_2954]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_9,plain,
% 2.85/1.00      ( k2_zfmisc_1(X0,X1) != k1_xboole_0
% 2.85/1.00      | k1_xboole_0 = X0
% 2.85/1.00      | k1_xboole_0 = X1 ),
% 2.85/1.00      inference(cnf_transformation,[],[f46]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_43,plain,
% 2.85/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 2.85/1.00      | k1_xboole_0 = k1_xboole_0 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_9]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_8,plain,
% 2.85/1.00      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.85/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_44,plain,
% 2.85/1.00      ( k2_zfmisc_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_8]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_392,plain,( X0 = X0 ),theory(equality) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_892,plain,
% 2.85/1.00      ( sK3 = sK3 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_392]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_398,plain,
% 2.85/1.00      ( ~ m1_subset_1(X0,X1) | m1_subset_1(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.85/1.00      theory(equality) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_794,plain,
% 2.85/1.00      ( m1_subset_1(X0,X1)
% 2.85/1.00      | ~ m1_subset_1(sK3,u1_struct_0(sK2))
% 2.85/1.00      | X1 != u1_struct_0(sK2)
% 2.85/1.00      | X0 != sK3 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_398]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1032,plain,
% 2.85/1.00      ( m1_subset_1(sK3,X0)
% 2.85/1.00      | ~ m1_subset_1(sK3,u1_struct_0(sK2))
% 2.85/1.00      | X0 != u1_struct_0(sK2)
% 2.85/1.00      | sK3 != sK3 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_794]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1034,plain,
% 2.85/1.00      ( X0 != u1_struct_0(sK2)
% 2.85/1.00      | sK3 != sK3
% 2.85/1.00      | m1_subset_1(sK3,X0) = iProver_top
% 2.85/1.00      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 2.85/1.00      inference(predicate_to_equality,[status(thm)],[c_1032]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1036,plain,
% 2.85/1.00      ( sK3 != sK3
% 2.85/1.00      | k1_xboole_0 != u1_struct_0(sK2)
% 2.85/1.00      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 2.85/1.00      | m1_subset_1(sK3,k1_xboole_0) = iProver_top ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_1034]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_393,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1453,plain,
% 2.85/1.00      ( X0 != X1 | X0 = u1_struct_0(sK2) | u1_struct_0(sK2) != X1 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_393]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_1454,plain,
% 2.85/1.00      ( u1_struct_0(sK2) != k1_xboole_0
% 2.85/1.00      | k1_xboole_0 = u1_struct_0(sK2)
% 2.85/1.00      | k1_xboole_0 != k1_xboole_0 ),
% 2.85/1.00      inference(instantiation,[status(thm)],[c_1453]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_5024,plain,
% 2.85/1.00      ( k6_domain_1(k1_xboole_0,sK3) = k1_tarski(sK3) ),
% 2.85/1.00      inference(global_propositional_subsumption,
% 2.85/1.00                [status(thm)],
% 2.85/1.00                [c_4952,c_28,c_43,c_44,c_864,c_892,c_1036,c_1454,c_2189]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_2400,plain,
% 2.85/1.00      ( r2_hidden(sK3,k6_domain_1(k1_xboole_0,sK3)) != iProver_top ),
% 2.85/1.00      inference(demodulation,[status(thm)],[c_2388,c_1011]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(c_5033,plain,
% 2.85/1.00      ( r2_hidden(sK3,k1_tarski(sK3)) != iProver_top ),
% 2.85/1.00      inference(demodulation,[status(thm)],[c_5024,c_2400]) ).
% 2.85/1.00  
% 2.85/1.00  cnf(contradiction,plain,
% 2.85/1.00      ( $false ),
% 2.85/1.00      inference(minisat,[status(thm)],[c_5033,c_864]) ).
% 2.85/1.00  
% 2.85/1.00  
% 2.85/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.85/1.00  
% 2.85/1.00  ------                               Statistics
% 2.85/1.00  
% 2.85/1.00  ------ General
% 2.85/1.00  
% 2.85/1.00  abstr_ref_over_cycles:                  0
% 2.85/1.00  abstr_ref_under_cycles:                 0
% 2.85/1.00  gc_basic_clause_elim:                   0
% 2.85/1.00  forced_gc_time:                         0
% 2.85/1.00  parsing_time:                           0.021
% 2.85/1.00  unif_index_cands_time:                  0.
% 2.85/1.00  unif_index_add_time:                    0.
% 2.85/1.00  orderings_time:                         0.
% 2.85/1.00  out_proof_time:                         0.01
% 2.85/1.00  total_time:                             0.213
% 2.85/1.00  num_of_symbols:                         50
% 2.85/1.00  num_of_terms:                           4823
% 2.85/1.00  
% 2.85/1.00  ------ Preprocessing
% 2.85/1.00  
% 2.85/1.00  num_of_splits:                          0
% 2.85/1.00  num_of_split_atoms:                     0
% 2.85/1.00  num_of_reused_defs:                     0
% 2.85/1.00  num_eq_ax_congr_red:                    12
% 2.85/1.00  num_of_sem_filtered_clauses:            1
% 2.85/1.00  num_of_subtypes:                        0
% 2.85/1.00  monotx_restored_types:                  0
% 2.85/1.00  sat_num_of_epr_types:                   0
% 2.85/1.00  sat_num_of_non_cyclic_types:            0
% 2.85/1.00  sat_guarded_non_collapsed_types:        0
% 2.85/1.00  num_pure_diseq_elim:                    0
% 2.85/1.00  simp_replaced_by:                       0
% 2.85/1.00  res_preprocessed:                       98
% 2.85/1.00  prep_upred:                             0
% 2.85/1.00  prep_unflattend:                        3
% 2.85/1.00  smt_new_axioms:                         0
% 2.85/1.00  pred_elim_cands:                        3
% 2.85/1.00  pred_elim:                              5
% 2.85/1.00  pred_elim_cl:                           5
% 2.85/1.00  pred_elim_cycles:                       7
% 2.85/1.00  merged_defs:                            0
% 2.85/1.00  merged_defs_ncl:                        0
% 2.85/1.00  bin_hyper_res:                          0
% 2.85/1.00  prep_cycles:                            4
% 2.85/1.00  pred_elim_time:                         0.002
% 2.85/1.00  splitting_time:                         0.
% 2.85/1.00  sem_filter_time:                        0.
% 2.85/1.00  monotx_time:                            0.
% 2.85/1.00  subtype_inf_time:                       0.
% 2.85/1.00  
% 2.85/1.00  ------ Problem properties
% 2.85/1.00  
% 2.85/1.00  clauses:                                18
% 2.85/1.00  conjectures:                            2
% 2.85/1.00  epr:                                    2
% 2.85/1.00  horn:                                   14
% 2.85/1.00  ground:                                 3
% 2.85/1.00  unary:                                  6
% 2.85/1.00  binary:                                 6
% 2.85/1.00  lits:                                   37
% 2.85/1.00  lits_eq:                                13
% 2.85/1.00  fd_pure:                                0
% 2.85/1.00  fd_pseudo:                              0
% 2.85/1.00  fd_cond:                                2
% 2.85/1.00  fd_pseudo_cond:                         2
% 2.85/1.00  ac_symbols:                             0
% 2.85/1.00  
% 2.85/1.00  ------ Propositional Solver
% 2.85/1.00  
% 2.85/1.00  prop_solver_calls:                      27
% 2.85/1.00  prop_fast_solver_calls:                 650
% 2.85/1.00  smt_solver_calls:                       0
% 2.85/1.00  smt_fast_solver_calls:                  0
% 2.85/1.00  prop_num_of_clauses:                    1962
% 2.85/1.00  prop_preprocess_simplified:             5953
% 2.85/1.00  prop_fo_subsumed:                       21
% 2.85/1.00  prop_solver_time:                       0.
% 2.85/1.00  smt_solver_time:                        0.
% 2.85/1.00  smt_fast_solver_time:                   0.
% 2.85/1.00  prop_fast_solver_time:                  0.
% 2.85/1.00  prop_unsat_core_time:                   0.
% 2.85/1.00  
% 2.85/1.00  ------ QBF
% 2.85/1.00  
% 2.85/1.00  qbf_q_res:                              0
% 2.85/1.00  qbf_num_tautologies:                    0
% 2.85/1.00  qbf_prep_cycles:                        0
% 2.85/1.00  
% 2.85/1.00  ------ BMC1
% 2.85/1.00  
% 2.85/1.00  bmc1_current_bound:                     -1
% 2.85/1.00  bmc1_last_solved_bound:                 -1
% 2.85/1.00  bmc1_unsat_core_size:                   -1
% 2.85/1.00  bmc1_unsat_core_parents_size:           -1
% 2.85/1.00  bmc1_merge_next_fun:                    0
% 2.85/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.85/1.00  
% 2.85/1.00  ------ Instantiation
% 2.85/1.00  
% 2.85/1.00  inst_num_of_clauses:                    658
% 2.85/1.00  inst_num_in_passive:                    295
% 2.85/1.00  inst_num_in_active:                     268
% 2.85/1.00  inst_num_in_unprocessed:                95
% 2.85/1.00  inst_num_of_loops:                      320
% 2.85/1.00  inst_num_of_learning_restarts:          0
% 2.85/1.00  inst_num_moves_active_passive:          51
% 2.85/1.00  inst_lit_activity:                      0
% 2.85/1.00  inst_lit_activity_moves:                0
% 2.85/1.00  inst_num_tautologies:                   0
% 2.85/1.00  inst_num_prop_implied:                  0
% 2.85/1.00  inst_num_existing_simplified:           0
% 2.85/1.00  inst_num_eq_res_simplified:             0
% 2.85/1.00  inst_num_child_elim:                    0
% 2.85/1.00  inst_num_of_dismatching_blockings:      164
% 2.85/1.00  inst_num_of_non_proper_insts:           555
% 2.85/1.00  inst_num_of_duplicates:                 0
% 2.85/1.00  inst_inst_num_from_inst_to_res:         0
% 2.85/1.00  inst_dismatching_checking_time:         0.
% 2.85/1.00  
% 2.85/1.00  ------ Resolution
% 2.85/1.00  
% 2.85/1.00  res_num_of_clauses:                     0
% 2.85/1.00  res_num_in_passive:                     0
% 2.85/1.00  res_num_in_active:                      0
% 2.85/1.00  res_num_of_loops:                       102
% 2.85/1.00  res_forward_subset_subsumed:            36
% 2.85/1.00  res_backward_subset_subsumed:           2
% 2.85/1.00  res_forward_subsumed:                   0
% 2.85/1.00  res_backward_subsumed:                  0
% 2.85/1.00  res_forward_subsumption_resolution:     0
% 2.85/1.00  res_backward_subsumption_resolution:    0
% 2.85/1.00  res_clause_to_clause_subsumption:       170
% 2.85/1.00  res_orphan_elimination:                 0
% 2.85/1.00  res_tautology_del:                      15
% 2.85/1.00  res_num_eq_res_simplified:              0
% 2.85/1.00  res_num_sel_changes:                    0
% 2.85/1.00  res_moves_from_active_to_pass:          0
% 2.85/1.00  
% 2.85/1.00  ------ Superposition
% 2.85/1.00  
% 2.85/1.00  sup_time_total:                         0.
% 2.85/1.00  sup_time_generating:                    0.
% 2.85/1.00  sup_time_sim_full:                      0.
% 2.85/1.00  sup_time_sim_immed:                     0.
% 2.85/1.00  
% 2.85/1.00  sup_num_of_clauses:                     58
% 2.85/1.00  sup_num_in_active:                      34
% 2.85/1.00  sup_num_in_passive:                     24
% 2.85/1.00  sup_num_of_loops:                       62
% 2.85/1.00  sup_fw_superposition:                   51
% 2.85/1.00  sup_bw_superposition:                   18
% 2.85/1.00  sup_immediate_simplified:               18
% 2.85/1.00  sup_given_eliminated:                   0
% 2.85/1.00  comparisons_done:                       0
% 2.85/1.00  comparisons_avoided:                    4
% 2.85/1.00  
% 2.85/1.00  ------ Simplifications
% 2.85/1.00  
% 2.85/1.00  
% 2.85/1.00  sim_fw_subset_subsumed:                 2
% 2.85/1.00  sim_bw_subset_subsumed:                 12
% 2.85/1.00  sim_fw_subsumed:                        1
% 2.85/1.00  sim_bw_subsumed:                        2
% 2.85/1.00  sim_fw_subsumption_res:                 0
% 2.85/1.00  sim_bw_subsumption_res:                 0
% 2.85/1.00  sim_tautology_del:                      1
% 2.85/1.00  sim_eq_tautology_del:                   4
% 2.85/1.00  sim_eq_res_simp:                        0
% 2.85/1.00  sim_fw_demodulated:                     0
% 2.85/1.00  sim_bw_demodulated:                     25
% 2.85/1.00  sim_light_normalised:                   18
% 2.85/1.00  sim_joinable_taut:                      0
% 2.85/1.00  sim_joinable_simp:                      0
% 2.85/1.00  sim_ac_normalised:                      0
% 2.85/1.00  sim_smt_subsumption:                    0
% 2.85/1.00  
%------------------------------------------------------------------------------
