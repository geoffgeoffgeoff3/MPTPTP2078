%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:13:02 EST 2020

% Result     : Theorem 1.97s
% Output     : CNFRefutation 1.97s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 547 expanded)
%              Number of clauses        :   56 ( 120 expanded)
%              Number of leaves         :   14 ( 150 expanded)
%              Depth                    :   20
%              Number of atoms          :  657 (3537 expanded)
%              Number of equality atoms :  109 ( 555 expanded)
%              Maximal formula depth    :   18 (   7 average)
%              Maximal clause size      :   20 (   4 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,conjecture,(
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

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v4_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
           => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1)) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] :
          ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1))
          & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
     => ( k1_xboole_0 = k3_tarski(k4_orders_2(X0,sK4))
        & m1_orders_1(sK4,k1_orders_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
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

fof(f37,plain,
    ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4))
    & m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))
    & l1_orders_2(sK3)
    & v5_orders_2(sK3)
    & v4_orders_2(sK3)
    & v3_orders_2(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f23,f36,f35])).

fof(f62,plain,(
    m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f37])).

fof(f7,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(X2,X0) )
          | ~ m2_orders_2(X2,X0,X1) )
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
            & v6_orders_2(X2,X0) )
          | ~ m2_orders_2(X2,X0,X1) )
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( v6_orders_2(X2,X0)
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
                & v6_orders_2(X2,X0) )
             => ( m2_orders_2(X2,X0,X1)
              <=> ( ! [X3] :
                      ( m1_subset_1(X3,u1_struct_0(X0))
                     => ( r2_hidden(X3,X2)
                       => k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3 ) )
                  & r2_wellord1(u1_orders_2(X0),X2)
                  & k1_xboole_0 != X2 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( m2_orders_2(X2,X0,X1)
              <=> ( ! [X3] :
                      ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3
                      | ~ r2_hidden(X3,X2)
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  & r2_wellord1(u1_orders_2(X0),X2)
                  & k1_xboole_0 != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v6_orders_2(X2,X0) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( m2_orders_2(X2,X0,X1)
              <=> ( ! [X3] :
                      ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3
                      | ~ r2_hidden(X3,X2)
                      | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                  & r2_wellord1(u1_orders_2(X0),X2)
                  & k1_xboole_0 != X2 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v6_orders_2(X2,X0) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f14])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m2_orders_2(X2,X0,X1)
                  | ? [X3] :
                      ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3
                      & r2_hidden(X3,X2)
                      & m1_subset_1(X3,u1_struct_0(X0)) )
                  | ~ r2_wellord1(u1_orders_2(X0),X2)
                  | k1_xboole_0 = X2 )
                & ( ( ! [X3] :
                        ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3
                        | ~ r2_hidden(X3,X2)
                        | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                    & r2_wellord1(u1_orders_2(X0),X2)
                    & k1_xboole_0 != X2 )
                  | ~ m2_orders_2(X2,X0,X1) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v6_orders_2(X2,X0) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m2_orders_2(X2,X0,X1)
                  | ? [X3] :
                      ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3
                      & r2_hidden(X3,X2)
                      & m1_subset_1(X3,u1_struct_0(X0)) )
                  | ~ r2_wellord1(u1_orders_2(X0),X2)
                  | k1_xboole_0 = X2 )
                & ( ( ! [X3] :
                        ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3
                        | ~ r2_hidden(X3,X2)
                        | ~ m1_subset_1(X3,u1_struct_0(X0)) )
                    & r2_wellord1(u1_orders_2(X0),X2)
                    & k1_xboole_0 != X2 )
                  | ~ m2_orders_2(X2,X0,X1) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v6_orders_2(X2,X0) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m2_orders_2(X2,X0,X1)
                  | ? [X3] :
                      ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3
                      & r2_hidden(X3,X2)
                      & m1_subset_1(X3,u1_struct_0(X0)) )
                  | ~ r2_wellord1(u1_orders_2(X0),X2)
                  | k1_xboole_0 = X2 )
                & ( ( ! [X4] :
                        ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X4))) = X4
                        | ~ r2_hidden(X4,X2)
                        | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                    & r2_wellord1(u1_orders_2(X0),X2)
                    & k1_xboole_0 != X2 )
                  | ~ m2_orders_2(X2,X0,X1) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v6_orders_2(X2,X0) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f27])).

fof(f29,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3
          & r2_hidden(X3,X2)
          & m1_subset_1(X3,u1_struct_0(X0)) )
     => ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,sK1(X0,X1,X2)))) != sK1(X0,X1,X2)
        & r2_hidden(sK1(X0,X1,X2),X2)
        & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m2_orders_2(X2,X0,X1)
                  | ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,sK1(X0,X1,X2)))) != sK1(X0,X1,X2)
                    & r2_hidden(sK1(X0,X1,X2),X2)
                    & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0)) )
                  | ~ r2_wellord1(u1_orders_2(X0),X2)
                  | k1_xboole_0 = X2 )
                & ( ( ! [X4] :
                        ( k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X4))) = X4
                        | ~ r2_hidden(X4,X2)
                        | ~ m1_subset_1(X4,u1_struct_0(X0)) )
                    & r2_wellord1(u1_orders_2(X0),X2)
                    & k1_xboole_0 != X2 )
                  | ~ m2_orders_2(X2,X0,X1) ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
              | ~ v6_orders_2(X2,X0) )
          | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f28,f29])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 != X2
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v6_orders_2(X2,X0)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f64,plain,(
    ! [X0,X1] :
      ( ~ m2_orders_2(k1_xboole_0,X0,X1)
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v6_orders_2(k1_xboole_0,X0)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f44])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m2_orders_2(X2,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f61,plain,(
    l1_orders_2(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f57,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f58,plain,(
    v3_orders_2(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f59,plain,(
    v4_orders_2(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f60,plain,(
    v5_orders_2(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f4,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4] :
                  ~ ( k3_mcart_1(X2,X3,X4) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4] :
              ( k3_mcart_1(X2,X3,X4) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4] :
              ( k3_mcart_1(X2,X3,X4) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X4,X3,X2] :
            ( k3_mcart_1(X2,X3,X4) != sK0(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK0(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( ( ! [X2,X3,X4] :
            ( k3_mcart_1(X2,X3,X4) != sK0(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK0(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f13,f24])).

fof(f41,plain,(
    ! [X0] :
      ( r2_hidden(sK0(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f6,axiom,(
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

fof(f16,plain,(
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
    inference(ennf_transformation,[],[f6])).

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
    inference(flattening,[],[f16])).

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
    inference(nnf_transformation,[],[f17])).

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
     => ( ( ~ m2_orders_2(sK2(X0,X1,X2),X0,X1)
          | ~ r2_hidden(sK2(X0,X1,X2),X2) )
        & ( m2_orders_2(sK2(X0,X1,X2),X0,X1)
          | r2_hidden(sK2(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( k4_orders_2(X0,X1) = X2
                | ( ( ~ m2_orders_2(sK2(X0,X1,X2),X0,X1)
                    | ~ r2_hidden(sK2(X0,X1,X2),X2) )
                  & ( m2_orders_2(sK2(X0,X1,X2),X0,X1)
                    | r2_hidden(sK2(X0,X1,X2),X2) ) ) )
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f32,f33])).

fof(f50,plain,(
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

fof(f66,plain,(
    ! [X4,X0,X1] :
      ( m2_orders_2(X4,X0,X1)
      | ~ r2_hidden(X4,k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f50])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(k4_orders_2(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f56,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(k4_orders_2(X0,X1))
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f51,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ m2_orders_2(X4,X0,X1)
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
      ( r2_hidden(X4,k4_orders_2(X0,X1))
      | ~ m2_orders_2(X4,X0,X1)
      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f51])).

fof(f63,plain,(
    k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) ),
    inference(cnf_transformation,[],[f37])).

fof(f2,axiom,(
    ! [X0] :
      ( r1_tarski(X0,k1_xboole_0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f39,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(X0,k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

cnf(c_20,negated_conjecture,
    ( m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_2643,plain,
    ( m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_17,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | v6_orders_2(X0,X1)
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_11,plain,
    ( ~ m2_orders_2(k1_xboole_0,X0,X1)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
    | ~ v6_orders_2(k1_xboole_0,X0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_471,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m2_orders_2(k1_xboole_0,X3,X4)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ m1_orders_1(X4,k1_orders_1(u1_struct_0(X3)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X3)))
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ v3_orders_2(X1)
    | ~ v3_orders_2(X3)
    | ~ v4_orders_2(X1)
    | ~ v4_orders_2(X3)
    | ~ v5_orders_2(X1)
    | ~ v5_orders_2(X3)
    | ~ l1_orders_2(X1)
    | ~ l1_orders_2(X3)
    | X3 != X1
    | k1_xboole_0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_11])).

cnf(c_472,plain,
    ( ~ m2_orders_2(k1_xboole_0,X0,X1)
    | ~ m2_orders_2(k1_xboole_0,X0,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X0)))
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(unflattening,[status(thm)],[c_471])).

cnf(c_16,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_496,plain,
    ( ~ m2_orders_2(k1_xboole_0,X0,X1)
    | ~ m2_orders_2(k1_xboole_0,X0,X2)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_472,c_16])).

cnf(c_21,negated_conjecture,
    ( l1_orders_2(sK3) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_638,plain,
    ( ~ m2_orders_2(k1_xboole_0,X0,X1)
    | ~ m2_orders_2(k1_xboole_0,X0,X2)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X0)))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_496,c_21])).

cnf(c_639,plain,
    ( ~ m2_orders_2(k1_xboole_0,sK3,X0)
    | ~ m2_orders_2(k1_xboole_0,sK3,X1)
    | ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
    | v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3) ),
    inference(unflattening,[status(thm)],[c_638])).

cnf(c_25,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_24,negated_conjecture,
    ( v3_orders_2(sK3) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_23,negated_conjecture,
    ( v4_orders_2(sK3) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_22,negated_conjecture,
    ( v5_orders_2(sK3) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_643,plain,
    ( ~ m2_orders_2(k1_xboole_0,sK3,X0)
    | ~ m2_orders_2(k1_xboole_0,sK3,X1)
    | ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_639,c_25,c_24,c_23,c_22])).

cnf(c_2295,plain,
    ( ~ m2_orders_2(k1_xboole_0,sK3,X0)
    | ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_643])).

cnf(c_2640,plain,
    ( m2_orders_2(k1_xboole_0,sK3,X0) != iProver_top
    | m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3))) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2295])).

cnf(c_2296,plain,
    ( sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_643])).

cnf(c_2639,plain,
    ( sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2296])).

cnf(c_2682,plain,
    ( m2_orders_2(k1_xboole_0,sK3,X0) != iProver_top
    | m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3))) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2640,c_2639])).

cnf(c_3807,plain,
    ( m2_orders_2(k1_xboole_0,sK3,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2643,c_2682])).

cnf(c_5,plain,
    ( r2_hidden(sK0(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_2644,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK0(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_15,plain,
    ( m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,k4_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_846,plain,
    ( m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ r2_hidden(X0,k4_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_21])).

cnf(c_847,plain,
    ( m2_orders_2(X0,sK3,X1)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
    | ~ r2_hidden(X0,k4_orders_2(sK3,X1))
    | v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3) ),
    inference(unflattening,[status(thm)],[c_846])).

cnf(c_851,plain,
    ( m2_orders_2(X0,sK3,X1)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
    | ~ r2_hidden(X0,k4_orders_2(sK3,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_847,c_25,c_24,c_23,c_22])).

cnf(c_2630,plain,
    ( m2_orders_2(X0,sK3,X1) = iProver_top
    | m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) != iProver_top
    | r2_hidden(X0,k4_orders_2(sK3,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_851])).

cnf(c_2874,plain,
    ( m2_orders_2(X0,sK3,sK4) = iProver_top
    | r2_hidden(X0,k4_orders_2(sK3,sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2643,c_2630])).

cnf(c_2975,plain,
    ( k4_orders_2(sK3,sK4) = k1_xboole_0
    | m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_2644,c_2874])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_18,plain,
    ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ v1_xboole_0(k4_orders_2(X1,X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_314,plain,
    ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k4_orders_2(X1,X0) != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_18])).

cnf(c_788,plain,
    ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | k4_orders_2(X1,X0) != k1_xboole_0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_314,c_21])).

cnf(c_789,plain,
    ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
    | v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3)
    | k4_orders_2(sK3,X0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_788])).

cnf(c_793,plain,
    ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
    | k4_orders_2(sK3,X0) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_789,c_25,c_24,c_23,c_22])).

cnf(c_2802,plain,
    ( ~ m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))
    | k4_orders_2(sK3,sK4) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_793])).

cnf(c_3519,plain,
    ( m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2975,c_20,c_2802])).

cnf(c_14,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | r2_hidden(X0,k4_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_867,plain,
    ( ~ m2_orders_2(X0,X1,X2)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | r2_hidden(X0,k4_orders_2(X1,X2))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_21])).

cnf(c_868,plain,
    ( ~ m2_orders_2(X0,sK3,X1)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
    | r2_hidden(X0,k4_orders_2(sK3,X1))
    | v2_struct_0(sK3)
    | ~ v3_orders_2(sK3)
    | ~ v4_orders_2(sK3)
    | ~ v5_orders_2(sK3) ),
    inference(unflattening,[status(thm)],[c_867])).

cnf(c_870,plain,
    ( ~ m2_orders_2(X0,sK3,X1)
    | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
    | r2_hidden(X0,k4_orders_2(sK3,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_868,c_25,c_24,c_23,c_22])).

cnf(c_2629,plain,
    ( m2_orders_2(X0,sK3,X1) != iProver_top
    | m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) != iProver_top
    | r2_hidden(X0,k4_orders_2(sK3,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_870])).

cnf(c_2847,plain,
    ( m2_orders_2(X0,sK3,sK4) != iProver_top
    | r2_hidden(X0,k4_orders_2(sK3,sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2643,c_2629])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,k1_xboole_0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f39])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(X0,k3_tarski(X1)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_295,plain,
    ( ~ r2_hidden(X0,X1)
    | X0 != X2
    | k3_tarski(X1) != k1_xboole_0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_2])).

cnf(c_296,plain,
    ( ~ r2_hidden(X0,X1)
    | k3_tarski(X1) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_295])).

cnf(c_2642,plain,
    ( k3_tarski(X0) != k1_xboole_0
    | k1_xboole_0 = X1
    | r2_hidden(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_296])).

cnf(c_3532,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(X0,k4_orders_2(sK3,sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_19,c_2642])).

cnf(c_3612,plain,
    ( k1_xboole_0 = X0
    | m2_orders_2(X0,sK3,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2847,c_3532])).

cnf(c_3651,plain,
    ( sK0(k4_orders_2(sK3,sK4)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3519,c_3612])).

cnf(c_3800,plain,
    ( m2_orders_2(k1_xboole_0,sK3,sK4) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3651,c_3519])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3807,c_3800])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:15:24 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.97/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.97/1.00  
% 1.97/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.97/1.00  
% 1.97/1.00  ------  iProver source info
% 1.97/1.00  
% 1.97/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.97/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.97/1.00  git: non_committed_changes: false
% 1.97/1.00  git: last_make_outside_of_git: false
% 1.97/1.00  
% 1.97/1.00  ------ 
% 1.97/1.00  
% 1.97/1.00  ------ Input Options
% 1.97/1.00  
% 1.97/1.00  --out_options                           all
% 1.97/1.00  --tptp_safe_out                         true
% 1.97/1.00  --problem_path                          ""
% 1.97/1.00  --include_path                          ""
% 1.97/1.00  --clausifier                            res/vclausify_rel
% 1.97/1.00  --clausifier_options                    --mode clausify
% 1.97/1.00  --stdin                                 false
% 1.97/1.00  --stats_out                             all
% 1.97/1.00  
% 1.97/1.00  ------ General Options
% 1.97/1.00  
% 1.97/1.00  --fof                                   false
% 1.97/1.00  --time_out_real                         305.
% 1.97/1.00  --time_out_virtual                      -1.
% 1.97/1.00  --symbol_type_check                     false
% 1.97/1.00  --clausify_out                          false
% 1.97/1.00  --sig_cnt_out                           false
% 1.97/1.00  --trig_cnt_out                          false
% 1.97/1.00  --trig_cnt_out_tolerance                1.
% 1.97/1.00  --trig_cnt_out_sk_spl                   false
% 1.97/1.00  --abstr_cl_out                          false
% 1.97/1.00  
% 1.97/1.00  ------ Global Options
% 1.97/1.00  
% 1.97/1.00  --schedule                              default
% 1.97/1.00  --add_important_lit                     false
% 1.97/1.00  --prop_solver_per_cl                    1000
% 1.97/1.00  --min_unsat_core                        false
% 1.97/1.00  --soft_assumptions                      false
% 1.97/1.00  --soft_lemma_size                       3
% 1.97/1.00  --prop_impl_unit_size                   0
% 1.97/1.00  --prop_impl_unit                        []
% 1.97/1.00  --share_sel_clauses                     true
% 1.97/1.00  --reset_solvers                         false
% 1.97/1.00  --bc_imp_inh                            [conj_cone]
% 1.97/1.00  --conj_cone_tolerance                   3.
% 1.97/1.00  --extra_neg_conj                        none
% 1.97/1.00  --large_theory_mode                     true
% 1.97/1.00  --prolific_symb_bound                   200
% 1.97/1.00  --lt_threshold                          2000
% 1.97/1.00  --clause_weak_htbl                      true
% 1.97/1.00  --gc_record_bc_elim                     false
% 1.97/1.00  
% 1.97/1.00  ------ Preprocessing Options
% 1.97/1.00  
% 1.97/1.00  --preprocessing_flag                    true
% 1.97/1.00  --time_out_prep_mult                    0.1
% 1.97/1.00  --splitting_mode                        input
% 1.97/1.00  --splitting_grd                         true
% 1.97/1.00  --splitting_cvd                         false
% 1.97/1.00  --splitting_cvd_svl                     false
% 1.97/1.00  --splitting_nvd                         32
% 1.97/1.00  --sub_typing                            true
% 1.97/1.00  --prep_gs_sim                           true
% 1.97/1.00  --prep_unflatten                        true
% 1.97/1.00  --prep_res_sim                          true
% 1.97/1.00  --prep_upred                            true
% 1.97/1.00  --prep_sem_filter                       exhaustive
% 1.97/1.00  --prep_sem_filter_out                   false
% 1.97/1.00  --pred_elim                             true
% 1.97/1.00  --res_sim_input                         true
% 1.97/1.00  --eq_ax_congr_red                       true
% 1.97/1.00  --pure_diseq_elim                       true
% 1.97/1.00  --brand_transform                       false
% 1.97/1.00  --non_eq_to_eq                          false
% 1.97/1.00  --prep_def_merge                        true
% 1.97/1.00  --prep_def_merge_prop_impl              false
% 1.97/1.00  --prep_def_merge_mbd                    true
% 1.97/1.00  --prep_def_merge_tr_red                 false
% 1.97/1.00  --prep_def_merge_tr_cl                  false
% 1.97/1.00  --smt_preprocessing                     true
% 1.97/1.00  --smt_ac_axioms                         fast
% 1.97/1.00  --preprocessed_out                      false
% 1.97/1.00  --preprocessed_stats                    false
% 1.97/1.00  
% 1.97/1.00  ------ Abstraction refinement Options
% 1.97/1.00  
% 1.97/1.00  --abstr_ref                             []
% 1.97/1.00  --abstr_ref_prep                        false
% 1.97/1.00  --abstr_ref_until_sat                   false
% 1.97/1.00  --abstr_ref_sig_restrict                funpre
% 1.97/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.97/1.00  --abstr_ref_under                       []
% 1.97/1.00  
% 1.97/1.00  ------ SAT Options
% 1.97/1.00  
% 1.97/1.00  --sat_mode                              false
% 1.97/1.00  --sat_fm_restart_options                ""
% 1.97/1.00  --sat_gr_def                            false
% 1.97/1.00  --sat_epr_types                         true
% 1.97/1.00  --sat_non_cyclic_types                  false
% 1.97/1.00  --sat_finite_models                     false
% 1.97/1.00  --sat_fm_lemmas                         false
% 1.97/1.00  --sat_fm_prep                           false
% 1.97/1.00  --sat_fm_uc_incr                        true
% 1.97/1.00  --sat_out_model                         small
% 1.97/1.00  --sat_out_clauses                       false
% 1.97/1.00  
% 1.97/1.00  ------ QBF Options
% 1.97/1.00  
% 1.97/1.00  --qbf_mode                              false
% 1.97/1.00  --qbf_elim_univ                         false
% 1.97/1.00  --qbf_dom_inst                          none
% 1.97/1.00  --qbf_dom_pre_inst                      false
% 1.97/1.00  --qbf_sk_in                             false
% 1.97/1.00  --qbf_pred_elim                         true
% 1.97/1.00  --qbf_split                             512
% 1.97/1.00  
% 1.97/1.00  ------ BMC1 Options
% 1.97/1.00  
% 1.97/1.00  --bmc1_incremental                      false
% 1.97/1.00  --bmc1_axioms                           reachable_all
% 1.97/1.00  --bmc1_min_bound                        0
% 1.97/1.00  --bmc1_max_bound                        -1
% 1.97/1.00  --bmc1_max_bound_default                -1
% 1.97/1.00  --bmc1_symbol_reachability              true
% 1.97/1.00  --bmc1_property_lemmas                  false
% 1.97/1.00  --bmc1_k_induction                      false
% 1.97/1.00  --bmc1_non_equiv_states                 false
% 1.97/1.00  --bmc1_deadlock                         false
% 1.97/1.00  --bmc1_ucm                              false
% 1.97/1.00  --bmc1_add_unsat_core                   none
% 1.97/1.00  --bmc1_unsat_core_children              false
% 1.97/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.97/1.00  --bmc1_out_stat                         full
% 1.97/1.00  --bmc1_ground_init                      false
% 1.97/1.00  --bmc1_pre_inst_next_state              false
% 1.97/1.00  --bmc1_pre_inst_state                   false
% 1.97/1.00  --bmc1_pre_inst_reach_state             false
% 1.97/1.00  --bmc1_out_unsat_core                   false
% 1.97/1.00  --bmc1_aig_witness_out                  false
% 1.97/1.00  --bmc1_verbose                          false
% 1.97/1.00  --bmc1_dump_clauses_tptp                false
% 1.97/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.97/1.00  --bmc1_dump_file                        -
% 1.97/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.97/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.97/1.00  --bmc1_ucm_extend_mode                  1
% 1.97/1.00  --bmc1_ucm_init_mode                    2
% 1.97/1.00  --bmc1_ucm_cone_mode                    none
% 1.97/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.97/1.00  --bmc1_ucm_relax_model                  4
% 1.97/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.97/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.97/1.00  --bmc1_ucm_layered_model                none
% 1.97/1.00  --bmc1_ucm_max_lemma_size               10
% 1.97/1.00  
% 1.97/1.00  ------ AIG Options
% 1.97/1.00  
% 1.97/1.00  --aig_mode                              false
% 1.97/1.00  
% 1.97/1.00  ------ Instantiation Options
% 1.97/1.00  
% 1.97/1.00  --instantiation_flag                    true
% 1.97/1.00  --inst_sos_flag                         false
% 1.97/1.00  --inst_sos_phase                        true
% 1.97/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.97/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.97/1.00  --inst_lit_sel_side                     num_symb
% 1.97/1.00  --inst_solver_per_active                1400
% 1.97/1.00  --inst_solver_calls_frac                1.
% 1.97/1.00  --inst_passive_queue_type               priority_queues
% 1.97/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.97/1.00  --inst_passive_queues_freq              [25;2]
% 1.97/1.00  --inst_dismatching                      true
% 1.97/1.00  --inst_eager_unprocessed_to_passive     true
% 1.97/1.00  --inst_prop_sim_given                   true
% 1.97/1.00  --inst_prop_sim_new                     false
% 1.97/1.00  --inst_subs_new                         false
% 1.97/1.00  --inst_eq_res_simp                      false
% 1.97/1.00  --inst_subs_given                       false
% 1.97/1.00  --inst_orphan_elimination               true
% 1.97/1.00  --inst_learning_loop_flag               true
% 1.97/1.00  --inst_learning_start                   3000
% 1.97/1.00  --inst_learning_factor                  2
% 1.97/1.00  --inst_start_prop_sim_after_learn       3
% 1.97/1.00  --inst_sel_renew                        solver
% 1.97/1.00  --inst_lit_activity_flag                true
% 1.97/1.00  --inst_restr_to_given                   false
% 1.97/1.00  --inst_activity_threshold               500
% 1.97/1.00  --inst_out_proof                        true
% 1.97/1.00  
% 1.97/1.00  ------ Resolution Options
% 1.97/1.00  
% 1.97/1.00  --resolution_flag                       true
% 1.97/1.00  --res_lit_sel                           adaptive
% 1.97/1.00  --res_lit_sel_side                      none
% 1.97/1.00  --res_ordering                          kbo
% 1.97/1.00  --res_to_prop_solver                    active
% 1.97/1.00  --res_prop_simpl_new                    false
% 1.97/1.00  --res_prop_simpl_given                  true
% 1.97/1.00  --res_passive_queue_type                priority_queues
% 1.97/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.97/1.00  --res_passive_queues_freq               [15;5]
% 1.97/1.00  --res_forward_subs                      full
% 1.97/1.00  --res_backward_subs                     full
% 1.97/1.00  --res_forward_subs_resolution           true
% 1.97/1.00  --res_backward_subs_resolution          true
% 1.97/1.00  --res_orphan_elimination                true
% 1.97/1.00  --res_time_limit                        2.
% 1.97/1.00  --res_out_proof                         true
% 1.97/1.00  
% 1.97/1.00  ------ Superposition Options
% 1.97/1.00  
% 1.97/1.00  --superposition_flag                    true
% 1.97/1.00  --sup_passive_queue_type                priority_queues
% 1.97/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.97/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.97/1.00  --demod_completeness_check              fast
% 1.97/1.00  --demod_use_ground                      true
% 1.97/1.00  --sup_to_prop_solver                    passive
% 1.97/1.00  --sup_prop_simpl_new                    true
% 1.97/1.00  --sup_prop_simpl_given                  true
% 1.97/1.00  --sup_fun_splitting                     false
% 1.97/1.00  --sup_smt_interval                      50000
% 1.97/1.00  
% 1.97/1.00  ------ Superposition Simplification Setup
% 1.97/1.00  
% 1.97/1.00  --sup_indices_passive                   []
% 1.97/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.97/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.97/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.97/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.97/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.97/1.00  --sup_full_bw                           [BwDemod]
% 1.97/1.00  --sup_immed_triv                        [TrivRules]
% 1.97/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.97/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.97/1.00  --sup_immed_bw_main                     []
% 1.97/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.97/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.97/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.97/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.97/1.00  
% 1.97/1.00  ------ Combination Options
% 1.97/1.00  
% 1.97/1.00  --comb_res_mult                         3
% 1.97/1.00  --comb_sup_mult                         2
% 1.97/1.00  --comb_inst_mult                        10
% 1.97/1.00  
% 1.97/1.00  ------ Debug Options
% 1.97/1.00  
% 1.97/1.00  --dbg_backtrace                         false
% 1.97/1.00  --dbg_dump_prop_clauses                 false
% 1.97/1.00  --dbg_dump_prop_clauses_file            -
% 1.97/1.00  --dbg_out_stat                          false
% 1.97/1.00  ------ Parsing...
% 1.97/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.97/1.00  
% 1.97/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 10 0s  sf_e  pe_s  pe_e 
% 1.97/1.00  
% 1.97/1.00  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.97/1.00  
% 1.97/1.00  ------ Preprocessing... sf_s  rm: 2 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.97/1.00  ------ Proving...
% 1.97/1.00  ------ Problem Properties 
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  clauses                                 19
% 1.97/1.00  conjectures                             2
% 1.97/1.00  EPR                                     1
% 1.97/1.00  Horn                                    14
% 1.97/1.00  unary                                   3
% 1.97/1.00  binary                                  2
% 1.97/1.00  lits                                    62
% 1.97/1.00  lits eq                                 16
% 1.97/1.00  fd_pure                                 0
% 1.97/1.00  fd_pseudo                               0
% 1.97/1.00  fd_cond                                 7
% 1.97/1.00  fd_pseudo_cond                          2
% 1.97/1.00  AC symbols                              0
% 1.97/1.00  
% 1.97/1.00  ------ Schedule dynamic 5 is on 
% 1.97/1.00  
% 1.97/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  ------ 
% 1.97/1.00  Current options:
% 1.97/1.00  ------ 
% 1.97/1.00  
% 1.97/1.00  ------ Input Options
% 1.97/1.00  
% 1.97/1.00  --out_options                           all
% 1.97/1.00  --tptp_safe_out                         true
% 1.97/1.00  --problem_path                          ""
% 1.97/1.00  --include_path                          ""
% 1.97/1.00  --clausifier                            res/vclausify_rel
% 1.97/1.00  --clausifier_options                    --mode clausify
% 1.97/1.00  --stdin                                 false
% 1.97/1.00  --stats_out                             all
% 1.97/1.00  
% 1.97/1.00  ------ General Options
% 1.97/1.00  
% 1.97/1.00  --fof                                   false
% 1.97/1.00  --time_out_real                         305.
% 1.97/1.00  --time_out_virtual                      -1.
% 1.97/1.00  --symbol_type_check                     false
% 1.97/1.00  --clausify_out                          false
% 1.97/1.00  --sig_cnt_out                           false
% 1.97/1.00  --trig_cnt_out                          false
% 1.97/1.00  --trig_cnt_out_tolerance                1.
% 1.97/1.00  --trig_cnt_out_sk_spl                   false
% 1.97/1.00  --abstr_cl_out                          false
% 1.97/1.00  
% 1.97/1.00  ------ Global Options
% 1.97/1.00  
% 1.97/1.00  --schedule                              default
% 1.97/1.00  --add_important_lit                     false
% 1.97/1.00  --prop_solver_per_cl                    1000
% 1.97/1.00  --min_unsat_core                        false
% 1.97/1.00  --soft_assumptions                      false
% 1.97/1.00  --soft_lemma_size                       3
% 1.97/1.00  --prop_impl_unit_size                   0
% 1.97/1.00  --prop_impl_unit                        []
% 1.97/1.00  --share_sel_clauses                     true
% 1.97/1.00  --reset_solvers                         false
% 1.97/1.00  --bc_imp_inh                            [conj_cone]
% 1.97/1.00  --conj_cone_tolerance                   3.
% 1.97/1.00  --extra_neg_conj                        none
% 1.97/1.00  --large_theory_mode                     true
% 1.97/1.00  --prolific_symb_bound                   200
% 1.97/1.00  --lt_threshold                          2000
% 1.97/1.00  --clause_weak_htbl                      true
% 1.97/1.00  --gc_record_bc_elim                     false
% 1.97/1.00  
% 1.97/1.00  ------ Preprocessing Options
% 1.97/1.00  
% 1.97/1.00  --preprocessing_flag                    true
% 1.97/1.00  --time_out_prep_mult                    0.1
% 1.97/1.00  --splitting_mode                        input
% 1.97/1.00  --splitting_grd                         true
% 1.97/1.00  --splitting_cvd                         false
% 1.97/1.00  --splitting_cvd_svl                     false
% 1.97/1.00  --splitting_nvd                         32
% 1.97/1.00  --sub_typing                            true
% 1.97/1.00  --prep_gs_sim                           true
% 1.97/1.00  --prep_unflatten                        true
% 1.97/1.00  --prep_res_sim                          true
% 1.97/1.00  --prep_upred                            true
% 1.97/1.00  --prep_sem_filter                       exhaustive
% 1.97/1.00  --prep_sem_filter_out                   false
% 1.97/1.00  --pred_elim                             true
% 1.97/1.00  --res_sim_input                         true
% 1.97/1.00  --eq_ax_congr_red                       true
% 1.97/1.00  --pure_diseq_elim                       true
% 1.97/1.00  --brand_transform                       false
% 1.97/1.00  --non_eq_to_eq                          false
% 1.97/1.00  --prep_def_merge                        true
% 1.97/1.00  --prep_def_merge_prop_impl              false
% 1.97/1.00  --prep_def_merge_mbd                    true
% 1.97/1.00  --prep_def_merge_tr_red                 false
% 1.97/1.00  --prep_def_merge_tr_cl                  false
% 1.97/1.00  --smt_preprocessing                     true
% 1.97/1.00  --smt_ac_axioms                         fast
% 1.97/1.00  --preprocessed_out                      false
% 1.97/1.00  --preprocessed_stats                    false
% 1.97/1.00  
% 1.97/1.00  ------ Abstraction refinement Options
% 1.97/1.00  
% 1.97/1.00  --abstr_ref                             []
% 1.97/1.00  --abstr_ref_prep                        false
% 1.97/1.00  --abstr_ref_until_sat                   false
% 1.97/1.00  --abstr_ref_sig_restrict                funpre
% 1.97/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.97/1.00  --abstr_ref_under                       []
% 1.97/1.00  
% 1.97/1.00  ------ SAT Options
% 1.97/1.00  
% 1.97/1.00  --sat_mode                              false
% 1.97/1.00  --sat_fm_restart_options                ""
% 1.97/1.00  --sat_gr_def                            false
% 1.97/1.00  --sat_epr_types                         true
% 1.97/1.00  --sat_non_cyclic_types                  false
% 1.97/1.00  --sat_finite_models                     false
% 1.97/1.00  --sat_fm_lemmas                         false
% 1.97/1.00  --sat_fm_prep                           false
% 1.97/1.00  --sat_fm_uc_incr                        true
% 1.97/1.00  --sat_out_model                         small
% 1.97/1.00  --sat_out_clauses                       false
% 1.97/1.00  
% 1.97/1.00  ------ QBF Options
% 1.97/1.00  
% 1.97/1.00  --qbf_mode                              false
% 1.97/1.00  --qbf_elim_univ                         false
% 1.97/1.00  --qbf_dom_inst                          none
% 1.97/1.00  --qbf_dom_pre_inst                      false
% 1.97/1.00  --qbf_sk_in                             false
% 1.97/1.00  --qbf_pred_elim                         true
% 1.97/1.00  --qbf_split                             512
% 1.97/1.00  
% 1.97/1.00  ------ BMC1 Options
% 1.97/1.00  
% 1.97/1.00  --bmc1_incremental                      false
% 1.97/1.00  --bmc1_axioms                           reachable_all
% 1.97/1.00  --bmc1_min_bound                        0
% 1.97/1.00  --bmc1_max_bound                        -1
% 1.97/1.00  --bmc1_max_bound_default                -1
% 1.97/1.00  --bmc1_symbol_reachability              true
% 1.97/1.00  --bmc1_property_lemmas                  false
% 1.97/1.00  --bmc1_k_induction                      false
% 1.97/1.00  --bmc1_non_equiv_states                 false
% 1.97/1.00  --bmc1_deadlock                         false
% 1.97/1.00  --bmc1_ucm                              false
% 1.97/1.00  --bmc1_add_unsat_core                   none
% 1.97/1.00  --bmc1_unsat_core_children              false
% 1.97/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.97/1.00  --bmc1_out_stat                         full
% 1.97/1.00  --bmc1_ground_init                      false
% 1.97/1.00  --bmc1_pre_inst_next_state              false
% 1.97/1.00  --bmc1_pre_inst_state                   false
% 1.97/1.00  --bmc1_pre_inst_reach_state             false
% 1.97/1.00  --bmc1_out_unsat_core                   false
% 1.97/1.00  --bmc1_aig_witness_out                  false
% 1.97/1.00  --bmc1_verbose                          false
% 1.97/1.00  --bmc1_dump_clauses_tptp                false
% 1.97/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.97/1.00  --bmc1_dump_file                        -
% 1.97/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.97/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.97/1.00  --bmc1_ucm_extend_mode                  1
% 1.97/1.00  --bmc1_ucm_init_mode                    2
% 1.97/1.00  --bmc1_ucm_cone_mode                    none
% 1.97/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.97/1.00  --bmc1_ucm_relax_model                  4
% 1.97/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.97/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.97/1.00  --bmc1_ucm_layered_model                none
% 1.97/1.00  --bmc1_ucm_max_lemma_size               10
% 1.97/1.00  
% 1.97/1.00  ------ AIG Options
% 1.97/1.00  
% 1.97/1.00  --aig_mode                              false
% 1.97/1.00  
% 1.97/1.00  ------ Instantiation Options
% 1.97/1.00  
% 1.97/1.00  --instantiation_flag                    true
% 1.97/1.00  --inst_sos_flag                         false
% 1.97/1.00  --inst_sos_phase                        true
% 1.97/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.97/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.97/1.00  --inst_lit_sel_side                     none
% 1.97/1.00  --inst_solver_per_active                1400
% 1.97/1.00  --inst_solver_calls_frac                1.
% 1.97/1.00  --inst_passive_queue_type               priority_queues
% 1.97/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.97/1.00  --inst_passive_queues_freq              [25;2]
% 1.97/1.00  --inst_dismatching                      true
% 1.97/1.00  --inst_eager_unprocessed_to_passive     true
% 1.97/1.00  --inst_prop_sim_given                   true
% 1.97/1.00  --inst_prop_sim_new                     false
% 1.97/1.00  --inst_subs_new                         false
% 1.97/1.00  --inst_eq_res_simp                      false
% 1.97/1.00  --inst_subs_given                       false
% 1.97/1.00  --inst_orphan_elimination               true
% 1.97/1.00  --inst_learning_loop_flag               true
% 1.97/1.00  --inst_learning_start                   3000
% 1.97/1.00  --inst_learning_factor                  2
% 1.97/1.00  --inst_start_prop_sim_after_learn       3
% 1.97/1.00  --inst_sel_renew                        solver
% 1.97/1.00  --inst_lit_activity_flag                true
% 1.97/1.00  --inst_restr_to_given                   false
% 1.97/1.00  --inst_activity_threshold               500
% 1.97/1.00  --inst_out_proof                        true
% 1.97/1.00  
% 1.97/1.00  ------ Resolution Options
% 1.97/1.00  
% 1.97/1.00  --resolution_flag                       false
% 1.97/1.00  --res_lit_sel                           adaptive
% 1.97/1.00  --res_lit_sel_side                      none
% 1.97/1.00  --res_ordering                          kbo
% 1.97/1.00  --res_to_prop_solver                    active
% 1.97/1.00  --res_prop_simpl_new                    false
% 1.97/1.00  --res_prop_simpl_given                  true
% 1.97/1.00  --res_passive_queue_type                priority_queues
% 1.97/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.97/1.00  --res_passive_queues_freq               [15;5]
% 1.97/1.00  --res_forward_subs                      full
% 1.97/1.00  --res_backward_subs                     full
% 1.97/1.00  --res_forward_subs_resolution           true
% 1.97/1.00  --res_backward_subs_resolution          true
% 1.97/1.00  --res_orphan_elimination                true
% 1.97/1.00  --res_time_limit                        2.
% 1.97/1.00  --res_out_proof                         true
% 1.97/1.00  
% 1.97/1.00  ------ Superposition Options
% 1.97/1.00  
% 1.97/1.00  --superposition_flag                    true
% 1.97/1.00  --sup_passive_queue_type                priority_queues
% 1.97/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.97/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.97/1.00  --demod_completeness_check              fast
% 1.97/1.00  --demod_use_ground                      true
% 1.97/1.00  --sup_to_prop_solver                    passive
% 1.97/1.00  --sup_prop_simpl_new                    true
% 1.97/1.00  --sup_prop_simpl_given                  true
% 1.97/1.00  --sup_fun_splitting                     false
% 1.97/1.00  --sup_smt_interval                      50000
% 1.97/1.00  
% 1.97/1.00  ------ Superposition Simplification Setup
% 1.97/1.00  
% 1.97/1.00  --sup_indices_passive                   []
% 1.97/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.97/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.97/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.97/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.97/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.97/1.00  --sup_full_bw                           [BwDemod]
% 1.97/1.00  --sup_immed_triv                        [TrivRules]
% 1.97/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.97/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.97/1.00  --sup_immed_bw_main                     []
% 1.97/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.97/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.97/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.97/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.97/1.00  
% 1.97/1.00  ------ Combination Options
% 1.97/1.00  
% 1.97/1.00  --comb_res_mult                         3
% 1.97/1.00  --comb_sup_mult                         2
% 1.97/1.00  --comb_inst_mult                        10
% 1.97/1.00  
% 1.97/1.00  ------ Debug Options
% 1.97/1.00  
% 1.97/1.00  --dbg_backtrace                         false
% 1.97/1.00  --dbg_dump_prop_clauses                 false
% 1.97/1.00  --dbg_dump_prop_clauses_file            -
% 1.97/1.00  --dbg_out_stat                          false
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  ------ Proving...
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  % SZS status Theorem for theBenchmark.p
% 1.97/1.00  
% 1.97/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.97/1.00  
% 1.97/1.00  fof(f9,conjecture,(
% 1.97/1.00    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1))))),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f10,negated_conjecture,(
% 1.97/1.00    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => k1_xboole_0 != k3_tarski(k4_orders_2(X0,X1))))),
% 1.97/1.00    inference(negated_conjecture,[],[f9])).
% 1.97/1.00  
% 1.97/1.00  fof(f22,plain,(
% 1.97/1.00    ? [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.97/1.00    inference(ennf_transformation,[],[f10])).
% 1.97/1.00  
% 1.97/1.00  fof(f23,plain,(
% 1.97/1.00    ? [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.97/1.00    inference(flattening,[],[f22])).
% 1.97/1.00  
% 1.97/1.00  fof(f36,plain,(
% 1.97/1.00    ( ! [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) => (k1_xboole_0 = k3_tarski(k4_orders_2(X0,sK4)) & m1_orders_1(sK4,k1_orders_1(u1_struct_0(X0))))) )),
% 1.97/1.00    introduced(choice_axiom,[])).
% 1.97/1.00  
% 1.97/1.00  fof(f35,plain,(
% 1.97/1.00    ? [X0] : (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(X0,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (k1_xboole_0 = k3_tarski(k4_orders_2(sK3,X1)) & m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))) & l1_orders_2(sK3) & v5_orders_2(sK3) & v4_orders_2(sK3) & v3_orders_2(sK3) & ~v2_struct_0(sK3))),
% 1.97/1.00    introduced(choice_axiom,[])).
% 1.97/1.00  
% 1.97/1.00  fof(f37,plain,(
% 1.97/1.00    (k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) & m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))) & l1_orders_2(sK3) & v5_orders_2(sK3) & v4_orders_2(sK3) & v3_orders_2(sK3) & ~v2_struct_0(sK3)),
% 1.97/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f23,f36,f35])).
% 1.97/1.00  
% 1.97/1.00  fof(f62,plain,(
% 1.97/1.00    m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f7,axiom,(
% 1.97/1.00    ! [X0,X1] : ((m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X2] : (m2_orders_2(X2,X0,X1) => (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X2,X0))))),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f18,plain,(
% 1.97/1.00    ! [X0,X1] : (! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X2,X0)) | ~m2_orders_2(X2,X0,X1)) | (~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.97/1.00    inference(ennf_transformation,[],[f7])).
% 1.97/1.00  
% 1.97/1.00  fof(f19,plain,(
% 1.97/1.00    ! [X0,X1] : (! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X2,X0)) | ~m2_orders_2(X2,X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(flattening,[],[f18])).
% 1.97/1.00  
% 1.97/1.00  fof(f54,plain,(
% 1.97/1.00    ( ! [X2,X0,X1] : (v6_orders_2(X2,X0) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f19])).
% 1.97/1.00  
% 1.97/1.00  fof(f5,axiom,(
% 1.97/1.00    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X2,X0)) => (m2_orders_2(X2,X0,X1) <=> (! [X3] : (m1_subset_1(X3,u1_struct_0(X0)) => (r2_hidden(X3,X2) => k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3)) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2)))))),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f14,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : ((m2_orders_2(X2,X0,X1) <=> (! [X3] : ((k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3 | ~r2_hidden(X3,X2)) | ~m1_subset_1(X3,u1_struct_0(X0))) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2)) | (~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0))) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.97/1.00    inference(ennf_transformation,[],[f5])).
% 1.97/1.00  
% 1.97/1.00  fof(f15,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : ((m2_orders_2(X2,X0,X1) <=> (! [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3 | ~r2_hidden(X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(flattening,[],[f14])).
% 1.97/1.00  
% 1.97/1.00  fof(f26,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : (((m2_orders_2(X2,X0,X1) | (? [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3 & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) | ~r2_wellord1(u1_orders_2(X0),X2) | k1_xboole_0 = X2)) & ((! [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3 | ~r2_hidden(X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2) | ~m2_orders_2(X2,X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(nnf_transformation,[],[f15])).
% 1.97/1.00  
% 1.97/1.00  fof(f27,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : (((m2_orders_2(X2,X0,X1) | ? [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3 & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) | ~r2_wellord1(u1_orders_2(X0),X2) | k1_xboole_0 = X2) & ((! [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) = X3 | ~r2_hidden(X3,X2) | ~m1_subset_1(X3,u1_struct_0(X0))) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2) | ~m2_orders_2(X2,X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(flattening,[],[f26])).
% 1.97/1.00  
% 1.97/1.00  fof(f28,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : (((m2_orders_2(X2,X0,X1) | ? [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3 & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) | ~r2_wellord1(u1_orders_2(X0),X2) | k1_xboole_0 = X2) & ((! [X4] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X4))) = X4 | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0))) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2) | ~m2_orders_2(X2,X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(rectify,[],[f27])).
% 1.97/1.00  
% 1.97/1.00  fof(f29,plain,(
% 1.97/1.00    ! [X2,X1,X0] : (? [X3] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X3))) != X3 & r2_hidden(X3,X2) & m1_subset_1(X3,u1_struct_0(X0))) => (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,sK1(X0,X1,X2)))) != sK1(X0,X1,X2) & r2_hidden(sK1(X0,X1,X2),X2) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))))),
% 1.97/1.00    introduced(choice_axiom,[])).
% 1.97/1.00  
% 1.97/1.00  fof(f30,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : (((m2_orders_2(X2,X0,X1) | (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,sK1(X0,X1,X2)))) != sK1(X0,X1,X2) & r2_hidden(sK1(X0,X1,X2),X2) & m1_subset_1(sK1(X0,X1,X2),u1_struct_0(X0))) | ~r2_wellord1(u1_orders_2(X0),X2) | k1_xboole_0 = X2) & ((! [X4] : (k1_funct_1(X1,k1_orders_2(X0,k3_orders_2(X0,X2,X4))) = X4 | ~r2_hidden(X4,X2) | ~m1_subset_1(X4,u1_struct_0(X0))) & r2_wellord1(u1_orders_2(X0),X2) & k1_xboole_0 != X2) | ~m2_orders_2(X2,X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f28,f29])).
% 1.97/1.00  
% 1.97/1.00  fof(f44,plain,(
% 1.97/1.00    ( ! [X2,X0,X1] : (k1_xboole_0 != X2 | ~m2_orders_2(X2,X0,X1) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X2,X0) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f30])).
% 1.97/1.00  
% 1.97/1.00  fof(f64,plain,(
% 1.97/1.00    ( ! [X0,X1] : (~m2_orders_2(k1_xboole_0,X0,X1) | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(k1_xboole_0,X0) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(equality_resolution,[],[f44])).
% 1.97/1.00  
% 1.97/1.00  fof(f55,plain,(
% 1.97/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m2_orders_2(X2,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f19])).
% 1.97/1.00  
% 1.97/1.00  fof(f61,plain,(
% 1.97/1.00    l1_orders_2(sK3)),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f57,plain,(
% 1.97/1.00    ~v2_struct_0(sK3)),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f58,plain,(
% 1.97/1.00    v3_orders_2(sK3)),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f59,plain,(
% 1.97/1.00    v4_orders_2(sK3)),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f60,plain,(
% 1.97/1.00    v5_orders_2(sK3)),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f4,axiom,(
% 1.97/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4] : ~(k3_mcart_1(X2,X3,X4) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f13,plain,(
% 1.97/1.00    ! [X0] : (? [X1] : (! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 1.97/1.00    inference(ennf_transformation,[],[f4])).
% 1.97/1.00  
% 1.97/1.00  fof(f24,plain,(
% 1.97/1.00    ! [X0] : (? [X1] : (! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X4,X3,X2] : (k3_mcart_1(X2,X3,X4) != sK0(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK0(X0),X0)))),
% 1.97/1.00    introduced(choice_axiom,[])).
% 1.97/1.00  
% 1.97/1.00  fof(f25,plain,(
% 1.97/1.00    ! [X0] : ((! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != sK0(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK0(X0),X0)) | k1_xboole_0 = X0)),
% 1.97/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f13,f24])).
% 1.97/1.00  
% 1.97/1.00  fof(f41,plain,(
% 1.97/1.00    ( ! [X0] : (r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0) )),
% 1.97/1.00    inference(cnf_transformation,[],[f25])).
% 1.97/1.00  
% 1.97/1.00  fof(f6,axiom,(
% 1.97/1.00    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) => ! [X2] : (k4_orders_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> m2_orders_2(X3,X0,X1)))))),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f16,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : (k4_orders_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> m2_orders_2(X3,X0,X1))) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.97/1.00    inference(ennf_transformation,[],[f6])).
% 1.97/1.00  
% 1.97/1.00  fof(f17,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : (k4_orders_2(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> m2_orders_2(X3,X0,X1))) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(flattening,[],[f16])).
% 1.97/1.00  
% 1.97/1.00  fof(f31,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : ((k4_orders_2(X0,X1) = X2 | ? [X3] : ((~m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2)) & (m2_orders_2(X3,X0,X1) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~m2_orders_2(X3,X0,X1)) & (m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2))) | k4_orders_2(X0,X1) != X2)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(nnf_transformation,[],[f17])).
% 1.97/1.00  
% 1.97/1.00  fof(f32,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : ((k4_orders_2(X0,X1) = X2 | ? [X3] : ((~m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2)) & (m2_orders_2(X3,X0,X1) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~m2_orders_2(X4,X0,X1)) & (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,X2))) | k4_orders_2(X0,X1) != X2)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(rectify,[],[f31])).
% 1.97/1.00  
% 1.97/1.00  fof(f33,plain,(
% 1.97/1.00    ! [X2,X1,X0] : (? [X3] : ((~m2_orders_2(X3,X0,X1) | ~r2_hidden(X3,X2)) & (m2_orders_2(X3,X0,X1) | r2_hidden(X3,X2))) => ((~m2_orders_2(sK2(X0,X1,X2),X0,X1) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (m2_orders_2(sK2(X0,X1,X2),X0,X1) | r2_hidden(sK2(X0,X1,X2),X2))))),
% 1.97/1.00    introduced(choice_axiom,[])).
% 1.97/1.00  
% 1.97/1.00  fof(f34,plain,(
% 1.97/1.00    ! [X0] : (! [X1] : (! [X2] : ((k4_orders_2(X0,X1) = X2 | ((~m2_orders_2(sK2(X0,X1,X2),X0,X1) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (m2_orders_2(sK2(X0,X1,X2),X0,X1) | r2_hidden(sK2(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~m2_orders_2(X4,X0,X1)) & (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,X2))) | k4_orders_2(X0,X1) != X2)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f32,f33])).
% 1.97/1.00  
% 1.97/1.00  fof(f50,plain,(
% 1.97/1.00    ( ! [X4,X2,X0,X1] : (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,X2) | k4_orders_2(X0,X1) != X2 | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f34])).
% 1.97/1.00  
% 1.97/1.00  fof(f66,plain,(
% 1.97/1.00    ( ! [X4,X0,X1] : (m2_orders_2(X4,X0,X1) | ~r2_hidden(X4,k4_orders_2(X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(equality_resolution,[],[f50])).
% 1.97/1.00  
% 1.97/1.00  fof(f1,axiom,(
% 1.97/1.00    v1_xboole_0(k1_xboole_0)),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f38,plain,(
% 1.97/1.00    v1_xboole_0(k1_xboole_0)),
% 1.97/1.00    inference(cnf_transformation,[],[f1])).
% 1.97/1.00  
% 1.97/1.00  fof(f8,axiom,(
% 1.97/1.00    ! [X0,X1] : ((m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(k4_orders_2(X0,X1)))),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f20,plain,(
% 1.97/1.00    ! [X0,X1] : (~v1_xboole_0(k4_orders_2(X0,X1)) | (~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.97/1.00    inference(ennf_transformation,[],[f8])).
% 1.97/1.00  
% 1.97/1.00  fof(f21,plain,(
% 1.97/1.00    ! [X0,X1] : (~v1_xboole_0(k4_orders_2(X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.97/1.00    inference(flattening,[],[f20])).
% 1.97/1.00  
% 1.97/1.00  fof(f56,plain,(
% 1.97/1.00    ( ! [X0,X1] : (~v1_xboole_0(k4_orders_2(X0,X1)) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f21])).
% 1.97/1.00  
% 1.97/1.00  fof(f51,plain,(
% 1.97/1.00    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~m2_orders_2(X4,X0,X1) | k4_orders_2(X0,X1) != X2 | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f34])).
% 1.97/1.00  
% 1.97/1.00  fof(f65,plain,(
% 1.97/1.00    ( ! [X4,X0,X1] : (r2_hidden(X4,k4_orders_2(X0,X1)) | ~m2_orders_2(X4,X0,X1) | ~m1_orders_1(X1,k1_orders_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.97/1.00    inference(equality_resolution,[],[f51])).
% 1.97/1.00  
% 1.97/1.00  fof(f63,plain,(
% 1.97/1.00    k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4))),
% 1.97/1.00    inference(cnf_transformation,[],[f37])).
% 1.97/1.00  
% 1.97/1.00  fof(f2,axiom,(
% 1.97/1.00    ! [X0] : (r1_tarski(X0,k1_xboole_0) => k1_xboole_0 = X0)),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f11,plain,(
% 1.97/1.00    ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0))),
% 1.97/1.00    inference(ennf_transformation,[],[f2])).
% 1.97/1.00  
% 1.97/1.00  fof(f39,plain,(
% 1.97/1.00    ( ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f11])).
% 1.97/1.00  
% 1.97/1.00  fof(f3,axiom,(
% 1.97/1.00    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(X0,k3_tarski(X1)))),
% 1.97/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.97/1.00  
% 1.97/1.00  fof(f12,plain,(
% 1.97/1.00    ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1))),
% 1.97/1.00    inference(ennf_transformation,[],[f3])).
% 1.97/1.00  
% 1.97/1.00  fof(f40,plain,(
% 1.97/1.00    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1)) )),
% 1.97/1.00    inference(cnf_transformation,[],[f12])).
% 1.97/1.00  
% 1.97/1.00  cnf(c_20,negated_conjecture,
% 1.97/1.00      ( m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) ),
% 1.97/1.00      inference(cnf_transformation,[],[f62]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2643,plain,
% 1.97/1.00      ( m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3))) = iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_17,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | v6_orders_2(X0,X1)
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X1) ),
% 1.97/1.00      inference(cnf_transformation,[],[f54]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_11,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,X0,X1)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | ~ v6_orders_2(k1_xboole_0,X0)
% 1.97/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
% 1.97/1.00      | v2_struct_0(X0)
% 1.97/1.00      | ~ v3_orders_2(X0)
% 1.97/1.00      | ~ v4_orders_2(X0)
% 1.97/1.00      | ~ v5_orders_2(X0)
% 1.97/1.00      | ~ l1_orders_2(X0) ),
% 1.97/1.00      inference(cnf_transformation,[],[f64]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_471,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m2_orders_2(k1_xboole_0,X3,X4)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | ~ m1_orders_1(X4,k1_orders_1(u1_struct_0(X3)))
% 1.97/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X3)))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | v2_struct_0(X3)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v3_orders_2(X3)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X3)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X3)
% 1.97/1.00      | ~ l1_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X3)
% 1.97/1.00      | X3 != X1
% 1.97/1.00      | k1_xboole_0 != X0 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_11]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_472,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,X0,X1)
% 1.97/1.00      | ~ m2_orders_2(k1_xboole_0,X0,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
% 1.97/1.00      | v2_struct_0(X0)
% 1.97/1.00      | ~ v3_orders_2(X0)
% 1.97/1.00      | ~ v4_orders_2(X0)
% 1.97/1.00      | ~ v5_orders_2(X0)
% 1.97/1.00      | ~ l1_orders_2(X0) ),
% 1.97/1.00      inference(unflattening,[status(thm)],[c_471]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_16,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X1) ),
% 1.97/1.00      inference(cnf_transformation,[],[f55]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_496,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,X0,X1)
% 1.97/1.00      | ~ m2_orders_2(k1_xboole_0,X0,X2)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | v2_struct_0(X0)
% 1.97/1.00      | ~ v3_orders_2(X0)
% 1.97/1.00      | ~ v4_orders_2(X0)
% 1.97/1.00      | ~ v5_orders_2(X0)
% 1.97/1.00      | ~ l1_orders_2(X0) ),
% 1.97/1.00      inference(forward_subsumption_resolution,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_472,c_16]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_21,negated_conjecture,
% 1.97/1.00      ( l1_orders_2(sK3) ),
% 1.97/1.00      inference(cnf_transformation,[],[f61]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_638,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,X0,X1)
% 1.97/1.00      | ~ m2_orders_2(k1_xboole_0,X0,X2)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X0)))
% 1.97/1.00      | v2_struct_0(X0)
% 1.97/1.00      | ~ v3_orders_2(X0)
% 1.97/1.00      | ~ v4_orders_2(X0)
% 1.97/1.00      | ~ v5_orders_2(X0)
% 1.97/1.00      | sK3 != X0 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_496,c_21]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_639,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,sK3,X0)
% 1.97/1.00      | ~ m2_orders_2(k1_xboole_0,sK3,X1)
% 1.97/1.00      | ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | v2_struct_0(sK3)
% 1.97/1.00      | ~ v3_orders_2(sK3)
% 1.97/1.00      | ~ v4_orders_2(sK3)
% 1.97/1.00      | ~ v5_orders_2(sK3) ),
% 1.97/1.00      inference(unflattening,[status(thm)],[c_638]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_25,negated_conjecture,
% 1.97/1.00      ( ~ v2_struct_0(sK3) ),
% 1.97/1.00      inference(cnf_transformation,[],[f57]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_24,negated_conjecture,
% 1.97/1.00      ( v3_orders_2(sK3) ),
% 1.97/1.00      inference(cnf_transformation,[],[f58]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_23,negated_conjecture,
% 1.97/1.00      ( v4_orders_2(sK3) ),
% 1.97/1.00      inference(cnf_transformation,[],[f59]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_22,negated_conjecture,
% 1.97/1.00      ( v5_orders_2(sK3) ),
% 1.97/1.00      inference(cnf_transformation,[],[f60]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_643,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,sK3,X0)
% 1.97/1.00      | ~ m2_orders_2(k1_xboole_0,sK3,X1)
% 1.97/1.00      | ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) ),
% 1.97/1.00      inference(global_propositional_subsumption,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_639,c_25,c_24,c_23,c_22]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2295,plain,
% 1.97/1.00      ( ~ m2_orders_2(k1_xboole_0,sK3,X0)
% 1.97/1.00      | ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | ~ sP0_iProver_split ),
% 1.97/1.00      inference(splitting,
% 1.97/1.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.97/1.00                [c_643]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2640,plain,
% 1.97/1.00      ( m2_orders_2(k1_xboole_0,sK3,X0) != iProver_top
% 1.97/1.00      | m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3))) != iProver_top
% 1.97/1.00      | sP0_iProver_split != iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_2295]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2296,plain,
% 1.97/1.00      ( sP0_iProver_split ),
% 1.97/1.00      inference(splitting,
% 1.97/1.00                [splitting(split),new_symbols(definition,[])],
% 1.97/1.00                [c_643]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2639,plain,
% 1.97/1.00      ( sP0_iProver_split = iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_2296]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2682,plain,
% 1.97/1.00      ( m2_orders_2(k1_xboole_0,sK3,X0) != iProver_top
% 1.97/1.00      | m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3))) != iProver_top ),
% 1.97/1.00      inference(forward_subsumption_resolution,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_2640,c_2639]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_3807,plain,
% 1.97/1.00      ( m2_orders_2(k1_xboole_0,sK3,sK4) != iProver_top ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_2643,c_2682]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_5,plain,
% 1.97/1.00      ( r2_hidden(sK0(X0),X0) | k1_xboole_0 = X0 ),
% 1.97/1.00      inference(cnf_transformation,[],[f41]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2644,plain,
% 1.97/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK0(X0),X0) = iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_15,plain,
% 1.97/1.00      ( m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | ~ r2_hidden(X0,k4_orders_2(X1,X2))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X1) ),
% 1.97/1.00      inference(cnf_transformation,[],[f66]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_846,plain,
% 1.97/1.00      ( m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | ~ r2_hidden(X0,k4_orders_2(X1,X2))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | sK3 != X1 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_15,c_21]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_847,plain,
% 1.97/1.00      ( m2_orders_2(X0,sK3,X1)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | ~ r2_hidden(X0,k4_orders_2(sK3,X1))
% 1.97/1.00      | v2_struct_0(sK3)
% 1.97/1.00      | ~ v3_orders_2(sK3)
% 1.97/1.00      | ~ v4_orders_2(sK3)
% 1.97/1.00      | ~ v5_orders_2(sK3) ),
% 1.97/1.00      inference(unflattening,[status(thm)],[c_846]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_851,plain,
% 1.97/1.00      ( m2_orders_2(X0,sK3,X1)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | ~ r2_hidden(X0,k4_orders_2(sK3,X1)) ),
% 1.97/1.00      inference(global_propositional_subsumption,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_847,c_25,c_24,c_23,c_22]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2630,plain,
% 1.97/1.00      ( m2_orders_2(X0,sK3,X1) = iProver_top
% 1.97/1.00      | m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) != iProver_top
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,X1)) != iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_851]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2874,plain,
% 1.97/1.00      ( m2_orders_2(X0,sK3,sK4) = iProver_top
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,sK4)) != iProver_top ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_2643,c_2630]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2975,plain,
% 1.97/1.00      ( k4_orders_2(sK3,sK4) = k1_xboole_0
% 1.97/1.00      | m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) = iProver_top ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_2644,c_2874]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_0,plain,
% 1.97/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 1.97/1.00      inference(cnf_transformation,[],[f38]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_18,plain,
% 1.97/1.00      ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X1)
% 1.97/1.00      | ~ v1_xboole_0(k4_orders_2(X1,X0)) ),
% 1.97/1.00      inference(cnf_transformation,[],[f56]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_314,plain,
% 1.97/1.00      ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X1)
% 1.97/1.00      | k4_orders_2(X1,X0) != k1_xboole_0 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_0,c_18]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_788,plain,
% 1.97/1.00      ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | k4_orders_2(X1,X0) != k1_xboole_0
% 1.97/1.00      | sK3 != X1 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_314,c_21]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_789,plain,
% 1.97/1.00      ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | v2_struct_0(sK3)
% 1.97/1.00      | ~ v3_orders_2(sK3)
% 1.97/1.00      | ~ v4_orders_2(sK3)
% 1.97/1.00      | ~ v5_orders_2(sK3)
% 1.97/1.00      | k4_orders_2(sK3,X0) != k1_xboole_0 ),
% 1.97/1.00      inference(unflattening,[status(thm)],[c_788]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_793,plain,
% 1.97/1.00      ( ~ m1_orders_1(X0,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | k4_orders_2(sK3,X0) != k1_xboole_0 ),
% 1.97/1.00      inference(global_propositional_subsumption,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_789,c_25,c_24,c_23,c_22]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2802,plain,
% 1.97/1.00      ( ~ m1_orders_1(sK4,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | k4_orders_2(sK3,sK4) != k1_xboole_0 ),
% 1.97/1.00      inference(instantiation,[status(thm)],[c_793]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_3519,plain,
% 1.97/1.00      ( m2_orders_2(sK0(k4_orders_2(sK3,sK4)),sK3,sK4) = iProver_top ),
% 1.97/1.00      inference(global_propositional_subsumption,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_2975,c_20,c_2802]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_14,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(X1,X2))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | ~ l1_orders_2(X1) ),
% 1.97/1.00      inference(cnf_transformation,[],[f65]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_867,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,X1,X2)
% 1.97/1.00      | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(X1,X2))
% 1.97/1.00      | v2_struct_0(X1)
% 1.97/1.00      | ~ v3_orders_2(X1)
% 1.97/1.00      | ~ v4_orders_2(X1)
% 1.97/1.00      | ~ v5_orders_2(X1)
% 1.97/1.00      | sK3 != X1 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_21]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_868,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,sK3,X1)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,X1))
% 1.97/1.00      | v2_struct_0(sK3)
% 1.97/1.00      | ~ v3_orders_2(sK3)
% 1.97/1.00      | ~ v4_orders_2(sK3)
% 1.97/1.00      | ~ v5_orders_2(sK3) ),
% 1.97/1.00      inference(unflattening,[status(thm)],[c_867]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_870,plain,
% 1.97/1.00      ( ~ m2_orders_2(X0,sK3,X1)
% 1.97/1.00      | ~ m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3)))
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,X1)) ),
% 1.97/1.00      inference(global_propositional_subsumption,
% 1.97/1.00                [status(thm)],
% 1.97/1.00                [c_868,c_25,c_24,c_23,c_22]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2629,plain,
% 1.97/1.00      ( m2_orders_2(X0,sK3,X1) != iProver_top
% 1.97/1.00      | m1_orders_1(X1,k1_orders_1(u1_struct_0(sK3))) != iProver_top
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,X1)) = iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_870]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2847,plain,
% 1.97/1.00      ( m2_orders_2(X0,sK3,sK4) != iProver_top
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,sK4)) = iProver_top ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_2643,c_2629]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_19,negated_conjecture,
% 1.97/1.00      ( k1_xboole_0 = k3_tarski(k4_orders_2(sK3,sK4)) ),
% 1.97/1.00      inference(cnf_transformation,[],[f63]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_1,plain,
% 1.97/1.00      ( ~ r1_tarski(X0,k1_xboole_0) | k1_xboole_0 = X0 ),
% 1.97/1.00      inference(cnf_transformation,[],[f39]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2,plain,
% 1.97/1.00      ( ~ r2_hidden(X0,X1) | r1_tarski(X0,k3_tarski(X1)) ),
% 1.97/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_295,plain,
% 1.97/1.00      ( ~ r2_hidden(X0,X1)
% 1.97/1.00      | X0 != X2
% 1.97/1.00      | k3_tarski(X1) != k1_xboole_0
% 1.97/1.00      | k1_xboole_0 = X2 ),
% 1.97/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_2]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_296,plain,
% 1.97/1.00      ( ~ r2_hidden(X0,X1)
% 1.97/1.00      | k3_tarski(X1) != k1_xboole_0
% 1.97/1.00      | k1_xboole_0 = X0 ),
% 1.97/1.00      inference(unflattening,[status(thm)],[c_295]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_2642,plain,
% 1.97/1.00      ( k3_tarski(X0) != k1_xboole_0
% 1.97/1.00      | k1_xboole_0 = X1
% 1.97/1.00      | r2_hidden(X1,X0) != iProver_top ),
% 1.97/1.00      inference(predicate_to_equality,[status(thm)],[c_296]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_3532,plain,
% 1.97/1.00      ( k1_xboole_0 = X0
% 1.97/1.00      | r2_hidden(X0,k4_orders_2(sK3,sK4)) != iProver_top ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_19,c_2642]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_3612,plain,
% 1.97/1.00      ( k1_xboole_0 = X0 | m2_orders_2(X0,sK3,sK4) != iProver_top ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_2847,c_3532]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_3651,plain,
% 1.97/1.00      ( sK0(k4_orders_2(sK3,sK4)) = k1_xboole_0 ),
% 1.97/1.00      inference(superposition,[status(thm)],[c_3519,c_3612]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(c_3800,plain,
% 1.97/1.00      ( m2_orders_2(k1_xboole_0,sK3,sK4) = iProver_top ),
% 1.97/1.00      inference(demodulation,[status(thm)],[c_3651,c_3519]) ).
% 1.97/1.00  
% 1.97/1.00  cnf(contradiction,plain,
% 1.97/1.00      ( $false ),
% 1.97/1.00      inference(minisat,[status(thm)],[c_3807,c_3800]) ).
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.97/1.00  
% 1.97/1.00  ------                               Statistics
% 1.97/1.00  
% 1.97/1.00  ------ General
% 1.97/1.00  
% 1.97/1.00  abstr_ref_over_cycles:                  0
% 1.97/1.00  abstr_ref_under_cycles:                 0
% 1.97/1.00  gc_basic_clause_elim:                   0
% 1.97/1.00  forced_gc_time:                         0
% 1.97/1.00  parsing_time:                           0.01
% 1.97/1.00  unif_index_cands_time:                  0.
% 1.97/1.00  unif_index_add_time:                    0.
% 1.97/1.00  orderings_time:                         0.
% 1.97/1.00  out_proof_time:                         0.009
% 1.97/1.00  total_time:                             0.145
% 1.97/1.00  num_of_symbols:                         61
% 1.97/1.00  num_of_terms:                           2831
% 1.97/1.00  
% 1.97/1.00  ------ Preprocessing
% 1.97/1.00  
% 1.97/1.00  num_of_splits:                          2
% 1.97/1.00  num_of_split_atoms:                     1
% 1.97/1.00  num_of_reused_defs:                     1
% 1.97/1.00  num_eq_ax_congr_red:                    42
% 1.97/1.00  num_of_sem_filtered_clauses:            2
% 1.97/1.00  num_of_subtypes:                        0
% 1.97/1.00  monotx_restored_types:                  0
% 1.97/1.00  sat_num_of_epr_types:                   0
% 1.97/1.00  sat_num_of_non_cyclic_types:            0
% 1.97/1.00  sat_guarded_non_collapsed_types:        0
% 1.97/1.00  num_pure_diseq_elim:                    0
% 1.97/1.00  simp_replaced_by:                       0
% 1.97/1.00  res_preprocessed:                       111
% 1.97/1.00  prep_upred:                             0
% 1.97/1.00  prep_unflattend:                        104
% 1.97/1.00  smt_new_axioms:                         0
% 1.97/1.00  pred_elim_cands:                        4
% 1.97/1.00  pred_elim:                              9
% 1.97/1.00  pred_elim_cl:                           9
% 1.97/1.00  pred_elim_cycles:                       14
% 1.97/1.00  merged_defs:                            0
% 1.97/1.00  merged_defs_ncl:                        0
% 1.97/1.00  bin_hyper_res:                          0
% 1.97/1.00  prep_cycles:                            4
% 1.97/1.00  pred_elim_time:                         0.042
% 1.97/1.00  splitting_time:                         0.
% 1.97/1.00  sem_filter_time:                        0.
% 1.97/1.00  monotx_time:                            0.
% 1.97/1.00  subtype_inf_time:                       0.
% 1.97/1.00  
% 1.97/1.00  ------ Problem properties
% 1.97/1.00  
% 1.97/1.00  clauses:                                19
% 1.97/1.00  conjectures:                            2
% 1.97/1.00  epr:                                    1
% 1.97/1.00  horn:                                   14
% 1.97/1.00  ground:                                 3
% 1.97/1.00  unary:                                  3
% 1.97/1.00  binary:                                 2
% 1.97/1.00  lits:                                   62
% 1.97/1.00  lits_eq:                                16
% 1.97/1.00  fd_pure:                                0
% 1.97/1.00  fd_pseudo:                              0
% 1.97/1.00  fd_cond:                                7
% 1.97/1.00  fd_pseudo_cond:                         2
% 1.97/1.00  ac_symbols:                             0
% 1.97/1.00  
% 1.97/1.00  ------ Propositional Solver
% 1.97/1.00  
% 1.97/1.00  prop_solver_calls:                      27
% 1.97/1.00  prop_fast_solver_calls:                 1459
% 1.97/1.00  smt_solver_calls:                       0
% 1.97/1.00  smt_fast_solver_calls:                  0
% 1.97/1.00  prop_num_of_clauses:                    734
% 1.97/1.00  prop_preprocess_simplified:             3980
% 1.97/1.00  prop_fo_subsumed:                       59
% 1.97/1.00  prop_solver_time:                       0.
% 1.97/1.00  smt_solver_time:                        0.
% 1.97/1.00  smt_fast_solver_time:                   0.
% 1.97/1.00  prop_fast_solver_time:                  0.
% 1.97/1.00  prop_unsat_core_time:                   0.
% 1.97/1.00  
% 1.97/1.00  ------ QBF
% 1.97/1.00  
% 1.97/1.00  qbf_q_res:                              0
% 1.97/1.00  qbf_num_tautologies:                    0
% 1.97/1.00  qbf_prep_cycles:                        0
% 1.97/1.00  
% 1.97/1.00  ------ BMC1
% 1.97/1.00  
% 1.97/1.00  bmc1_current_bound:                     -1
% 1.97/1.00  bmc1_last_solved_bound:                 -1
% 1.97/1.00  bmc1_unsat_core_size:                   -1
% 1.97/1.00  bmc1_unsat_core_parents_size:           -1
% 1.97/1.00  bmc1_merge_next_fun:                    0
% 1.97/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.97/1.00  
% 1.97/1.00  ------ Instantiation
% 1.97/1.00  
% 1.97/1.00  inst_num_of_clauses:                    192
% 1.97/1.00  inst_num_in_passive:                    20
% 1.97/1.00  inst_num_in_active:                     121
% 1.97/1.00  inst_num_in_unprocessed:                51
% 1.97/1.00  inst_num_of_loops:                      150
% 1.97/1.00  inst_num_of_learning_restarts:          0
% 1.97/1.00  inst_num_moves_active_passive:          26
% 1.97/1.00  inst_lit_activity:                      0
% 1.97/1.00  inst_lit_activity_moves:                0
% 1.97/1.00  inst_num_tautologies:                   0
% 1.97/1.00  inst_num_prop_implied:                  0
% 1.97/1.00  inst_num_existing_simplified:           0
% 1.97/1.00  inst_num_eq_res_simplified:             0
% 1.97/1.00  inst_num_child_elim:                    0
% 1.97/1.00  inst_num_of_dismatching_blockings:      10
% 1.97/1.00  inst_num_of_non_proper_insts:           110
% 1.97/1.00  inst_num_of_duplicates:                 0
% 1.97/1.00  inst_inst_num_from_inst_to_res:         0
% 1.97/1.00  inst_dismatching_checking_time:         0.
% 1.97/1.00  
% 1.97/1.00  ------ Resolution
% 1.97/1.00  
% 1.97/1.00  res_num_of_clauses:                     0
% 1.97/1.00  res_num_in_passive:                     0
% 1.97/1.00  res_num_in_active:                      0
% 1.97/1.00  res_num_of_loops:                       115
% 1.97/1.00  res_forward_subset_subsumed:            20
% 1.97/1.00  res_backward_subset_subsumed:           0
% 1.97/1.00  res_forward_subsumed:                   0
% 1.97/1.00  res_backward_subsumed:                  0
% 1.97/1.00  res_forward_subsumption_resolution:     3
% 1.97/1.00  res_backward_subsumption_resolution:    0
% 1.97/1.00  res_clause_to_clause_subsumption:       82
% 1.97/1.00  res_orphan_elimination:                 0
% 1.97/1.00  res_tautology_del:                      18
% 1.97/1.00  res_num_eq_res_simplified:              0
% 1.97/1.00  res_num_sel_changes:                    0
% 1.97/1.00  res_moves_from_active_to_pass:          0
% 1.97/1.00  
% 1.97/1.00  ------ Superposition
% 1.97/1.00  
% 1.97/1.00  sup_time_total:                         0.
% 1.97/1.00  sup_time_generating:                    0.
% 1.97/1.00  sup_time_sim_full:                      0.
% 1.97/1.00  sup_time_sim_immed:                     0.
% 1.97/1.00  
% 1.97/1.00  sup_num_of_clauses:                     39
% 1.97/1.00  sup_num_in_active:                      29
% 1.97/1.00  sup_num_in_passive:                     10
% 1.97/1.00  sup_num_of_loops:                       29
% 1.97/1.00  sup_fw_superposition:                   15
% 1.97/1.00  sup_bw_superposition:                   10
% 1.97/1.00  sup_immediate_simplified:               0
% 1.97/1.00  sup_given_eliminated:                   0
% 1.97/1.00  comparisons_done:                       0
% 1.97/1.00  comparisons_avoided:                    1
% 1.97/1.00  
% 1.97/1.00  ------ Simplifications
% 1.97/1.00  
% 1.97/1.00  
% 1.97/1.00  sim_fw_subset_subsumed:                 1
% 1.97/1.00  sim_bw_subset_subsumed:                 0
% 1.97/1.00  sim_fw_subsumed:                        0
% 1.97/1.00  sim_bw_subsumed:                        0
% 1.97/1.00  sim_fw_subsumption_res:                 1
% 1.97/1.00  sim_bw_subsumption_res:                 0
% 1.97/1.00  sim_tautology_del:                      2
% 1.97/1.00  sim_eq_tautology_del:                   2
% 1.97/1.00  sim_eq_res_simp:                        0
% 1.97/1.00  sim_fw_demodulated:                     0
% 1.97/1.00  sim_bw_demodulated:                     1
% 1.97/1.00  sim_light_normalised:                   0
% 1.97/1.00  sim_joinable_taut:                      0
% 1.97/1.00  sim_joinable_simp:                      0
% 1.97/1.00  sim_ac_normalised:                      0
% 1.97/1.00  sim_smt_subsumption:                    0
% 1.97/1.00  
%------------------------------------------------------------------------------
