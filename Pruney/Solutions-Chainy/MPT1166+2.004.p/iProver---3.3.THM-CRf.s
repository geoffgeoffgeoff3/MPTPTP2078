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
% DateTime   : Thu Dec  3 12:12:40 EST 2020

% Result     : Theorem 1.80s
% Output     : CNFRefutation 1.80s
% Verified   : 
% Statistics : Number of formulae       :  162 (1234 expanded)
%              Number of clauses        :  117 ( 271 expanded)
%              Number of leaves         :   14 ( 409 expanded)
%              Depth                    :   21
%              Number of atoms          :  890 (10832 expanded)
%              Number of equality atoms :  198 (1504 expanded)
%              Maximal formula depth    :   16 (   6 average)
%              Maximal clause size      :   21 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( r2_hidden(X1,k3_orders_2(X0,X3,X2))
                  <=> ( r2_hidden(X1,X3)
                      & r2_orders_2(X0,X1,X2) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( r2_hidden(X1,k3_orders_2(X0,X3,X2))
                  <=> ( r2_hidden(X1,X3)
                      & r2_orders_2(X0,X1,X2) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( r2_hidden(X1,k3_orders_2(X0,X3,X2))
                  <=> ( r2_hidden(X1,X3)
                      & r2_orders_2(X0,X1,X2) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( r2_hidden(X1,k3_orders_2(X0,X3,X2))
                      | ~ r2_hidden(X1,X3)
                      | ~ r2_orders_2(X0,X1,X2) )
                    & ( ( r2_hidden(X1,X3)
                        & r2_orders_2(X0,X1,X2) )
                      | ~ r2_hidden(X1,k3_orders_2(X0,X3,X2)) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ( ( r2_hidden(X1,k3_orders_2(X0,X3,X2))
                      | ~ r2_hidden(X1,X3)
                      | ~ r2_orders_2(X0,X1,X2) )
                    & ( ( r2_hidden(X1,X3)
                        & r2_orders_2(X0,X1,X2) )
                      | ~ r2_hidden(X1,k3_orders_2(X0,X3,X2)) ) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f36,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X1,X3)
      | ~ r2_hidden(X1,k3_orders_2(X0,X3,X2))
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,conjecture,(
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

fof(f6,negated_conjecture,(
    ~ ! [X0] :
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
    inference(negated_conjecture,[],[f5])).

fof(f15,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( m1_orders_2(X2,X0,X1)
              & m1_orders_2(X1,X0,X2)
              & k1_xboole_0 != X1
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f16,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( m1_orders_2(X2,X0,X1)
              & m1_orders_2(X1,X0,X2)
              & k1_xboole_0 != X1
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v4_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f15])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( m1_orders_2(X2,X0,X1)
          & m1_orders_2(X1,X0,X2)
          & k1_xboole_0 != X1
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( m1_orders_2(sK3,X0,X1)
        & m1_orders_2(X1,X0,sK3)
        & k1_xboole_0 != X1
        & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( m1_orders_2(X2,X0,X1)
              & m1_orders_2(X1,X0,X2)
              & k1_xboole_0 != X1
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ? [X2] :
            ( m1_orders_2(X2,X0,sK2)
            & m1_orders_2(sK2,X0,X2)
            & k1_xboole_0 != sK2
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
        & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( m1_orders_2(X2,X0,X1)
                & m1_orders_2(X1,X0,X2)
                & k1_xboole_0 != X1
                & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v4_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( m1_orders_2(X2,sK1,X1)
              & m1_orders_2(X1,sK1,X2)
              & k1_xboole_0 != X1
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK1))) )
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1))) )
      & l1_orders_2(sK1)
      & v5_orders_2(sK1)
      & v4_orders_2(sK1)
      & v3_orders_2(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( m1_orders_2(sK3,sK1,sK2)
    & m1_orders_2(sK2,sK1,sK3)
    & k1_xboole_0 != sK2
    & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    & l1_orders_2(sK1)
    & v5_orders_2(sK1)
    & v4_orders_2(sK1)
    & v3_orders_2(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f16,f25,f24,f23])).

fof(f42,plain,(
    l1_orders_2(sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f38,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f39,plain,(
    v3_orders_2(sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f40,plain,(
    v4_orders_2(sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f41,plain,(
    v5_orders_2(sK1) ),
    inference(cnf_transformation,[],[f26])).

fof(f47,plain,(
    m1_orders_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f26])).

fof(f43,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f26])).

fof(f1,axiom,(
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
             => ( ( k1_xboole_0 = X1
                 => ( m1_orders_2(X2,X0,X1)
                  <=> k1_xboole_0 = X2 ) )
                & ( k1_xboole_0 != X1
                 => ( m1_orders_2(X2,X0,X1)
                  <=> ? [X3] :
                        ( k3_orders_2(X0,X1,X3) = X2
                        & r2_hidden(X3,X1)
                        & m1_subset_1(X3,u1_struct_0(X0)) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_orders_2(X2,X0,X1)
                  <=> k1_xboole_0 = X2 )
                  | k1_xboole_0 != X1 )
                & ( ( m1_orders_2(X2,X0,X1)
                  <=> ? [X3] :
                        ( k3_orders_2(X0,X1,X3) = X2
                        & r2_hidden(X3,X1)
                        & m1_subset_1(X3,u1_struct_0(X0)) ) )
                  | k1_xboole_0 = X1 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f8,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_orders_2(X2,X0,X1)
                  <=> k1_xboole_0 = X2 )
                  | k1_xboole_0 != X1 )
                & ( ( m1_orders_2(X2,X0,X1)
                  <=> ? [X3] :
                        ( k3_orders_2(X0,X1,X3) = X2
                        & r2_hidden(X3,X1)
                        & m1_subset_1(X3,u1_struct_0(X0)) ) )
                  | k1_xboole_0 = X1 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f7])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( ( m1_orders_2(X2,X0,X1)
                      | k1_xboole_0 != X2 )
                    & ( k1_xboole_0 = X2
                      | ~ m1_orders_2(X2,X0,X1) ) )
                  | k1_xboole_0 != X1 )
                & ( ( ( m1_orders_2(X2,X0,X1)
                      | ! [X3] :
                          ( k3_orders_2(X0,X1,X3) != X2
                          | ~ r2_hidden(X3,X1)
                          | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
                    & ( ? [X3] :
                          ( k3_orders_2(X0,X1,X3) = X2
                          & r2_hidden(X3,X1)
                          & m1_subset_1(X3,u1_struct_0(X0)) )
                      | ~ m1_orders_2(X2,X0,X1) ) )
                  | k1_xboole_0 = X1 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( ( m1_orders_2(X2,X0,X1)
                      | k1_xboole_0 != X2 )
                    & ( k1_xboole_0 = X2
                      | ~ m1_orders_2(X2,X0,X1) ) )
                  | k1_xboole_0 != X1 )
                & ( ( ( m1_orders_2(X2,X0,X1)
                      | ! [X3] :
                          ( k3_orders_2(X0,X1,X3) != X2
                          | ~ r2_hidden(X3,X1)
                          | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
                    & ( ? [X4] :
                          ( k3_orders_2(X0,X1,X4) = X2
                          & r2_hidden(X4,X1)
                          & m1_subset_1(X4,u1_struct_0(X0)) )
                      | ~ m1_orders_2(X2,X0,X1) ) )
                  | k1_xboole_0 = X1 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f17])).

fof(f19,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( k3_orders_2(X0,X1,X4) = X2
          & r2_hidden(X4,X1)
          & m1_subset_1(X4,u1_struct_0(X0)) )
     => ( k3_orders_2(X0,X1,sK0(X0,X1,X2)) = X2
        & r2_hidden(sK0(X0,X1,X2),X1)
        & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( ( m1_orders_2(X2,X0,X1)
                      | k1_xboole_0 != X2 )
                    & ( k1_xboole_0 = X2
                      | ~ m1_orders_2(X2,X0,X1) ) )
                  | k1_xboole_0 != X1 )
                & ( ( ( m1_orders_2(X2,X0,X1)
                      | ! [X3] :
                          ( k3_orders_2(X0,X1,X3) != X2
                          | ~ r2_hidden(X3,X1)
                          | ~ m1_subset_1(X3,u1_struct_0(X0)) ) )
                    & ( ( k3_orders_2(X0,X1,sK0(X0,X1,X2)) = X2
                        & r2_hidden(sK0(X0,X1,X2),X1)
                        & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) )
                      | ~ m1_orders_2(X2,X0,X1) ) )
                  | k1_xboole_0 = X1 ) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( k3_orders_2(X0,X1,sK0(X0,X1,X2)) = X2
      | ~ m1_orders_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
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

fof(f9,plain,(
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
    inference(ennf_transformation,[],[f2])).

fof(f10,plain,(
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
    inference(flattening,[],[f9])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_orders_2(X2,X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f45,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f26])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,u1_struct_0(X0))
        & m1_subset_1(X1,u1_struct_0(X0))
        & l1_orders_2(X0) )
     => ~ r2_orders_2(X0,X1,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( ~ r2_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( ~ r2_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(flattening,[],[f11])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f35,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_orders_2(X0,X1,X2)
      | ~ r2_hidden(X1,k3_orders_2(X0,X3,X2))
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( k1_xboole_0 = X2
      | ~ m1_orders_2(X2,X0,X1)
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f50,plain,(
    ! [X2,X0] :
      ( k1_xboole_0 = X2
      | ~ m1_orders_2(X2,X0,k1_xboole_0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f31])).

fof(f46,plain,(
    m1_orders_2(sK2,sK1,sK3) ),
    inference(cnf_transformation,[],[f26])).

fof(f44,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f26])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))
      | ~ m1_orders_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK0(X0,X1,X2),X1)
      | ~ m1_orders_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0)
      | ~ v4_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_9,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_orders_2(X2,X1,X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X0,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | v2_struct_0(X2)
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_16,negated_conjecture,
    ( l1_orders_2(sK1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_519,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_orders_2(X2,X1,X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X0,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | v2_struct_0(X2)
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | sK1 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_16])).

cnf(c_520,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_orders_2(sK1,X1,X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1) ),
    inference(unflattening,[status(thm)],[c_519])).

cnf(c_20,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_19,negated_conjecture,
    ( v3_orders_2(sK1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_18,negated_conjecture,
    ( v4_orders_2(sK1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_17,negated_conjecture,
    ( v5_orders_2(sK1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_522,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_orders_2(sK1,X1,X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_520,c_20,c_19,c_18,c_17])).

cnf(c_1119,plain,
    ( r2_hidden(X0_45,X1_45)
    | ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X2_45))
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2_45,u1_struct_0(sK1))
    | ~ m1_subset_1(X0_45,u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_522])).

cnf(c_1952,plain,
    ( r2_hidden(X0_45,X1_45)
    | ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,sK0(sK1,sK3,sK2)))
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X0_45,u1_struct_0(sK1))
    | ~ m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1119])).

cnf(c_2275,plain,
    ( r2_hidden(sK0(sK1,sK2,sK3),X0_45)
    | ~ r2_hidden(sK0(sK1,sK2,sK3),k3_orders_2(sK1,X0_45,sK0(sK1,sK3,sK2)))
    | ~ m1_subset_1(X0_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
    | ~ m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1952])).

cnf(c_3092,plain,
    ( ~ r2_hidden(sK0(sK1,sK2,sK3),k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)))
    | r2_hidden(sK0(sK1,sK2,sK3),sK3)
    | ~ m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
    | ~ m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_2275])).

cnf(c_11,negated_conjecture,
    ( m1_orders_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1133,negated_conjecture,
    ( m1_orders_2(sK3,sK1,sK2) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_1407,plain,
    ( m1_orders_2(sK3,sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1133])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1129,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1410,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1129])).

cnf(c_3,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k3_orders_2(X1,X2,sK0(X1,X2,X0)) = X0
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_6,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_126,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k3_orders_2(X1,X2,sK0(X1,X2,X0)) = X0
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3,c_6])).

cnf(c_378,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | k3_orders_2(X1,X2,sK0(X1,X2,X0)) = X0
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_126,c_16])).

cnf(c_379,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1)
    | k3_orders_2(sK1,X1,sK0(sK1,X1,X0)) = X0
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_378])).

cnf(c_383,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | k3_orders_2(sK1,X1,sK0(sK1,X1,X0)) = X0
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_379,c_20,c_19,c_18,c_17])).

cnf(c_1125,plain,
    ( ~ m1_orders_2(X0_45,sK1,X1_45)
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | k3_orders_2(sK1,X1_45,sK0(sK1,X1_45,X0_45)) = X0_45
    | k1_xboole_0 = X1_45 ),
    inference(subtyping,[status(esa)],[c_383])).

cnf(c_1416,plain,
    ( k3_orders_2(sK1,X0_45,sK0(sK1,X0_45,X1_45)) = X1_45
    | k1_xboole_0 = X0_45
    | m1_orders_2(X1_45,sK1,X0_45) != iProver_top
    | m1_subset_1(X0_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1125])).

cnf(c_2334,plain,
    ( k3_orders_2(sK1,sK2,sK0(sK1,sK2,X0_45)) = X0_45
    | sK2 = k1_xboole_0
    | m1_orders_2(X0_45,sK1,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1410,c_1416])).

cnf(c_1138,plain,
    ( X0_45 = X0_45 ),
    theory(equality)).

cnf(c_1149,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1138])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1131,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1139,plain,
    ( X0_45 != X1_45
    | X2_45 != X1_45
    | X2_45 = X0_45 ),
    theory(equality)).

cnf(c_1594,plain,
    ( sK2 != X0_45
    | k1_xboole_0 != X0_45
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1139])).

cnf(c_1595,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1594])).

cnf(c_2579,plain,
    ( k3_orders_2(sK1,sK2,sK0(sK1,sK2,X0_45)) = X0_45
    | m1_orders_2(X0_45,sK1,sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2334,c_1149,c_1131,c_1595])).

cnf(c_2587,plain,
    ( k3_orders_2(sK1,sK2,sK0(sK1,sK2,sK3)) = sK3 ),
    inference(superposition,[status(thm)],[c_1407,c_2579])).

cnf(c_7,plain,
    ( ~ r2_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_10,plain,
    ( r2_orders_2(X0,X1,X2)
    | ~ r2_hidden(X1,k3_orders_2(X0,X3,X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ v4_orders_2(X0)
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_266,plain,
    ( ~ r2_hidden(X0,k3_orders_2(X1,X2,X3))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X4,u1_struct_0(X5))
    | ~ m1_subset_1(X6,u1_struct_0(X5))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X5)
    | ~ l1_orders_2(X1)
    | X1 != X5
    | X0 != X6
    | X3 != X6 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_10])).

cnf(c_267,plain,
    ( ~ r2_hidden(X0,k3_orders_2(X1,X2,X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(unflattening,[status(thm)],[c_266])).

cnf(c_354,plain,
    ( ~ r2_hidden(X0,k3_orders_2(X1,X2,X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_267,c_16])).

cnf(c_355,plain,
    ( ~ r2_hidden(X0,k3_orders_2(sK1,X1,X0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1) ),
    inference(unflattening,[status(thm)],[c_354])).

cnf(c_359,plain,
    ( ~ r2_hidden(X0,k3_orders_2(sK1,X1,X0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_355,c_20,c_19,c_18,c_17])).

cnf(c_1126,plain,
    ( ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45))
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X2_45,u1_struct_0(sK1))
    | ~ m1_subset_1(X0_45,u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_359])).

cnf(c_1135,plain,
    ( ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45))
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X0_45,u1_struct_0(sK1))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_1126])).

cnf(c_1414,plain,
    ( r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top
    | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1135])).

cnf(c_1136,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_1126])).

cnf(c_1134,plain,
    ( ~ m1_subset_1(X0_45,u1_struct_0(sK1))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_1126])).

cnf(c_1198,plain,
    ( ~ m1_subset_1(X0_45,u1_struct_0(sK1))
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1135,c_1136,c_1134])).

cnf(c_1199,plain,
    ( ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45))
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(X0_45,u1_struct_0(sK1)) ),
    inference(renaming,[status(thm)],[c_1198])).

cnf(c_1200,plain,
    ( r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top
    | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1199])).

cnf(c_2045,plain,
    ( m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1414,c_1200])).

cnf(c_2046,plain,
    ( r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top
    | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_2045])).

cnf(c_2591,plain,
    ( r2_hidden(sK0(sK1,sK2,sK3),sK3) != iProver_top
    | m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2587,c_2046])).

cnf(c_2636,plain,
    ( ~ r2_hidden(sK0(sK1,sK2,sK3),sK3)
    | ~ m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2591])).

cnf(c_1,plain,
    ( ~ m1_orders_2(X0,X1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_467,plain,
    ( ~ m1_orders_2(X0,X1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK1 != X1
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_16])).

cnf(c_468,plain,
    ( ~ m1_orders_2(X0,sK1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_467])).

cnf(c_472,plain,
    ( ~ m1_orders_2(X0,sK1,k1_xboole_0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_468,c_20,c_19,c_18,c_17])).

cnf(c_450,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_16])).

cnf(c_451,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1) ),
    inference(unflattening,[status(thm)],[c_450])).

cnf(c_453,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_451,c_20,c_19,c_18,c_17])).

cnf(c_482,plain,
    ( ~ m1_orders_2(X0,sK1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = X0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_472,c_453])).

cnf(c_1121,plain,
    ( ~ m1_orders_2(X0_45,sK1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = X0_45 ),
    inference(subtyping,[status(esa)],[c_482])).

cnf(c_2407,plain,
    ( ~ m1_orders_2(k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)),sK1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) ),
    inference(instantiation,[status(thm)],[c_1121])).

cnf(c_12,negated_conjecture,
    ( m1_orders_2(sK2,sK1,sK3) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1132,negated_conjecture,
    ( m1_orders_2(sK2,sK1,sK3) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_1408,plain,
    ( m1_orders_2(sK2,sK1,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1132])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1130,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_1409,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1130])).

cnf(c_2333,plain,
    ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
    | sK3 = k1_xboole_0
    | m1_orders_2(X0_45,sK1,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1409,c_1416])).

cnf(c_27,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1591,plain,
    ( ~ m1_orders_2(sK2,sK1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1121])).

cnf(c_1141,plain,
    ( ~ m1_subset_1(X0_45,X0_47)
    | m1_subset_1(X1_45,X0_47)
    | X1_45 != X0_45 ),
    theory(equality)).

cnf(c_1596,plain,
    ( m1_subset_1(X0_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | X0_45 != sK3 ),
    inference(instantiation,[status(thm)],[c_1141])).

cnf(c_1598,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1596])).

cnf(c_1654,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_1138])).

cnf(c_1701,plain,
    ( ~ m1_orders_2(X0_45,sK1,sK3)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_1125])).

cnf(c_1712,plain,
    ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
    | k1_xboole_0 = sK3
    | m1_orders_2(X0_45,sK1,sK3) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1701])).

cnf(c_1140,plain,
    ( ~ m1_orders_2(X0_45,X0_46,X1_45)
    | m1_orders_2(X2_45,X0_46,X3_45)
    | X2_45 != X0_45
    | X3_45 != X1_45 ),
    theory(equality)).

cnf(c_1611,plain,
    ( m1_orders_2(X0_45,sK1,X1_45)
    | ~ m1_orders_2(sK2,sK1,sK3)
    | X0_45 != sK2
    | X1_45 != sK3 ),
    inference(instantiation,[status(thm)],[c_1140])).

cnf(c_1718,plain,
    ( m1_orders_2(sK2,sK1,X0_45)
    | ~ m1_orders_2(sK2,sK1,sK3)
    | X0_45 != sK3
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1611])).

cnf(c_1721,plain,
    ( ~ m1_orders_2(sK2,sK1,sK3)
    | m1_orders_2(sK2,sK1,k1_xboole_0)
    | sK2 != sK2
    | k1_xboole_0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1718])).

cnf(c_2374,plain,
    ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
    | m1_orders_2(X0_45,sK1,sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2333,c_14,c_27,c_12,c_1131,c_1591,c_1598,c_1654,c_1712,c_1721])).

cnf(c_2382,plain,
    ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) = sK2 ),
    inference(superposition,[status(thm)],[c_1408,c_2374])).

cnf(c_2169,plain,
    ( sK0(sK1,sK2,sK3) = sK0(sK1,sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_1138])).

cnf(c_1143,plain,
    ( ~ r2_hidden(X0_45,X1_45)
    | r2_hidden(X2_45,X3_45)
    | X2_45 != X0_45
    | X3_45 != X1_45 ),
    theory(equality)).

cnf(c_1685,plain,
    ( r2_hidden(X0_45,X1_45)
    | ~ r2_hidden(sK0(sK1,sK2,sK3),sK2)
    | X0_45 != sK0(sK1,sK2,sK3)
    | X1_45 != sK2 ),
    inference(instantiation,[status(thm)],[c_1143])).

cnf(c_1986,plain,
    ( r2_hidden(X0_45,k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)))
    | ~ r2_hidden(sK0(sK1,sK2,sK3),sK2)
    | X0_45 != sK0(sK1,sK2,sK3)
    | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2 ),
    inference(instantiation,[status(thm)],[c_1685])).

cnf(c_2168,plain,
    ( r2_hidden(sK0(sK1,sK2,sK3),k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)))
    | ~ r2_hidden(sK0(sK1,sK2,sK3),sK2)
    | sK0(sK1,sK2,sK3) != sK0(sK1,sK2,sK3)
    | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2 ),
    inference(instantiation,[status(thm)],[c_1986])).

cnf(c_2085,plain,
    ( sK2 != k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2))
    | k1_xboole_0 != k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2))
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_1594])).

cnf(c_1620,plain,
    ( X0_45 != X1_45
    | sK2 != X1_45
    | sK2 = X0_45 ),
    inference(instantiation,[status(thm)],[c_1139])).

cnf(c_1763,plain,
    ( X0_45 != sK2
    | sK2 = X0_45
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1620])).

cnf(c_1977,plain,
    ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2
    | sK2 = k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2))
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1763])).

cnf(c_1978,plain,
    ( m1_orders_2(k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)),sK1,X0_45)
    | ~ m1_orders_2(sK2,sK1,sK3)
    | X0_45 != sK3
    | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2 ),
    inference(instantiation,[status(thm)],[c_1611])).

cnf(c_1983,plain,
    ( m1_orders_2(k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)),sK1,k1_xboole_0)
    | ~ m1_orders_2(sK2,sK1,sK3)
    | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2
    | k1_xboole_0 != sK3 ),
    inference(instantiation,[status(thm)],[c_1978])).

cnf(c_5,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK0(X1,X2,X0),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_116,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK0(X1,X2,X0),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5,c_6])).

cnf(c_426,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(sK0(X1,X2,X0),u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_116,c_16])).

cnf(c_427,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(sK1,X1,X0),u1_struct_0(sK1))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1)
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_426])).

cnf(c_431,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(sK1,X1,X0),u1_struct_0(sK1))
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_427,c_20,c_19,c_18,c_17])).

cnf(c_1123,plain,
    ( ~ m1_orders_2(X0_45,sK1,X1_45)
    | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(sK1,X1_45,X0_45),u1_struct_0(sK1))
    | k1_xboole_0 = X1_45 ),
    inference(subtyping,[status(esa)],[c_431])).

cnf(c_1703,plain,
    ( ~ m1_orders_2(X0_45,sK1,sK3)
    | m1_subset_1(sK0(sK1,sK3,X0_45),u1_struct_0(sK1))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_1123])).

cnf(c_1866,plain,
    ( ~ m1_orders_2(sK2,sK1,sK3)
    | m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_1703])).

cnf(c_4,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | r2_hidden(sK0(X1,X2,X0),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f28])).

cnf(c_121,plain,
    ( r2_hidden(sK0(X1,X2,X0),X2)
    | ~ m1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4,c_6])).

cnf(c_122,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | r2_hidden(sK0(X1,X2,X0),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | k1_xboole_0 = X2 ),
    inference(renaming,[status(thm)],[c_121])).

cnf(c_402,plain,
    ( ~ m1_orders_2(X0,X1,X2)
    | r2_hidden(sK0(X1,X2,X0),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | sK1 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_122,c_16])).

cnf(c_403,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | r2_hidden(sK0(sK1,X1,X0),X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | v2_struct_0(sK1)
    | ~ v3_orders_2(sK1)
    | ~ v4_orders_2(sK1)
    | ~ v5_orders_2(sK1)
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_402])).

cnf(c_407,plain,
    ( ~ m1_orders_2(X0,sK1,X1)
    | r2_hidden(sK0(sK1,X1,X0),X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_403,c_20,c_19,c_18,c_17])).

cnf(c_607,plain,
    ( r2_hidden(sK0(sK1,X0,X1),X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | sK2 != X0
    | sK1 != sK1
    | sK3 != X1
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_407])).

cnf(c_608,plain,
    ( r2_hidden(sK0(sK1,sK2,sK3),sK2)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_607])).

cnf(c_596,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(sK1,X0,X1),u1_struct_0(sK1))
    | sK2 != X0
    | sK1 != sK1
    | sK3 != X1
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_431])).

cnf(c_597,plain,
    ( m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
    | k1_xboole_0 = sK2 ),
    inference(unflattening,[status(thm)],[c_596])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3092,c_2636,c_2407,c_2382,c_2169,c_2168,c_2085,c_1977,c_1983,c_1866,c_1654,c_1598,c_1131,c_608,c_597,c_12,c_13,c_14,c_15])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.14/0.33  % Computer   : n004.cluster.edu
% 0.14/0.33  % Model      : x86_64 x86_64
% 0.14/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.33  % Memory     : 8042.1875MB
% 0.14/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.33  % CPULimit   : 60
% 0.14/0.33  % WCLimit    : 600
% 0.14/0.33  % DateTime   : Tue Dec  1 11:42:38 EST 2020
% 0.14/0.33  % CPUTime    : 
% 0.14/0.33  % Running in FOF mode
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
% 1.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing... sf_s  rm: 3 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.80/0.99  ------ Proving...
% 1.80/0.99  ------ Problem Properties 
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  clauses                                 17
% 1.80/0.99  conjectures                             5
% 1.80/0.99  EPR                                     4
% 1.80/0.99  Horn                                    12
% 1.80/0.99  unary                                   5
% 1.80/0.99  binary                                  3
% 1.80/0.99  lits                                    51
% 1.80/0.99  lits eq                                 7
% 1.80/0.99  fd_pure                                 0
% 1.80/0.99  fd_pseudo                               0
% 1.80/0.99  fd_cond                                 4
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
% 1.80/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.80/0.99  
% 1.80/0.99  fof(f4,axiom,(
% 1.80/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => ! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => (r2_hidden(X1,k3_orders_2(X0,X3,X2)) <=> (r2_hidden(X1,X3) & r2_orders_2(X0,X1,X2)))))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f13,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((r2_hidden(X1,k3_orders_2(X0,X3,X2)) <=> (r2_hidden(X1,X3) & r2_orders_2(X0,X1,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f4])).
% 1.80/0.99  
% 1.80/0.99  fof(f14,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : ((r2_hidden(X1,k3_orders_2(X0,X3,X2)) <=> (r2_hidden(X1,X3) & r2_orders_2(X0,X1,X2))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f13])).
% 1.80/0.99  
% 1.80/0.99  fof(f21,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((r2_hidden(X1,k3_orders_2(X0,X3,X2)) | (~r2_hidden(X1,X3) | ~r2_orders_2(X0,X1,X2))) & ((r2_hidden(X1,X3) & r2_orders_2(X0,X1,X2)) | ~r2_hidden(X1,k3_orders_2(X0,X3,X2)))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(nnf_transformation,[],[f14])).
% 1.80/0.99  
% 1.80/0.99  fof(f22,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (((r2_hidden(X1,k3_orders_2(X0,X3,X2)) | ~r2_hidden(X1,X3) | ~r2_orders_2(X0,X1,X2)) & ((r2_hidden(X1,X3) & r2_orders_2(X0,X1,X2)) | ~r2_hidden(X1,k3_orders_2(X0,X3,X2)))) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f21])).
% 1.80/0.99  
% 1.80/0.99  fof(f36,plain,(
% 1.80/0.99    ( ! [X2,X0,X3,X1] : (r2_hidden(X1,X3) | ~r2_hidden(X1,k3_orders_2(X0,X3,X2)) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f22])).
% 1.80/0.99  
% 1.80/0.99  fof(f5,conjecture,(
% 1.80/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ~(m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f6,negated_conjecture,(
% 1.80/0.99    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ~(m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1))))),
% 1.80/0.99    inference(negated_conjecture,[],[f5])).
% 1.80/0.99  
% 1.80/0.99  fof(f15,plain,(
% 1.80/0.99    ? [X0] : (? [X1] : (? [X2] : ((m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & (l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f6])).
% 1.80/0.99  
% 1.80/0.99  fof(f16,plain,(
% 1.80/0.99    ? [X0] : (? [X1] : (? [X2] : (m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f15])).
% 1.80/0.99  
% 1.80/0.99  fof(f25,plain,(
% 1.80/0.99    ( ! [X0,X1] : (? [X2] : (m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (m1_orders_2(sK3,X0,X1) & m1_orders_2(X1,X0,sK3) & k1_xboole_0 != X1 & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f24,plain,(
% 1.80/0.99    ( ! [X0] : (? [X1] : (? [X2] : (m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (? [X2] : (m1_orders_2(X2,X0,sK2) & m1_orders_2(sK2,X0,X2) & k1_xboole_0 != sK2 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f23,plain,(
% 1.80/0.99    ? [X0] : (? [X1] : (? [X2] : (m1_orders_2(X2,X0,X1) & m1_orders_2(X1,X0,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (m1_orders_2(X2,sK1,X1) & m1_orders_2(X1,sK1,X2) & k1_xboole_0 != X1 & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_orders_2(sK1) & v5_orders_2(sK1) & v4_orders_2(sK1) & v3_orders_2(sK1) & ~v2_struct_0(sK1))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f26,plain,(
% 1.80/0.99    ((m1_orders_2(sK3,sK1,sK2) & m1_orders_2(sK2,sK1,sK3) & k1_xboole_0 != sK2 & m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))) & m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))) & l1_orders_2(sK1) & v5_orders_2(sK1) & v4_orders_2(sK1) & v3_orders_2(sK1) & ~v2_struct_0(sK1)),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f16,f25,f24,f23])).
% 1.80/0.99  
% 1.80/0.99  fof(f42,plain,(
% 1.80/0.99    l1_orders_2(sK1)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f38,plain,(
% 1.80/0.99    ~v2_struct_0(sK1)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f39,plain,(
% 1.80/0.99    v3_orders_2(sK1)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f40,plain,(
% 1.80/0.99    v4_orders_2(sK1)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f41,plain,(
% 1.80/0.99    v5_orders_2(sK1)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f47,plain,(
% 1.80/0.99    m1_orders_2(sK3,sK1,sK2)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f43,plain,(
% 1.80/0.99    m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f1,axiom,(
% 1.80/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((k1_xboole_0 = X1 => (m1_orders_2(X2,X0,X1) <=> k1_xboole_0 = X2)) & (k1_xboole_0 != X1 => (m1_orders_2(X2,X0,X1) <=> ? [X3] : (k3_orders_2(X0,X1,X3) = X2 & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))))))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f7,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : ((((m1_orders_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 != X1) & ((m1_orders_2(X2,X0,X1) <=> ? [X3] : (k3_orders_2(X0,X1,X3) = X2 & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) | k1_xboole_0 = X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f1])).
% 1.80/0.99  
% 1.80/0.99  fof(f8,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : ((((m1_orders_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 != X1) & ((m1_orders_2(X2,X0,X1) <=> ? [X3] : (k3_orders_2(X0,X1,X3) = X2 & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0)))) | k1_xboole_0 = X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f7])).
% 1.80/0.99  
% 1.80/0.99  fof(f17,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (((((m1_orders_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~m1_orders_2(X2,X0,X1))) | k1_xboole_0 != X1) & (((m1_orders_2(X2,X0,X1) | ! [X3] : (k3_orders_2(X0,X1,X3) != X2 | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) & (? [X3] : (k3_orders_2(X0,X1,X3) = X2 & r2_hidden(X3,X1) & m1_subset_1(X3,u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1))) | k1_xboole_0 = X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(nnf_transformation,[],[f8])).
% 1.80/0.99  
% 1.80/0.99  fof(f18,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (((((m1_orders_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~m1_orders_2(X2,X0,X1))) | k1_xboole_0 != X1) & (((m1_orders_2(X2,X0,X1) | ! [X3] : (k3_orders_2(X0,X1,X3) != X2 | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) & (? [X4] : (k3_orders_2(X0,X1,X4) = X2 & r2_hidden(X4,X1) & m1_subset_1(X4,u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1))) | k1_xboole_0 = X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(rectify,[],[f17])).
% 1.80/0.99  
% 1.80/0.99  fof(f19,plain,(
% 1.80/0.99    ! [X2,X1,X0] : (? [X4] : (k3_orders_2(X0,X1,X4) = X2 & r2_hidden(X4,X1) & m1_subset_1(X4,u1_struct_0(X0))) => (k3_orders_2(X0,X1,sK0(X0,X1,X2)) = X2 & r2_hidden(sK0(X0,X1,X2),X1) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))))),
% 1.80/0.99    introduced(choice_axiom,[])).
% 1.80/0.99  
% 1.80/0.99  fof(f20,plain,(
% 1.80/0.99    ! [X0] : (! [X1] : (! [X2] : (((((m1_orders_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~m1_orders_2(X2,X0,X1))) | k1_xboole_0 != X1) & (((m1_orders_2(X2,X0,X1) | ! [X3] : (k3_orders_2(X0,X1,X3) != X2 | ~r2_hidden(X3,X1) | ~m1_subset_1(X3,u1_struct_0(X0)))) & ((k3_orders_2(X0,X1,sK0(X0,X1,X2)) = X2 & r2_hidden(sK0(X0,X1,X2),X1) & m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1))) | k1_xboole_0 = X1)) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f18,f19])).
% 1.80/0.99  
% 1.80/0.99  fof(f29,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (k3_orders_2(X0,X1,sK0(X0,X1,X2)) = X2 | ~m1_orders_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f20])).
% 1.80/0.99  
% 1.80/0.99  fof(f2,axiom,(
% 1.80/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v4_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X2] : (m1_orders_2(X2,X0,X1) => m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f9,plain,(
% 1.80/0.99    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f2])).
% 1.80/0.99  
% 1.80/0.99  fof(f10,plain,(
% 1.80/0.99    ! [X0,X1] : (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.80/0.99    inference(flattening,[],[f9])).
% 1.80/0.99  
% 1.80/0.99  fof(f33,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_orders_2(X2,X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f10])).
% 1.80/0.99  
% 1.80/0.99  fof(f45,plain,(
% 1.80/0.99    k1_xboole_0 != sK2),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f3,axiom,(
% 1.80/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,u1_struct_0(X0)) & m1_subset_1(X1,u1_struct_0(X0)) & l1_orders_2(X0)) => ~r2_orders_2(X0,X1,X1))),
% 1.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.80/0.99  
% 1.80/0.99  fof(f11,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (~r2_orders_2(X0,X1,X1) | (~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0)))),
% 1.80/0.99    inference(ennf_transformation,[],[f3])).
% 1.80/0.99  
% 1.80/0.99  fof(f12,plain,(
% 1.80/0.99    ! [X0,X1,X2] : (~r2_orders_2(X0,X1,X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0))),
% 1.80/0.99    inference(flattening,[],[f11])).
% 1.80/0.99  
% 1.80/0.99  fof(f34,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (~r2_orders_2(X0,X1,X1) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f12])).
% 1.80/0.99  
% 1.80/0.99  fof(f35,plain,(
% 1.80/0.99    ( ! [X2,X0,X3,X1] : (r2_orders_2(X0,X1,X2) | ~r2_hidden(X1,k3_orders_2(X0,X3,X2)) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f22])).
% 1.80/0.99  
% 1.80/0.99  fof(f31,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (k1_xboole_0 = X2 | ~m1_orders_2(X2,X0,X1) | k1_xboole_0 != X1 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f20])).
% 1.80/0.99  
% 1.80/0.99  fof(f50,plain,(
% 1.80/0.99    ( ! [X2,X0] : (k1_xboole_0 = X2 | ~m1_orders_2(X2,X0,k1_xboole_0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(equality_resolution,[],[f31])).
% 1.80/0.99  
% 1.80/0.99  fof(f46,plain,(
% 1.80/0.99    m1_orders_2(sK2,sK1,sK3)),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f44,plain,(
% 1.80/0.99    m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))),
% 1.80/0.99    inference(cnf_transformation,[],[f26])).
% 1.80/0.99  
% 1.80/0.99  fof(f27,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (m1_subset_1(sK0(X0,X1,X2),u1_struct_0(X0)) | ~m1_orders_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f20])).
% 1.80/0.99  
% 1.80/0.99  fof(f28,plain,(
% 1.80/0.99    ( ! [X2,X0,X1] : (r2_hidden(sK0(X0,X1,X2),X1) | ~m1_orders_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0) | ~v4_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.80/0.99    inference(cnf_transformation,[],[f20])).
% 1.80/0.99  
% 1.80/0.99  cnf(c_9,plain,
% 1.80/0.99      ( r2_hidden(X0,X1)
% 1.80/0.99      | ~ r2_hidden(X0,k3_orders_2(X2,X1,X3))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(X2))
% 1.80/0.99      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 1.80/0.99      | v2_struct_0(X2)
% 1.80/0.99      | ~ v3_orders_2(X2)
% 1.80/0.99      | ~ v4_orders_2(X2)
% 1.80/0.99      | ~ v5_orders_2(X2)
% 1.80/0.99      | ~ l1_orders_2(X2) ),
% 1.80/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_16,negated_conjecture,
% 1.80/0.99      ( l1_orders_2(sK1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_519,plain,
% 1.80/0.99      ( r2_hidden(X0,X1)
% 1.80/0.99      | ~ r2_hidden(X0,k3_orders_2(X2,X1,X3))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(X2))
% 1.80/0.99      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 1.80/0.99      | v2_struct_0(X2)
% 1.80/0.99      | ~ v3_orders_2(X2)
% 1.80/0.99      | ~ v4_orders_2(X2)
% 1.80/0.99      | ~ v5_orders_2(X2)
% 1.80/0.99      | sK1 != X2 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_520,plain,
% 1.80/0.99      ( r2_hidden(X0,X1)
% 1.80/0.99      | ~ r2_hidden(X0,k3_orders_2(sK1,X1,X2))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_519]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_20,negated_conjecture,
% 1.80/0.99      ( ~ v2_struct_0(sK1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_19,negated_conjecture,
% 1.80/0.99      ( v3_orders_2(sK1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_18,negated_conjecture,
% 1.80/0.99      ( v4_orders_2(sK1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_17,negated_conjecture,
% 1.80/0.99      ( v5_orders_2(sK1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_522,plain,
% 1.80/0.99      ( r2_hidden(X0,X1)
% 1.80/0.99      | ~ r2_hidden(X0,k3_orders_2(sK1,X1,X2))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_520,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1119,plain,
% 1.80/0.99      ( r2_hidden(X0_45,X1_45)
% 1.80/0.99      | ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X2_45))
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X2_45,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X0_45,u1_struct_0(sK1)) ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_522]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1952,plain,
% 1.80/0.99      ( r2_hidden(X0_45,X1_45)
% 1.80/0.99      | ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,sK0(sK1,sK3,sK2)))
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X0_45,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1)) ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1119]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2275,plain,
% 1.80/0.99      ( r2_hidden(sK0(sK1,sK2,sK3),X0_45)
% 1.80/0.99      | ~ r2_hidden(sK0(sK1,sK2,sK3),k3_orders_2(sK1,X0_45,sK0(sK1,sK3,sK2)))
% 1.80/0.99      | ~ m1_subset_1(X0_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1)) ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1952]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_3092,plain,
% 1.80/0.99      ( ~ r2_hidden(sK0(sK1,sK2,sK3),k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)))
% 1.80/0.99      | r2_hidden(sK0(sK1,sK2,sK3),sK3)
% 1.80/0.99      | ~ m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_2275]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_11,negated_conjecture,
% 1.80/0.99      ( m1_orders_2(sK3,sK1,sK2) ),
% 1.80/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1133,negated_conjecture,
% 1.80/0.99      ( m1_orders_2(sK3,sK1,sK2) ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_11]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1407,plain,
% 1.80/0.99      ( m1_orders_2(sK3,sK1,sK2) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1133]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_15,negated_conjecture,
% 1.80/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1129,negated_conjecture,
% 1.80/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_15]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1410,plain,
% 1.80/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1129]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_3,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k3_orders_2(X1,X2,sK0(X1,X2,X0)) = X0
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(cnf_transformation,[],[f29]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_6,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1) ),
% 1.80/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_126,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k3_orders_2(X1,X2,sK0(X1,X2,X0)) = X0
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(global_propositional_subsumption,[status(thm)],[c_3,c_6]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_378,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | k3_orders_2(X1,X2,sK0(X1,X2,X0)) = X0
% 1.80/0.99      | sK1 != X1
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_126,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_379,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1)
% 1.80/0.99      | k3_orders_2(sK1,X1,sK0(sK1,X1,X0)) = X0
% 1.80/0.99      | k1_xboole_0 = X1 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_378]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_383,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k3_orders_2(sK1,X1,sK0(sK1,X1,X0)) = X0
% 1.80/0.99      | k1_xboole_0 = X1 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_379,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1125,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0_45,sK1,X1_45)
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k3_orders_2(sK1,X1_45,sK0(sK1,X1_45,X0_45)) = X0_45
% 1.80/0.99      | k1_xboole_0 = X1_45 ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_383]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1416,plain,
% 1.80/0.99      ( k3_orders_2(sK1,X0_45,sK0(sK1,X0_45,X1_45)) = X1_45
% 1.80/0.99      | k1_xboole_0 = X0_45
% 1.80/0.99      | m1_orders_2(X1_45,sK1,X0_45) != iProver_top
% 1.80/0.99      | m1_subset_1(X0_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1125]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2334,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK2,sK0(sK1,sK2,X0_45)) = X0_45
% 1.80/0.99      | sK2 = k1_xboole_0
% 1.80/0.99      | m1_orders_2(X0_45,sK1,sK2) != iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1410,c_1416]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1138,plain,( X0_45 = X0_45 ),theory(equality) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1149,plain,
% 1.80/0.99      ( k1_xboole_0 = k1_xboole_0 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1138]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_13,negated_conjecture,
% 1.80/0.99      ( k1_xboole_0 != sK2 ),
% 1.80/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1131,negated_conjecture,
% 1.80/0.99      ( k1_xboole_0 != sK2 ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_13]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1139,plain,
% 1.80/0.99      ( X0_45 != X1_45 | X2_45 != X1_45 | X2_45 = X0_45 ),
% 1.80/0.99      theory(equality) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1594,plain,
% 1.80/0.99      ( sK2 != X0_45 | k1_xboole_0 != X0_45 | k1_xboole_0 = sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1139]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1595,plain,
% 1.80/0.99      ( sK2 != k1_xboole_0
% 1.80/0.99      | k1_xboole_0 = sK2
% 1.80/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1594]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2579,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK2,sK0(sK1,sK2,X0_45)) = X0_45
% 1.80/0.99      | m1_orders_2(X0_45,sK1,sK2) != iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_2334,c_1149,c_1131,c_1595]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2587,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK2,sK0(sK1,sK2,sK3)) = sK3 ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1407,c_2579]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_7,plain,
% 1.80/0.99      ( ~ r2_orders_2(X0,X1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.80/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.80/0.99      | ~ l1_orders_2(X0) ),
% 1.80/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_10,plain,
% 1.80/0.99      ( r2_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ r2_hidden(X1,k3_orders_2(X0,X3,X2))
% 1.80/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
% 1.80/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.80/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.80/0.99      | v2_struct_0(X0)
% 1.80/0.99      | ~ v3_orders_2(X0)
% 1.80/0.99      | ~ v4_orders_2(X0)
% 1.80/0.99      | ~ v5_orders_2(X0)
% 1.80/0.99      | ~ l1_orders_2(X0) ),
% 1.80/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_266,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_orders_2(X1,X2,X3))
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(X4,u1_struct_0(X5))
% 1.80/0.99      | ~ m1_subset_1(X6,u1_struct_0(X5))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.80/0.99      | ~ m1_subset_1(X3,u1_struct_0(X1))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X5)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | X1 != X5
% 1.80/0.99      | X0 != X6
% 1.80/0.99      | X3 != X6 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_10]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_267,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_orders_2(X1,X2,X0))
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(X3,u1_struct_0(X1))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_266]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_354,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_orders_2(X1,X2,X0))
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.80/0.99      | ~ m1_subset_1(X3,u1_struct_0(X1))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | sK1 != X1 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_267,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_355,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_orders_2(sK1,X1,X0))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_354]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_359,plain,
% 1.80/0.99      ( ~ r2_hidden(X0,k3_orders_2(sK1,X1,X0))
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X2,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1)) ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_355,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1126,plain,
% 1.80/0.99      ( ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45))
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X2_45,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X0_45,u1_struct_0(sK1)) ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_359]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1135,plain,
% 1.80/0.99      ( ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45))
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X0_45,u1_struct_0(sK1))
% 1.80/0.99      | ~ sP1_iProver_split ),
% 1.80/0.99      inference(splitting,
% 1.80/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.80/0.99                [c_1126]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1414,plain,
% 1.80/0.99      ( r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top
% 1.80/0.99      | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.80/0.99      | m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top
% 1.80/0.99      | sP1_iProver_split != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1135]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1136,plain,
% 1.80/0.99      ( sP1_iProver_split | sP0_iProver_split ),
% 1.80/0.99      inference(splitting,
% 1.80/0.99                [splitting(split),new_symbols(definition,[])],
% 1.80/0.99                [c_1126]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1134,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0_45,u1_struct_0(sK1)) | ~ sP0_iProver_split ),
% 1.80/0.99      inference(splitting,
% 1.80/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.80/0.99                [c_1126]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1198,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0_45,u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_1135,c_1136,c_1134]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1199,plain,
% 1.80/0.99      ( ~ r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45))
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(X0_45,u1_struct_0(sK1)) ),
% 1.80/0.99      inference(renaming,[status(thm)],[c_1198]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1200,plain,
% 1.80/0.99      ( r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top
% 1.80/0.99      | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.80/0.99      | m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1199]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2045,plain,
% 1.80/0.99      ( m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top
% 1.80/0.99      | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.80/0.99      | r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_1414,c_1200]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2046,plain,
% 1.80/0.99      ( r2_hidden(X0_45,k3_orders_2(sK1,X1_45,X0_45)) != iProver_top
% 1.80/0.99      | m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.80/0.99      | m1_subset_1(X0_45,u1_struct_0(sK1)) != iProver_top ),
% 1.80/0.99      inference(renaming,[status(thm)],[c_2045]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2591,plain,
% 1.80/0.99      ( r2_hidden(sK0(sK1,sK2,sK3),sK3) != iProver_top
% 1.80/0.99      | m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1)) != iProver_top
% 1.80/0.99      | m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_2587,c_2046]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2636,plain,
% 1.80/0.99      ( ~ r2_hidden(sK0(sK1,sK2,sK3),sK3)
% 1.80/0.99      | ~ m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_2591]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_467,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | sK1 != X1
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_468,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1)
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_467]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_472,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_468,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_450,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | sK1 != X1 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_451,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1) ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_450]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_453,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_451,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_482,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(forward_subsumption_resolution,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_472,c_453]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1121,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0_45,sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = X0_45 ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_482]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2407,plain,
% 1.80/0.99      ( ~ m1_orders_2(k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)),sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1121]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_12,negated_conjecture,
% 1.80/0.99      ( m1_orders_2(sK2,sK1,sK3) ),
% 1.80/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1132,negated_conjecture,
% 1.80/0.99      ( m1_orders_2(sK2,sK1,sK3) ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_12]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1408,plain,
% 1.80/0.99      ( m1_orders_2(sK2,sK1,sK3) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1132]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_14,negated_conjecture,
% 1.80/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1130,negated_conjecture,
% 1.80/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_14]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1409,plain,
% 1.80/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1130]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2333,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
% 1.80/0.99      | sK3 = k1_xboole_0
% 1.80/0.99      | m1_orders_2(X0_45,sK1,sK3) != iProver_top ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1409,c_1416]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_27,plain,
% 1.80/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1591,plain,
% 1.80/0.99      ( ~ m1_orders_2(sK2,sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1121]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1141,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0_45,X0_47)
% 1.80/0.99      | m1_subset_1(X1_45,X0_47)
% 1.80/0.99      | X1_45 != X0_45 ),
% 1.80/0.99      theory(equality) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1596,plain,
% 1.80/0.99      ( m1_subset_1(X0_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | X0_45 != sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1141]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1598,plain,
% 1.80/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 != sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1596]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1654,plain,
% 1.80/0.99      ( sK2 = sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1138]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1701,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0_45,sK1,sK3)
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
% 1.80/0.99      | k1_xboole_0 = sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1125]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1712,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
% 1.80/0.99      | k1_xboole_0 = sK3
% 1.80/0.99      | m1_orders_2(X0_45,sK1,sK3) != iProver_top
% 1.80/0.99      | m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.80/0.99      inference(predicate_to_equality,[status(thm)],[c_1701]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1140,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0_45,X0_46,X1_45)
% 1.80/0.99      | m1_orders_2(X2_45,X0_46,X3_45)
% 1.80/0.99      | X2_45 != X0_45
% 1.80/0.99      | X3_45 != X1_45 ),
% 1.80/0.99      theory(equality) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1611,plain,
% 1.80/0.99      ( m1_orders_2(X0_45,sK1,X1_45)
% 1.80/0.99      | ~ m1_orders_2(sK2,sK1,sK3)
% 1.80/0.99      | X0_45 != sK2
% 1.80/0.99      | X1_45 != sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1140]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1718,plain,
% 1.80/0.99      ( m1_orders_2(sK2,sK1,X0_45)
% 1.80/0.99      | ~ m1_orders_2(sK2,sK1,sK3)
% 1.80/0.99      | X0_45 != sK3
% 1.80/0.99      | sK2 != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1611]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1721,plain,
% 1.80/0.99      ( ~ m1_orders_2(sK2,sK1,sK3)
% 1.80/0.99      | m1_orders_2(sK2,sK1,k1_xboole_0)
% 1.80/0.99      | sK2 != sK2
% 1.80/0.99      | k1_xboole_0 != sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1718]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2374,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,X0_45)) = X0_45
% 1.80/0.99      | m1_orders_2(X0_45,sK1,sK3) != iProver_top ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_2333,c_14,c_27,c_12,c_1131,c_1591,c_1598,c_1654,
% 1.80/0.99                 c_1712,c_1721]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2382,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) = sK2 ),
% 1.80/0.99      inference(superposition,[status(thm)],[c_1408,c_2374]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2169,plain,
% 1.80/0.99      ( sK0(sK1,sK2,sK3) = sK0(sK1,sK2,sK3) ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1138]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1143,plain,
% 1.80/0.99      ( ~ r2_hidden(X0_45,X1_45)
% 1.80/0.99      | r2_hidden(X2_45,X3_45)
% 1.80/0.99      | X2_45 != X0_45
% 1.80/0.99      | X3_45 != X1_45 ),
% 1.80/0.99      theory(equality) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1685,plain,
% 1.80/0.99      ( r2_hidden(X0_45,X1_45)
% 1.80/0.99      | ~ r2_hidden(sK0(sK1,sK2,sK3),sK2)
% 1.80/0.99      | X0_45 != sK0(sK1,sK2,sK3)
% 1.80/0.99      | X1_45 != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1143]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1986,plain,
% 1.80/0.99      ( r2_hidden(X0_45,k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)))
% 1.80/0.99      | ~ r2_hidden(sK0(sK1,sK2,sK3),sK2)
% 1.80/0.99      | X0_45 != sK0(sK1,sK2,sK3)
% 1.80/0.99      | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1685]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2168,plain,
% 1.80/0.99      ( r2_hidden(sK0(sK1,sK2,sK3),k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)))
% 1.80/0.99      | ~ r2_hidden(sK0(sK1,sK2,sK3),sK2)
% 1.80/0.99      | sK0(sK1,sK2,sK3) != sK0(sK1,sK2,sK3)
% 1.80/0.99      | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1986]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_2085,plain,
% 1.80/0.99      ( sK2 != k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2))
% 1.80/0.99      | k1_xboole_0 != k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2))
% 1.80/0.99      | k1_xboole_0 = sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1594]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1620,plain,
% 1.80/0.99      ( X0_45 != X1_45 | sK2 != X1_45 | sK2 = X0_45 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1139]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1763,plain,
% 1.80/0.99      ( X0_45 != sK2 | sK2 = X0_45 | sK2 != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1620]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1977,plain,
% 1.80/0.99      ( k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2
% 1.80/0.99      | sK2 = k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2))
% 1.80/0.99      | sK2 != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1763]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1978,plain,
% 1.80/0.99      ( m1_orders_2(k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)),sK1,X0_45)
% 1.80/0.99      | ~ m1_orders_2(sK2,sK1,sK3)
% 1.80/0.99      | X0_45 != sK3
% 1.80/0.99      | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1611]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1983,plain,
% 1.80/0.99      ( m1_orders_2(k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)),sK1,k1_xboole_0)
% 1.80/0.99      | ~ m1_orders_2(sK2,sK1,sK3)
% 1.80/0.99      | k3_orders_2(sK1,sK3,sK0(sK1,sK3,sK2)) != sK2
% 1.80/0.99      | k1_xboole_0 != sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1978]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_5,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | m1_subset_1(sK0(X1,X2,X0),u1_struct_0(X1))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(cnf_transformation,[],[f27]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_116,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | m1_subset_1(sK0(X1,X2,X0),u1_struct_0(X1))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(global_propositional_subsumption,[status(thm)],[c_5,c_6]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_426,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | m1_subset_1(sK0(X1,X2,X0),u1_struct_0(X1))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | sK1 != X1
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_116,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_427,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(sK0(sK1,X1,X0),u1_struct_0(sK1))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1)
% 1.80/0.99      | k1_xboole_0 = X1 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_426]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_431,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(sK0(sK1,X1,X0),u1_struct_0(sK1))
% 1.80/0.99      | k1_xboole_0 = X1 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_427,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1123,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0_45,sK1,X1_45)
% 1.80/0.99      | ~ m1_subset_1(X1_45,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(sK0(sK1,X1_45,X0_45),u1_struct_0(sK1))
% 1.80/0.99      | k1_xboole_0 = X1_45 ),
% 1.80/0.99      inference(subtyping,[status(esa)],[c_431]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1703,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0_45,sK1,sK3)
% 1.80/0.99      | m1_subset_1(sK0(sK1,sK3,X0_45),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1123]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_1866,plain,
% 1.80/0.99      ( ~ m1_orders_2(sK2,sK1,sK3)
% 1.80/0.99      | m1_subset_1(sK0(sK1,sK3,sK2),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = sK3 ),
% 1.80/0.99      inference(instantiation,[status(thm)],[c_1703]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_4,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | r2_hidden(sK0(X1,X2,X0),X2)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(cnf_transformation,[],[f28]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_121,plain,
% 1.80/0.99      ( r2_hidden(sK0(X1,X2,X0),X2)
% 1.80/0.99      | ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(global_propositional_subsumption,[status(thm)],[c_4,c_6]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_122,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | r2_hidden(sK0(X1,X2,X0),X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | ~ l1_orders_2(X1)
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(renaming,[status(thm)],[c_121]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_402,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,X1,X2)
% 1.80/0.99      | r2_hidden(sK0(X1,X2,X0),X2)
% 1.80/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 1.80/0.99      | v2_struct_0(X1)
% 1.80/0.99      | ~ v3_orders_2(X1)
% 1.80/0.99      | ~ v4_orders_2(X1)
% 1.80/0.99      | ~ v5_orders_2(X1)
% 1.80/0.99      | sK1 != X1
% 1.80/0.99      | k1_xboole_0 = X2 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_122,c_16]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_403,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | r2_hidden(sK0(sK1,X1,X0),X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | v2_struct_0(sK1)
% 1.80/0.99      | ~ v3_orders_2(sK1)
% 1.80/0.99      | ~ v4_orders_2(sK1)
% 1.80/0.99      | ~ v5_orders_2(sK1)
% 1.80/0.99      | k1_xboole_0 = X1 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_402]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_407,plain,
% 1.80/0.99      ( ~ m1_orders_2(X0,sK1,X1)
% 1.80/0.99      | r2_hidden(sK0(sK1,X1,X0),X1)
% 1.80/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = X1 ),
% 1.80/0.99      inference(global_propositional_subsumption,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_403,c_20,c_19,c_18,c_17]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_607,plain,
% 1.80/0.99      ( r2_hidden(sK0(sK1,X0,X1),X0)
% 1.80/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | sK2 != X0
% 1.80/0.99      | sK1 != sK1
% 1.80/0.99      | sK3 != X1
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_407]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_608,plain,
% 1.80/0.99      ( r2_hidden(sK0(sK1,sK2,sK3),sK2)
% 1.80/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = sK2 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_607]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_596,plain,
% 1.80/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | m1_subset_1(sK0(sK1,X0,X1),u1_struct_0(sK1))
% 1.80/0.99      | sK2 != X0
% 1.80/0.99      | sK1 != sK1
% 1.80/0.99      | sK3 != X1
% 1.80/0.99      | k1_xboole_0 = X0 ),
% 1.80/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_431]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(c_597,plain,
% 1.80/0.99      ( m1_subset_1(sK0(sK1,sK2,sK3),u1_struct_0(sK1))
% 1.80/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(u1_struct_0(sK1)))
% 1.80/0.99      | k1_xboole_0 = sK2 ),
% 1.80/0.99      inference(unflattening,[status(thm)],[c_596]) ).
% 1.80/0.99  
% 1.80/0.99  cnf(contradiction,plain,
% 1.80/0.99      ( $false ),
% 1.80/0.99      inference(minisat,
% 1.80/0.99                [status(thm)],
% 1.80/0.99                [c_3092,c_2636,c_2407,c_2382,c_2169,c_2168,c_2085,c_1977,
% 1.80/0.99                 c_1983,c_1866,c_1654,c_1598,c_1131,c_608,c_597,c_12,
% 1.80/0.99                 c_13,c_14,c_15]) ).
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
% 1.80/0.99  parsing_time:                           0.009
% 1.80/0.99  unif_index_cands_time:                  0.
% 1.80/0.99  unif_index_add_time:                    0.
% 1.80/0.99  orderings_time:                         0.
% 1.80/0.99  out_proof_time:                         0.013
% 1.80/0.99  total_time:                             0.132
% 1.80/0.99  num_of_symbols:                         50
% 1.80/0.99  num_of_terms:                           2408
% 1.80/0.99  
% 1.80/0.99  ------ Preprocessing
% 1.80/0.99  
% 1.80/0.99  num_of_splits:                          2
% 1.80/0.99  num_of_split_atoms:                     2
% 1.80/0.99  num_of_reused_defs:                     0
% 1.80/0.99  num_eq_ax_congr_red:                    20
% 1.80/0.99  num_of_sem_filtered_clauses:            3
% 1.80/0.99  num_of_subtypes:                        3
% 1.80/0.99  monotx_restored_types:                  1
% 1.80/0.99  sat_num_of_epr_types:                   0
% 1.80/0.99  sat_num_of_non_cyclic_types:            0
% 1.80/0.99  sat_guarded_non_collapsed_types:        1
% 1.80/0.99  num_pure_diseq_elim:                    0
% 1.80/0.99  simp_replaced_by:                       0
% 1.80/0.99  res_preprocessed:                       81
% 1.80/0.99  prep_upred:                             0
% 1.80/0.99  prep_unflattend:                        87
% 1.80/0.99  smt_new_axioms:                         0
% 1.80/0.99  pred_elim_cands:                        3
% 1.80/0.99  pred_elim:                              6
% 1.80/0.99  pred_elim_cl:                           6
% 1.80/0.99  pred_elim_cycles:                       8
% 1.80/0.99  merged_defs:                            0
% 1.80/0.99  merged_defs_ncl:                        0
% 1.80/0.99  bin_hyper_res:                          0
% 1.80/0.99  prep_cycles:                            4
% 1.80/0.99  pred_elim_time:                         0.016
% 1.80/0.99  splitting_time:                         0.
% 1.80/0.99  sem_filter_time:                        0.
% 1.80/0.99  monotx_time:                            0.
% 1.80/0.99  subtype_inf_time:                       0.001
% 1.80/0.99  
% 1.80/0.99  ------ Problem properties
% 1.80/0.99  
% 1.80/0.99  clauses:                                17
% 1.80/0.99  conjectures:                            5
% 1.80/0.99  epr:                                    4
% 1.80/0.99  horn:                                   12
% 1.80/0.99  ground:                                 7
% 1.80/0.99  unary:                                  5
% 1.80/0.99  binary:                                 3
% 1.80/0.99  lits:                                   51
% 1.80/0.99  lits_eq:                                7
% 1.80/0.99  fd_pure:                                0
% 1.80/0.99  fd_pseudo:                              0
% 1.80/0.99  fd_cond:                                4
% 1.80/0.99  fd_pseudo_cond:                         0
% 1.80/0.99  ac_symbols:                             0
% 1.80/0.99  
% 1.80/0.99  ------ Propositional Solver
% 1.80/0.99  
% 1.80/0.99  prop_solver_calls:                      29
% 1.80/0.99  prop_fast_solver_calls:                 953
% 1.80/0.99  smt_solver_calls:                       0
% 1.80/0.99  smt_fast_solver_calls:                  0
% 1.80/0.99  prop_num_of_clauses:                    908
% 1.80/0.99  prop_preprocess_simplified:             3224
% 1.80/0.99  prop_fo_subsumed:                       68
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
% 1.80/0.99  inst_num_of_clauses:                    237
% 1.80/0.99  inst_num_in_passive:                    45
% 1.80/0.99  inst_num_in_active:                     150
% 1.80/0.99  inst_num_in_unprocessed:                41
% 1.80/0.99  inst_num_of_loops:                      161
% 1.80/0.99  inst_num_of_learning_restarts:          0
% 1.80/0.99  inst_num_moves_active_passive:          6
% 1.80/0.99  inst_lit_activity:                      0
% 1.80/0.99  inst_lit_activity_moves:                0
% 1.80/0.99  inst_num_tautologies:                   0
% 1.80/0.99  inst_num_prop_implied:                  0
% 1.80/0.99  inst_num_existing_simplified:           0
% 1.80/0.99  inst_num_eq_res_simplified:             0
% 1.80/0.99  inst_num_child_elim:                    0
% 1.80/0.99  inst_num_of_dismatching_blockings:      17
% 1.80/0.99  inst_num_of_non_proper_insts:           219
% 1.80/0.99  inst_num_of_duplicates:                 0
% 1.80/0.99  inst_inst_num_from_inst_to_res:         0
% 1.80/0.99  inst_dismatching_checking_time:         0.
% 1.80/0.99  
% 1.80/0.99  ------ Resolution
% 1.80/0.99  
% 1.80/0.99  res_num_of_clauses:                     0
% 1.80/0.99  res_num_in_passive:                     0
% 1.80/0.99  res_num_in_active:                      0
% 1.80/0.99  res_num_of_loops:                       85
% 1.80/0.99  res_forward_subset_subsumed:            39
% 1.80/0.99  res_backward_subset_subsumed:           0
% 1.80/0.99  res_forward_subsumed:                   0
% 1.80/0.99  res_backward_subsumed:                  0
% 1.80/0.99  res_forward_subsumption_resolution:     1
% 1.80/0.99  res_backward_subsumption_resolution:    0
% 1.80/0.99  res_clause_to_clause_subsumption:       136
% 1.80/0.99  res_orphan_elimination:                 0
% 1.80/0.99  res_tautology_del:                      23
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
% 1.80/0.99  sup_num_of_clauses:                     47
% 1.80/0.99  sup_num_in_active:                      32
% 1.80/0.99  sup_num_in_passive:                     15
% 1.80/0.99  sup_num_of_loops:                       32
% 1.80/0.99  sup_fw_superposition:                   19
% 1.80/0.99  sup_bw_superposition:                   17
% 1.80/0.99  sup_immediate_simplified:               6
% 1.80/0.99  sup_given_eliminated:                   0
% 1.80/0.99  comparisons_done:                       0
% 1.80/0.99  comparisons_avoided:                    1
% 1.80/0.99  
% 1.80/0.99  ------ Simplifications
% 1.80/0.99  
% 1.80/0.99  
% 1.80/0.99  sim_fw_subset_subsumed:                 4
% 1.80/0.99  sim_bw_subset_subsumed:                 0
% 1.80/0.99  sim_fw_subsumed:                        2
% 1.80/0.99  sim_bw_subsumed:                        0
% 1.80/0.99  sim_fw_subsumption_res:                 0
% 1.80/0.99  sim_bw_subsumption_res:                 0
% 1.80/0.99  sim_tautology_del:                      0
% 1.80/0.99  sim_eq_tautology_del:                   0
% 1.80/0.99  sim_eq_res_simp:                        0
% 1.80/0.99  sim_fw_demodulated:                     0
% 1.80/0.99  sim_bw_demodulated:                     0
% 1.80/0.99  sim_light_normalised:                   2
% 1.80/0.99  sim_joinable_taut:                      0
% 1.80/0.99  sim_joinable_simp:                      0
% 1.80/0.99  sim_ac_normalised:                      0
% 1.80/0.99  sim_smt_subsumption:                    0
% 1.80/0.99  
%------------------------------------------------------------------------------
