%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:27:34 EST 2020

% Result     : Theorem 2.52s
% Output     : CNFRefutation 2.52s
% Verified   : 
% Statistics : Number of formulae       :  139 ( 386 expanded)
%              Number of clauses        :   85 ( 121 expanded)
%              Number of leaves         :   17 ( 112 expanded)
%              Depth                    :   14
%              Number of atoms          :  437 (2069 expanded)
%              Number of equality atoms :   88 ( 317 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) )
     => m1_subset_1(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f17])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X0,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f42,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f10,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v3_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
                | r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v3_tdlat_3(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
                  | r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) ) ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f28,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
              & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v3_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
              & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & v3_tdlat_3(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
          & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1))
        & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)))
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
              & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK2)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
            & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK2)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
            & m1_subset_1(X2,u1_struct_0(X0)) )
        & m1_subset_1(sK2,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
                & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
                & m1_subset_1(X2,u1_struct_0(X0)) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_pre_topc(X0)
        & v3_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X2))
              & ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X2)))
              & m1_subset_1(X2,u1_struct_0(sK1)) )
          & m1_subset_1(X1,u1_struct_0(sK1)) )
      & l1_pre_topc(sK1)
      & v3_tdlat_3(sK1)
      & v2_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))
    & ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
    & m1_subset_1(sK3,u1_struct_0(sK1))
    & m1_subset_1(sK2,u1_struct_0(sK1))
    & l1_pre_topc(sK1)
    & v3_tdlat_3(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f29,f34,f33,f32])).

fof(f50,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f35])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v3_tdlat_3(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
             => ( r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
               => k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
              | ~ r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
              | ~ r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
              | ~ m1_subset_1(X2,u1_struct_0(X0)) )
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
      | ~ r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f49,plain,(
    v3_tdlat_3(sK1) ),
    inference(cnf_transformation,[],[f35])).

fof(f47,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f35])).

fof(f48,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f35])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f1])).

fof(f13,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f30,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f13,f30])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f37,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f39,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f16,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f15])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f6,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f43,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f23,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f44,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f54,plain,(
    k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(cnf_transformation,[],[f35])).

fof(f53,plain,(
    ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))) ),
    inference(cnf_transformation,[],[f35])).

fof(f52,plain,(
    m1_subset_1(sK3,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f35])).

fof(f51,plain,(
    m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_508,plain,
    ( X0_46 != X1_46
    | X2_46 != X1_46
    | X2_46 = X0_46 ),
    theory(equality)).

cnf(c_873,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X0_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X0_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_508])).

cnf(c_957,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,X0_46)
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,X0_46)
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_5799,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_957])).

cnf(c_5,plain,
    ( m1_subset_1(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_501,plain,
    ( m1_subset_1(X0_46,X1_46)
    | ~ m1_subset_1(X2_46,k1_zfmisc_1(X1_46))
    | ~ r2_hidden(X0_46,X2_46) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_1895,plain,
    ( ~ m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k1_zfmisc_1(X0_46))
    | m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),X0_46)
    | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_501])).

cnf(c_3728,plain,
    ( ~ m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),u1_struct_0(sK1))
    | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_1895])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_15,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_262,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_15])).

cnf(c_263,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(k2_pre_topc(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(unflattening,[status(thm)],[c_262])).

cnf(c_495,plain,
    ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(k2_pre_topc(sK1,X0_46),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(subtyping,[status(esa)],[c_263])).

cnf(c_2957,plain,
    ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0_46)),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_495])).

cnf(c_2959,plain,
    ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_2957])).

cnf(c_1169,plain,
    ( X0_46 != X1_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X1_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = X0_46 ),
    inference(instantiation,[status(thm)],[c_508])).

cnf(c_1442,plain,
    ( X0_46 != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = X0_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_1169])).

cnf(c_2611,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_1442])).

cnf(c_956,plain,
    ( X0_46 != X1_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X1_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = X0_46 ),
    inference(instantiation,[status(thm)],[c_508])).

cnf(c_1214,plain,
    ( X0_46 != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = X0_46
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_956])).

cnf(c_2604,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_1214])).

cnf(c_512,plain,
    ( ~ m1_subset_1(X0_46,X1_46)
    | m1_subset_1(X2_46,X3_46)
    | X2_46 != X0_46
    | X3_46 != X1_46 ),
    theory(equality)).

cnf(c_1087,plain,
    ( m1_subset_1(X0_46,X1_46)
    | ~ m1_subset_1(k1_tarski(X2_46),k1_zfmisc_1(u1_struct_0(sK1)))
    | X1_46 != k1_zfmisc_1(u1_struct_0(sK1))
    | X0_46 != k1_tarski(X2_46) ),
    inference(instantiation,[status(thm)],[c_512])).

cnf(c_1741,plain,
    ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k1_tarski(X1_46),k1_zfmisc_1(u1_struct_0(sK1)))
    | X0_46 != k1_tarski(X1_46)
    | k1_zfmisc_1(u1_struct_0(sK1)) != k1_zfmisc_1(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1087])).

cnf(c_2584,plain,
    ( m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k1_tarski(X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
    | k6_domain_1(u1_struct_0(sK1),X0_46) != k1_tarski(X0_46)
    | k1_zfmisc_1(u1_struct_0(sK1)) != k1_zfmisc_1(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_1741])).

cnf(c_2586,plain,
    ( m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(k1_tarski(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | k6_domain_1(u1_struct_0(sK1),sK2) != k1_tarski(sK2)
    | k1_zfmisc_1(u1_struct_0(sK1)) != k1_zfmisc_1(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_2584])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
    | ~ v2_pre_topc(X1)
    | ~ v3_tdlat_3(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_16,negated_conjecture,
    ( v3_tdlat_3(sK1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_220,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0))
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_16])).

cnf(c_221,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ r2_hidden(X0,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)))
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK1)
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) ),
    inference(unflattening,[status(thm)],[c_220])).

cnf(c_18,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_17,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_225,plain,
    ( ~ r2_hidden(X0,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_221,c_18,c_17,c_15])).

cnf(c_226,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ r2_hidden(X0,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) ),
    inference(renaming,[status(thm)],[c_225])).

cnf(c_496,plain,
    ( ~ m1_subset_1(X0_46,u1_struct_0(sK1))
    | ~ m1_subset_1(X1_46,u1_struct_0(sK1))
    | ~ r2_hidden(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1_46)))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0_46)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1_46)) ),
    inference(subtyping,[status(esa)],[c_226])).

cnf(c_1892,plain,
    ( ~ m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),u1_struct_0(sK1))
    | ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_496])).

cnf(c_1868,plain,
    ( ~ m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),u1_struct_0(sK1))
    | ~ m1_subset_1(sK3,u1_struct_0(sK1))
    | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_496])).

cnf(c_2,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_503,plain,
    ( r2_hidden(sK0(X0_46,X1_46),X0_46)
    | r1_xboole_0(X0_46,X1_46) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1004,plain,
    ( r2_hidden(sK0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),X0_46)
    | r1_xboole_0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_503])).

cnf(c_1525,plain,
    ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
    | r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_1004])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X1)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_504,plain,
    ( r2_hidden(sK0(X0_46,X1_46),X1_46)
    | r1_xboole_0(X0_46,X1_46) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1003,plain,
    ( r2_hidden(sK0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
    | r1_xboole_0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_504])).

cnf(c_1526,plain,
    ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
    | r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_1003])).

cnf(c_507,plain,
    ( X0_46 = X0_46 ),
    theory(equality)).

cnf(c_1479,plain,
    ( k1_zfmisc_1(u1_struct_0(sK1)) = k1_zfmisc_1(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_507])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | ~ r1_xboole_0(X2,X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_505,plain,
    ( ~ r2_hidden(X0_46,X1_46)
    | ~ r2_hidden(X0_46,X2_46)
    | ~ r1_xboole_0(X2_46,X1_46) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_909,plain,
    ( ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),X0_46)
    | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
    | ~ r1_xboole_0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_505])).

cnf(c_1252,plain,
    ( ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
    | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
    | ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(instantiation,[status(thm)],[c_909])).

cnf(c_1044,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
    inference(instantiation,[status(thm)],[c_507])).

cnf(c_976,plain,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(instantiation,[status(thm)],[c_507])).

cnf(c_3,plain,
    ( m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_502,plain,
    ( m1_subset_1(k1_tarski(X0_46),k1_zfmisc_1(X1_46))
    | ~ r2_hidden(X0_46,X1_46) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_849,plain,
    ( m1_subset_1(k1_tarski(X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(X0_46,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_502])).

cnf(c_851,plain,
    ( m1_subset_1(k1_tarski(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ r2_hidden(sK2,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_849])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_7,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_8,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_202,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_7,c_8])).

cnf(c_249,plain,
    ( ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_202,c_18])).

cnf(c_250,plain,
    ( ~ l1_pre_topc(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_249])).

cnf(c_33,plain,
    ( v2_struct_0(sK1)
    | ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_36,plain,
    ( l1_struct_0(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_252,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_250,c_18,c_15,c_33,c_36])).

cnf(c_289,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | u1_struct_0(sK1) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_252])).

cnf(c_290,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | r2_hidden(X0,u1_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_289])).

cnf(c_493,plain,
    ( ~ m1_subset_1(X0_46,u1_struct_0(sK1))
    | r2_hidden(X0_46,u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_290])).

cnf(c_549,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | r2_hidden(sK2,u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_493])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_277,plain,
    ( ~ m1_subset_1(X0,X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0)
    | u1_struct_0(sK1) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_252])).

cnf(c_278,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | k6_domain_1(u1_struct_0(sK1),X0) = k1_tarski(X0) ),
    inference(unflattening,[status(thm)],[c_277])).

cnf(c_494,plain,
    ( ~ m1_subset_1(X0_46,u1_struct_0(sK1))
    | k6_domain_1(u1_struct_0(sK1),X0_46) = k1_tarski(X0_46) ),
    inference(subtyping,[status(esa)],[c_278])).

cnf(c_546,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | k6_domain_1(u1_struct_0(sK1),sK2) = k1_tarski(sK2) ),
    inference(instantiation,[status(thm)],[c_494])).

cnf(c_11,negated_conjecture,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_500,negated_conjecture,
    ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_12,negated_conjecture,
    ( ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_342,plain,
    ( r2_hidden(sK0(X0,X1),X1)
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X1
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_12])).

cnf(c_343,plain,
    ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))) ),
    inference(unflattening,[status(thm)],[c_342])).

cnf(c_335,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X1
    | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_12])).

cnf(c_336,plain,
    ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
    inference(unflattening,[status(thm)],[c_335])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5799,c_3728,c_2959,c_2611,c_2604,c_2586,c_1892,c_1868,c_1525,c_1526,c_1479,c_1252,c_1044,c_976,c_851,c_549,c_546,c_500,c_343,c_336,c_13,c_14])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 12:47:11 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 2.52/1.02  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.52/1.02  
% 2.52/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.52/1.02  
% 2.52/1.02  ------  iProver source info
% 2.52/1.02  
% 2.52/1.02  git: date: 2020-06-30 10:37:57 +0100
% 2.52/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.52/1.02  git: non_committed_changes: false
% 2.52/1.02  git: last_make_outside_of_git: false
% 2.52/1.02  
% 2.52/1.02  ------ 
% 2.52/1.02  
% 2.52/1.02  ------ Input Options
% 2.52/1.02  
% 2.52/1.02  --out_options                           all
% 2.52/1.02  --tptp_safe_out                         true
% 2.52/1.02  --problem_path                          ""
% 2.52/1.02  --include_path                          ""
% 2.52/1.02  --clausifier                            res/vclausify_rel
% 2.52/1.02  --clausifier_options                    --mode clausify
% 2.52/1.02  --stdin                                 false
% 2.52/1.02  --stats_out                             all
% 2.52/1.02  
% 2.52/1.02  ------ General Options
% 2.52/1.02  
% 2.52/1.02  --fof                                   false
% 2.52/1.02  --time_out_real                         305.
% 2.52/1.02  --time_out_virtual                      -1.
% 2.52/1.02  --symbol_type_check                     false
% 2.52/1.02  --clausify_out                          false
% 2.52/1.02  --sig_cnt_out                           false
% 2.52/1.02  --trig_cnt_out                          false
% 2.52/1.02  --trig_cnt_out_tolerance                1.
% 2.52/1.02  --trig_cnt_out_sk_spl                   false
% 2.52/1.02  --abstr_cl_out                          false
% 2.52/1.02  
% 2.52/1.02  ------ Global Options
% 2.52/1.02  
% 2.52/1.02  --schedule                              default
% 2.52/1.02  --add_important_lit                     false
% 2.52/1.02  --prop_solver_per_cl                    1000
% 2.52/1.02  --min_unsat_core                        false
% 2.52/1.02  --soft_assumptions                      false
% 2.52/1.02  --soft_lemma_size                       3
% 2.52/1.02  --prop_impl_unit_size                   0
% 2.52/1.02  --prop_impl_unit                        []
% 2.52/1.02  --share_sel_clauses                     true
% 2.52/1.02  --reset_solvers                         false
% 2.52/1.02  --bc_imp_inh                            [conj_cone]
% 2.52/1.02  --conj_cone_tolerance                   3.
% 2.52/1.02  --extra_neg_conj                        none
% 2.52/1.02  --large_theory_mode                     true
% 2.52/1.02  --prolific_symb_bound                   200
% 2.52/1.02  --lt_threshold                          2000
% 2.52/1.02  --clause_weak_htbl                      true
% 2.52/1.02  --gc_record_bc_elim                     false
% 2.52/1.02  
% 2.52/1.02  ------ Preprocessing Options
% 2.52/1.02  
% 2.52/1.02  --preprocessing_flag                    true
% 2.52/1.02  --time_out_prep_mult                    0.1
% 2.52/1.02  --splitting_mode                        input
% 2.52/1.02  --splitting_grd                         true
% 2.52/1.02  --splitting_cvd                         false
% 2.52/1.02  --splitting_cvd_svl                     false
% 2.52/1.02  --splitting_nvd                         32
% 2.52/1.02  --sub_typing                            true
% 2.52/1.02  --prep_gs_sim                           true
% 2.52/1.02  --prep_unflatten                        true
% 2.52/1.02  --prep_res_sim                          true
% 2.52/1.02  --prep_upred                            true
% 2.52/1.02  --prep_sem_filter                       exhaustive
% 2.52/1.02  --prep_sem_filter_out                   false
% 2.52/1.02  --pred_elim                             true
% 2.52/1.02  --res_sim_input                         true
% 2.52/1.02  --eq_ax_congr_red                       true
% 2.52/1.02  --pure_diseq_elim                       true
% 2.52/1.02  --brand_transform                       false
% 2.52/1.02  --non_eq_to_eq                          false
% 2.52/1.02  --prep_def_merge                        true
% 2.52/1.02  --prep_def_merge_prop_impl              false
% 2.52/1.02  --prep_def_merge_mbd                    true
% 2.52/1.02  --prep_def_merge_tr_red                 false
% 2.52/1.02  --prep_def_merge_tr_cl                  false
% 2.52/1.02  --smt_preprocessing                     true
% 2.52/1.02  --smt_ac_axioms                         fast
% 2.52/1.02  --preprocessed_out                      false
% 2.52/1.02  --preprocessed_stats                    false
% 2.52/1.02  
% 2.52/1.02  ------ Abstraction refinement Options
% 2.52/1.02  
% 2.52/1.02  --abstr_ref                             []
% 2.52/1.02  --abstr_ref_prep                        false
% 2.52/1.02  --abstr_ref_until_sat                   false
% 2.52/1.02  --abstr_ref_sig_restrict                funpre
% 2.52/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.52/1.02  --abstr_ref_under                       []
% 2.52/1.02  
% 2.52/1.02  ------ SAT Options
% 2.52/1.02  
% 2.52/1.02  --sat_mode                              false
% 2.52/1.02  --sat_fm_restart_options                ""
% 2.52/1.02  --sat_gr_def                            false
% 2.52/1.02  --sat_epr_types                         true
% 2.52/1.02  --sat_non_cyclic_types                  false
% 2.52/1.02  --sat_finite_models                     false
% 2.52/1.02  --sat_fm_lemmas                         false
% 2.52/1.02  --sat_fm_prep                           false
% 2.52/1.02  --sat_fm_uc_incr                        true
% 2.52/1.02  --sat_out_model                         small
% 2.52/1.02  --sat_out_clauses                       false
% 2.52/1.02  
% 2.52/1.02  ------ QBF Options
% 2.52/1.02  
% 2.52/1.02  --qbf_mode                              false
% 2.52/1.02  --qbf_elim_univ                         false
% 2.52/1.02  --qbf_dom_inst                          none
% 2.52/1.02  --qbf_dom_pre_inst                      false
% 2.52/1.02  --qbf_sk_in                             false
% 2.52/1.02  --qbf_pred_elim                         true
% 2.52/1.02  --qbf_split                             512
% 2.52/1.02  
% 2.52/1.02  ------ BMC1 Options
% 2.52/1.02  
% 2.52/1.02  --bmc1_incremental                      false
% 2.52/1.02  --bmc1_axioms                           reachable_all
% 2.52/1.02  --bmc1_min_bound                        0
% 2.52/1.02  --bmc1_max_bound                        -1
% 2.52/1.02  --bmc1_max_bound_default                -1
% 2.52/1.02  --bmc1_symbol_reachability              true
% 2.52/1.02  --bmc1_property_lemmas                  false
% 2.52/1.02  --bmc1_k_induction                      false
% 2.52/1.02  --bmc1_non_equiv_states                 false
% 2.52/1.02  --bmc1_deadlock                         false
% 2.52/1.02  --bmc1_ucm                              false
% 2.52/1.02  --bmc1_add_unsat_core                   none
% 2.52/1.02  --bmc1_unsat_core_children              false
% 2.52/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.52/1.02  --bmc1_out_stat                         full
% 2.52/1.02  --bmc1_ground_init                      false
% 2.52/1.02  --bmc1_pre_inst_next_state              false
% 2.52/1.02  --bmc1_pre_inst_state                   false
% 2.52/1.02  --bmc1_pre_inst_reach_state             false
% 2.52/1.02  --bmc1_out_unsat_core                   false
% 2.52/1.02  --bmc1_aig_witness_out                  false
% 2.52/1.02  --bmc1_verbose                          false
% 2.52/1.02  --bmc1_dump_clauses_tptp                false
% 2.52/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.52/1.02  --bmc1_dump_file                        -
% 2.52/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.52/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.52/1.02  --bmc1_ucm_extend_mode                  1
% 2.52/1.02  --bmc1_ucm_init_mode                    2
% 2.52/1.02  --bmc1_ucm_cone_mode                    none
% 2.52/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.52/1.02  --bmc1_ucm_relax_model                  4
% 2.52/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.52/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.52/1.02  --bmc1_ucm_layered_model                none
% 2.52/1.02  --bmc1_ucm_max_lemma_size               10
% 2.52/1.02  
% 2.52/1.02  ------ AIG Options
% 2.52/1.02  
% 2.52/1.02  --aig_mode                              false
% 2.52/1.02  
% 2.52/1.02  ------ Instantiation Options
% 2.52/1.02  
% 2.52/1.02  --instantiation_flag                    true
% 2.52/1.02  --inst_sos_flag                         false
% 2.52/1.02  --inst_sos_phase                        true
% 2.52/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.52/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.52/1.02  --inst_lit_sel_side                     num_symb
% 2.52/1.02  --inst_solver_per_active                1400
% 2.52/1.02  --inst_solver_calls_frac                1.
% 2.52/1.02  --inst_passive_queue_type               priority_queues
% 2.52/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.52/1.02  --inst_passive_queues_freq              [25;2]
% 2.52/1.02  --inst_dismatching                      true
% 2.52/1.02  --inst_eager_unprocessed_to_passive     true
% 2.52/1.02  --inst_prop_sim_given                   true
% 2.52/1.02  --inst_prop_sim_new                     false
% 2.52/1.02  --inst_subs_new                         false
% 2.52/1.02  --inst_eq_res_simp                      false
% 2.52/1.02  --inst_subs_given                       false
% 2.52/1.02  --inst_orphan_elimination               true
% 2.52/1.02  --inst_learning_loop_flag               true
% 2.52/1.02  --inst_learning_start                   3000
% 2.52/1.02  --inst_learning_factor                  2
% 2.52/1.02  --inst_start_prop_sim_after_learn       3
% 2.52/1.02  --inst_sel_renew                        solver
% 2.52/1.02  --inst_lit_activity_flag                true
% 2.52/1.02  --inst_restr_to_given                   false
% 2.52/1.02  --inst_activity_threshold               500
% 2.52/1.02  --inst_out_proof                        true
% 2.52/1.02  
% 2.52/1.02  ------ Resolution Options
% 2.52/1.02  
% 2.52/1.02  --resolution_flag                       true
% 2.52/1.02  --res_lit_sel                           adaptive
% 2.52/1.02  --res_lit_sel_side                      none
% 2.52/1.02  --res_ordering                          kbo
% 2.52/1.02  --res_to_prop_solver                    active
% 2.52/1.02  --res_prop_simpl_new                    false
% 2.52/1.02  --res_prop_simpl_given                  true
% 2.52/1.02  --res_passive_queue_type                priority_queues
% 2.52/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.52/1.02  --res_passive_queues_freq               [15;5]
% 2.52/1.02  --res_forward_subs                      full
% 2.52/1.02  --res_backward_subs                     full
% 2.52/1.02  --res_forward_subs_resolution           true
% 2.52/1.02  --res_backward_subs_resolution          true
% 2.52/1.02  --res_orphan_elimination                true
% 2.52/1.02  --res_time_limit                        2.
% 2.52/1.02  --res_out_proof                         true
% 2.52/1.02  
% 2.52/1.02  ------ Superposition Options
% 2.52/1.02  
% 2.52/1.02  --superposition_flag                    true
% 2.52/1.02  --sup_passive_queue_type                priority_queues
% 2.52/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.52/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.52/1.02  --demod_completeness_check              fast
% 2.52/1.02  --demod_use_ground                      true
% 2.52/1.02  --sup_to_prop_solver                    passive
% 2.52/1.02  --sup_prop_simpl_new                    true
% 2.52/1.02  --sup_prop_simpl_given                  true
% 2.52/1.02  --sup_fun_splitting                     false
% 2.52/1.02  --sup_smt_interval                      50000
% 2.52/1.02  
% 2.52/1.02  ------ Superposition Simplification Setup
% 2.52/1.02  
% 2.52/1.02  --sup_indices_passive                   []
% 2.52/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.52/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.02  --sup_full_bw                           [BwDemod]
% 2.52/1.02  --sup_immed_triv                        [TrivRules]
% 2.52/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.52/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.02  --sup_immed_bw_main                     []
% 2.52/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.52/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.02  
% 2.52/1.02  ------ Combination Options
% 2.52/1.02  
% 2.52/1.02  --comb_res_mult                         3
% 2.52/1.02  --comb_sup_mult                         2
% 2.52/1.02  --comb_inst_mult                        10
% 2.52/1.02  
% 2.52/1.02  ------ Debug Options
% 2.52/1.02  
% 2.52/1.02  --dbg_backtrace                         false
% 2.52/1.02  --dbg_dump_prop_clauses                 false
% 2.52/1.02  --dbg_dump_prop_clauses_file            -
% 2.52/1.02  --dbg_out_stat                          false
% 2.52/1.02  ------ Parsing...
% 2.52/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.52/1.02  
% 2.52/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 6 0s  sf_e  pe_s  pe_e 
% 2.52/1.02  
% 2.52/1.02  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.52/1.02  
% 2.52/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.52/1.02  ------ Proving...
% 2.52/1.02  ------ Problem Properties 
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  clauses                                 13
% 2.52/1.02  conjectures                             4
% 2.52/1.02  EPR                                     1
% 2.52/1.02  Horn                                    11
% 2.52/1.02  unary                                   4
% 2.52/1.02  binary                                  6
% 2.52/1.02  lits                                    26
% 2.52/1.02  lits eq                                 3
% 2.52/1.02  fd_pure                                 0
% 2.52/1.02  fd_pseudo                               0
% 2.52/1.02  fd_cond                                 0
% 2.52/1.02  fd_pseudo_cond                          0
% 2.52/1.02  AC symbols                              0
% 2.52/1.02  
% 2.52/1.02  ------ Schedule dynamic 5 is on 
% 2.52/1.02  
% 2.52/1.02  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  ------ 
% 2.52/1.02  Current options:
% 2.52/1.02  ------ 
% 2.52/1.02  
% 2.52/1.02  ------ Input Options
% 2.52/1.02  
% 2.52/1.02  --out_options                           all
% 2.52/1.02  --tptp_safe_out                         true
% 2.52/1.02  --problem_path                          ""
% 2.52/1.02  --include_path                          ""
% 2.52/1.02  --clausifier                            res/vclausify_rel
% 2.52/1.02  --clausifier_options                    --mode clausify
% 2.52/1.02  --stdin                                 false
% 2.52/1.02  --stats_out                             all
% 2.52/1.02  
% 2.52/1.02  ------ General Options
% 2.52/1.02  
% 2.52/1.02  --fof                                   false
% 2.52/1.02  --time_out_real                         305.
% 2.52/1.02  --time_out_virtual                      -1.
% 2.52/1.02  --symbol_type_check                     false
% 2.52/1.02  --clausify_out                          false
% 2.52/1.02  --sig_cnt_out                           false
% 2.52/1.02  --trig_cnt_out                          false
% 2.52/1.02  --trig_cnt_out_tolerance                1.
% 2.52/1.02  --trig_cnt_out_sk_spl                   false
% 2.52/1.02  --abstr_cl_out                          false
% 2.52/1.02  
% 2.52/1.02  ------ Global Options
% 2.52/1.02  
% 2.52/1.02  --schedule                              default
% 2.52/1.02  --add_important_lit                     false
% 2.52/1.02  --prop_solver_per_cl                    1000
% 2.52/1.02  --min_unsat_core                        false
% 2.52/1.02  --soft_assumptions                      false
% 2.52/1.02  --soft_lemma_size                       3
% 2.52/1.02  --prop_impl_unit_size                   0
% 2.52/1.02  --prop_impl_unit                        []
% 2.52/1.02  --share_sel_clauses                     true
% 2.52/1.02  --reset_solvers                         false
% 2.52/1.02  --bc_imp_inh                            [conj_cone]
% 2.52/1.02  --conj_cone_tolerance                   3.
% 2.52/1.02  --extra_neg_conj                        none
% 2.52/1.02  --large_theory_mode                     true
% 2.52/1.02  --prolific_symb_bound                   200
% 2.52/1.02  --lt_threshold                          2000
% 2.52/1.02  --clause_weak_htbl                      true
% 2.52/1.02  --gc_record_bc_elim                     false
% 2.52/1.02  
% 2.52/1.02  ------ Preprocessing Options
% 2.52/1.02  
% 2.52/1.02  --preprocessing_flag                    true
% 2.52/1.02  --time_out_prep_mult                    0.1
% 2.52/1.02  --splitting_mode                        input
% 2.52/1.02  --splitting_grd                         true
% 2.52/1.02  --splitting_cvd                         false
% 2.52/1.02  --splitting_cvd_svl                     false
% 2.52/1.02  --splitting_nvd                         32
% 2.52/1.02  --sub_typing                            true
% 2.52/1.02  --prep_gs_sim                           true
% 2.52/1.02  --prep_unflatten                        true
% 2.52/1.02  --prep_res_sim                          true
% 2.52/1.02  --prep_upred                            true
% 2.52/1.02  --prep_sem_filter                       exhaustive
% 2.52/1.02  --prep_sem_filter_out                   false
% 2.52/1.02  --pred_elim                             true
% 2.52/1.02  --res_sim_input                         true
% 2.52/1.02  --eq_ax_congr_red                       true
% 2.52/1.02  --pure_diseq_elim                       true
% 2.52/1.02  --brand_transform                       false
% 2.52/1.02  --non_eq_to_eq                          false
% 2.52/1.02  --prep_def_merge                        true
% 2.52/1.02  --prep_def_merge_prop_impl              false
% 2.52/1.02  --prep_def_merge_mbd                    true
% 2.52/1.02  --prep_def_merge_tr_red                 false
% 2.52/1.02  --prep_def_merge_tr_cl                  false
% 2.52/1.02  --smt_preprocessing                     true
% 2.52/1.02  --smt_ac_axioms                         fast
% 2.52/1.02  --preprocessed_out                      false
% 2.52/1.02  --preprocessed_stats                    false
% 2.52/1.02  
% 2.52/1.02  ------ Abstraction refinement Options
% 2.52/1.02  
% 2.52/1.02  --abstr_ref                             []
% 2.52/1.02  --abstr_ref_prep                        false
% 2.52/1.02  --abstr_ref_until_sat                   false
% 2.52/1.02  --abstr_ref_sig_restrict                funpre
% 2.52/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.52/1.02  --abstr_ref_under                       []
% 2.52/1.02  
% 2.52/1.02  ------ SAT Options
% 2.52/1.02  
% 2.52/1.02  --sat_mode                              false
% 2.52/1.02  --sat_fm_restart_options                ""
% 2.52/1.02  --sat_gr_def                            false
% 2.52/1.02  --sat_epr_types                         true
% 2.52/1.02  --sat_non_cyclic_types                  false
% 2.52/1.02  --sat_finite_models                     false
% 2.52/1.02  --sat_fm_lemmas                         false
% 2.52/1.02  --sat_fm_prep                           false
% 2.52/1.02  --sat_fm_uc_incr                        true
% 2.52/1.02  --sat_out_model                         small
% 2.52/1.02  --sat_out_clauses                       false
% 2.52/1.02  
% 2.52/1.02  ------ QBF Options
% 2.52/1.02  
% 2.52/1.02  --qbf_mode                              false
% 2.52/1.02  --qbf_elim_univ                         false
% 2.52/1.02  --qbf_dom_inst                          none
% 2.52/1.02  --qbf_dom_pre_inst                      false
% 2.52/1.02  --qbf_sk_in                             false
% 2.52/1.02  --qbf_pred_elim                         true
% 2.52/1.02  --qbf_split                             512
% 2.52/1.02  
% 2.52/1.02  ------ BMC1 Options
% 2.52/1.02  
% 2.52/1.02  --bmc1_incremental                      false
% 2.52/1.02  --bmc1_axioms                           reachable_all
% 2.52/1.02  --bmc1_min_bound                        0
% 2.52/1.02  --bmc1_max_bound                        -1
% 2.52/1.02  --bmc1_max_bound_default                -1
% 2.52/1.02  --bmc1_symbol_reachability              true
% 2.52/1.02  --bmc1_property_lemmas                  false
% 2.52/1.02  --bmc1_k_induction                      false
% 2.52/1.02  --bmc1_non_equiv_states                 false
% 2.52/1.02  --bmc1_deadlock                         false
% 2.52/1.02  --bmc1_ucm                              false
% 2.52/1.02  --bmc1_add_unsat_core                   none
% 2.52/1.02  --bmc1_unsat_core_children              false
% 2.52/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.52/1.02  --bmc1_out_stat                         full
% 2.52/1.02  --bmc1_ground_init                      false
% 2.52/1.02  --bmc1_pre_inst_next_state              false
% 2.52/1.02  --bmc1_pre_inst_state                   false
% 2.52/1.02  --bmc1_pre_inst_reach_state             false
% 2.52/1.02  --bmc1_out_unsat_core                   false
% 2.52/1.02  --bmc1_aig_witness_out                  false
% 2.52/1.02  --bmc1_verbose                          false
% 2.52/1.02  --bmc1_dump_clauses_tptp                false
% 2.52/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.52/1.02  --bmc1_dump_file                        -
% 2.52/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.52/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.52/1.02  --bmc1_ucm_extend_mode                  1
% 2.52/1.02  --bmc1_ucm_init_mode                    2
% 2.52/1.02  --bmc1_ucm_cone_mode                    none
% 2.52/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.52/1.02  --bmc1_ucm_relax_model                  4
% 2.52/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.52/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.52/1.02  --bmc1_ucm_layered_model                none
% 2.52/1.02  --bmc1_ucm_max_lemma_size               10
% 2.52/1.02  
% 2.52/1.02  ------ AIG Options
% 2.52/1.02  
% 2.52/1.02  --aig_mode                              false
% 2.52/1.02  
% 2.52/1.02  ------ Instantiation Options
% 2.52/1.02  
% 2.52/1.02  --instantiation_flag                    true
% 2.52/1.02  --inst_sos_flag                         false
% 2.52/1.02  --inst_sos_phase                        true
% 2.52/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.52/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.52/1.02  --inst_lit_sel_side                     none
% 2.52/1.02  --inst_solver_per_active                1400
% 2.52/1.02  --inst_solver_calls_frac                1.
% 2.52/1.02  --inst_passive_queue_type               priority_queues
% 2.52/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.52/1.02  --inst_passive_queues_freq              [25;2]
% 2.52/1.02  --inst_dismatching                      true
% 2.52/1.02  --inst_eager_unprocessed_to_passive     true
% 2.52/1.02  --inst_prop_sim_given                   true
% 2.52/1.02  --inst_prop_sim_new                     false
% 2.52/1.02  --inst_subs_new                         false
% 2.52/1.02  --inst_eq_res_simp                      false
% 2.52/1.02  --inst_subs_given                       false
% 2.52/1.02  --inst_orphan_elimination               true
% 2.52/1.02  --inst_learning_loop_flag               true
% 2.52/1.02  --inst_learning_start                   3000
% 2.52/1.02  --inst_learning_factor                  2
% 2.52/1.02  --inst_start_prop_sim_after_learn       3
% 2.52/1.02  --inst_sel_renew                        solver
% 2.52/1.02  --inst_lit_activity_flag                true
% 2.52/1.02  --inst_restr_to_given                   false
% 2.52/1.02  --inst_activity_threshold               500
% 2.52/1.02  --inst_out_proof                        true
% 2.52/1.02  
% 2.52/1.02  ------ Resolution Options
% 2.52/1.02  
% 2.52/1.02  --resolution_flag                       false
% 2.52/1.02  --res_lit_sel                           adaptive
% 2.52/1.02  --res_lit_sel_side                      none
% 2.52/1.02  --res_ordering                          kbo
% 2.52/1.02  --res_to_prop_solver                    active
% 2.52/1.02  --res_prop_simpl_new                    false
% 2.52/1.02  --res_prop_simpl_given                  true
% 2.52/1.02  --res_passive_queue_type                priority_queues
% 2.52/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.52/1.02  --res_passive_queues_freq               [15;5]
% 2.52/1.02  --res_forward_subs                      full
% 2.52/1.02  --res_backward_subs                     full
% 2.52/1.02  --res_forward_subs_resolution           true
% 2.52/1.02  --res_backward_subs_resolution          true
% 2.52/1.02  --res_orphan_elimination                true
% 2.52/1.02  --res_time_limit                        2.
% 2.52/1.02  --res_out_proof                         true
% 2.52/1.02  
% 2.52/1.02  ------ Superposition Options
% 2.52/1.02  
% 2.52/1.02  --superposition_flag                    true
% 2.52/1.02  --sup_passive_queue_type                priority_queues
% 2.52/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.52/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.52/1.02  --demod_completeness_check              fast
% 2.52/1.02  --demod_use_ground                      true
% 2.52/1.02  --sup_to_prop_solver                    passive
% 2.52/1.02  --sup_prop_simpl_new                    true
% 2.52/1.02  --sup_prop_simpl_given                  true
% 2.52/1.02  --sup_fun_splitting                     false
% 2.52/1.02  --sup_smt_interval                      50000
% 2.52/1.02  
% 2.52/1.02  ------ Superposition Simplification Setup
% 2.52/1.02  
% 2.52/1.02  --sup_indices_passive                   []
% 2.52/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.52/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.52/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.02  --sup_full_bw                           [BwDemod]
% 2.52/1.02  --sup_immed_triv                        [TrivRules]
% 2.52/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.52/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.02  --sup_immed_bw_main                     []
% 2.52/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.52/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.52/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.52/1.02  
% 2.52/1.02  ------ Combination Options
% 2.52/1.02  
% 2.52/1.02  --comb_res_mult                         3
% 2.52/1.02  --comb_sup_mult                         2
% 2.52/1.02  --comb_inst_mult                        10
% 2.52/1.02  
% 2.52/1.02  ------ Debug Options
% 2.52/1.02  
% 2.52/1.02  --dbg_backtrace                         false
% 2.52/1.02  --dbg_dump_prop_clauses                 false
% 2.52/1.02  --dbg_dump_prop_clauses_file            -
% 2.52/1.02  --dbg_out_stat                          false
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  ------ Proving...
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  % SZS status Theorem for theBenchmark.p
% 2.52/1.02  
% 2.52/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 2.52/1.02  
% 2.52/1.02  fof(f4,axiom,(
% 2.52/1.02    ! [X0,X1,X2] : ((m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1)) => m1_subset_1(X0,X2))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f17,plain,(
% 2.52/1.02    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | (~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)))),
% 2.52/1.02    inference(ennf_transformation,[],[f4])).
% 2.52/1.02  
% 2.52/1.02  fof(f18,plain,(
% 2.52/1.02    ! [X0,X1,X2] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.52/1.02    inference(flattening,[],[f17])).
% 2.52/1.02  
% 2.52/1.02  fof(f41,plain,(
% 2.52/1.02    ( ! [X2,X0,X1] : (m1_subset_1(X0,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f18])).
% 2.52/1.02  
% 2.52/1.02  fof(f5,axiom,(
% 2.52/1.02    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f19,plain,(
% 2.52/1.02    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 2.52/1.02    inference(ennf_transformation,[],[f5])).
% 2.52/1.02  
% 2.52/1.02  fof(f20,plain,(
% 2.52/1.02    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 2.52/1.02    inference(flattening,[],[f19])).
% 2.52/1.02  
% 2.52/1.02  fof(f42,plain,(
% 2.52/1.02    ( ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f20])).
% 2.52/1.02  
% 2.52/1.02  fof(f10,conjecture,(
% 2.52/1.02    ! [X0] : ((l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))))))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f11,negated_conjecture,(
% 2.52/1.02    ~! [X0] : ((l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))))))),
% 2.52/1.02    inference(negated_conjecture,[],[f10])).
% 2.52/1.02  
% 2.52/1.02  fof(f28,plain,(
% 2.52/1.02    ? [X0] : (? [X1] : (? [X2] : ((k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.52/1.02    inference(ennf_transformation,[],[f11])).
% 2.52/1.02  
% 2.52/1.02  fof(f29,plain,(
% 2.52/1.02    ? [X0] : (? [X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.52/1.02    inference(flattening,[],[f28])).
% 2.52/1.02  
% 2.52/1.02  fof(f34,plain,(
% 2.52/1.02    ( ! [X0,X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) => (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3))) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 2.52/1.02    introduced(choice_axiom,[])).
% 2.52/1.02  
% 2.52/1.02  fof(f33,plain,(
% 2.52/1.02    ( ! [X0] : (? [X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK2)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK2)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(sK2,u1_struct_0(X0)))) )),
% 2.52/1.02    introduced(choice_axiom,[])).
% 2.52/1.02  
% 2.52/1.02  fof(f32,plain,(
% 2.52/1.02    ? [X0] : (? [X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X2)) & ~r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X2))) & m1_subset_1(X2,u1_struct_0(sK1))) & m1_subset_1(X1,u1_struct_0(sK1))) & l1_pre_topc(sK1) & v3_tdlat_3(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 2.52/1.02    introduced(choice_axiom,[])).
% 2.52/1.02  
% 2.52/1.02  fof(f35,plain,(
% 2.52/1.02    ((k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) & ~r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))) & m1_subset_1(sK3,u1_struct_0(sK1))) & m1_subset_1(sK2,u1_struct_0(sK1))) & l1_pre_topc(sK1) & v3_tdlat_3(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 2.52/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f29,f34,f33,f32])).
% 2.52/1.02  
% 2.52/1.02  fof(f50,plain,(
% 2.52/1.02    l1_pre_topc(sK1)),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f9,axiom,(
% 2.52/1.02    ! [X0] : ((l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) => k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))))))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f26,plain,(
% 2.52/1.02    ! [X0] : (! [X1] : (! [X2] : ((k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | ~r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v3_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.52/1.02    inference(ennf_transformation,[],[f9])).
% 2.52/1.02  
% 2.52/1.02  fof(f27,plain,(
% 2.52/1.02    ! [X0] : (! [X1] : (! [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | ~r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v3_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.52/1.02    inference(flattening,[],[f26])).
% 2.52/1.02  
% 2.52/1.02  fof(f46,plain,(
% 2.52/1.02    ( ! [X2,X0,X1] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | ~r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v3_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f27])).
% 2.52/1.02  
% 2.52/1.02  fof(f49,plain,(
% 2.52/1.02    v3_tdlat_3(sK1)),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f47,plain,(
% 2.52/1.02    ~v2_struct_0(sK1)),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f48,plain,(
% 2.52/1.02    v2_pre_topc(sK1)),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f1,axiom,(
% 2.52/1.02    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f12,plain,(
% 2.52/1.02    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.52/1.02    inference(rectify,[],[f1])).
% 2.52/1.02  
% 2.52/1.02  fof(f13,plain,(
% 2.52/1.02    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 2.52/1.02    inference(ennf_transformation,[],[f12])).
% 2.52/1.02  
% 2.52/1.02  fof(f30,plain,(
% 2.52/1.02    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.52/1.02    introduced(choice_axiom,[])).
% 2.52/1.02  
% 2.52/1.02  fof(f31,plain,(
% 2.52/1.02    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 2.52/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f13,f30])).
% 2.52/1.02  
% 2.52/1.02  fof(f36,plain,(
% 2.52/1.02    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f31])).
% 2.52/1.02  
% 2.52/1.02  fof(f37,plain,(
% 2.52/1.02    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f31])).
% 2.52/1.02  
% 2.52/1.02  fof(f38,plain,(
% 2.52/1.02    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f31])).
% 2.52/1.02  
% 2.52/1.02  fof(f2,axiom,(
% 2.52/1.02    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f14,plain,(
% 2.52/1.02    ! [X0,X1] : (m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) | ~r2_hidden(X0,X1))),
% 2.52/1.02    inference(ennf_transformation,[],[f2])).
% 2.52/1.02  
% 2.52/1.02  fof(f39,plain,(
% 2.52/1.02    ( ! [X0,X1] : (m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) | ~r2_hidden(X0,X1)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f14])).
% 2.52/1.02  
% 2.52/1.02  fof(f3,axiom,(
% 2.52/1.02    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f15,plain,(
% 2.52/1.02    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 2.52/1.02    inference(ennf_transformation,[],[f3])).
% 2.52/1.02  
% 2.52/1.02  fof(f16,plain,(
% 2.52/1.02    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 2.52/1.02    inference(flattening,[],[f15])).
% 2.52/1.02  
% 2.52/1.02  fof(f40,plain,(
% 2.52/1.02    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f16])).
% 2.52/1.02  
% 2.52/1.02  fof(f6,axiom,(
% 2.52/1.02    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f21,plain,(
% 2.52/1.02    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.52/1.02    inference(ennf_transformation,[],[f6])).
% 2.52/1.02  
% 2.52/1.02  fof(f43,plain,(
% 2.52/1.02    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f21])).
% 2.52/1.02  
% 2.52/1.02  fof(f7,axiom,(
% 2.52/1.02    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f22,plain,(
% 2.52/1.02    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.52/1.02    inference(ennf_transformation,[],[f7])).
% 2.52/1.02  
% 2.52/1.02  fof(f23,plain,(
% 2.52/1.02    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.52/1.02    inference(flattening,[],[f22])).
% 2.52/1.02  
% 2.52/1.02  fof(f44,plain,(
% 2.52/1.02    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f23])).
% 2.52/1.02  
% 2.52/1.02  fof(f8,axiom,(
% 2.52/1.02    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 2.52/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.52/1.02  
% 2.52/1.02  fof(f24,plain,(
% 2.52/1.02    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.52/1.02    inference(ennf_transformation,[],[f8])).
% 2.52/1.02  
% 2.52/1.02  fof(f25,plain,(
% 2.52/1.02    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.52/1.02    inference(flattening,[],[f24])).
% 2.52/1.02  
% 2.52/1.02  fof(f45,plain,(
% 2.52/1.02    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.52/1.02    inference(cnf_transformation,[],[f25])).
% 2.52/1.02  
% 2.52/1.02  fof(f54,plain,(
% 2.52/1.02    k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f53,plain,(
% 2.52/1.02    ~r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f52,plain,(
% 2.52/1.02    m1_subset_1(sK3,u1_struct_0(sK1))),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  fof(f51,plain,(
% 2.52/1.02    m1_subset_1(sK2,u1_struct_0(sK1))),
% 2.52/1.02    inference(cnf_transformation,[],[f35])).
% 2.52/1.02  
% 2.52/1.02  cnf(c_508,plain,
% 2.52/1.02      ( X0_46 != X1_46 | X2_46 != X1_46 | X2_46 = X0_46 ),
% 2.52/1.02      theory(equality) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_873,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X0_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X0_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_508]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_957,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,X0_46)
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,X0_46)
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_873]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_5799,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_957]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_5,plain,
% 2.52/1.02      ( m1_subset_1(X0,X1)
% 2.52/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
% 2.52/1.02      | ~ r2_hidden(X0,X2) ),
% 2.52/1.02      inference(cnf_transformation,[],[f41]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_501,plain,
% 2.52/1.02      ( m1_subset_1(X0_46,X1_46)
% 2.52/1.02      | ~ m1_subset_1(X2_46,k1_zfmisc_1(X1_46))
% 2.52/1.02      | ~ r2_hidden(X0_46,X2_46) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_5]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1895,plain,
% 2.52/1.02      ( ~ m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k1_zfmisc_1(X0_46))
% 2.52/1.02      | m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),X0_46)
% 2.52/1.02      | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_501]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_3728,plain,
% 2.52/1.02      ( ~ m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),u1_struct_0(sK1))
% 2.52/1.02      | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1895]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_6,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.52/1.02      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.52/1.02      | ~ l1_pre_topc(X1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f42]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_15,negated_conjecture,
% 2.52/1.02      ( l1_pre_topc(sK1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f50]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_262,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.52/1.02      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.52/1.02      | sK1 != X1 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_6,c_15]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_263,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | m1_subset_1(k2_pre_topc(sK1,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_262]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_495,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | m1_subset_1(k2_pre_topc(sK1,X0_46),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_263]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2957,plain,
% 2.52/1.02      ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0_46)),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_495]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2959,plain,
% 2.52/1.02      ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | m1_subset_1(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_2957]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1169,plain,
% 2.52/1.02      ( X0_46 != X1_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X1_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = X0_46 ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_508]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1442,plain,
% 2.52/1.02      ( X0_46 != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = X0_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1169]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2611,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1442]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_956,plain,
% 2.52/1.02      ( X0_46 != X1_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X1_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = X0_46 ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_508]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1214,plain,
% 2.52/1.02      ( X0_46 != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = X0_46
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_956]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2604,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1214]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_512,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0_46,X1_46)
% 2.52/1.02      | m1_subset_1(X2_46,X3_46)
% 2.52/1.02      | X2_46 != X0_46
% 2.52/1.02      | X3_46 != X1_46 ),
% 2.52/1.02      theory(equality) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1087,plain,
% 2.52/1.02      ( m1_subset_1(X0_46,X1_46)
% 2.52/1.02      | ~ m1_subset_1(k1_tarski(X2_46),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | X1_46 != k1_zfmisc_1(u1_struct_0(sK1))
% 2.52/1.02      | X0_46 != k1_tarski(X2_46) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_512]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1741,plain,
% 2.52/1.02      ( m1_subset_1(X0_46,k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | ~ m1_subset_1(k1_tarski(X1_46),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | X0_46 != k1_tarski(X1_46)
% 2.52/1.02      | k1_zfmisc_1(u1_struct_0(sK1)) != k1_zfmisc_1(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1087]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2584,plain,
% 2.52/1.02      ( m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | ~ m1_subset_1(k1_tarski(X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | k6_domain_1(u1_struct_0(sK1),X0_46) != k1_tarski(X0_46)
% 2.52/1.02      | k1_zfmisc_1(u1_struct_0(sK1)) != k1_zfmisc_1(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1741]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2586,plain,
% 2.52/1.02      ( m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | ~ m1_subset_1(k1_tarski(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | k6_domain_1(u1_struct_0(sK1),sK2) != k1_tarski(sK2)
% 2.52/1.02      | k1_zfmisc_1(u1_struct_0(sK1)) != k1_zfmisc_1(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_2584]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_10,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.52/1.02      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.52/1.02      | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
% 2.52/1.02      | ~ v2_pre_topc(X1)
% 2.52/1.02      | ~ v3_tdlat_3(X1)
% 2.52/1.02      | v2_struct_0(X1)
% 2.52/1.02      | ~ l1_pre_topc(X1)
% 2.52/1.02      | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) ),
% 2.52/1.02      inference(cnf_transformation,[],[f46]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_16,negated_conjecture,
% 2.52/1.02      ( v3_tdlat_3(sK1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f49]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_220,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.52/1.02      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.52/1.02      | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
% 2.52/1.02      | ~ v2_pre_topc(X1)
% 2.52/1.02      | v2_struct_0(X1)
% 2.52/1.02      | ~ l1_pre_topc(X1)
% 2.52/1.02      | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0))
% 2.52/1.02      | sK1 != X1 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_10,c_16]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_221,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 2.52/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 2.52/1.02      | ~ r2_hidden(X0,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)))
% 2.52/1.02      | ~ v2_pre_topc(sK1)
% 2.52/1.02      | v2_struct_0(sK1)
% 2.52/1.02      | ~ l1_pre_topc(sK1)
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_220]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_18,negated_conjecture,
% 2.52/1.02      ( ~ v2_struct_0(sK1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f47]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_17,negated_conjecture,
% 2.52/1.02      ( v2_pre_topc(sK1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f48]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_225,plain,
% 2.52/1.02      ( ~ r2_hidden(X0,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)))
% 2.52/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 2.52/1.02      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) ),
% 2.52/1.02      inference(global_propositional_subsumption,
% 2.52/1.02                [status(thm)],
% 2.52/1.02                [c_221,c_18,c_17,c_15]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_226,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 2.52/1.02      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 2.52/1.02      | ~ r2_hidden(X0,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1)) ),
% 2.52/1.02      inference(renaming,[status(thm)],[c_225]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_496,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0_46,u1_struct_0(sK1))
% 2.52/1.02      | ~ m1_subset_1(X1_46,u1_struct_0(sK1))
% 2.52/1.02      | ~ r2_hidden(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1_46)))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X0_46)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),X1_46)) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_226]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1892,plain,
% 2.52/1.02      ( ~ m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),u1_struct_0(sK1))
% 2.52/1.02      | ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 2.52/1.02      | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_496]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1868,plain,
% 2.52/1.02      ( ~ m1_subset_1(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),u1_struct_0(sK1))
% 2.52/1.02      | ~ m1_subset_1(sK3,u1_struct_0(sK1))
% 2.52/1.02      | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))))) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_496]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_2,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f36]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_503,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0_46,X1_46),X0_46) | r1_xboole_0(X0_46,X1_46) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_2]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1004,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),X0_46)
% 2.52/1.02      | r1_xboole_0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_503]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1525,plain,
% 2.52/1.02      ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
% 2.52/1.02      | r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1004]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f37]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_504,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0_46,X1_46),X1_46) | r1_xboole_0(X0_46,X1_46) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_1]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1003,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
% 2.52/1.02      | r1_xboole_0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_504]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1526,plain,
% 2.52/1.02      ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
% 2.52/1.02      | r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_1003]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_507,plain,( X0_46 = X0_46 ),theory(equality) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1479,plain,
% 2.52/1.02      ( k1_zfmisc_1(u1_struct_0(sK1)) = k1_zfmisc_1(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_507]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_0,plain,
% 2.52/1.02      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,X2) | ~ r1_xboole_0(X2,X1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f38]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_505,plain,
% 2.52/1.02      ( ~ r2_hidden(X0_46,X1_46)
% 2.52/1.02      | ~ r2_hidden(X0_46,X2_46)
% 2.52/1.02      | ~ r1_xboole_0(X2_46,X1_46) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_0]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_909,plain,
% 2.52/1.02      ( ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),X0_46)
% 2.52/1.02      | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
% 2.52/1.02      | ~ r1_xboole_0(X0_46,k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_505]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1252,plain,
% 2.52/1.02      ( ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)))
% 2.52/1.02      | ~ r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)))
% 2.52/1.02      | ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_909]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_1044,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_507]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_976,plain,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) = k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_507]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_3,plain,
% 2.52/1.02      ( m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) | ~ r2_hidden(X0,X1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f39]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_502,plain,
% 2.52/1.02      ( m1_subset_1(k1_tarski(X0_46),k1_zfmisc_1(X1_46))
% 2.52/1.02      | ~ r2_hidden(X0_46,X1_46) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_3]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_849,plain,
% 2.52/1.02      ( m1_subset_1(k1_tarski(X0_46),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | ~ r2_hidden(X0_46,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_502]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_851,plain,
% 2.52/1.02      ( m1_subset_1(k1_tarski(sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 2.52/1.02      | ~ r2_hidden(sK2,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_849]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_4,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.52/1.02      inference(cnf_transformation,[],[f40]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_7,plain,
% 2.52/1.02      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 2.52/1.02      inference(cnf_transformation,[],[f43]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_8,plain,
% 2.52/1.02      ( v2_struct_0(X0)
% 2.52/1.02      | ~ l1_struct_0(X0)
% 2.52/1.02      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.52/1.02      inference(cnf_transformation,[],[f44]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_202,plain,
% 2.52/1.02      ( v2_struct_0(X0)
% 2.52/1.02      | ~ l1_pre_topc(X0)
% 2.52/1.02      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.52/1.02      inference(resolution,[status(thm)],[c_7,c_8]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_249,plain,
% 2.52/1.02      ( ~ l1_pre_topc(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK1 != X0 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_202,c_18]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_250,plain,
% 2.52/1.02      ( ~ l1_pre_topc(sK1) | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_249]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_33,plain,
% 2.52/1.02      ( v2_struct_0(sK1)
% 2.52/1.02      | ~ l1_struct_0(sK1)
% 2.52/1.02      | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_8]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_36,plain,
% 2.52/1.02      ( l1_struct_0(sK1) | ~ l1_pre_topc(sK1) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_7]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_252,plain,
% 2.52/1.02      ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 2.52/1.02      inference(global_propositional_subsumption,
% 2.52/1.02                [status(thm)],
% 2.52/1.02                [c_250,c_18,c_15,c_33,c_36]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_289,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,X1)
% 2.52/1.02      | r2_hidden(X0,X1)
% 2.52/1.02      | u1_struct_0(sK1) != X1 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_4,c_252]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_290,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 2.52/1.02      | r2_hidden(X0,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_289]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_493,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0_46,u1_struct_0(sK1))
% 2.52/1.02      | r2_hidden(X0_46,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_290]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_549,plain,
% 2.52/1.02      ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 2.52/1.02      | r2_hidden(sK2,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_493]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_9,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,X1)
% 2.52/1.02      | v1_xboole_0(X1)
% 2.52/1.02      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 2.52/1.02      inference(cnf_transformation,[],[f45]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_277,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,X1)
% 2.52/1.02      | k6_domain_1(X1,X0) = k1_tarski(X0)
% 2.52/1.02      | u1_struct_0(sK1) != X1 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_9,c_252]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_278,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 2.52/1.02      | k6_domain_1(u1_struct_0(sK1),X0) = k1_tarski(X0) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_277]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_494,plain,
% 2.52/1.02      ( ~ m1_subset_1(X0_46,u1_struct_0(sK1))
% 2.52/1.02      | k6_domain_1(u1_struct_0(sK1),X0_46) = k1_tarski(X0_46) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_278]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_546,plain,
% 2.52/1.02      ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 2.52/1.02      | k6_domain_1(u1_struct_0(sK1),sK2) = k1_tarski(sK2) ),
% 2.52/1.02      inference(instantiation,[status(thm)],[c_494]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_11,negated_conjecture,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(cnf_transformation,[],[f54]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_500,negated_conjecture,
% 2.52/1.02      ( k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) ),
% 2.52/1.02      inference(subtyping,[status(esa)],[c_11]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_12,negated_conjecture,
% 2.52/1.02      ( ~ r1_xboole_0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))) ),
% 2.52/1.02      inference(cnf_transformation,[],[f53]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_342,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0,X1),X1)
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X1
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X0 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_1,c_12]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_343,plain,
% 2.52/1.02      ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_342]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_335,plain,
% 2.52/1.02      ( r2_hidden(sK0(X0,X1),X0)
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3)) != X1
% 2.52/1.02      | k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)) != X0 ),
% 2.52/1.02      inference(resolution_lifted,[status(thm)],[c_2,c_12]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_336,plain,
% 2.52/1.02      ( r2_hidden(sK0(k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2)),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK3))),k2_pre_topc(sK1,k6_domain_1(u1_struct_0(sK1),sK2))) ),
% 2.52/1.02      inference(unflattening,[status(thm)],[c_335]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_13,negated_conjecture,
% 2.52/1.02      ( m1_subset_1(sK3,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(cnf_transformation,[],[f52]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(c_14,negated_conjecture,
% 2.52/1.02      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 2.52/1.02      inference(cnf_transformation,[],[f51]) ).
% 2.52/1.02  
% 2.52/1.02  cnf(contradiction,plain,
% 2.52/1.02      ( $false ),
% 2.52/1.02      inference(minisat,
% 2.52/1.02                [status(thm)],
% 2.52/1.02                [c_5799,c_3728,c_2959,c_2611,c_2604,c_2586,c_1892,c_1868,
% 2.52/1.02                 c_1525,c_1526,c_1479,c_1252,c_1044,c_976,c_851,c_549,
% 2.52/1.02                 c_546,c_500,c_343,c_336,c_13,c_14]) ).
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 2.52/1.02  
% 2.52/1.02  ------                               Statistics
% 2.52/1.02  
% 2.52/1.02  ------ General
% 2.52/1.02  
% 2.52/1.02  abstr_ref_over_cycles:                  0
% 2.52/1.02  abstr_ref_under_cycles:                 0
% 2.52/1.02  gc_basic_clause_elim:                   0
% 2.52/1.02  forced_gc_time:                         0
% 2.52/1.02  parsing_time:                           0.006
% 2.52/1.02  unif_index_cands_time:                  0.
% 2.52/1.02  unif_index_add_time:                    0.
% 2.52/1.02  orderings_time:                         0.
% 2.52/1.02  out_proof_time:                         0.009
% 2.52/1.02  total_time:                             0.171
% 2.52/1.02  num_of_symbols:                         51
% 2.52/1.02  num_of_terms:                           4842
% 2.52/1.02  
% 2.52/1.02  ------ Preprocessing
% 2.52/1.02  
% 2.52/1.02  num_of_splits:                          0
% 2.52/1.02  num_of_split_atoms:                     0
% 2.52/1.02  num_of_reused_defs:                     0
% 2.52/1.02  num_eq_ax_congr_red:                    12
% 2.52/1.02  num_of_sem_filtered_clauses:            1
% 2.52/1.02  num_of_subtypes:                        2
% 2.52/1.02  monotx_restored_types:                  0
% 2.52/1.02  sat_num_of_epr_types:                   0
% 2.52/1.02  sat_num_of_non_cyclic_types:            0
% 2.52/1.02  sat_guarded_non_collapsed_types:        0
% 2.52/1.02  num_pure_diseq_elim:                    0
% 2.52/1.02  simp_replaced_by:                       0
% 2.52/1.02  res_preprocessed:                       75
% 2.52/1.02  prep_upred:                             0
% 2.52/1.02  prep_unflattend:                        21
% 2.52/1.02  smt_new_axioms:                         0
% 2.52/1.02  pred_elim_cands:                        3
% 2.52/1.02  pred_elim:                              6
% 2.52/1.02  pred_elim_cl:                           6
% 2.52/1.02  pred_elim_cycles:                       8
% 2.52/1.02  merged_defs:                            0
% 2.52/1.02  merged_defs_ncl:                        0
% 2.52/1.02  bin_hyper_res:                          0
% 2.52/1.02  prep_cycles:                            4
% 2.52/1.02  pred_elim_time:                         0.002
% 2.52/1.02  splitting_time:                         0.
% 2.52/1.02  sem_filter_time:                        0.
% 2.52/1.02  monotx_time:                            0.
% 2.52/1.02  subtype_inf_time:                       0.
% 2.52/1.02  
% 2.52/1.02  ------ Problem properties
% 2.52/1.02  
% 2.52/1.02  clauses:                                13
% 2.52/1.02  conjectures:                            4
% 2.52/1.02  epr:                                    1
% 2.52/1.02  horn:                                   11
% 2.52/1.02  ground:                                 4
% 2.52/1.02  unary:                                  4
% 2.52/1.02  binary:                                 6
% 2.52/1.02  lits:                                   26
% 2.52/1.02  lits_eq:                                3
% 2.52/1.02  fd_pure:                                0
% 2.52/1.02  fd_pseudo:                              0
% 2.52/1.02  fd_cond:                                0
% 2.52/1.02  fd_pseudo_cond:                         0
% 2.52/1.02  ac_symbols:                             0
% 2.52/1.02  
% 2.52/1.02  ------ Propositional Solver
% 2.52/1.02  
% 2.52/1.02  prop_solver_calls:                      31
% 2.52/1.02  prop_fast_solver_calls:                 610
% 2.52/1.02  smt_solver_calls:                       0
% 2.52/1.02  smt_fast_solver_calls:                  0
% 2.52/1.02  prop_num_of_clauses:                    2205
% 2.52/1.02  prop_preprocess_simplified:             4460
% 2.52/1.02  prop_fo_subsumed:                       10
% 2.52/1.02  prop_solver_time:                       0.
% 2.52/1.02  smt_solver_time:                        0.
% 2.52/1.02  smt_fast_solver_time:                   0.
% 2.52/1.02  prop_fast_solver_time:                  0.
% 2.52/1.02  prop_unsat_core_time:                   0.
% 2.52/1.02  
% 2.52/1.02  ------ QBF
% 2.52/1.02  
% 2.52/1.02  qbf_q_res:                              0
% 2.52/1.02  qbf_num_tautologies:                    0
% 2.52/1.02  qbf_prep_cycles:                        0
% 2.52/1.02  
% 2.52/1.02  ------ BMC1
% 2.52/1.02  
% 2.52/1.02  bmc1_current_bound:                     -1
% 2.52/1.02  bmc1_last_solved_bound:                 -1
% 2.52/1.02  bmc1_unsat_core_size:                   -1
% 2.52/1.02  bmc1_unsat_core_parents_size:           -1
% 2.52/1.02  bmc1_merge_next_fun:                    0
% 2.52/1.02  bmc1_unsat_core_clauses_time:           0.
% 2.52/1.02  
% 2.52/1.02  ------ Instantiation
% 2.52/1.02  
% 2.52/1.02  inst_num_of_clauses:                    607
% 2.52/1.02  inst_num_in_passive:                    196
% 2.52/1.02  inst_num_in_active:                     380
% 2.52/1.02  inst_num_in_unprocessed:                32
% 2.52/1.02  inst_num_of_loops:                      417
% 2.52/1.02  inst_num_of_learning_restarts:          0
% 2.52/1.02  inst_num_moves_active_passive:          31
% 2.52/1.02  inst_lit_activity:                      0
% 2.52/1.02  inst_lit_activity_moves:                0
% 2.52/1.02  inst_num_tautologies:                   0
% 2.52/1.02  inst_num_prop_implied:                  0
% 2.52/1.02  inst_num_existing_simplified:           0
% 2.52/1.02  inst_num_eq_res_simplified:             0
% 2.52/1.02  inst_num_child_elim:                    0
% 2.52/1.02  inst_num_of_dismatching_blockings:      189
% 2.52/1.02  inst_num_of_non_proper_insts:           695
% 2.52/1.02  inst_num_of_duplicates:                 0
% 2.52/1.02  inst_inst_num_from_inst_to_res:         0
% 2.52/1.02  inst_dismatching_checking_time:         0.
% 2.52/1.02  
% 2.52/1.02  ------ Resolution
% 2.52/1.02  
% 2.52/1.02  res_num_of_clauses:                     0
% 2.52/1.02  res_num_in_passive:                     0
% 2.52/1.02  res_num_in_active:                      0
% 2.52/1.02  res_num_of_loops:                       79
% 2.52/1.02  res_forward_subset_subsumed:            116
% 2.52/1.02  res_backward_subset_subsumed:           4
% 2.52/1.02  res_forward_subsumed:                   0
% 2.52/1.02  res_backward_subsumed:                  0
% 2.52/1.02  res_forward_subsumption_resolution:     0
% 2.52/1.02  res_backward_subsumption_resolution:    0
% 2.52/1.02  res_clause_to_clause_subsumption:       791
% 2.52/1.02  res_orphan_elimination:                 0
% 2.52/1.02  res_tautology_del:                      111
% 2.52/1.02  res_num_eq_res_simplified:              0
% 2.52/1.02  res_num_sel_changes:                    0
% 2.52/1.02  res_moves_from_active_to_pass:          0
% 2.52/1.02  
% 2.52/1.02  ------ Superposition
% 2.52/1.02  
% 2.52/1.02  sup_time_total:                         0.
% 2.52/1.02  sup_time_generating:                    0.
% 2.52/1.02  sup_time_sim_full:                      0.
% 2.52/1.02  sup_time_sim_immed:                     0.
% 2.52/1.02  
% 2.52/1.02  sup_num_of_clauses:                     157
% 2.52/1.02  sup_num_in_active:                      77
% 2.52/1.02  sup_num_in_passive:                     80
% 2.52/1.02  sup_num_of_loops:                       82
% 2.52/1.02  sup_fw_superposition:                   96
% 2.52/1.02  sup_bw_superposition:                   110
% 2.52/1.02  sup_immediate_simplified:               33
% 2.52/1.02  sup_given_eliminated:                   2
% 2.52/1.02  comparisons_done:                       0
% 2.52/1.02  comparisons_avoided:                    0
% 2.52/1.02  
% 2.52/1.02  ------ Simplifications
% 2.52/1.02  
% 2.52/1.02  
% 2.52/1.02  sim_fw_subset_subsumed:                 0
% 2.52/1.02  sim_bw_subset_subsumed:                 0
% 2.52/1.02  sim_fw_subsumed:                        25
% 2.52/1.02  sim_bw_subsumed:                        5
% 2.52/1.02  sim_fw_subsumption_res:                 0
% 2.52/1.02  sim_bw_subsumption_res:                 0
% 2.52/1.02  sim_tautology_del:                      1
% 2.52/1.02  sim_eq_tautology_del:                   0
% 2.52/1.02  sim_eq_res_simp:                        0
% 2.52/1.02  sim_fw_demodulated:                     0
% 2.52/1.02  sim_bw_demodulated:                     3
% 2.52/1.02  sim_light_normalised:                   7
% 2.52/1.02  sim_joinable_taut:                      0
% 2.52/1.02  sim_joinable_simp:                      0
% 2.52/1.02  sim_ac_normalised:                      0
% 2.52/1.02  sim_smt_subsumption:                    0
% 2.52/1.02  
%------------------------------------------------------------------------------
