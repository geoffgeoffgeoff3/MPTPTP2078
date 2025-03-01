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
% DateTime   : Thu Dec  3 12:19:45 EST 2020

% Result     : CounterSatisfiable 1.28s
% Output     : Saturation 1.28s
% Verified   : 
% Statistics : Number of formulae       :  171 (1176 expanded)
%              Number of clauses        :  119 ( 359 expanded)
%              Number of leaves         :   16 ( 280 expanded)
%              Depth                    :   19
%              Number of atoms          :  810 (7952 expanded)
%              Number of equality atoms :  278 (1530 expanded)
%              Maximal formula depth    :   15 (   6 average)
%              Maximal clause size      :   16 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v5_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1
            & k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_orders_2(X0)
          & v5_orders_2(X0)
          & v3_orders_2(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1
              & k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1 ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f19,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1
            | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1
            | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_orders_2(X0)
      & v5_orders_2(X0)
      & v3_orders_2(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f29,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1
            | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),sK3)) != sK3
          | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),sK3)) != sK3 )
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1
              | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_orders_2(X0)
        & v5_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),X1)) != X1
            | k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),X1)) != X1 )
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l1_orders_2(sK2)
      & v5_orders_2(sK2)
      & v3_orders_2(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ( k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3
      | k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 )
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l1_orders_2(sK2)
    & v5_orders_2(sK2)
    & v3_orders_2(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f20,f29,f28])).

fof(f50,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f30])).

fof(f4,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => r1_orders_2(X0,X1,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_orders_2(X0,X1,X1)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_orders_2(X0,X1,X1)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f13])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f46,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f30])).

fof(f47,plain,(
    v3_orders_2(sK2) ),
    inference(cnf_transformation,[],[f30])).

fof(f49,plain,(
    l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f30])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X2,X3)
          & r2_hidden(X1,X3)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
          & v6_orders_2(X3,X0) )
      | ( ~ r1_orders_2(X0,X2,X1)
        & ~ r1_orders_2(X0,X1,X2) )
      | ~ sP0(X2,X1,X0) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f23,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X2,X3)
          & r2_hidden(X1,X3)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
          & v6_orders_2(X3,X0) )
      | ( ~ r1_orders_2(X0,X2,X1)
        & ~ r1_orders_2(X0,X1,X2) )
      | ~ sP0(X2,X1,X0) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ? [X3] :
          ( r2_hidden(X0,X3)
          & r2_hidden(X1,X3)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
          & v6_orders_2(X3,X2) )
      | ( ~ r1_orders_2(X2,X0,X1)
        & ~ r1_orders_2(X2,X1,X0) )
      | ~ sP0(X0,X1,X2) ) ),
    inference(rectify,[],[f23])).

fof(f25,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X0,X3)
          & r2_hidden(X1,X3)
          & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
          & v6_orders_2(X3,X2) )
     => ( r2_hidden(X0,sK1(X0,X1,X2))
        & r2_hidden(X1,sK1(X0,X1,X2))
        & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2)))
        & v6_orders_2(sK1(X0,X1,X2),X2) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,sK1(X0,X1,X2))
        & r2_hidden(X1,sK1(X0,X1,X2))
        & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2)))
        & v6_orders_2(sK1(X0,X1,X2),X2) )
      | ( ~ r1_orders_2(X2,X0,X1)
        & ~ r1_orders_2(X2,X1,X0) )
      | ~ sP0(X0,X1,X2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f24,f25])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2)))
      | ~ r1_orders_2(X2,X1,X0)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( ~ ( ! [X3] :
                        ( ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                          & v6_orders_2(X3,X0) )
                       => ~ ( r2_hidden(X2,X3)
                            & r2_hidden(X1,X3) ) )
                    & ( r1_orders_2(X0,X2,X1)
                      | r1_orders_2(X0,X1,X2) ) )
                & ~ ( ~ r1_orders_2(X0,X2,X1)
                    & ~ r1_orders_2(X0,X1,X2)
                    & ? [X3] :
                        ( r2_hidden(X2,X3)
                        & r2_hidden(X1,X3)
                        & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                        & v6_orders_2(X3,X0) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ( l1_orders_2(X0)
        & v3_orders_2(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( ~ ( ! [X3] :
                        ( ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                          & v6_orders_2(X3,X0) )
                       => ~ ( r2_hidden(X2,X3)
                            & r2_hidden(X1,X3) ) )
                    & ( r1_orders_2(X0,X2,X1)
                      | r1_orders_2(X0,X1,X2) ) )
                & ~ ( ~ r1_orders_2(X0,X2,X1)
                    & ~ r1_orders_2(X0,X1,X2)
                    & ? [X4] :
                        ( r2_hidden(X2,X4)
                        & r2_hidden(X1,X4)
                        & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
                        & v6_orders_2(X4,X0) ) ) ) ) ) ) ),
    inference(rectify,[],[f6])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ? [X3] :
                      ( r2_hidden(X2,X3)
                      & r2_hidden(X1,X3)
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                      & v6_orders_2(X3,X0) )
                  | ( ~ r1_orders_2(X0,X2,X1)
                    & ~ r1_orders_2(X0,X1,X2) ) )
                & ( r1_orders_2(X0,X2,X1)
                  | r1_orders_2(X0,X1,X2)
                  | ! [X4] :
                      ( ~ r2_hidden(X2,X4)
                      | ~ r2_hidden(X1,X4)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
                      | ~ v6_orders_2(X4,X0) ) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ? [X3] :
                      ( r2_hidden(X2,X3)
                      & r2_hidden(X1,X3)
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                      & v6_orders_2(X3,X0) )
                  | ( ~ r1_orders_2(X0,X2,X1)
                    & ~ r1_orders_2(X0,X1,X2) ) )
                & ( r1_orders_2(X0,X2,X1)
                  | r1_orders_2(X0,X1,X2)
                  | ! [X4] :
                      ( ~ r2_hidden(X2,X4)
                      | ~ r2_hidden(X1,X4)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
                      | ~ v6_orders_2(X4,X0) ) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(flattening,[],[f17])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( sP0(X2,X1,X0)
                & ( r1_orders_2(X0,X2,X1)
                  | r1_orders_2(X0,X1,X2)
                  | ! [X4] :
                      ( ~ r2_hidden(X2,X4)
                      | ~ r2_hidden(X1,X4)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0)))
                      | ~ v6_orders_2(X4,X0) ) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(definition_folding,[],[f18,f21])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( sP0(X2,X1,X0)
                & ( r1_orders_2(X0,X2,X1)
                  | r1_orders_2(X0,X1,X2)
                  | ! [X3] :
                      ( ~ r2_hidden(X2,X3)
                      | ~ r2_hidden(X1,X3)
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                      | ~ v6_orders_2(X3,X0) ) ) )
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(rectify,[],[f22])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( sP0(X2,X1,X0)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f12,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f11])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f1,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k2_tarski(X1,X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f33,f31])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X1,sK1(X0,X1,X2))
      | ~ r1_orders_2(X2,X1,X0)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f51,plain,
    ( k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3
    | k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 ),
    inference(cnf_transformation,[],[f30])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X1,sK1(X0,X1,X2))
      | ~ r1_orders_2(X2,X0,X1)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2)))
      | ~ r1_orders_2(X2,X0,X1)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f44,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_orders_2(X0,X2,X1)
      | r1_orders_2(X0,X1,X2)
      | ~ r2_hidden(X2,X3)
      | ~ r2_hidden(X1,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v6_orders_2(X3,X0)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( v6_orders_2(sK1(X0,X1,X2),X2)
      | ~ r1_orders_2(X2,X0,X1)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,sK1(X0,X1,X2))
      | ~ r1_orders_2(X2,X0,X1)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( v6_orders_2(sK1(X0,X1,X2),X2)
      | ~ r1_orders_2(X2,X1,X0)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,sK1(X0,X1,X2))
      | ~ r1_orders_2(X2,X1,X0)
      | ~ sP0(X0,X1,X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
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

fof(f15,plain,(
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
    inference(ennf_transformation,[],[f5])).

fof(f16,plain,(
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
    inference(flattening,[],[f15])).

fof(f35,plain,(
    ! [X2,X0,X1] :
      ( X1 = X2
      | ~ r1_orders_2(X0,X2,X1)
      | ~ r1_orders_2(X0,X1,X2)
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v5_orders_2(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f48,plain,(
    v5_orders_2(sK2) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_182,plain,
    ( ~ v5_orders_2(X0)
    | v5_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_181,plain,
    ( ~ v2_struct_0(X0)
    | v2_struct_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_180,plain,
    ( ~ v3_orders_2(X0)
    | v3_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_179,plain,
    ( ~ l1_orders_2(X0)
    | l1_orders_2(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_912,plain,
    ( X0_2 = X0_2 ),
    theory(equality)).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_908,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1185,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_908])).

cnf(c_2,plain,
    ( r1_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_19,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_227,plain,
    ( r1_orders_2(X0,X1,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_19])).

cnf(c_228,plain,
    ( r1_orders_2(sK2,X0,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ v3_orders_2(sK2)
    | ~ l1_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_227])).

cnf(c_18,negated_conjecture,
    ( v3_orders_2(sK2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_16,negated_conjecture,
    ( l1_orders_2(sK2) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_232,plain,
    ( r1_orders_2(sK2,X0,X0)
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_228,c_18,c_16])).

cnf(c_907,plain,
    ( r1_orders_2(sK2,X0_48,X0_48)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_232])).

cnf(c_1186,plain,
    ( r1_orders_2(sK2,X0_48,X0_48) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_907])).

cnf(c_1370,plain,
    ( r1_orders_2(sK2,sK3,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1185,c_1186])).

cnf(c_9,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X1,X0)
    | m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_12,plain,
    ( sP0(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ m1_subset_1(X0,u1_struct_0(X2))
    | ~ v3_orders_2(X2)
    | ~ l1_orders_2(X2) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_281,plain,
    ( sP0(X0,X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ m1_subset_1(X0,u1_struct_0(X2))
    | ~ v3_orders_2(X2)
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_16])).

cnf(c_282,plain,
    ( sP0(X0,X1,sK2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ v3_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_281])).

cnf(c_286,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | sP0(X0,X1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_282,c_18])).

cnf(c_287,plain,
    ( sP0(X0,X1,sK2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
    inference(renaming,[status(thm)],[c_286])).

cnf(c_463,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | m1_subset_1(sK1(X2,X1,X0),k1_zfmisc_1(u1_struct_0(X0)))
    | X3 != X1
    | X4 != X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_287])).

cnf(c_464,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(X1,X0,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_463])).

cnf(c_902,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
    | m1_subset_1(sK1(X1_48,X0_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(subtyping,[status(esa)],[c_464])).

cnf(c_1191,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(X1_48,X0_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_902])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_910,plain,
    ( ~ m1_subset_1(X0_48,X0_49)
    | v1_xboole_0(X0_49)
    | k6_domain_1(X0_49,X0_48) = k2_tarski(X0_48,X0_48) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1184,plain,
    ( k6_domain_1(X0_49,X0_48) = k2_tarski(X0_48,X0_48)
    | m1_subset_1(X0_48,X0_49) != iProver_top
    | v1_xboole_0(X0_49) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_910])).

cnf(c_1731,plain,
    ( k2_tarski(sK1(X0_48,X1_48,sK2),sK1(X0_48,X1_48,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(X0_48,X1_48,sK2))
    | r1_orders_2(sK2,X1_48,X0_48) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1191,c_1184])).

cnf(c_2098,plain,
    ( k2_tarski(sK1(sK3,sK3,sK2),sK1(sK3,sK3,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(sK3,sK3,sK2))
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1370,c_1731])).

cnf(c_24,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2288,plain,
    ( k2_tarski(sK1(sK3,sK3,sK2),sK1(sK3,sK3,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(sK3,sK3,sK2))
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2098,c_24])).

cnf(c_1517,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK3) = k2_tarski(sK3,sK3)
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1185,c_1184])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_911,plain,
    ( ~ r2_hidden(X0_48,X1_48)
    | ~ m1_subset_1(X1_48,k1_zfmisc_1(X0_49))
    | ~ v1_xboole_0(X0_49) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1183,plain,
    ( r2_hidden(X0_48,X1_48) != iProver_top
    | m1_subset_1(X1_48,k1_zfmisc_1(X0_49)) != iProver_top
    | v1_xboole_0(X0_49) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_911])).

cnf(c_1732,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1191,c_1183])).

cnf(c_939,plain,
    ( r1_orders_2(sK2,X0_48,X0_48) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_907])).

cnf(c_941,plain,
    ( r1_orders_2(sK2,sK3,sK3) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_939])).

cnf(c_950,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(X1_48,X0_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_902])).

cnf(c_952,plain,
    ( r1_orders_2(sK2,sK3,sK3) != iProver_top
    | m1_subset_1(sK1(sK3,sK3,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_950])).

cnf(c_7,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X1,X0)
    | r2_hidden(X1,sK1(X0,X1,X2)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_497,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | r2_hidden(X1,sK1(X2,X1,X0))
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | X3 != X1
    | X4 != X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_287])).

cnf(c_498,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | r2_hidden(X0,sK1(X1,X0,sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_497])).

cnf(c_900,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | r2_hidden(X0_48,sK1(X1_48,X0_48,sK2))
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_498])).

cnf(c_954,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X0_48,sK1(X1_48,X0_48,sK2)) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_900])).

cnf(c_956,plain,
    ( r1_orders_2(sK2,sK3,sK3) != iProver_top
    | r2_hidden(sK3,sK1(sK3,sK3,sK2)) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_954])).

cnf(c_1395,plain,
    ( ~ r2_hidden(X0_48,X1_48)
    | ~ m1_subset_1(X1_48,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_911])).

cnf(c_1579,plain,
    ( ~ r2_hidden(X0_48,sK1(X1_48,X2_48,sK2))
    | ~ m1_subset_1(sK1(X1_48,X2_48,sK2),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(instantiation,[status(thm)],[c_1395])).

cnf(c_1580,plain,
    ( r2_hidden(X0_48,sK1(X1_48,X2_48,sK2)) != iProver_top
    | m1_subset_1(sK1(X1_48,X2_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1579])).

cnf(c_1582,plain,
    ( r2_hidden(sK3,sK1(sK3,sK3,sK2)) != iProver_top
    | m1_subset_1(sK1(sK3,sK3,sK2),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1580])).

cnf(c_2101,plain,
    ( v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1732,c_24,c_941,c_952,c_956,c_1582])).

cnf(c_2106,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK3) = k2_tarski(sK3,sK3) ),
    inference(superposition,[status(thm)],[c_1517,c_2101])).

cnf(c_14,negated_conjecture,
    ( k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3
    | k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_909,negated_conjecture,
    ( k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3
    | k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 ),
    inference(subtyping,[status(esa)],[c_14])).

cnf(c_2217,plain,
    ( k1_yellow_0(sK2,k2_tarski(sK3,sK3)) != sK3
    | k2_yellow_0(sK2,k2_tarski(sK3,sK3)) != sK3 ),
    inference(demodulation,[status(thm)],[c_2106,c_909])).

cnf(c_6,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X0,X1)
    | r2_hidden(X1,sK1(X0,X1,X2)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_515,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | r2_hidden(X2,sK1(X1,X2,X0))
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | X3 != X2
    | X4 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_287])).

cnf(c_516,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | r2_hidden(X1,sK1(X0,X1,sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_515])).

cnf(c_899,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | r2_hidden(X1_48,sK1(X0_48,X1_48,sK2))
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_516])).

cnf(c_1194,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X1_48,sK1(X0_48,X1_48,sK2)) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_899])).

cnf(c_8,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X0,X1)
    | m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_481,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | m1_subset_1(sK1(X1,X2,X0),k1_zfmisc_1(u1_struct_0(X0)))
    | X3 != X2
    | X4 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_287])).

cnf(c_482,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | m1_subset_1(sK1(X0,X1,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_481])).

cnf(c_901,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
    | m1_subset_1(sK1(X0_48,X1_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(subtyping,[status(esa)],[c_482])).

cnf(c_1192,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK1(X0_48,X1_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_901])).

cnf(c_13,plain,
    ( r1_orders_2(X0,X1,X2)
    | r1_orders_2(X0,X2,X1)
    | ~ v6_orders_2(X3,X0)
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X2,X3)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_302,plain,
    ( r1_orders_2(X0,X1,X2)
    | r1_orders_2(X0,X2,X1)
    | ~ v6_orders_2(X3,X0)
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X2,X3)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v3_orders_2(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_16])).

cnf(c_303,plain,
    ( r1_orders_2(sK2,X0,X1)
    | r1_orders_2(sK2,X1,X0)
    | ~ v6_orders_2(X2,sK2)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X0,X2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v3_orders_2(sK2) ),
    inference(unflattening,[status(thm)],[c_302])).

cnf(c_307,plain,
    ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r2_hidden(X0,X2)
    | ~ r2_hidden(X1,X2)
    | ~ v6_orders_2(X2,sK2)
    | r1_orders_2(sK2,X1,X0)
    | r1_orders_2(sK2,X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_303,c_18])).

cnf(c_308,plain,
    ( r1_orders_2(sK2,X0,X1)
    | r1_orders_2(sK2,X1,X0)
    | ~ v6_orders_2(X2,sK2)
    | ~ r2_hidden(X0,X2)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(renaming,[status(thm)],[c_307])).

cnf(c_905,plain,
    ( r1_orders_2(sK2,X0_48,X1_48)
    | r1_orders_2(sK2,X1_48,X0_48)
    | ~ v6_orders_2(X2_48,sK2)
    | ~ r2_hidden(X0_48,X2_48)
    | ~ r2_hidden(X1_48,X2_48)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X2_48,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(subtyping,[status(esa)],[c_308])).

cnf(c_1188,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) = iProver_top
    | r1_orders_2(sK2,X1_48,X0_48) = iProver_top
    | v6_orders_2(X2_48,sK2) != iProver_top
    | r2_hidden(X1_48,X2_48) != iProver_top
    | r2_hidden(X0_48,X2_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_905])).

cnf(c_1785,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
    | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
    | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2) != iProver_top
    | r2_hidden(X3_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1192,c_1188])).

cnf(c_10,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X0,X1)
    | v6_orders_2(sK1(X0,X1,X2),X2) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_447,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | v6_orders_2(sK1(X1,X2,X0),X0)
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | X3 != X2
    | X4 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_287])).

cnf(c_448,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | v6_orders_2(sK1(X0,X1,sK2),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_447])).

cnf(c_903,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_448])).

cnf(c_949,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_903])).

cnf(c_1947,plain,
    ( r1_orders_2(sK2,X3_48,X2_48) = iProver_top
    | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
    | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X3_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1785,c_949])).

cnf(c_1948,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
    | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
    | r2_hidden(X3_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1947])).

cnf(c_1962,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X1_48) = iProver_top
    | r1_orders_2(sK2,X1_48,X2_48) = iProver_top
    | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1194,c_1948])).

cnf(c_4,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X0,X1)
    | r2_hidden(X0,sK1(X0,X1,X2)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_547,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | r2_hidden(X1,sK1(X1,X2,X0))
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | X3 != X2
    | X4 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_287])).

cnf(c_548,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | r2_hidden(X0,sK1(X0,X1,sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_547])).

cnf(c_897,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | r2_hidden(X0_48,sK1(X0_48,X1_48,sK2))
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_548])).

cnf(c_1196,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X0_48,sK1(X0_48,X1_48,sK2)) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_897])).

cnf(c_1960,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X0_48) = iProver_top
    | r1_orders_2(sK2,X0_48,X2_48) = iProver_top
    | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1196,c_1948])).

cnf(c_1193,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X0_48,sK1(X1_48,X0_48,sK2)) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_900])).

cnf(c_1730,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
    | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
    | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2) != iProver_top
    | r2_hidden(X3_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1191,c_1188])).

cnf(c_11,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X1,X0)
    | v6_orders_2(sK1(X0,X1,X2),X2) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_429,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | v6_orders_2(sK1(X2,X1,X0),X0)
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | X3 != X1
    | X4 != X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_287])).

cnf(c_430,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | v6_orders_2(sK1(X1,X0,sK2),sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_429])).

cnf(c_904,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_430])).

cnf(c_946,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_904])).

cnf(c_1899,plain,
    ( r1_orders_2(sK2,X3_48,X2_48) = iProver_top
    | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
    | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X3_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1730,c_946])).

cnf(c_1900,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
    | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
    | r2_hidden(X3_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1899])).

cnf(c_1915,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X0_48) = iProver_top
    | r1_orders_2(sK2,X0_48,X2_48) = iProver_top
    | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1193,c_1900])).

cnf(c_5,plain,
    ( ~ sP0(X0,X1,X2)
    | ~ r1_orders_2(X2,X1,X0)
    | r2_hidden(X0,sK1(X0,X1,X2)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_531,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | r2_hidden(X2,sK1(X2,X1,X0))
    | ~ m1_subset_1(X3,u1_struct_0(sK2))
    | ~ m1_subset_1(X4,u1_struct_0(sK2))
    | X3 != X1
    | X4 != X2
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_287])).

cnf(c_532,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | r2_hidden(X1,sK1(X1,X0,sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
    inference(unflattening,[status(thm)],[c_531])).

cnf(c_898,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | r2_hidden(X1_48,sK1(X1_48,X0_48,sK2))
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_532])).

cnf(c_1195,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r2_hidden(X1_48,sK1(X1_48,X0_48,sK2)) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_898])).

cnf(c_1913,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X2_48,X1_48) = iProver_top
    | r1_orders_2(sK2,X1_48,X2_48) = iProver_top
    | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1195,c_1900])).

cnf(c_1786,plain,
    ( k2_tarski(sK1(X0_48,X1_48,sK2),sK1(X0_48,X1_48,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(X0_48,X1_48,sK2))
    | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1192,c_1184])).

cnf(c_3,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ l1_orders_2(X0)
    | X2 = X1 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_17,negated_conjecture,
    ( v5_orders_2(sK2) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_248,plain,
    ( ~ r1_orders_2(X0,X1,X2)
    | ~ r1_orders_2(X0,X2,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | X2 = X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_17])).

cnf(c_249,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | ~ r1_orders_2(sK2,X1,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ l1_orders_2(sK2)
    | X0 = X1 ),
    inference(unflattening,[status(thm)],[c_248])).

cnf(c_253,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r1_orders_2(sK2,X1,X0)
    | ~ r1_orders_2(sK2,X0,X1)
    | X0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_249,c_16])).

cnf(c_254,plain,
    ( ~ r1_orders_2(sK2,X0,X1)
    | ~ r1_orders_2(sK2,X1,X0)
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | X0 = X1 ),
    inference(renaming,[status(thm)],[c_253])).

cnf(c_906,plain,
    ( ~ r1_orders_2(sK2,X0_48,X1_48)
    | ~ r1_orders_2(sK2,X1_48,X0_48)
    | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
    | X0_48 = X1_48 ),
    inference(subtyping,[status(esa)],[c_254])).

cnf(c_1187,plain,
    ( X0_48 = X1_48
    | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | r1_orders_2(sK2,X1_48,X0_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_906])).

cnf(c_1421,plain,
    ( sK3 = X0_48
    | r1_orders_2(sK2,X0_48,sK3) != iProver_top
    | r1_orders_2(sK2,sK3,X0_48) != iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1185,c_1187])).

cnf(c_1190,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_903])).

cnf(c_1189,plain,
    ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
    | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2) = iProver_top
    | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_904])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n004.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:40:53 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.28/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.28/0.98  
% 1.28/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.28/0.98  
% 1.28/0.98  ------  iProver source info
% 1.28/0.98  
% 1.28/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.28/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.28/0.98  git: non_committed_changes: false
% 1.28/0.98  git: last_make_outside_of_git: false
% 1.28/0.98  
% 1.28/0.98  ------ 
% 1.28/0.98  
% 1.28/0.98  ------ Input Options
% 1.28/0.98  
% 1.28/0.98  --out_options                           all
% 1.28/0.98  --tptp_safe_out                         true
% 1.28/0.98  --problem_path                          ""
% 1.28/0.98  --include_path                          ""
% 1.28/0.98  --clausifier                            res/vclausify_rel
% 1.28/0.98  --clausifier_options                    --mode clausify
% 1.28/0.98  --stdin                                 false
% 1.28/0.98  --stats_out                             all
% 1.28/0.98  
% 1.28/0.98  ------ General Options
% 1.28/0.98  
% 1.28/0.98  --fof                                   false
% 1.28/0.98  --time_out_real                         305.
% 1.28/0.98  --time_out_virtual                      -1.
% 1.28/0.98  --symbol_type_check                     false
% 1.28/0.98  --clausify_out                          false
% 1.28/0.98  --sig_cnt_out                           false
% 1.28/0.98  --trig_cnt_out                          false
% 1.28/0.98  --trig_cnt_out_tolerance                1.
% 1.28/0.98  --trig_cnt_out_sk_spl                   false
% 1.28/0.98  --abstr_cl_out                          false
% 1.28/0.98  
% 1.28/0.98  ------ Global Options
% 1.28/0.98  
% 1.28/0.98  --schedule                              default
% 1.28/0.98  --add_important_lit                     false
% 1.28/0.98  --prop_solver_per_cl                    1000
% 1.28/0.98  --min_unsat_core                        false
% 1.28/0.98  --soft_assumptions                      false
% 1.28/0.98  --soft_lemma_size                       3
% 1.28/0.98  --prop_impl_unit_size                   0
% 1.28/0.98  --prop_impl_unit                        []
% 1.28/0.98  --share_sel_clauses                     true
% 1.28/0.98  --reset_solvers                         false
% 1.28/0.98  --bc_imp_inh                            [conj_cone]
% 1.28/0.98  --conj_cone_tolerance                   3.
% 1.28/0.98  --extra_neg_conj                        none
% 1.28/0.98  --large_theory_mode                     true
% 1.28/0.98  --prolific_symb_bound                   200
% 1.28/0.98  --lt_threshold                          2000
% 1.28/0.98  --clause_weak_htbl                      true
% 1.28/0.98  --gc_record_bc_elim                     false
% 1.28/0.98  
% 1.28/0.98  ------ Preprocessing Options
% 1.28/0.98  
% 1.28/0.98  --preprocessing_flag                    true
% 1.28/0.98  --time_out_prep_mult                    0.1
% 1.28/0.98  --splitting_mode                        input
% 1.28/0.98  --splitting_grd                         true
% 1.28/0.98  --splitting_cvd                         false
% 1.28/0.98  --splitting_cvd_svl                     false
% 1.28/0.98  --splitting_nvd                         32
% 1.28/0.98  --sub_typing                            true
% 1.28/0.98  --prep_gs_sim                           true
% 1.28/0.98  --prep_unflatten                        true
% 1.28/0.98  --prep_res_sim                          true
% 1.28/0.98  --prep_upred                            true
% 1.28/0.98  --prep_sem_filter                       exhaustive
% 1.28/0.98  --prep_sem_filter_out                   false
% 1.28/0.98  --pred_elim                             true
% 1.28/0.98  --res_sim_input                         true
% 1.28/0.98  --eq_ax_congr_red                       true
% 1.28/0.98  --pure_diseq_elim                       true
% 1.28/0.98  --brand_transform                       false
% 1.28/0.98  --non_eq_to_eq                          false
% 1.28/0.98  --prep_def_merge                        true
% 1.28/0.98  --prep_def_merge_prop_impl              false
% 1.28/0.98  --prep_def_merge_mbd                    true
% 1.28/0.98  --prep_def_merge_tr_red                 false
% 1.28/0.98  --prep_def_merge_tr_cl                  false
% 1.28/0.98  --smt_preprocessing                     true
% 1.28/0.98  --smt_ac_axioms                         fast
% 1.28/0.98  --preprocessed_out                      false
% 1.28/0.98  --preprocessed_stats                    false
% 1.28/0.98  
% 1.28/0.98  ------ Abstraction refinement Options
% 1.28/0.98  
% 1.28/0.98  --abstr_ref                             []
% 1.28/0.98  --abstr_ref_prep                        false
% 1.28/0.98  --abstr_ref_until_sat                   false
% 1.28/0.98  --abstr_ref_sig_restrict                funpre
% 1.28/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.28/0.98  --abstr_ref_under                       []
% 1.28/0.98  
% 1.28/0.98  ------ SAT Options
% 1.28/0.98  
% 1.28/0.98  --sat_mode                              false
% 1.28/0.98  --sat_fm_restart_options                ""
% 1.28/0.98  --sat_gr_def                            false
% 1.28/0.98  --sat_epr_types                         true
% 1.28/0.98  --sat_non_cyclic_types                  false
% 1.28/0.98  --sat_finite_models                     false
% 1.28/0.98  --sat_fm_lemmas                         false
% 1.28/0.98  --sat_fm_prep                           false
% 1.28/0.98  --sat_fm_uc_incr                        true
% 1.28/0.98  --sat_out_model                         small
% 1.28/0.98  --sat_out_clauses                       false
% 1.28/0.98  
% 1.28/0.98  ------ QBF Options
% 1.28/0.98  
% 1.28/0.98  --qbf_mode                              false
% 1.28/0.98  --qbf_elim_univ                         false
% 1.28/0.98  --qbf_dom_inst                          none
% 1.28/0.98  --qbf_dom_pre_inst                      false
% 1.28/0.98  --qbf_sk_in                             false
% 1.28/0.98  --qbf_pred_elim                         true
% 1.28/0.98  --qbf_split                             512
% 1.28/0.98  
% 1.28/0.98  ------ BMC1 Options
% 1.28/0.98  
% 1.28/0.98  --bmc1_incremental                      false
% 1.28/0.98  --bmc1_axioms                           reachable_all
% 1.28/0.98  --bmc1_min_bound                        0
% 1.28/0.98  --bmc1_max_bound                        -1
% 1.28/0.98  --bmc1_max_bound_default                -1
% 1.28/0.98  --bmc1_symbol_reachability              true
% 1.28/0.98  --bmc1_property_lemmas                  false
% 1.28/0.98  --bmc1_k_induction                      false
% 1.28/0.98  --bmc1_non_equiv_states                 false
% 1.28/0.98  --bmc1_deadlock                         false
% 1.28/0.98  --bmc1_ucm                              false
% 1.28/0.98  --bmc1_add_unsat_core                   none
% 1.28/0.98  --bmc1_unsat_core_children              false
% 1.28/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.28/0.98  --bmc1_out_stat                         full
% 1.28/0.98  --bmc1_ground_init                      false
% 1.28/0.98  --bmc1_pre_inst_next_state              false
% 1.28/0.98  --bmc1_pre_inst_state                   false
% 1.28/0.98  --bmc1_pre_inst_reach_state             false
% 1.28/0.98  --bmc1_out_unsat_core                   false
% 1.28/0.98  --bmc1_aig_witness_out                  false
% 1.28/0.98  --bmc1_verbose                          false
% 1.28/0.98  --bmc1_dump_clauses_tptp                false
% 1.28/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.28/0.98  --bmc1_dump_file                        -
% 1.28/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.28/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.28/0.98  --bmc1_ucm_extend_mode                  1
% 1.28/0.98  --bmc1_ucm_init_mode                    2
% 1.28/0.98  --bmc1_ucm_cone_mode                    none
% 1.28/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.28/0.98  --bmc1_ucm_relax_model                  4
% 1.28/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.28/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.28/0.98  --bmc1_ucm_layered_model                none
% 1.28/0.98  --bmc1_ucm_max_lemma_size               10
% 1.28/0.98  
% 1.28/0.98  ------ AIG Options
% 1.28/0.98  
% 1.28/0.98  --aig_mode                              false
% 1.28/0.98  
% 1.28/0.98  ------ Instantiation Options
% 1.28/0.98  
% 1.28/0.98  --instantiation_flag                    true
% 1.28/0.98  --inst_sos_flag                         false
% 1.28/0.98  --inst_sos_phase                        true
% 1.28/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.28/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.28/0.98  --inst_lit_sel_side                     num_symb
% 1.28/0.98  --inst_solver_per_active                1400
% 1.28/0.98  --inst_solver_calls_frac                1.
% 1.28/0.98  --inst_passive_queue_type               priority_queues
% 1.28/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.28/0.98  --inst_passive_queues_freq              [25;2]
% 1.28/0.98  --inst_dismatching                      true
% 1.28/0.98  --inst_eager_unprocessed_to_passive     true
% 1.28/0.98  --inst_prop_sim_given                   true
% 1.28/0.98  --inst_prop_sim_new                     false
% 1.28/0.98  --inst_subs_new                         false
% 1.28/0.98  --inst_eq_res_simp                      false
% 1.28/0.98  --inst_subs_given                       false
% 1.28/0.98  --inst_orphan_elimination               true
% 1.28/0.98  --inst_learning_loop_flag               true
% 1.28/0.98  --inst_learning_start                   3000
% 1.28/0.98  --inst_learning_factor                  2
% 1.28/0.98  --inst_start_prop_sim_after_learn       3
% 1.28/0.98  --inst_sel_renew                        solver
% 1.28/0.98  --inst_lit_activity_flag                true
% 1.28/0.98  --inst_restr_to_given                   false
% 1.28/0.98  --inst_activity_threshold               500
% 1.28/0.98  --inst_out_proof                        true
% 1.28/0.98  
% 1.28/0.98  ------ Resolution Options
% 1.28/0.98  
% 1.28/0.98  --resolution_flag                       true
% 1.28/0.98  --res_lit_sel                           adaptive
% 1.28/0.98  --res_lit_sel_side                      none
% 1.28/0.98  --res_ordering                          kbo
% 1.28/0.98  --res_to_prop_solver                    active
% 1.28/0.98  --res_prop_simpl_new                    false
% 1.28/0.98  --res_prop_simpl_given                  true
% 1.28/0.98  --res_passive_queue_type                priority_queues
% 1.28/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.28/0.98  --res_passive_queues_freq               [15;5]
% 1.28/0.98  --res_forward_subs                      full
% 1.28/0.98  --res_backward_subs                     full
% 1.28/0.98  --res_forward_subs_resolution           true
% 1.28/0.98  --res_backward_subs_resolution          true
% 1.28/0.98  --res_orphan_elimination                true
% 1.28/0.98  --res_time_limit                        2.
% 1.28/0.98  --res_out_proof                         true
% 1.28/0.98  
% 1.28/0.98  ------ Superposition Options
% 1.28/0.98  
% 1.28/0.98  --superposition_flag                    true
% 1.28/0.98  --sup_passive_queue_type                priority_queues
% 1.28/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.28/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.28/0.98  --demod_completeness_check              fast
% 1.28/0.98  --demod_use_ground                      true
% 1.28/0.98  --sup_to_prop_solver                    passive
% 1.28/0.98  --sup_prop_simpl_new                    true
% 1.28/0.98  --sup_prop_simpl_given                  true
% 1.28/0.98  --sup_fun_splitting                     false
% 1.28/0.98  --sup_smt_interval                      50000
% 1.28/0.98  
% 1.28/0.98  ------ Superposition Simplification Setup
% 1.28/0.98  
% 1.28/0.98  --sup_indices_passive                   []
% 1.28/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.28/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.28/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.28/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.28/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.28/0.98  --sup_full_bw                           [BwDemod]
% 1.28/0.98  --sup_immed_triv                        [TrivRules]
% 1.28/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.28/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.28/0.98  --sup_immed_bw_main                     []
% 1.28/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.28/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.28/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.28/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.28/0.98  
% 1.28/0.98  ------ Combination Options
% 1.28/0.98  
% 1.28/0.98  --comb_res_mult                         3
% 1.28/0.98  --comb_sup_mult                         2
% 1.28/0.98  --comb_inst_mult                        10
% 1.28/0.98  
% 1.28/0.98  ------ Debug Options
% 1.28/0.98  
% 1.28/0.98  --dbg_backtrace                         false
% 1.28/0.98  --dbg_dump_prop_clauses                 false
% 1.28/0.98  --dbg_dump_prop_clauses_file            -
% 1.28/0.98  --dbg_out_stat                          false
% 1.28/0.98  ------ Parsing...
% 1.28/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.28/0.98  
% 1.28/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 1.28/0.98  
% 1.28/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.28/0.98  
% 1.28/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.28/0.98  ------ Proving...
% 1.28/0.98  ------ Problem Properties 
% 1.28/0.98  
% 1.28/0.98  
% 1.28/0.98  clauses                                 15
% 1.28/0.98  conjectures                             2
% 1.28/0.99  EPR                                     0
% 1.28/0.99  Horn                                    13
% 1.28/0.99  unary                                   1
% 1.28/0.99  binary                                  2
% 1.28/0.99  lits                                    56
% 1.28/0.99  lits eq                                 4
% 1.28/0.99  fd_pure                                 0
% 1.28/0.99  fd_pseudo                               0
% 1.28/0.99  fd_cond                                 0
% 1.28/0.99  fd_pseudo_cond                          1
% 1.28/0.99  AC symbols                              0
% 1.28/0.99  
% 1.28/0.99  ------ Schedule dynamic 5 is on 
% 1.28/0.99  
% 1.28/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  ------ 
% 1.28/0.99  Current options:
% 1.28/0.99  ------ 
% 1.28/0.99  
% 1.28/0.99  ------ Input Options
% 1.28/0.99  
% 1.28/0.99  --out_options                           all
% 1.28/0.99  --tptp_safe_out                         true
% 1.28/0.99  --problem_path                          ""
% 1.28/0.99  --include_path                          ""
% 1.28/0.99  --clausifier                            res/vclausify_rel
% 1.28/0.99  --clausifier_options                    --mode clausify
% 1.28/0.99  --stdin                                 false
% 1.28/0.99  --stats_out                             all
% 1.28/0.99  
% 1.28/0.99  ------ General Options
% 1.28/0.99  
% 1.28/0.99  --fof                                   false
% 1.28/0.99  --time_out_real                         305.
% 1.28/0.99  --time_out_virtual                      -1.
% 1.28/0.99  --symbol_type_check                     false
% 1.28/0.99  --clausify_out                          false
% 1.28/0.99  --sig_cnt_out                           false
% 1.28/0.99  --trig_cnt_out                          false
% 1.28/0.99  --trig_cnt_out_tolerance                1.
% 1.28/0.99  --trig_cnt_out_sk_spl                   false
% 1.28/0.99  --abstr_cl_out                          false
% 1.28/0.99  
% 1.28/0.99  ------ Global Options
% 1.28/0.99  
% 1.28/0.99  --schedule                              default
% 1.28/0.99  --add_important_lit                     false
% 1.28/0.99  --prop_solver_per_cl                    1000
% 1.28/0.99  --min_unsat_core                        false
% 1.28/0.99  --soft_assumptions                      false
% 1.28/0.99  --soft_lemma_size                       3
% 1.28/0.99  --prop_impl_unit_size                   0
% 1.28/0.99  --prop_impl_unit                        []
% 1.28/0.99  --share_sel_clauses                     true
% 1.28/0.99  --reset_solvers                         false
% 1.28/0.99  --bc_imp_inh                            [conj_cone]
% 1.28/0.99  --conj_cone_tolerance                   3.
% 1.28/0.99  --extra_neg_conj                        none
% 1.28/0.99  --large_theory_mode                     true
% 1.28/0.99  --prolific_symb_bound                   200
% 1.28/0.99  --lt_threshold                          2000
% 1.28/0.99  --clause_weak_htbl                      true
% 1.28/0.99  --gc_record_bc_elim                     false
% 1.28/0.99  
% 1.28/0.99  ------ Preprocessing Options
% 1.28/0.99  
% 1.28/0.99  --preprocessing_flag                    true
% 1.28/0.99  --time_out_prep_mult                    0.1
% 1.28/0.99  --splitting_mode                        input
% 1.28/0.99  --splitting_grd                         true
% 1.28/0.99  --splitting_cvd                         false
% 1.28/0.99  --splitting_cvd_svl                     false
% 1.28/0.99  --splitting_nvd                         32
% 1.28/0.99  --sub_typing                            true
% 1.28/0.99  --prep_gs_sim                           true
% 1.28/0.99  --prep_unflatten                        true
% 1.28/0.99  --prep_res_sim                          true
% 1.28/0.99  --prep_upred                            true
% 1.28/0.99  --prep_sem_filter                       exhaustive
% 1.28/0.99  --prep_sem_filter_out                   false
% 1.28/0.99  --pred_elim                             true
% 1.28/0.99  --res_sim_input                         true
% 1.28/0.99  --eq_ax_congr_red                       true
% 1.28/0.99  --pure_diseq_elim                       true
% 1.28/0.99  --brand_transform                       false
% 1.28/0.99  --non_eq_to_eq                          false
% 1.28/0.99  --prep_def_merge                        true
% 1.28/0.99  --prep_def_merge_prop_impl              false
% 1.28/0.99  --prep_def_merge_mbd                    true
% 1.28/0.99  --prep_def_merge_tr_red                 false
% 1.28/0.99  --prep_def_merge_tr_cl                  false
% 1.28/0.99  --smt_preprocessing                     true
% 1.28/0.99  --smt_ac_axioms                         fast
% 1.28/0.99  --preprocessed_out                      false
% 1.28/0.99  --preprocessed_stats                    false
% 1.28/0.99  
% 1.28/0.99  ------ Abstraction refinement Options
% 1.28/0.99  
% 1.28/0.99  --abstr_ref                             []
% 1.28/0.99  --abstr_ref_prep                        false
% 1.28/0.99  --abstr_ref_until_sat                   false
% 1.28/0.99  --abstr_ref_sig_restrict                funpre
% 1.28/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.28/0.99  --abstr_ref_under                       []
% 1.28/0.99  
% 1.28/0.99  ------ SAT Options
% 1.28/0.99  
% 1.28/0.99  --sat_mode                              false
% 1.28/0.99  --sat_fm_restart_options                ""
% 1.28/0.99  --sat_gr_def                            false
% 1.28/0.99  --sat_epr_types                         true
% 1.28/0.99  --sat_non_cyclic_types                  false
% 1.28/0.99  --sat_finite_models                     false
% 1.28/0.99  --sat_fm_lemmas                         false
% 1.28/0.99  --sat_fm_prep                           false
% 1.28/0.99  --sat_fm_uc_incr                        true
% 1.28/0.99  --sat_out_model                         small
% 1.28/0.99  --sat_out_clauses                       false
% 1.28/0.99  
% 1.28/0.99  ------ QBF Options
% 1.28/0.99  
% 1.28/0.99  --qbf_mode                              false
% 1.28/0.99  --qbf_elim_univ                         false
% 1.28/0.99  --qbf_dom_inst                          none
% 1.28/0.99  --qbf_dom_pre_inst                      false
% 1.28/0.99  --qbf_sk_in                             false
% 1.28/0.99  --qbf_pred_elim                         true
% 1.28/0.99  --qbf_split                             512
% 1.28/0.99  
% 1.28/0.99  ------ BMC1 Options
% 1.28/0.99  
% 1.28/0.99  --bmc1_incremental                      false
% 1.28/0.99  --bmc1_axioms                           reachable_all
% 1.28/0.99  --bmc1_min_bound                        0
% 1.28/0.99  --bmc1_max_bound                        -1
% 1.28/0.99  --bmc1_max_bound_default                -1
% 1.28/0.99  --bmc1_symbol_reachability              true
% 1.28/0.99  --bmc1_property_lemmas                  false
% 1.28/0.99  --bmc1_k_induction                      false
% 1.28/0.99  --bmc1_non_equiv_states                 false
% 1.28/0.99  --bmc1_deadlock                         false
% 1.28/0.99  --bmc1_ucm                              false
% 1.28/0.99  --bmc1_add_unsat_core                   none
% 1.28/0.99  --bmc1_unsat_core_children              false
% 1.28/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.28/0.99  --bmc1_out_stat                         full
% 1.28/0.99  --bmc1_ground_init                      false
% 1.28/0.99  --bmc1_pre_inst_next_state              false
% 1.28/0.99  --bmc1_pre_inst_state                   false
% 1.28/0.99  --bmc1_pre_inst_reach_state             false
% 1.28/0.99  --bmc1_out_unsat_core                   false
% 1.28/0.99  --bmc1_aig_witness_out                  false
% 1.28/0.99  --bmc1_verbose                          false
% 1.28/0.99  --bmc1_dump_clauses_tptp                false
% 1.28/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.28/0.99  --bmc1_dump_file                        -
% 1.28/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.28/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.28/0.99  --bmc1_ucm_extend_mode                  1
% 1.28/0.99  --bmc1_ucm_init_mode                    2
% 1.28/0.99  --bmc1_ucm_cone_mode                    none
% 1.28/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.28/0.99  --bmc1_ucm_relax_model                  4
% 1.28/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.28/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.28/0.99  --bmc1_ucm_layered_model                none
% 1.28/0.99  --bmc1_ucm_max_lemma_size               10
% 1.28/0.99  
% 1.28/0.99  ------ AIG Options
% 1.28/0.99  
% 1.28/0.99  --aig_mode                              false
% 1.28/0.99  
% 1.28/0.99  ------ Instantiation Options
% 1.28/0.99  
% 1.28/0.99  --instantiation_flag                    true
% 1.28/0.99  --inst_sos_flag                         false
% 1.28/0.99  --inst_sos_phase                        true
% 1.28/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.28/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.28/0.99  --inst_lit_sel_side                     none
% 1.28/0.99  --inst_solver_per_active                1400
% 1.28/0.99  --inst_solver_calls_frac                1.
% 1.28/0.99  --inst_passive_queue_type               priority_queues
% 1.28/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.28/0.99  --inst_passive_queues_freq              [25;2]
% 1.28/0.99  --inst_dismatching                      true
% 1.28/0.99  --inst_eager_unprocessed_to_passive     true
% 1.28/0.99  --inst_prop_sim_given                   true
% 1.28/0.99  --inst_prop_sim_new                     false
% 1.28/0.99  --inst_subs_new                         false
% 1.28/0.99  --inst_eq_res_simp                      false
% 1.28/0.99  --inst_subs_given                       false
% 1.28/0.99  --inst_orphan_elimination               true
% 1.28/0.99  --inst_learning_loop_flag               true
% 1.28/0.99  --inst_learning_start                   3000
% 1.28/0.99  --inst_learning_factor                  2
% 1.28/0.99  --inst_start_prop_sim_after_learn       3
% 1.28/0.99  --inst_sel_renew                        solver
% 1.28/0.99  --inst_lit_activity_flag                true
% 1.28/0.99  --inst_restr_to_given                   false
% 1.28/0.99  --inst_activity_threshold               500
% 1.28/0.99  --inst_out_proof                        true
% 1.28/0.99  
% 1.28/0.99  ------ Resolution Options
% 1.28/0.99  
% 1.28/0.99  --resolution_flag                       false
% 1.28/0.99  --res_lit_sel                           adaptive
% 1.28/0.99  --res_lit_sel_side                      none
% 1.28/0.99  --res_ordering                          kbo
% 1.28/0.99  --res_to_prop_solver                    active
% 1.28/0.99  --res_prop_simpl_new                    false
% 1.28/0.99  --res_prop_simpl_given                  true
% 1.28/0.99  --res_passive_queue_type                priority_queues
% 1.28/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.28/0.99  --res_passive_queues_freq               [15;5]
% 1.28/0.99  --res_forward_subs                      full
% 1.28/0.99  --res_backward_subs                     full
% 1.28/0.99  --res_forward_subs_resolution           true
% 1.28/0.99  --res_backward_subs_resolution          true
% 1.28/0.99  --res_orphan_elimination                true
% 1.28/0.99  --res_time_limit                        2.
% 1.28/0.99  --res_out_proof                         true
% 1.28/0.99  
% 1.28/0.99  ------ Superposition Options
% 1.28/0.99  
% 1.28/0.99  --superposition_flag                    true
% 1.28/0.99  --sup_passive_queue_type                priority_queues
% 1.28/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.28/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.28/0.99  --demod_completeness_check              fast
% 1.28/0.99  --demod_use_ground                      true
% 1.28/0.99  --sup_to_prop_solver                    passive
% 1.28/0.99  --sup_prop_simpl_new                    true
% 1.28/0.99  --sup_prop_simpl_given                  true
% 1.28/0.99  --sup_fun_splitting                     false
% 1.28/0.99  --sup_smt_interval                      50000
% 1.28/0.99  
% 1.28/0.99  ------ Superposition Simplification Setup
% 1.28/0.99  
% 1.28/0.99  --sup_indices_passive                   []
% 1.28/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.28/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.28/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.28/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.28/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.28/0.99  --sup_full_bw                           [BwDemod]
% 1.28/0.99  --sup_immed_triv                        [TrivRules]
% 1.28/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.28/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.28/0.99  --sup_immed_bw_main                     []
% 1.28/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.28/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.28/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.28/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.28/0.99  
% 1.28/0.99  ------ Combination Options
% 1.28/0.99  
% 1.28/0.99  --comb_res_mult                         3
% 1.28/0.99  --comb_sup_mult                         2
% 1.28/0.99  --comb_inst_mult                        10
% 1.28/0.99  
% 1.28/0.99  ------ Debug Options
% 1.28/0.99  
% 1.28/0.99  --dbg_backtrace                         false
% 1.28/0.99  --dbg_dump_prop_clauses                 false
% 1.28/0.99  --dbg_dump_prop_clauses_file            -
% 1.28/0.99  --dbg_out_stat                          false
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  ------ Proving...
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  % SZS status CounterSatisfiable for theBenchmark.p
% 1.28/0.99  
% 1.28/0.99  % SZS output start Saturation for theBenchmark.p
% 1.28/0.99  
% 1.28/0.99  fof(f7,conjecture,(
% 1.28/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1 & k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1)))),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f8,negated_conjecture,(
% 1.28/0.99    ~! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1 & k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) = X1)))),
% 1.28/0.99    inference(negated_conjecture,[],[f7])).
% 1.28/0.99  
% 1.28/0.99  fof(f19,plain,(
% 1.28/0.99    ? [X0] : (? [X1] : ((k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)))),
% 1.28/0.99    inference(ennf_transformation,[],[f8])).
% 1.28/0.99  
% 1.28/0.99  fof(f20,plain,(
% 1.28/0.99    ? [X0] : (? [X1] : ((k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0))),
% 1.28/0.99    inference(flattening,[],[f19])).
% 1.28/0.99  
% 1.28/0.99  fof(f29,plain,(
% 1.28/0.99    ( ! [X0] : (? [X1] : ((k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1) & m1_subset_1(X1,u1_struct_0(X0))) => ((k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),sK3)) != sK3 | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),sK3)) != sK3) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 1.28/0.99    introduced(choice_axiom,[])).
% 1.28/0.99  
% 1.28/0.99  fof(f28,plain,(
% 1.28/0.99    ? [X0] : (? [X1] : ((k2_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1 | k1_yellow_0(X0,k6_domain_1(u1_struct_0(X0),X1)) != X1) & m1_subset_1(X1,u1_struct_0(X0))) & l1_orders_2(X0) & v5_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => (? [X1] : ((k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),X1)) != X1 | k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),X1)) != X1) & m1_subset_1(X1,u1_struct_0(sK2))) & l1_orders_2(sK2) & v5_orders_2(sK2) & v3_orders_2(sK2) & ~v2_struct_0(sK2))),
% 1.28/0.99    introduced(choice_axiom,[])).
% 1.28/0.99  
% 1.28/0.99  fof(f30,plain,(
% 1.28/0.99    ((k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 | k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3) & m1_subset_1(sK3,u1_struct_0(sK2))) & l1_orders_2(sK2) & v5_orders_2(sK2) & v3_orders_2(sK2) & ~v2_struct_0(sK2)),
% 1.28/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f20,f29,f28])).
% 1.28/0.99  
% 1.28/0.99  fof(f50,plain,(
% 1.28/0.99    m1_subset_1(sK3,u1_struct_0(sK2))),
% 1.28/0.99    inference(cnf_transformation,[],[f30])).
% 1.28/0.99  
% 1.28/0.99  fof(f4,axiom,(
% 1.28/0.99    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => r1_orders_2(X0,X1,X1)))),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f13,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)))),
% 1.28/0.99    inference(ennf_transformation,[],[f4])).
% 1.28/0.99  
% 1.28/0.99  fof(f14,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))),
% 1.28/0.99    inference(flattening,[],[f13])).
% 1.28/0.99  
% 1.28/0.99  fof(f34,plain,(
% 1.28/0.99    ( ! [X0,X1] : (r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f14])).
% 1.28/0.99  
% 1.28/0.99  fof(f46,plain,(
% 1.28/0.99    ~v2_struct_0(sK2)),
% 1.28/0.99    inference(cnf_transformation,[],[f30])).
% 1.28/0.99  
% 1.28/0.99  fof(f47,plain,(
% 1.28/0.99    v3_orders_2(sK2)),
% 1.28/0.99    inference(cnf_transformation,[],[f30])).
% 1.28/0.99  
% 1.28/0.99  fof(f49,plain,(
% 1.28/0.99    l1_orders_2(sK2)),
% 1.28/0.99    inference(cnf_transformation,[],[f30])).
% 1.28/0.99  
% 1.28/0.99  fof(f21,plain,(
% 1.28/0.99    ! [X2,X1,X0] : (? [X3] : (r2_hidden(X2,X3) & r2_hidden(X1,X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0)) | (~r1_orders_2(X0,X2,X1) & ~r1_orders_2(X0,X1,X2)) | ~sP0(X2,X1,X0))),
% 1.28/0.99    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 1.28/0.99  
% 1.28/0.99  fof(f23,plain,(
% 1.28/0.99    ! [X2,X1,X0] : (? [X3] : (r2_hidden(X2,X3) & r2_hidden(X1,X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0)) | (~r1_orders_2(X0,X2,X1) & ~r1_orders_2(X0,X1,X2)) | ~sP0(X2,X1,X0))),
% 1.28/0.99    inference(nnf_transformation,[],[f21])).
% 1.28/0.99  
% 1.28/0.99  fof(f24,plain,(
% 1.28/0.99    ! [X0,X1,X2] : (? [X3] : (r2_hidden(X0,X3) & r2_hidden(X1,X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) & v6_orders_2(X3,X2)) | (~r1_orders_2(X2,X0,X1) & ~r1_orders_2(X2,X1,X0)) | ~sP0(X0,X1,X2))),
% 1.28/0.99    inference(rectify,[],[f23])).
% 1.28/0.99  
% 1.28/0.99  fof(f25,plain,(
% 1.28/0.99    ! [X2,X1,X0] : (? [X3] : (r2_hidden(X0,X3) & r2_hidden(X1,X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) & v6_orders_2(X3,X2)) => (r2_hidden(X0,sK1(X0,X1,X2)) & r2_hidden(X1,sK1(X0,X1,X2)) & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) & v6_orders_2(sK1(X0,X1,X2),X2)))),
% 1.28/0.99    introduced(choice_axiom,[])).
% 1.28/0.99  
% 1.28/0.99  fof(f26,plain,(
% 1.28/0.99    ! [X0,X1,X2] : ((r2_hidden(X0,sK1(X0,X1,X2)) & r2_hidden(X1,sK1(X0,X1,X2)) & m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) & v6_orders_2(sK1(X0,X1,X2),X2)) | (~r1_orders_2(X2,X0,X1) & ~r1_orders_2(X2,X1,X0)) | ~sP0(X0,X1,X2))),
% 1.28/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f24,f25])).
% 1.28/0.99  
% 1.28/0.99  fof(f38,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) | ~r1_orders_2(X2,X1,X0) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f6,axiom,(
% 1.28/0.99    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (~(! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0)) => ~(r2_hidden(X2,X3) & r2_hidden(X1,X3))) & (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2))) & ~(~r1_orders_2(X0,X2,X1) & ~r1_orders_2(X0,X1,X2) & ? [X3] : (r2_hidden(X2,X3) & r2_hidden(X1,X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0)))))))),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f9,plain,(
% 1.28/0.99    ! [X0] : ((l1_orders_2(X0) & v3_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (~(! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0)) => ~(r2_hidden(X2,X3) & r2_hidden(X1,X3))) & (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2))) & ~(~r1_orders_2(X0,X2,X1) & ~r1_orders_2(X0,X1,X2) & ? [X4] : (r2_hidden(X2,X4) & r2_hidden(X1,X4) & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X4,X0)))))))),
% 1.28/0.99    inference(rectify,[],[f6])).
% 1.28/0.99  
% 1.28/0.99  fof(f17,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (! [X2] : (((? [X3] : ((r2_hidden(X2,X3) & r2_hidden(X1,X3)) & (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0))) | (~r1_orders_2(X0,X2,X1) & ~r1_orders_2(X0,X1,X2))) & (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2) | ! [X4] : (~r2_hidden(X2,X4) | ~r2_hidden(X1,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X4,X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v3_orders_2(X0)))),
% 1.28/0.99    inference(ennf_transformation,[],[f9])).
% 1.28/0.99  
% 1.28/0.99  fof(f18,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (! [X2] : (((? [X3] : (r2_hidden(X2,X3) & r2_hidden(X1,X3) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) & v6_orders_2(X3,X0)) | (~r1_orders_2(X0,X2,X1) & ~r1_orders_2(X0,X1,X2))) & (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2) | ! [X4] : (~r2_hidden(X2,X4) | ~r2_hidden(X1,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X4,X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0))),
% 1.28/0.99    inference(flattening,[],[f17])).
% 1.28/0.99  
% 1.28/0.99  fof(f22,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (! [X2] : ((sP0(X2,X1,X0) & (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2) | ! [X4] : (~r2_hidden(X2,X4) | ~r2_hidden(X1,X4) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X4,X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0))),
% 1.28/0.99    inference(definition_folding,[],[f18,f21])).
% 1.28/0.99  
% 1.28/0.99  fof(f27,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (! [X2] : ((sP0(X2,X1,X0) & (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2) | ! [X3] : (~r2_hidden(X2,X3) | ~r2_hidden(X1,X3) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X3,X0)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v3_orders_2(X0))),
% 1.28/0.99    inference(rectify,[],[f22])).
% 1.28/0.99  
% 1.28/0.99  fof(f45,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (sP0(X2,X1,X0) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f27])).
% 1.28/0.99  
% 1.28/0.99  fof(f3,axiom,(
% 1.28/0.99    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f11,plain,(
% 1.28/0.99    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 1.28/0.99    inference(ennf_transformation,[],[f3])).
% 1.28/0.99  
% 1.28/0.99  fof(f12,plain,(
% 1.28/0.99    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 1.28/0.99    inference(flattening,[],[f11])).
% 1.28/0.99  
% 1.28/0.99  fof(f33,plain,(
% 1.28/0.99    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f12])).
% 1.28/0.99  
% 1.28/0.99  fof(f1,axiom,(
% 1.28/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f31,plain,(
% 1.28/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f1])).
% 1.28/0.99  
% 1.28/0.99  fof(f52,plain,(
% 1.28/0.99    ( ! [X0,X1] : (k2_tarski(X1,X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.28/0.99    inference(definition_unfolding,[],[f33,f31])).
% 1.28/0.99  
% 1.28/0.99  fof(f2,axiom,(
% 1.28/0.99    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f10,plain,(
% 1.28/0.99    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 1.28/0.99    inference(ennf_transformation,[],[f2])).
% 1.28/0.99  
% 1.28/0.99  fof(f32,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f10])).
% 1.28/0.99  
% 1.28/0.99  fof(f40,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (r2_hidden(X1,sK1(X0,X1,X2)) | ~r1_orders_2(X2,X1,X0) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f51,plain,(
% 1.28/0.99    k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 | k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3),
% 1.28/0.99    inference(cnf_transformation,[],[f30])).
% 1.28/0.99  
% 1.28/0.99  fof(f41,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (r2_hidden(X1,sK1(X0,X1,X2)) | ~r1_orders_2(X2,X0,X1) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f39,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) | ~r1_orders_2(X2,X0,X1) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f44,plain,(
% 1.28/0.99    ( ! [X2,X0,X3,X1] : (r1_orders_2(X0,X2,X1) | r1_orders_2(X0,X1,X2) | ~r2_hidden(X2,X3) | ~r2_hidden(X1,X3) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v6_orders_2(X3,X0) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f27])).
% 1.28/0.99  
% 1.28/0.99  fof(f37,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (v6_orders_2(sK1(X0,X1,X2),X2) | ~r1_orders_2(X2,X0,X1) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f43,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (r2_hidden(X0,sK1(X0,X1,X2)) | ~r1_orders_2(X2,X0,X1) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f36,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (v6_orders_2(sK1(X0,X1,X2),X2) | ~r1_orders_2(X2,X1,X0) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f42,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (r2_hidden(X0,sK1(X0,X1,X2)) | ~r1_orders_2(X2,X1,X0) | ~sP0(X0,X1,X2)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f26])).
% 1.28/0.99  
% 1.28/0.99  fof(f5,axiom,(
% 1.28/0.99    ! [X0] : ((l1_orders_2(X0) & v5_orders_2(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => ((r1_orders_2(X0,X2,X1) & r1_orders_2(X0,X1,X2)) => X1 = X2))))),
% 1.28/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.28/0.99  
% 1.28/0.99  fof(f15,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (! [X2] : ((X1 = X2 | (~r1_orders_2(X0,X2,X1) | ~r1_orders_2(X0,X1,X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_orders_2(X0) | ~v5_orders_2(X0)))),
% 1.28/0.99    inference(ennf_transformation,[],[f5])).
% 1.28/0.99  
% 1.28/0.99  fof(f16,plain,(
% 1.28/0.99    ! [X0] : (! [X1] : (! [X2] : (X1 = X2 | ~r1_orders_2(X0,X2,X1) | ~r1_orders_2(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_orders_2(X0) | ~v5_orders_2(X0))),
% 1.28/0.99    inference(flattening,[],[f15])).
% 1.28/0.99  
% 1.28/0.99  fof(f35,plain,(
% 1.28/0.99    ( ! [X2,X0,X1] : (X1 = X2 | ~r1_orders_2(X0,X2,X1) | ~r1_orders_2(X0,X1,X2) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v5_orders_2(X0)) )),
% 1.28/0.99    inference(cnf_transformation,[],[f16])).
% 1.28/0.99  
% 1.28/0.99  fof(f48,plain,(
% 1.28/0.99    v5_orders_2(sK2)),
% 1.28/0.99    inference(cnf_transformation,[],[f30])).
% 1.28/0.99  
% 1.28/0.99  cnf(c_182,plain,
% 1.28/0.99      ( ~ v5_orders_2(X0) | v5_orders_2(X1) | X1 != X0 ),
% 1.28/0.99      theory(equality) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_181,plain,
% 1.28/0.99      ( ~ v2_struct_0(X0) | v2_struct_0(X1) | X1 != X0 ),
% 1.28/0.99      theory(equality) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_180,plain,
% 1.28/0.99      ( ~ v3_orders_2(X0) | v3_orders_2(X1) | X1 != X0 ),
% 1.28/0.99      theory(equality) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_179,plain,
% 1.28/0.99      ( ~ l1_orders_2(X0) | l1_orders_2(X1) | X1 != X0 ),
% 1.28/0.99      theory(equality) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_912,plain,( X0_2 = X0_2 ),theory(equality) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_15,negated_conjecture,
% 1.28/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_908,negated_conjecture,
% 1.28/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_15]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1185,plain,
% 1.28/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_908]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_2,plain,
% 1.28/0.99      ( r1_orders_2(X0,X1,X1)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.28/0.99      | v2_struct_0(X0)
% 1.28/0.99      | ~ v3_orders_2(X0)
% 1.28/0.99      | ~ l1_orders_2(X0) ),
% 1.28/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_19,negated_conjecture,
% 1.28/0.99      ( ~ v2_struct_0(sK2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_227,plain,
% 1.28/0.99      ( r1_orders_2(X0,X1,X1)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.28/0.99      | ~ v3_orders_2(X0)
% 1.28/0.99      | ~ l1_orders_2(X0)
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_19]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_228,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0,X0)
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ v3_orders_2(sK2)
% 1.28/0.99      | ~ l1_orders_2(sK2) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_227]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_18,negated_conjecture,
% 1.28/0.99      ( v3_orders_2(sK2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_16,negated_conjecture,
% 1.28/0.99      ( l1_orders_2(sK2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_232,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0,X0) | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(global_propositional_subsumption,
% 1.28/0.99                [status(thm)],
% 1.28/0.99                [c_228,c_18,c_16]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_907,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X0_48) | ~ m1_subset_1(X0_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_232]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1186,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X0_48) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_907]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1370,plain,
% 1.28/0.99      ( r1_orders_2(sK2,sK3,sK3) = iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1185,c_1186]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_9,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X1,X0)
% 1.28/0.99      | m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) ),
% 1.28/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_12,plain,
% 1.28/0.99      ( sP0(X0,X1,X2)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(X2))
% 1.28/0.99      | ~ v3_orders_2(X2)
% 1.28/0.99      | ~ l1_orders_2(X2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_281,plain,
% 1.28/0.99      ( sP0(X0,X1,X2)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(X2))
% 1.28/0.99      | ~ v3_orders_2(X2)
% 1.28/0.99      | sK2 != X2 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_16]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_282,plain,
% 1.28/0.99      ( sP0(X0,X1,sK2)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ v3_orders_2(sK2) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_281]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_286,plain,
% 1.28/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | sP0(X0,X1,sK2) ),
% 1.28/0.99      inference(global_propositional_subsumption,[status(thm)],[c_282,c_18]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_287,plain,
% 1.28/0.99      ( sP0(X0,X1,sK2)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(renaming,[status(thm)],[c_286]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_463,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | m1_subset_1(sK1(X2,X1,X0),k1_zfmisc_1(u1_struct_0(X0)))
% 1.28/0.99      | X3 != X1
% 1.28/0.99      | X4 != X2
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_464,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | m1_subset_1(sK1(X1,X0,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_463]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_902,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
% 1.28/0.99      | m1_subset_1(sK1(X1_48,X0_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_464]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1191,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(sK1(X1_48,X0_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_902]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1,plain,
% 1.28/0.99      ( ~ m1_subset_1(X0,X1)
% 1.28/0.99      | v1_xboole_0(X1)
% 1.28/0.99      | k6_domain_1(X1,X0) = k2_tarski(X0,X0) ),
% 1.28/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_910,plain,
% 1.28/0.99      ( ~ m1_subset_1(X0_48,X0_49)
% 1.28/0.99      | v1_xboole_0(X0_49)
% 1.28/0.99      | k6_domain_1(X0_49,X0_48) = k2_tarski(X0_48,X0_48) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1184,plain,
% 1.28/0.99      ( k6_domain_1(X0_49,X0_48) = k2_tarski(X0_48,X0_48)
% 1.28/0.99      | m1_subset_1(X0_48,X0_49) != iProver_top
% 1.28/0.99      | v1_xboole_0(X0_49) = iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_910]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1731,plain,
% 1.28/0.99      ( k2_tarski(sK1(X0_48,X1_48,sK2),sK1(X0_48,X1_48,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(X0_48,X1_48,sK2))
% 1.28/0.99      | r1_orders_2(sK2,X1_48,X0_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1191,c_1184]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_2098,plain,
% 1.28/0.99      ( k2_tarski(sK1(sK3,sK3,sK2),sK1(sK3,sK3,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(sK3,sK3,sK2))
% 1.28/0.99      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1370,c_1731]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_24,plain,
% 1.28/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_2288,plain,
% 1.28/0.99      ( k2_tarski(sK1(sK3,sK3,sK2),sK1(sK3,sK3,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(sK3,sK3,sK2))
% 1.28/0.99      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(global_propositional_subsumption,[status(thm)],[c_2098,c_24]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1517,plain,
% 1.28/0.99      ( k6_domain_1(u1_struct_0(sK2),sK3) = k2_tarski(sK3,sK3)
% 1.28/0.99      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1185,c_1184]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_0,plain,
% 1.28/0.99      ( ~ r2_hidden(X0,X1)
% 1.28/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 1.28/0.99      | ~ v1_xboole_0(X2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f32]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_911,plain,
% 1.28/0.99      ( ~ r2_hidden(X0_48,X1_48)
% 1.28/0.99      | ~ m1_subset_1(X1_48,k1_zfmisc_1(X0_49))
% 1.28/0.99      | ~ v1_xboole_0(X0_49) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_0]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1183,plain,
% 1.28/0.99      ( r2_hidden(X0_48,X1_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,k1_zfmisc_1(X0_49)) != iProver_top
% 1.28/0.99      | v1_xboole_0(X0_49) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_911]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1732,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1191,c_1183]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_939,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X0_48) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_907]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_941,plain,
% 1.28/0.99      ( r1_orders_2(sK2,sK3,sK3) = iProver_top
% 1.28/0.99      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(instantiation,[status(thm)],[c_939]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_950,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(sK1(X1_48,X0_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_902]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_952,plain,
% 1.28/0.99      ( r1_orders_2(sK2,sK3,sK3) != iProver_top
% 1.28/0.99      | m1_subset_1(sK1(sK3,sK3,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
% 1.28/0.99      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(instantiation,[status(thm)],[c_950]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_7,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X1,X0)
% 1.28/0.99      | r2_hidden(X1,sK1(X0,X1,X2)) ),
% 1.28/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_497,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | r2_hidden(X1,sK1(X2,X1,X0))
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | X3 != X1
% 1.28/0.99      | X4 != X2
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_498,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | r2_hidden(X0,sK1(X1,X0,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_497]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_900,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | r2_hidden(X0_48,sK1(X1_48,X0_48,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_498]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_954,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X0_48,sK1(X1_48,X0_48,sK2)) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_900]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_956,plain,
% 1.28/0.99      ( r1_orders_2(sK2,sK3,sK3) != iProver_top
% 1.28/0.99      | r2_hidden(sK3,sK1(sK3,sK3,sK2)) = iProver_top
% 1.28/0.99      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(instantiation,[status(thm)],[c_954]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1395,plain,
% 1.28/0.99      ( ~ r2_hidden(X0_48,X1_48)
% 1.28/0.99      | ~ m1_subset_1(X1_48,k1_zfmisc_1(u1_struct_0(sK2)))
% 1.28/0.99      | ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 1.28/0.99      inference(instantiation,[status(thm)],[c_911]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1579,plain,
% 1.28/0.99      ( ~ r2_hidden(X0_48,sK1(X1_48,X2_48,sK2))
% 1.28/0.99      | ~ m1_subset_1(sK1(X1_48,X2_48,sK2),k1_zfmisc_1(u1_struct_0(sK2)))
% 1.28/0.99      | ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 1.28/0.99      inference(instantiation,[status(thm)],[c_1395]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1580,plain,
% 1.28/0.99      ( r2_hidden(X0_48,sK1(X1_48,X2_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(sK1(X1_48,X2_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 1.28/0.99      | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_1579]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1582,plain,
% 1.28/0.99      ( r2_hidden(sK3,sK1(sK3,sK3,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(sK1(sK3,sK3,sK2),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 1.28/0.99      | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(instantiation,[status(thm)],[c_1580]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_2101,plain,
% 1.28/0.99      ( v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(global_propositional_subsumption,
% 1.28/0.99                [status(thm)],
% 1.28/0.99                [c_1732,c_24,c_941,c_952,c_956,c_1582]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_2106,plain,
% 1.28/0.99      ( k6_domain_1(u1_struct_0(sK2),sK3) = k2_tarski(sK3,sK3) ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1517,c_2101]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_14,negated_conjecture,
% 1.28/0.99      ( k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3
% 1.28/0.99      | k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 ),
% 1.28/0.99      inference(cnf_transformation,[],[f51]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_909,negated_conjecture,
% 1.28/0.99      ( k1_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3
% 1.28/0.99      | k2_yellow_0(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != sK3 ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_14]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_2217,plain,
% 1.28/0.99      ( k1_yellow_0(sK2,k2_tarski(sK3,sK3)) != sK3
% 1.28/0.99      | k2_yellow_0(sK2,k2_tarski(sK3,sK3)) != sK3 ),
% 1.28/0.99      inference(demodulation,[status(thm)],[c_2106,c_909]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_6,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X0,X1)
% 1.28/0.99      | r2_hidden(X1,sK1(X0,X1,X2)) ),
% 1.28/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_515,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | r2_hidden(X2,sK1(X1,X2,X0))
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | X3 != X2
% 1.28/0.99      | X4 != X1
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_516,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | r2_hidden(X1,sK1(X0,X1,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_515]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_899,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | r2_hidden(X1_48,sK1(X0_48,X1_48,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_516]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1194,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X1_48,sK1(X0_48,X1_48,sK2)) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_899]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_8,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X0,X1)
% 1.28/0.99      | m1_subset_1(sK1(X0,X1,X2),k1_zfmisc_1(u1_struct_0(X2))) ),
% 1.28/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_481,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | m1_subset_1(sK1(X1,X2,X0),k1_zfmisc_1(u1_struct_0(X0)))
% 1.28/0.99      | X3 != X2
% 1.28/0.99      | X4 != X1
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_482,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | m1_subset_1(sK1(X0,X1,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_481]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_901,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
% 1.28/0.99      | m1_subset_1(sK1(X0_48,X1_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_482]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1192,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(sK1(X0_48,X1_48,sK2),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_901]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_13,plain,
% 1.28/0.99      ( r1_orders_2(X0,X1,X2)
% 1.28/0.99      | r1_orders_2(X0,X2,X1)
% 1.28/0.99      | ~ v6_orders_2(X3,X0)
% 1.28/0.99      | ~ r2_hidden(X1,X3)
% 1.28/0.99      | ~ r2_hidden(X2,X3)
% 1.28/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.28/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
% 1.28/0.99      | ~ v3_orders_2(X0)
% 1.28/0.99      | ~ l1_orders_2(X0) ),
% 1.28/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_302,plain,
% 1.28/0.99      ( r1_orders_2(X0,X1,X2)
% 1.28/0.99      | r1_orders_2(X0,X2,X1)
% 1.28/0.99      | ~ v6_orders_2(X3,X0)
% 1.28/0.99      | ~ r2_hidden(X1,X3)
% 1.28/0.99      | ~ r2_hidden(X2,X3)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.28/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.28/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
% 1.28/0.99      | ~ v3_orders_2(X0)
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_16]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_303,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | r1_orders_2(sK2,X1,X0)
% 1.28/0.99      | ~ v6_orders_2(X2,sK2)
% 1.28/0.99      | ~ r2_hidden(X1,X2)
% 1.28/0.99      | ~ r2_hidden(X0,X2)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
% 1.28/0.99      | ~ v3_orders_2(sK2) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_302]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_307,plain,
% 1.28/0.99      ( ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ r2_hidden(X0,X2)
% 1.28/0.99      | ~ r2_hidden(X1,X2)
% 1.28/0.99      | ~ v6_orders_2(X2,sK2)
% 1.28/0.99      | r1_orders_2(sK2,X1,X0)
% 1.28/0.99      | r1_orders_2(sK2,X0,X1) ),
% 1.28/0.99      inference(global_propositional_subsumption,[status(thm)],[c_303,c_18]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_308,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | r1_orders_2(sK2,X1,X0)
% 1.28/0.99      | ~ v6_orders_2(X2,sK2)
% 1.28/0.99      | ~ r2_hidden(X0,X2)
% 1.28/0.99      | ~ r2_hidden(X1,X2)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.28/0.99      inference(renaming,[status(thm)],[c_307]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_905,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | r1_orders_2(sK2,X1_48,X0_48)
% 1.28/0.99      | ~ v6_orders_2(X2_48,sK2)
% 1.28/0.99      | ~ r2_hidden(X0_48,X2_48)
% 1.28/0.99      | ~ r2_hidden(X1_48,X2_48)
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X2_48,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_308]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1188,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X1_48,X0_48) = iProver_top
% 1.28/0.99      | v6_orders_2(X2_48,sK2) != iProver_top
% 1.28/0.99      | r2_hidden(X1_48,X2_48) != iProver_top
% 1.28/0.99      | r2_hidden(X0_48,X2_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_905]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1785,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
% 1.28/0.99      | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2) != iProver_top
% 1.28/0.99      | r2_hidden(X3_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1192,c_1188]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_10,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X0,X1)
% 1.28/0.99      | v6_orders_2(sK1(X0,X1,X2),X2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_447,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | v6_orders_2(sK1(X1,X2,X0),X0)
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | X3 != X2
% 1.28/0.99      | X4 != X1
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_448,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | v6_orders_2(sK1(X0,X1,sK2),sK2)
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_447]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_903,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2)
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_448]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_949,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_903]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1947,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X3_48,X2_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X3_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1785,c_949]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1948,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
% 1.28/0.99      | r2_hidden(X3_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(renaming,[status(thm)],[c_1947]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1962,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X1_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X1_48,X2_48) = iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1194,c_1948]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_4,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X0,X1)
% 1.28/0.99      | r2_hidden(X0,sK1(X0,X1,X2)) ),
% 1.28/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_547,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | r2_hidden(X1,sK1(X1,X2,X0))
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | X3 != X2
% 1.28/0.99      | X4 != X1
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_548,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | r2_hidden(X0,sK1(X0,X1,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_547]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_897,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | r2_hidden(X0_48,sK1(X0_48,X1_48,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_548]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1196,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X0_48,sK1(X0_48,X1_48,sK2)) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_897]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1960,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X0_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X0_48,X2_48) = iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X0_48,X1_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1196,c_1948]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1193,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X0_48,sK1(X1_48,X0_48,sK2)) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_900]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1730,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
% 1.28/0.99      | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2) != iProver_top
% 1.28/0.99      | r2_hidden(X3_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1191,c_1188]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_11,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X1,X0)
% 1.28/0.99      | v6_orders_2(sK1(X0,X1,X2),X2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_429,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | v6_orders_2(sK1(X2,X1,X0),X0)
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | X3 != X1
% 1.28/0.99      | X4 != X2
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_430,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | v6_orders_2(sK1(X1,X0,sK2),sK2)
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_429]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_904,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2)
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_430]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_946,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_904]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1899,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X3_48,X2_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X3_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1730,c_946]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1900,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X3_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X3_48,X2_48) = iProver_top
% 1.28/0.99      | r2_hidden(X3_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X3_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(renaming,[status(thm)],[c_1899]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1915,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X0_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X0_48,X2_48) = iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1193,c_1900]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_5,plain,
% 1.28/0.99      ( ~ sP0(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X2,X1,X0)
% 1.28/0.99      | r2_hidden(X0,sK1(X0,X1,X2)) ),
% 1.28/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_531,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | r2_hidden(X2,sK1(X2,X1,X0))
% 1.28/0.99      | ~ m1_subset_1(X3,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X4,u1_struct_0(sK2))
% 1.28/0.99      | X3 != X1
% 1.28/0.99      | X4 != X2
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_287]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_532,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | r2_hidden(X1,sK1(X1,X0,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_531]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_898,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | r2_hidden(X1_48,sK1(X1_48,X0_48,sK2))
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2)) ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_532]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1195,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r2_hidden(X1_48,sK1(X1_48,X0_48,sK2)) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_898]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1913,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X2_48,X1_48) = iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X1_48,X2_48) = iProver_top
% 1.28/0.99      | r2_hidden(X2_48,sK1(X1_48,X0_48,sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X2_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1195,c_1900]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1786,plain,
% 1.28/0.99      ( k2_tarski(sK1(X0_48,X1_48,sK2),sK1(X0_48,X1_48,sK2)) = k6_domain_1(k1_zfmisc_1(u1_struct_0(sK2)),sK1(X0_48,X1_48,sK2))
% 1.28/0.99      | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1192,c_1184]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_3,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X0,X2,X1)
% 1.28/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.28/0.99      | ~ v5_orders_2(X0)
% 1.28/0.99      | ~ l1_orders_2(X0)
% 1.28/0.99      | X2 = X1 ),
% 1.28/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_17,negated_conjecture,
% 1.28/0.99      ( v5_orders_2(sK2) ),
% 1.28/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_248,plain,
% 1.28/0.99      ( ~ r1_orders_2(X0,X1,X2)
% 1.28/0.99      | ~ r1_orders_2(X0,X2,X1)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.28/0.99      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 1.28/0.99      | ~ l1_orders_2(X0)
% 1.28/0.99      | X2 = X1
% 1.28/0.99      | sK2 != X0 ),
% 1.28/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_17]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_249,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | ~ r1_orders_2(sK2,X1,X0)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ l1_orders_2(sK2)
% 1.28/0.99      | X0 = X1 ),
% 1.28/0.99      inference(unflattening,[status(thm)],[c_248]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_253,plain,
% 1.28/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ r1_orders_2(sK2,X1,X0)
% 1.28/0.99      | ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | X0 = X1 ),
% 1.28/0.99      inference(global_propositional_subsumption,[status(thm)],[c_249,c_16]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_254,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0,X1)
% 1.28/0.99      | ~ r1_orders_2(sK2,X1,X0)
% 1.28/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 1.28/0.99      | X0 = X1 ),
% 1.28/0.99      inference(renaming,[status(thm)],[c_253]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_906,plain,
% 1.28/0.99      ( ~ r1_orders_2(sK2,X0_48,X1_48)
% 1.28/0.99      | ~ r1_orders_2(sK2,X1_48,X0_48)
% 1.28/0.99      | ~ m1_subset_1(X0_48,u1_struct_0(sK2))
% 1.28/0.99      | ~ m1_subset_1(X1_48,u1_struct_0(sK2))
% 1.28/0.99      | X0_48 = X1_48 ),
% 1.28/0.99      inference(subtyping,[status(esa)],[c_254]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1187,plain,
% 1.28/0.99      ( X0_48 = X1_48
% 1.28/0.99      | r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,X1_48,X0_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_906]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1421,plain,
% 1.28/0.99      ( sK3 = X0_48
% 1.28/0.99      | r1_orders_2(sK2,X0_48,sK3) != iProver_top
% 1.28/0.99      | r1_orders_2(sK2,sK3,X0_48) != iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(superposition,[status(thm)],[c_1185,c_1187]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1190,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | v6_orders_2(sK1(X0_48,X1_48,sK2),sK2) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_903]) ).
% 1.28/0.99  
% 1.28/0.99  cnf(c_1189,plain,
% 1.28/0.99      ( r1_orders_2(sK2,X0_48,X1_48) != iProver_top
% 1.28/0.99      | v6_orders_2(sK1(X1_48,X0_48,sK2),sK2) = iProver_top
% 1.28/0.99      | m1_subset_1(X0_48,u1_struct_0(sK2)) != iProver_top
% 1.28/0.99      | m1_subset_1(X1_48,u1_struct_0(sK2)) != iProver_top ),
% 1.28/0.99      inference(predicate_to_equality,[status(thm)],[c_904]) ).
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  % SZS output end Saturation for theBenchmark.p
% 1.28/0.99  
% 1.28/0.99  ------                               Statistics
% 1.28/0.99  
% 1.28/0.99  ------ General
% 1.28/0.99  
% 1.28/0.99  abstr_ref_over_cycles:                  0
% 1.28/0.99  abstr_ref_under_cycles:                 0
% 1.28/0.99  gc_basic_clause_elim:                   0
% 1.28/0.99  forced_gc_time:                         0
% 1.28/0.99  parsing_time:                           0.008
% 1.28/0.99  unif_index_cands_time:                  0.
% 1.28/0.99  unif_index_add_time:                    0.
% 1.28/0.99  orderings_time:                         0.
% 1.28/0.99  out_proof_time:                         0.
% 1.28/0.99  total_time:                             0.122
% 1.28/0.99  num_of_symbols:                         51
% 1.28/0.99  num_of_terms:                           1520
% 1.28/0.99  
% 1.28/0.99  ------ Preprocessing
% 1.28/0.99  
% 1.28/0.99  num_of_splits:                          0
% 1.28/0.99  num_of_split_atoms:                     0
% 1.28/0.99  num_of_reused_defs:                     0
% 1.28/0.99  num_eq_ax_congr_red:                    39
% 1.28/0.99  num_of_sem_filtered_clauses:            1
% 1.28/0.99  num_of_subtypes:                        4
% 1.28/0.99  monotx_restored_types:                  0
% 1.28/0.99  sat_num_of_epr_types:                   0
% 1.28/0.99  sat_num_of_non_cyclic_types:            0
% 1.28/0.99  sat_guarded_non_collapsed_types:        1
% 1.28/0.99  num_pure_diseq_elim:                    0
% 1.28/0.99  simp_replaced_by:                       0
% 1.28/0.99  res_preprocessed:                       86
% 1.28/0.99  prep_upred:                             0
% 1.28/0.99  prep_unflattend:                        38
% 1.28/0.99  smt_new_axioms:                         0
% 1.28/0.99  pred_elim_cands:                        5
% 1.28/0.99  pred_elim:                              5
% 1.28/0.99  pred_elim_cl:                           5
% 1.28/0.99  pred_elim_cycles:                       10
% 1.28/0.99  merged_defs:                            0
% 1.28/0.99  merged_defs_ncl:                        0
% 1.28/0.99  bin_hyper_res:                          0
% 1.28/0.99  prep_cycles:                            4
% 1.28/0.99  pred_elim_time:                         0.013
% 1.28/0.99  splitting_time:                         0.
% 1.28/0.99  sem_filter_time:                        0.
% 1.28/0.99  monotx_time:                            0.
% 1.28/0.99  subtype_inf_time:                       0.
% 1.28/0.99  
% 1.28/0.99  ------ Problem properties
% 1.28/0.99  
% 1.28/0.99  clauses:                                15
% 1.28/0.99  conjectures:                            2
% 1.28/0.99  epr:                                    0
% 1.28/0.99  horn:                                   13
% 1.28/0.99  ground:                                 2
% 1.28/0.99  unary:                                  1
% 1.28/0.99  binary:                                 2
% 1.28/0.99  lits:                                   56
% 1.28/0.99  lits_eq:                                4
% 1.28/0.99  fd_pure:                                0
% 1.28/0.99  fd_pseudo:                              0
% 1.28/0.99  fd_cond:                                0
% 1.28/0.99  fd_pseudo_cond:                         1
% 1.28/0.99  ac_symbols:                             0
% 1.28/0.99  
% 1.28/0.99  ------ Propositional Solver
% 1.28/0.99  
% 1.28/0.99  prop_solver_calls:                      28
% 1.28/0.99  prop_fast_solver_calls:                 892
% 1.28/0.99  smt_solver_calls:                       0
% 1.28/0.99  smt_fast_solver_calls:                  0
% 1.28/0.99  prop_num_of_clauses:                    482
% 1.28/0.99  prop_preprocess_simplified:             2883
% 1.28/0.99  prop_fo_subsumed:                       20
% 1.28/0.99  prop_solver_time:                       0.
% 1.28/0.99  smt_solver_time:                        0.
% 1.28/0.99  smt_fast_solver_time:                   0.
% 1.28/0.99  prop_fast_solver_time:                  0.
% 1.28/0.99  prop_unsat_core_time:                   0.
% 1.28/0.99  
% 1.28/0.99  ------ QBF
% 1.28/0.99  
% 1.28/0.99  qbf_q_res:                              0
% 1.28/0.99  qbf_num_tautologies:                    0
% 1.28/0.99  qbf_prep_cycles:                        0
% 1.28/0.99  
% 1.28/0.99  ------ BMC1
% 1.28/0.99  
% 1.28/0.99  bmc1_current_bound:                     -1
% 1.28/0.99  bmc1_last_solved_bound:                 -1
% 1.28/0.99  bmc1_unsat_core_size:                   -1
% 1.28/0.99  bmc1_unsat_core_parents_size:           -1
% 1.28/0.99  bmc1_merge_next_fun:                    0
% 1.28/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.28/0.99  
% 1.28/0.99  ------ Instantiation
% 1.28/0.99  
% 1.28/0.99  inst_num_of_clauses:                    173
% 1.28/0.99  inst_num_in_passive:                    21
% 1.28/0.99  inst_num_in_active:                     145
% 1.28/0.99  inst_num_in_unprocessed:                7
% 1.28/0.99  inst_num_of_loops:                      160
% 1.28/0.99  inst_num_of_learning_restarts:          0
% 1.28/0.99  inst_num_moves_active_passive:          9
% 1.28/0.99  inst_lit_activity:                      0
% 1.28/0.99  inst_lit_activity_moves:                0
% 1.28/0.99  inst_num_tautologies:                   0
% 1.28/0.99  inst_num_prop_implied:                  0
% 1.28/0.99  inst_num_existing_simplified:           0
% 1.28/0.99  inst_num_eq_res_simplified:             0
% 1.28/0.99  inst_num_child_elim:                    0
% 1.28/0.99  inst_num_of_dismatching_blockings:      118
% 1.28/0.99  inst_num_of_non_proper_insts:           338
% 1.28/0.99  inst_num_of_duplicates:                 0
% 1.28/0.99  inst_inst_num_from_inst_to_res:         0
% 1.28/0.99  inst_dismatching_checking_time:         0.
% 1.28/0.99  
% 1.28/0.99  ------ Resolution
% 1.28/0.99  
% 1.28/0.99  res_num_of_clauses:                     0
% 1.28/0.99  res_num_in_passive:                     0
% 1.28/0.99  res_num_in_active:                      0
% 1.28/0.99  res_num_of_loops:                       90
% 1.28/0.99  res_forward_subset_subsumed:            76
% 1.28/0.99  res_backward_subset_subsumed:           0
% 1.28/0.99  res_forward_subsumed:                   0
% 1.28/0.99  res_backward_subsumed:                  0
% 1.28/0.99  res_forward_subsumption_resolution:     2
% 1.28/0.99  res_backward_subsumption_resolution:    0
% 1.28/0.99  res_clause_to_clause_subsumption:       385
% 1.28/0.99  res_orphan_elimination:                 0
% 1.28/0.99  res_tautology_del:                      94
% 1.28/0.99  res_num_eq_res_simplified:              0
% 1.28/0.99  res_num_sel_changes:                    0
% 1.28/0.99  res_moves_from_active_to_pass:          0
% 1.28/0.99  
% 1.28/0.99  ------ Superposition
% 1.28/0.99  
% 1.28/0.99  sup_time_total:                         0.
% 1.28/0.99  sup_time_generating:                    0.
% 1.28/0.99  sup_time_sim_full:                      0.
% 1.28/0.99  sup_time_sim_immed:                     0.
% 1.28/0.99  
% 1.28/0.99  sup_num_of_clauses:                     29
% 1.28/0.99  sup_num_in_active:                      28
% 1.28/0.99  sup_num_in_passive:                     1
% 1.28/0.99  sup_num_of_loops:                       30
% 1.28/0.99  sup_fw_superposition:                   31
% 1.28/0.99  sup_bw_superposition:                   6
% 1.28/0.99  sup_immediate_simplified:               8
% 1.28/0.99  sup_given_eliminated:                   0
% 1.28/0.99  comparisons_done:                       0
% 1.28/0.99  comparisons_avoided:                    0
% 1.28/0.99  
% 1.28/0.99  ------ Simplifications
% 1.28/0.99  
% 1.28/0.99  
% 1.28/0.99  sim_fw_subset_subsumed:                 2
% 1.28/0.99  sim_bw_subset_subsumed:                 1
% 1.28/0.99  sim_fw_subsumed:                        4
% 1.28/0.99  sim_bw_subsumed:                        2
% 1.28/0.99  sim_fw_subsumption_res:                 0
% 1.28/0.99  sim_bw_subsumption_res:                 0
% 1.28/0.99  sim_tautology_del:                      8
% 1.28/0.99  sim_eq_tautology_del:                   1
% 1.28/0.99  sim_eq_res_simp:                        0
% 1.28/0.99  sim_fw_demodulated:                     0
% 1.28/0.99  sim_bw_demodulated:                     1
% 1.28/0.99  sim_light_normalised:                   0
% 1.28/0.99  sim_joinable_taut:                      0
% 1.28/0.99  sim_joinable_simp:                      0
% 1.28/0.99  sim_ac_normalised:                      0
% 1.28/0.99  sim_smt_subsumption:                    0
% 1.28/0.99  
%------------------------------------------------------------------------------
