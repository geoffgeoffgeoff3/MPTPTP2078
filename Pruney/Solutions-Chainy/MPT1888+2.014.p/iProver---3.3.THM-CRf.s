%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:27:33 EST 2020

% Result     : Theorem 2.62s
% Output     : CNFRefutation 2.62s
% Verified   : 
% Statistics : Number of formulae       :  164 ( 985 expanded)
%              Number of clauses        :   94 ( 282 expanded)
%              Number of leaves         :   18 ( 273 expanded)
%              Depth                    :   24
%              Number of atoms          :  588 (5010 expanded)
%              Number of equality atoms :  109 ( 769 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   16 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
     => r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f72,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k2_tarski(X0,X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f51,f50])).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
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

fof(f16,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f37])).

fof(f48,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f47,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => v4_pre_topc(k2_pre_topc(X0,X1),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(k2_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(k2_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f27])).

fof(f57,plain,(
    ! [X0,X1] :
      ( v4_pre_topc(k2_pre_topc(X0,X1),X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ( v3_tdlat_3(X0)
      <=> ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v4_pre_topc(X1,X0)
             => v3_pre_topc(X1,X0) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( ( v3_tdlat_3(X0)
      <=> ! [X1] :
            ( v3_pre_topc(X1,X0)
            | ~ v4_pre_topc(X1,X0)
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f30,plain,(
    ! [X0] :
      ( ( v3_tdlat_3(X0)
      <=> ! [X1] :
            ( v3_pre_topc(X1,X0)
            | ~ v4_pre_topc(X1,X0)
            | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f29])).

fof(f39,plain,(
    ! [X0] :
      ( ( ( v3_tdlat_3(X0)
          | ? [X1] :
              ( ~ v3_pre_topc(X1,X0)
              & v4_pre_topc(X1,X0)
              & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
        & ( ! [X1] :
              ( v3_pre_topc(X1,X0)
              | ~ v4_pre_topc(X1,X0)
              | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ v3_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f30])).

fof(f40,plain,(
    ! [X0] :
      ( ( ( v3_tdlat_3(X0)
          | ? [X1] :
              ( ~ v3_pre_topc(X1,X0)
              & v4_pre_topc(X1,X0)
              & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) ) )
        & ( ! [X2] :
              ( v3_pre_topc(X2,X0)
              | ~ v4_pre_topc(X2,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ v3_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(rectify,[],[f39])).

fof(f41,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ v3_pre_topc(X1,X0)
          & v4_pre_topc(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ v3_pre_topc(sK1(X0),X0)
        & v4_pre_topc(sK1(X0),X0)
        & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0] :
      ( ( ( v3_tdlat_3(X0)
          | ( ~ v3_pre_topc(sK1(X0),X0)
            & v4_pre_topc(sK1(X0),X0)
            & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))) ) )
        & ( ! [X2] :
              ( v3_pre_topc(X2,X0)
              | ~ v4_pre_topc(X2,X0)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ v3_tdlat_3(X0) ) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f40,f41])).

fof(f58,plain,(
    ! [X2,X0] :
      ( v3_pre_topc(X2,X0)
      | ~ v4_pre_topc(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_tdlat_3(X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f19,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f18])).

fof(f52,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f13,conjecture,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
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
    inference(negated_conjecture,[],[f13])).

fof(f35,plain,(
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
    inference(ennf_transformation,[],[f14])).

fof(f36,plain,(
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
    inference(flattening,[],[f35])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
          & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK4)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1))
        & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK4)))
        & m1_subset_1(sK4,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
              & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
              & m1_subset_1(X2,u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ? [X2] :
            ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
            & ~ r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
            & m1_subset_1(X2,u1_struct_0(X0)) )
        & m1_subset_1(sK3,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,
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
              ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X2))
              & ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X2)))
              & m1_subset_1(X2,u1_struct_0(sK2)) )
          & m1_subset_1(X1,u1_struct_0(sK2)) )
      & l1_pre_topc(sK2)
      & v3_tdlat_3(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))
    & ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)))
    & m1_subset_1(sK4,u1_struct_0(sK2))
    & m1_subset_1(sK3,u1_struct_0(sK2))
    & l1_pre_topc(sK2)
    & v3_tdlat_3(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f36,f45,f44,f43])).

fof(f65,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f46])).

fof(f66,plain,(
    v3_tdlat_3(sK2) ),
    inference(cnf_transformation,[],[f46])).

fof(f67,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f46])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( ( v3_pre_topc(X1,X0)
                  & r1_xboole_0(X1,X2) )
               => r1_xboole_0(X1,k2_pre_topc(X0,X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_xboole_0(X1,k2_pre_topc(X0,X2))
              | ~ v3_pre_topc(X1,X0)
              | ~ r1_xboole_0(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( r1_xboole_0(X1,k2_pre_topc(X0,X2))
              | ~ v3_pre_topc(X1,X0)
              | ~ r1_xboole_0(X1,X2)
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f31])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( r1_xboole_0(X1,k2_pre_topc(X0,X2))
      | ~ v3_pre_topc(X1,X0)
      | ~ r1_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f69,plain,(
    m1_subset_1(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f46])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f56,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f73,plain,(
    ! [X0,X1] :
      ( k2_tarski(X1,X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f56,f50])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f53,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f22,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f54,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f64,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f46])).

fof(f70,plain,(
    ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) ),
    inference(cnf_transformation,[],[f46])).

fof(f68,plain,(
    m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f46])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f23])).

fof(f55,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f12,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
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
    inference(ennf_transformation,[],[f12])).

fof(f34,plain,(
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
    inference(flattening,[],[f33])).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))
      | ~ r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))
      | ~ m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v3_tdlat_3(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f71,plain,(
    k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_3,plain,
    ( r2_hidden(X0,X1)
    | r1_xboole_0(k2_tarski(X0,X0),X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_620,plain,
    ( r2_hidden(X0_49,X1_49)
    | r1_xboole_0(k2_tarski(X0_49,X0_49),X1_49) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_877,plain,
    ( r2_hidden(X0_49,X1_49) = iProver_top
    | r1_xboole_0(k2_tarski(X0_49,X0_49),X1_49) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_620])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X1)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_622,plain,
    ( r2_hidden(sK0(X0_49,X1_49),X1_49)
    | r1_xboole_0(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_875,plain,
    ( r2_hidden(sK0(X0_49,X1_49),X1_49) = iProver_top
    | r1_xboole_0(X0_49,X1_49) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_622])).

cnf(c_2,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_621,plain,
    ( r2_hidden(sK0(X0_49,X1_49),X0_49)
    | r1_xboole_0(X0_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_876,plain,
    ( r2_hidden(sK0(X0_49,X1_49),X0_49) = iProver_top
    | r1_xboole_0(X0_49,X1_49) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_621])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | ~ r1_xboole_0(X2,X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_623,plain,
    ( ~ r2_hidden(X0_49,X1_49)
    | ~ r2_hidden(X0_49,X2_49)
    | ~ r1_xboole_0(X2_49,X1_49) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_874,plain,
    ( r2_hidden(X0_49,X1_49) != iProver_top
    | r2_hidden(X0_49,X2_49) != iProver_top
    | r1_xboole_0(X2_49,X1_49) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_623])).

cnf(c_1376,plain,
    ( r2_hidden(sK0(X0_49,X1_49),X2_49) != iProver_top
    | r1_xboole_0(X2_49,X0_49) != iProver_top
    | r1_xboole_0(X0_49,X1_49) = iProver_top ),
    inference(superposition,[status(thm)],[c_876,c_874])).

cnf(c_2184,plain,
    ( r1_xboole_0(X0_49,X1_49) != iProver_top
    | r1_xboole_0(X1_49,X0_49) = iProver_top ),
    inference(superposition,[status(thm)],[c_875,c_1376])).

cnf(c_2534,plain,
    ( r2_hidden(X0_49,X1_49) = iProver_top
    | r1_xboole_0(X1_49,k2_tarski(X0_49,X0_49)) = iProver_top ),
    inference(superposition,[status(thm)],[c_877,c_2184])).

cnf(c_9,plain,
    ( v4_pre_topc(k2_pre_topc(X0,X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_13,plain,
    ( v3_pre_topc(X0,X1)
    | ~ v4_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_387,plain,
    ( v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X1)
    | X1 != X3
    | k2_pre_topc(X3,X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_13])).

cnf(c_388,plain,
    ( v3_pre_topc(k2_pre_topc(X0,X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_387])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_404,plain,
    ( v3_pre_topc(k2_pre_topc(X0,X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v3_tdlat_3(X0)
    | ~ v2_pre_topc(X0)
    | ~ l1_pre_topc(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_388,c_4])).

cnf(c_22,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_421,plain,
    ( v3_pre_topc(k2_pre_topc(X0,X1),X0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v3_tdlat_3(X0)
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_404,c_22])).

cnf(c_422,plain,
    ( v3_pre_topc(k2_pre_topc(sK2,X0),sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v3_tdlat_3(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_421])).

cnf(c_21,negated_conjecture,
    ( v3_tdlat_3(sK2) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_20,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_426,plain,
    ( v3_pre_topc(k2_pre_topc(sK2,X0),sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_422,c_21,c_20])).

cnf(c_14,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_xboole_0(X0,X2)
    | r1_xboole_0(X0,k2_pre_topc(X1,X2))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_443,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_xboole_0(X0,X2)
    | r1_xboole_0(X0,k2_pre_topc(X1,X2))
    | ~ l1_pre_topc(X1)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_22])).

cnf(c_444,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X0,k2_pre_topc(sK2,X1))
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_443])).

cnf(c_448,plain,
    ( r1_xboole_0(X0,k2_pre_topc(sK2,X1))
    | ~ r1_xboole_0(X0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ v3_pre_topc(X0,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_444,c_20])).

cnf(c_449,plain,
    ( ~ v3_pre_topc(X0,sK2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(X0,X1)
    | r1_xboole_0(X0,k2_pre_topc(sK2,X1)) ),
    inference(renaming,[status(thm)],[c_448])).

cnf(c_494,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(X0,X2)
    | r1_xboole_0(X0,k2_pre_topc(sK2,X2))
    | k2_pre_topc(sK2,X1) != X0
    | sK2 != sK2 ),
    inference(resolution_lifted,[status(thm)],[c_426,c_449])).

cnf(c_495,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(k2_pre_topc(sK2,X0),X1)
    | r1_xboole_0(k2_pre_topc(sK2,X0),k2_pre_topc(sK2,X1)) ),
    inference(unflattening,[status(thm)],[c_494])).

cnf(c_479,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_20])).

cnf(c_480,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_479])).

cnf(c_499,plain,
    ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(k2_pre_topc(sK2,X0),X1)
    | r1_xboole_0(k2_pre_topc(sK2,X0),k2_pre_topc(sK2,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_495,c_480])).

cnf(c_500,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(k2_pre_topc(sK2,X1),X0)
    | r1_xboole_0(k2_pre_topc(sK2,X1),k2_pre_topc(sK2,X0)) ),
    inference(renaming,[status(thm)],[c_499])).

cnf(c_611,plain,
    ( ~ m1_subset_1(X0_49,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ m1_subset_1(X1_49,k1_zfmisc_1(u1_struct_0(sK2)))
    | ~ r1_xboole_0(k2_pre_topc(sK2,X1_49),X0_49)
    | r1_xboole_0(k2_pre_topc(sK2,X1_49),k2_pre_topc(sK2,X0_49)) ),
    inference(subtyping,[status(esa)],[c_500])).

cnf(c_885,plain,
    ( m1_subset_1(X0_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(X1_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r1_xboole_0(k2_pre_topc(sK2,X1_49),X0_49) != iProver_top
    | r1_xboole_0(k2_pre_topc(sK2,X1_49),k2_pre_topc(sK2,X0_49)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_611])).

cnf(c_2533,plain,
    ( m1_subset_1(X0_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(X1_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r1_xboole_0(k2_pre_topc(sK2,X1_49),X0_49) != iProver_top
    | r1_xboole_0(k2_pre_topc(sK2,X0_49),k2_pre_topc(sK2,X1_49)) = iProver_top ),
    inference(superposition,[status(thm)],[c_885,c_2184])).

cnf(c_18,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_617,negated_conjecture,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_18])).

cnf(c_879,plain,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_617])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_5,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_6,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_253,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_5,c_6])).

cnf(c_23,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_315,plain,
    ( ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_pre_topc(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_253,c_23])).

cnf(c_316,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK2))
    | ~ l1_pre_topc(sK2) ),
    inference(unflattening,[status(thm)],[c_315])).

cnf(c_53,plain,
    ( v2_struct_0(sK2)
    | ~ v1_xboole_0(u1_struct_0(sK2))
    | ~ l1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_56,plain,
    ( l1_struct_0(sK2)
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_318,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_316,c_23,c_20,c_53,c_56])).

cnf(c_357,plain,
    ( ~ m1_subset_1(X0,X1)
    | k6_domain_1(X1,X0) = k2_tarski(X0,X0)
    | u1_struct_0(sK2) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_318])).

cnf(c_358,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | k6_domain_1(u1_struct_0(sK2),X0) = k2_tarski(X0,X0) ),
    inference(unflattening,[status(thm)],[c_357])).

cnf(c_614,plain,
    ( ~ m1_subset_1(X0_49,u1_struct_0(sK2))
    | k6_domain_1(u1_struct_0(sK2),X0_49) = k2_tarski(X0_49,X0_49) ),
    inference(subtyping,[status(esa)],[c_358])).

cnf(c_882,plain,
    ( k6_domain_1(u1_struct_0(sK2),X0_49) = k2_tarski(X0_49,X0_49)
    | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_614])).

cnf(c_1154,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK4) = k2_tarski(sK4,sK4) ),
    inference(superposition,[status(thm)],[c_879,c_882])).

cnf(c_17,negated_conjecture,
    ( ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_618,negated_conjecture,
    ( ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_878,plain,
    ( r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_618])).

cnf(c_1161,plain,
    ( r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1154,c_878])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_616,negated_conjecture,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_880,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_616])).

cnf(c_1155,plain,
    ( k6_domain_1(u1_struct_0(sK2),sK3) = k2_tarski(sK3,sK3) ),
    inference(superposition,[status(thm)],[c_880,c_882])).

cnf(c_1512,plain,
    ( r1_xboole_0(k2_pre_topc(sK2,k2_tarski(sK3,sK3)),k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1161,c_1155])).

cnf(c_3434,plain,
    ( m1_subset_1(k2_tarski(sK4,sK4),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | m1_subset_1(k2_tarski(sK3,sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
    | r1_xboole_0(k2_pre_topc(sK2,k2_tarski(sK4,sK4)),k2_tarski(sK3,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2533,c_1512])).

cnf(c_28,plain,
    ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_29,plain,
    ( m1_subset_1(sK4,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1))
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_369,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1))
    | u1_struct_0(sK2) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_318])).

cnf(c_370,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(unflattening,[status(thm)],[c_369])).

cnf(c_613,plain,
    ( ~ m1_subset_1(X0_49,u1_struct_0(sK2))
    | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0_49),k1_zfmisc_1(u1_struct_0(sK2))) ),
    inference(subtyping,[status(esa)],[c_370])).

cnf(c_883,plain,
    ( m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0_49),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_613])).

cnf(c_1589,plain,
    ( m1_subset_1(k2_tarski(sK3,sK3),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1155,c_883])).

cnf(c_1590,plain,
    ( m1_subset_1(k2_tarski(sK4,sK4),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1154,c_883])).

cnf(c_3469,plain,
    ( r1_xboole_0(k2_pre_topc(sK2,k2_tarski(sK4,sK4)),k2_tarski(sK3,sK3)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3434,c_28,c_29,c_1589,c_1590])).

cnf(c_3474,plain,
    ( r2_hidden(sK3,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2534,c_3469])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_326,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
    | ~ v3_tdlat_3(X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0))
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_23])).

cnf(c_327,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r2_hidden(X0,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
    | ~ v3_tdlat_3(sK2)
    | ~ v2_pre_topc(sK2)
    | ~ l1_pre_topc(sK2)
    | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) ),
    inference(unflattening,[status(thm)],[c_326])).

cnf(c_331,plain,
    ( ~ r2_hidden(X0,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ m1_subset_1(X0,u1_struct_0(sK2))
    | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_327,c_22,c_21,c_20])).

cnf(c_332,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK2))
    | ~ m1_subset_1(X1,u1_struct_0(sK2))
    | ~ r2_hidden(X0,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
    | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) ),
    inference(renaming,[status(thm)],[c_331])).

cnf(c_615,plain,
    ( ~ m1_subset_1(X0_49,u1_struct_0(sK2))
    | ~ m1_subset_1(X1_49,u1_struct_0(sK2))
    | ~ r2_hidden(X0_49,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49)))
    | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49)) ),
    inference(subtyping,[status(esa)],[c_332])).

cnf(c_881,plain,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49))
    | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X1_49,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(X0_49,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_615])).

cnf(c_1168,plain,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))
    | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(X0_49,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1154,c_881])).

cnf(c_1169,plain,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k2_tarski(sK4,sK4))
    | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(X0_49,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1168,c_1154])).

cnf(c_1171,plain,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) = k2_pre_topc(sK2,k2_tarski(sK4,sK4))
    | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
    | r2_hidden(sK3,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1169])).

cnf(c_16,negated_conjecture,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_619,negated_conjecture,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1162,plain,
    ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k2_tarski(sK4,sK4)) ),
    inference(demodulation,[status(thm)],[c_1154,c_619])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3474,c_1171,c_1162,c_29,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 15:43:44 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.62/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.62/0.98  
% 2.62/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.62/0.98  
% 2.62/0.98  ------  iProver source info
% 2.62/0.98  
% 2.62/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.62/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.62/0.98  git: non_committed_changes: false
% 2.62/0.98  git: last_make_outside_of_git: false
% 2.62/0.98  
% 2.62/0.98  ------ 
% 2.62/0.98  
% 2.62/0.98  ------ Input Options
% 2.62/0.98  
% 2.62/0.98  --out_options                           all
% 2.62/0.98  --tptp_safe_out                         true
% 2.62/0.98  --problem_path                          ""
% 2.62/0.98  --include_path                          ""
% 2.62/0.98  --clausifier                            res/vclausify_rel
% 2.62/0.98  --clausifier_options                    --mode clausify
% 2.62/0.98  --stdin                                 false
% 2.62/0.98  --stats_out                             all
% 2.62/0.98  
% 2.62/0.98  ------ General Options
% 2.62/0.98  
% 2.62/0.98  --fof                                   false
% 2.62/0.98  --time_out_real                         305.
% 2.62/0.98  --time_out_virtual                      -1.
% 2.62/0.98  --symbol_type_check                     false
% 2.62/0.98  --clausify_out                          false
% 2.62/0.98  --sig_cnt_out                           false
% 2.62/0.98  --trig_cnt_out                          false
% 2.62/0.98  --trig_cnt_out_tolerance                1.
% 2.62/0.98  --trig_cnt_out_sk_spl                   false
% 2.62/0.98  --abstr_cl_out                          false
% 2.62/0.98  
% 2.62/0.98  ------ Global Options
% 2.62/0.98  
% 2.62/0.98  --schedule                              default
% 2.62/0.98  --add_important_lit                     false
% 2.62/0.98  --prop_solver_per_cl                    1000
% 2.62/0.98  --min_unsat_core                        false
% 2.62/0.98  --soft_assumptions                      false
% 2.62/0.98  --soft_lemma_size                       3
% 2.62/0.98  --prop_impl_unit_size                   0
% 2.62/0.98  --prop_impl_unit                        []
% 2.62/0.98  --share_sel_clauses                     true
% 2.62/0.98  --reset_solvers                         false
% 2.62/0.98  --bc_imp_inh                            [conj_cone]
% 2.62/0.98  --conj_cone_tolerance                   3.
% 2.62/0.98  --extra_neg_conj                        none
% 2.62/0.98  --large_theory_mode                     true
% 2.62/0.98  --prolific_symb_bound                   200
% 2.62/0.98  --lt_threshold                          2000
% 2.62/0.98  --clause_weak_htbl                      true
% 2.62/0.98  --gc_record_bc_elim                     false
% 2.62/0.98  
% 2.62/0.98  ------ Preprocessing Options
% 2.62/0.98  
% 2.62/0.98  --preprocessing_flag                    true
% 2.62/0.98  --time_out_prep_mult                    0.1
% 2.62/0.98  --splitting_mode                        input
% 2.62/0.98  --splitting_grd                         true
% 2.62/0.98  --splitting_cvd                         false
% 2.62/0.98  --splitting_cvd_svl                     false
% 2.62/0.98  --splitting_nvd                         32
% 2.62/0.98  --sub_typing                            true
% 2.62/0.98  --prep_gs_sim                           true
% 2.62/0.98  --prep_unflatten                        true
% 2.62/0.98  --prep_res_sim                          true
% 2.62/0.98  --prep_upred                            true
% 2.62/0.98  --prep_sem_filter                       exhaustive
% 2.62/0.98  --prep_sem_filter_out                   false
% 2.62/0.98  --pred_elim                             true
% 2.62/0.98  --res_sim_input                         true
% 2.62/0.98  --eq_ax_congr_red                       true
% 2.62/0.98  --pure_diseq_elim                       true
% 2.62/0.98  --brand_transform                       false
% 2.62/0.98  --non_eq_to_eq                          false
% 2.62/0.98  --prep_def_merge                        true
% 2.62/0.98  --prep_def_merge_prop_impl              false
% 2.62/0.98  --prep_def_merge_mbd                    true
% 2.62/0.98  --prep_def_merge_tr_red                 false
% 2.62/0.98  --prep_def_merge_tr_cl                  false
% 2.62/0.98  --smt_preprocessing                     true
% 2.62/0.98  --smt_ac_axioms                         fast
% 2.62/0.98  --preprocessed_out                      false
% 2.62/0.98  --preprocessed_stats                    false
% 2.62/0.98  
% 2.62/0.98  ------ Abstraction refinement Options
% 2.62/0.98  
% 2.62/0.98  --abstr_ref                             []
% 2.62/0.98  --abstr_ref_prep                        false
% 2.62/0.98  --abstr_ref_until_sat                   false
% 2.62/0.98  --abstr_ref_sig_restrict                funpre
% 2.62/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.62/0.98  --abstr_ref_under                       []
% 2.62/0.98  
% 2.62/0.98  ------ SAT Options
% 2.62/0.98  
% 2.62/0.98  --sat_mode                              false
% 2.62/0.98  --sat_fm_restart_options                ""
% 2.62/0.98  --sat_gr_def                            false
% 2.62/0.98  --sat_epr_types                         true
% 2.62/0.98  --sat_non_cyclic_types                  false
% 2.62/0.98  --sat_finite_models                     false
% 2.62/0.98  --sat_fm_lemmas                         false
% 2.62/0.98  --sat_fm_prep                           false
% 2.62/0.98  --sat_fm_uc_incr                        true
% 2.62/0.98  --sat_out_model                         small
% 2.62/0.98  --sat_out_clauses                       false
% 2.62/0.98  
% 2.62/0.98  ------ QBF Options
% 2.62/0.98  
% 2.62/0.98  --qbf_mode                              false
% 2.62/0.98  --qbf_elim_univ                         false
% 2.62/0.98  --qbf_dom_inst                          none
% 2.62/0.98  --qbf_dom_pre_inst                      false
% 2.62/0.98  --qbf_sk_in                             false
% 2.62/0.98  --qbf_pred_elim                         true
% 2.62/0.98  --qbf_split                             512
% 2.62/0.98  
% 2.62/0.98  ------ BMC1 Options
% 2.62/0.98  
% 2.62/0.98  --bmc1_incremental                      false
% 2.62/0.98  --bmc1_axioms                           reachable_all
% 2.62/0.98  --bmc1_min_bound                        0
% 2.62/0.98  --bmc1_max_bound                        -1
% 2.62/0.98  --bmc1_max_bound_default                -1
% 2.62/0.98  --bmc1_symbol_reachability              true
% 2.62/0.98  --bmc1_property_lemmas                  false
% 2.62/0.98  --bmc1_k_induction                      false
% 2.62/0.98  --bmc1_non_equiv_states                 false
% 2.62/0.98  --bmc1_deadlock                         false
% 2.62/0.98  --bmc1_ucm                              false
% 2.62/0.98  --bmc1_add_unsat_core                   none
% 2.62/0.98  --bmc1_unsat_core_children              false
% 2.62/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.62/0.98  --bmc1_out_stat                         full
% 2.62/0.98  --bmc1_ground_init                      false
% 2.62/0.98  --bmc1_pre_inst_next_state              false
% 2.62/0.98  --bmc1_pre_inst_state                   false
% 2.62/0.98  --bmc1_pre_inst_reach_state             false
% 2.62/0.98  --bmc1_out_unsat_core                   false
% 2.62/0.98  --bmc1_aig_witness_out                  false
% 2.62/0.98  --bmc1_verbose                          false
% 2.62/0.98  --bmc1_dump_clauses_tptp                false
% 2.62/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.62/0.98  --bmc1_dump_file                        -
% 2.62/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.62/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.62/0.98  --bmc1_ucm_extend_mode                  1
% 2.62/0.98  --bmc1_ucm_init_mode                    2
% 2.62/0.98  --bmc1_ucm_cone_mode                    none
% 2.62/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.62/0.98  --bmc1_ucm_relax_model                  4
% 2.62/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.62/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.62/0.98  --bmc1_ucm_layered_model                none
% 2.62/0.98  --bmc1_ucm_max_lemma_size               10
% 2.62/0.98  
% 2.62/0.98  ------ AIG Options
% 2.62/0.98  
% 2.62/0.98  --aig_mode                              false
% 2.62/0.98  
% 2.62/0.98  ------ Instantiation Options
% 2.62/0.98  
% 2.62/0.98  --instantiation_flag                    true
% 2.62/0.98  --inst_sos_flag                         false
% 2.62/0.98  --inst_sos_phase                        true
% 2.62/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.62/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.62/0.98  --inst_lit_sel_side                     num_symb
% 2.62/0.98  --inst_solver_per_active                1400
% 2.62/0.98  --inst_solver_calls_frac                1.
% 2.62/0.98  --inst_passive_queue_type               priority_queues
% 2.62/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.62/0.98  --inst_passive_queues_freq              [25;2]
% 2.62/0.98  --inst_dismatching                      true
% 2.62/0.98  --inst_eager_unprocessed_to_passive     true
% 2.62/0.98  --inst_prop_sim_given                   true
% 2.62/0.98  --inst_prop_sim_new                     false
% 2.62/0.98  --inst_subs_new                         false
% 2.62/0.98  --inst_eq_res_simp                      false
% 2.62/0.98  --inst_subs_given                       false
% 2.62/0.98  --inst_orphan_elimination               true
% 2.62/0.98  --inst_learning_loop_flag               true
% 2.62/0.98  --inst_learning_start                   3000
% 2.62/0.98  --inst_learning_factor                  2
% 2.62/0.98  --inst_start_prop_sim_after_learn       3
% 2.62/0.98  --inst_sel_renew                        solver
% 2.62/0.98  --inst_lit_activity_flag                true
% 2.62/0.98  --inst_restr_to_given                   false
% 2.62/0.98  --inst_activity_threshold               500
% 2.62/0.98  --inst_out_proof                        true
% 2.62/0.98  
% 2.62/0.98  ------ Resolution Options
% 2.62/0.98  
% 2.62/0.98  --resolution_flag                       true
% 2.62/0.98  --res_lit_sel                           adaptive
% 2.62/0.98  --res_lit_sel_side                      none
% 2.62/0.98  --res_ordering                          kbo
% 2.62/0.98  --res_to_prop_solver                    active
% 2.62/0.98  --res_prop_simpl_new                    false
% 2.62/0.98  --res_prop_simpl_given                  true
% 2.62/0.98  --res_passive_queue_type                priority_queues
% 2.62/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.62/0.98  --res_passive_queues_freq               [15;5]
% 2.62/0.98  --res_forward_subs                      full
% 2.62/0.98  --res_backward_subs                     full
% 2.62/0.98  --res_forward_subs_resolution           true
% 2.62/0.98  --res_backward_subs_resolution          true
% 2.62/0.98  --res_orphan_elimination                true
% 2.62/0.98  --res_time_limit                        2.
% 2.62/0.98  --res_out_proof                         true
% 2.62/0.98  
% 2.62/0.98  ------ Superposition Options
% 2.62/0.98  
% 2.62/0.98  --superposition_flag                    true
% 2.62/0.98  --sup_passive_queue_type                priority_queues
% 2.62/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.62/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.62/0.98  --demod_completeness_check              fast
% 2.62/0.98  --demod_use_ground                      true
% 2.62/0.98  --sup_to_prop_solver                    passive
% 2.62/0.98  --sup_prop_simpl_new                    true
% 2.62/0.98  --sup_prop_simpl_given                  true
% 2.62/0.98  --sup_fun_splitting                     false
% 2.62/0.98  --sup_smt_interval                      50000
% 2.62/0.98  
% 2.62/0.98  ------ Superposition Simplification Setup
% 2.62/0.98  
% 2.62/0.98  --sup_indices_passive                   []
% 2.62/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.62/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.62/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.62/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.62/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.62/0.98  --sup_full_bw                           [BwDemod]
% 2.62/0.98  --sup_immed_triv                        [TrivRules]
% 2.62/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.62/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.62/0.98  --sup_immed_bw_main                     []
% 2.62/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.62/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.62/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.62/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.62/0.98  
% 2.62/0.98  ------ Combination Options
% 2.62/0.98  
% 2.62/0.98  --comb_res_mult                         3
% 2.62/0.98  --comb_sup_mult                         2
% 2.62/0.98  --comb_inst_mult                        10
% 2.62/0.98  
% 2.62/0.98  ------ Debug Options
% 2.62/0.98  
% 2.62/0.98  --dbg_backtrace                         false
% 2.62/0.98  --dbg_dump_prop_clauses                 false
% 2.62/0.98  --dbg_dump_prop_clauses_file            -
% 2.62/0.98  --dbg_out_stat                          false
% 2.62/0.98  ------ Parsing...
% 2.62/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.62/0.98  
% 2.62/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 8 0s  sf_e  pe_s  pe_e 
% 2.62/0.98  
% 2.62/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.62/0.98  
% 2.62/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.62/0.98  ------ Proving...
% 2.62/0.98  ------ Problem Properties 
% 2.62/0.98  
% 2.62/0.98  
% 2.62/0.98  clauses                                 13
% 2.62/0.98  conjectures                             4
% 2.62/0.98  EPR                                     1
% 2.62/0.98  Horn                                    10
% 2.62/0.98  unary                                   4
% 2.62/0.98  binary                                  6
% 2.62/0.98  lits                                    27
% 2.62/0.98  lits eq                                 3
% 2.62/0.98  fd_pure                                 0
% 2.62/0.98  fd_pseudo                               0
% 2.62/0.98  fd_cond                                 0
% 2.62/0.98  fd_pseudo_cond                          0
% 2.62/0.98  AC symbols                              0
% 2.62/0.98  
% 2.62/0.98  ------ Schedule dynamic 5 is on 
% 2.62/0.98  
% 2.62/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.62/0.98  
% 2.62/0.98  
% 2.62/0.98  ------ 
% 2.62/0.98  Current options:
% 2.62/0.98  ------ 
% 2.62/0.98  
% 2.62/0.98  ------ Input Options
% 2.62/0.98  
% 2.62/0.98  --out_options                           all
% 2.62/0.98  --tptp_safe_out                         true
% 2.62/0.98  --problem_path                          ""
% 2.62/0.98  --include_path                          ""
% 2.62/0.98  --clausifier                            res/vclausify_rel
% 2.62/0.98  --clausifier_options                    --mode clausify
% 2.62/0.98  --stdin                                 false
% 2.62/0.98  --stats_out                             all
% 2.62/0.98  
% 2.62/0.98  ------ General Options
% 2.62/0.98  
% 2.62/0.98  --fof                                   false
% 2.62/0.98  --time_out_real                         305.
% 2.62/0.98  --time_out_virtual                      -1.
% 2.62/0.98  --symbol_type_check                     false
% 2.62/0.98  --clausify_out                          false
% 2.62/0.98  --sig_cnt_out                           false
% 2.62/0.98  --trig_cnt_out                          false
% 2.62/0.98  --trig_cnt_out_tolerance                1.
% 2.62/0.98  --trig_cnt_out_sk_spl                   false
% 2.62/0.98  --abstr_cl_out                          false
% 2.62/0.98  
% 2.62/0.98  ------ Global Options
% 2.62/0.98  
% 2.62/0.98  --schedule                              default
% 2.62/0.98  --add_important_lit                     false
% 2.62/0.98  --prop_solver_per_cl                    1000
% 2.62/0.98  --min_unsat_core                        false
% 2.62/0.98  --soft_assumptions                      false
% 2.62/0.98  --soft_lemma_size                       3
% 2.62/0.98  --prop_impl_unit_size                   0
% 2.62/0.98  --prop_impl_unit                        []
% 2.62/0.98  --share_sel_clauses                     true
% 2.62/0.98  --reset_solvers                         false
% 2.62/0.98  --bc_imp_inh                            [conj_cone]
% 2.62/0.98  --conj_cone_tolerance                   3.
% 2.62/0.98  --extra_neg_conj                        none
% 2.62/0.98  --large_theory_mode                     true
% 2.62/0.98  --prolific_symb_bound                   200
% 2.62/0.98  --lt_threshold                          2000
% 2.62/0.98  --clause_weak_htbl                      true
% 2.62/0.98  --gc_record_bc_elim                     false
% 2.62/0.98  
% 2.62/0.98  ------ Preprocessing Options
% 2.62/0.98  
% 2.62/0.98  --preprocessing_flag                    true
% 2.62/0.98  --time_out_prep_mult                    0.1
% 2.62/0.98  --splitting_mode                        input
% 2.62/0.98  --splitting_grd                         true
% 2.62/0.98  --splitting_cvd                         false
% 2.62/0.98  --splitting_cvd_svl                     false
% 2.62/0.98  --splitting_nvd                         32
% 2.62/0.98  --sub_typing                            true
% 2.62/0.98  --prep_gs_sim                           true
% 2.62/0.98  --prep_unflatten                        true
% 2.62/0.98  --prep_res_sim                          true
% 2.62/0.98  --prep_upred                            true
% 2.62/0.98  --prep_sem_filter                       exhaustive
% 2.62/0.98  --prep_sem_filter_out                   false
% 2.62/0.98  --pred_elim                             true
% 2.62/0.98  --res_sim_input                         true
% 2.62/0.98  --eq_ax_congr_red                       true
% 2.62/0.98  --pure_diseq_elim                       true
% 2.62/0.98  --brand_transform                       false
% 2.62/0.98  --non_eq_to_eq                          false
% 2.62/0.98  --prep_def_merge                        true
% 2.62/0.98  --prep_def_merge_prop_impl              false
% 2.62/0.98  --prep_def_merge_mbd                    true
% 2.62/0.98  --prep_def_merge_tr_red                 false
% 2.62/0.98  --prep_def_merge_tr_cl                  false
% 2.62/0.98  --smt_preprocessing                     true
% 2.62/0.98  --smt_ac_axioms                         fast
% 2.62/0.98  --preprocessed_out                      false
% 2.62/0.98  --preprocessed_stats                    false
% 2.62/0.98  
% 2.62/0.98  ------ Abstraction refinement Options
% 2.62/0.98  
% 2.62/0.98  --abstr_ref                             []
% 2.62/0.98  --abstr_ref_prep                        false
% 2.62/0.98  --abstr_ref_until_sat                   false
% 2.62/0.98  --abstr_ref_sig_restrict                funpre
% 2.62/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.62/0.98  --abstr_ref_under                       []
% 2.62/0.98  
% 2.62/0.98  ------ SAT Options
% 2.62/0.98  
% 2.62/0.98  --sat_mode                              false
% 2.62/0.98  --sat_fm_restart_options                ""
% 2.62/0.98  --sat_gr_def                            false
% 2.62/0.98  --sat_epr_types                         true
% 2.62/0.98  --sat_non_cyclic_types                  false
% 2.62/0.98  --sat_finite_models                     false
% 2.62/0.98  --sat_fm_lemmas                         false
% 2.62/0.98  --sat_fm_prep                           false
% 2.62/0.98  --sat_fm_uc_incr                        true
% 2.62/0.98  --sat_out_model                         small
% 2.62/0.98  --sat_out_clauses                       false
% 2.62/0.98  
% 2.62/0.98  ------ QBF Options
% 2.62/0.98  
% 2.62/0.98  --qbf_mode                              false
% 2.62/0.98  --qbf_elim_univ                         false
% 2.62/0.98  --qbf_dom_inst                          none
% 2.62/0.98  --qbf_dom_pre_inst                      false
% 2.62/0.98  --qbf_sk_in                             false
% 2.62/0.98  --qbf_pred_elim                         true
% 2.62/0.98  --qbf_split                             512
% 2.62/0.98  
% 2.62/0.98  ------ BMC1 Options
% 2.62/0.98  
% 2.62/0.98  --bmc1_incremental                      false
% 2.62/0.98  --bmc1_axioms                           reachable_all
% 2.62/0.98  --bmc1_min_bound                        0
% 2.62/0.98  --bmc1_max_bound                        -1
% 2.62/0.98  --bmc1_max_bound_default                -1
% 2.62/0.98  --bmc1_symbol_reachability              true
% 2.62/0.98  --bmc1_property_lemmas                  false
% 2.62/0.98  --bmc1_k_induction                      false
% 2.62/0.98  --bmc1_non_equiv_states                 false
% 2.62/0.98  --bmc1_deadlock                         false
% 2.62/0.98  --bmc1_ucm                              false
% 2.62/0.98  --bmc1_add_unsat_core                   none
% 2.62/0.98  --bmc1_unsat_core_children              false
% 2.62/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.62/0.98  --bmc1_out_stat                         full
% 2.62/0.98  --bmc1_ground_init                      false
% 2.62/0.98  --bmc1_pre_inst_next_state              false
% 2.62/0.98  --bmc1_pre_inst_state                   false
% 2.62/0.98  --bmc1_pre_inst_reach_state             false
% 2.62/0.98  --bmc1_out_unsat_core                   false
% 2.62/0.98  --bmc1_aig_witness_out                  false
% 2.62/0.98  --bmc1_verbose                          false
% 2.62/0.98  --bmc1_dump_clauses_tptp                false
% 2.62/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.62/0.98  --bmc1_dump_file                        -
% 2.62/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.62/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.62/0.98  --bmc1_ucm_extend_mode                  1
% 2.62/0.98  --bmc1_ucm_init_mode                    2
% 2.62/0.98  --bmc1_ucm_cone_mode                    none
% 2.62/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.62/0.98  --bmc1_ucm_relax_model                  4
% 2.62/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.62/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.62/0.98  --bmc1_ucm_layered_model                none
% 2.62/0.98  --bmc1_ucm_max_lemma_size               10
% 2.62/0.98  
% 2.62/0.98  ------ AIG Options
% 2.62/0.98  
% 2.62/0.98  --aig_mode                              false
% 2.62/0.98  
% 2.62/0.98  ------ Instantiation Options
% 2.62/0.98  
% 2.62/0.98  --instantiation_flag                    true
% 2.62/0.98  --inst_sos_flag                         false
% 2.62/0.98  --inst_sos_phase                        true
% 2.62/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.62/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.62/0.98  --inst_lit_sel_side                     none
% 2.62/0.98  --inst_solver_per_active                1400
% 2.62/0.98  --inst_solver_calls_frac                1.
% 2.62/0.98  --inst_passive_queue_type               priority_queues
% 2.62/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.62/0.98  --inst_passive_queues_freq              [25;2]
% 2.62/0.98  --inst_dismatching                      true
% 2.62/0.98  --inst_eager_unprocessed_to_passive     true
% 2.62/0.98  --inst_prop_sim_given                   true
% 2.62/0.98  --inst_prop_sim_new                     false
% 2.62/0.98  --inst_subs_new                         false
% 2.62/0.98  --inst_eq_res_simp                      false
% 2.62/0.98  --inst_subs_given                       false
% 2.62/0.98  --inst_orphan_elimination               true
% 2.62/0.98  --inst_learning_loop_flag               true
% 2.62/0.98  --inst_learning_start                   3000
% 2.62/0.98  --inst_learning_factor                  2
% 2.62/0.98  --inst_start_prop_sim_after_learn       3
% 2.62/0.98  --inst_sel_renew                        solver
% 2.62/0.98  --inst_lit_activity_flag                true
% 2.62/0.98  --inst_restr_to_given                   false
% 2.62/0.98  --inst_activity_threshold               500
% 2.62/0.98  --inst_out_proof                        true
% 2.62/0.98  
% 2.62/0.98  ------ Resolution Options
% 2.62/0.98  
% 2.62/0.98  --resolution_flag                       false
% 2.62/0.98  --res_lit_sel                           adaptive
% 2.62/0.98  --res_lit_sel_side                      none
% 2.62/0.98  --res_ordering                          kbo
% 2.62/0.98  --res_to_prop_solver                    active
% 2.62/0.98  --res_prop_simpl_new                    false
% 2.62/0.98  --res_prop_simpl_given                  true
% 2.62/0.98  --res_passive_queue_type                priority_queues
% 2.62/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.62/0.98  --res_passive_queues_freq               [15;5]
% 2.62/0.98  --res_forward_subs                      full
% 2.62/0.98  --res_backward_subs                     full
% 2.62/0.98  --res_forward_subs_resolution           true
% 2.62/0.98  --res_backward_subs_resolution          true
% 2.62/0.98  --res_orphan_elimination                true
% 2.62/0.98  --res_time_limit                        2.
% 2.62/0.98  --res_out_proof                         true
% 2.62/0.98  
% 2.62/0.98  ------ Superposition Options
% 2.62/0.98  
% 2.62/0.98  --superposition_flag                    true
% 2.62/0.98  --sup_passive_queue_type                priority_queues
% 2.62/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.62/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.62/0.98  --demod_completeness_check              fast
% 2.62/0.98  --demod_use_ground                      true
% 2.62/0.98  --sup_to_prop_solver                    passive
% 2.62/0.98  --sup_prop_simpl_new                    true
% 2.62/0.98  --sup_prop_simpl_given                  true
% 2.62/0.98  --sup_fun_splitting                     false
% 2.62/0.98  --sup_smt_interval                      50000
% 2.62/0.98  
% 2.62/0.98  ------ Superposition Simplification Setup
% 2.62/0.98  
% 2.62/0.98  --sup_indices_passive                   []
% 2.62/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.62/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.62/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.62/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.62/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.62/0.98  --sup_full_bw                           [BwDemod]
% 2.62/0.98  --sup_immed_triv                        [TrivRules]
% 2.62/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.62/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.62/0.98  --sup_immed_bw_main                     []
% 2.62/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.62/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.62/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.62/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.62/0.98  
% 2.62/0.98  ------ Combination Options
% 2.62/0.98  
% 2.62/0.98  --comb_res_mult                         3
% 2.62/0.98  --comb_sup_mult                         2
% 2.62/0.98  --comb_inst_mult                        10
% 2.62/0.98  
% 2.62/0.98  ------ Debug Options
% 2.62/0.98  
% 2.62/0.98  --dbg_backtrace                         false
% 2.62/0.98  --dbg_dump_prop_clauses                 false
% 2.62/0.98  --dbg_dump_prop_clauses_file            -
% 2.62/0.98  --dbg_out_stat                          false
% 2.62/0.98  
% 2.62/0.98  
% 2.62/0.98  
% 2.62/0.98  
% 2.62/0.98  ------ Proving...
% 2.62/0.98  
% 2.62/0.98  
% 2.62/0.98  % SZS status Theorem for theBenchmark.p
% 2.62/0.98  
% 2.62/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.62/0.98  
% 2.62/0.98  fof(f3,axiom,(
% 2.62/0.98    ! [X0,X1] : (~r2_hidden(X0,X1) => r1_xboole_0(k1_tarski(X0),X1))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f17,plain,(
% 2.62/0.98    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1))),
% 2.62/0.98    inference(ennf_transformation,[],[f3])).
% 2.62/0.98  
% 2.62/0.98  fof(f51,plain,(
% 2.62/0.98    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f17])).
% 2.62/0.98  
% 2.62/0.98  fof(f2,axiom,(
% 2.62/0.98    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f50,plain,(
% 2.62/0.98    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f2])).
% 2.62/0.98  
% 2.62/0.98  fof(f72,plain,(
% 2.62/0.98    ( ! [X0,X1] : (r1_xboole_0(k2_tarski(X0,X0),X1) | r2_hidden(X0,X1)) )),
% 2.62/0.98    inference(definition_unfolding,[],[f51,f50])).
% 2.62/0.98  
% 2.62/0.98  fof(f1,axiom,(
% 2.62/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f15,plain,(
% 2.62/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.62/0.98    inference(rectify,[],[f1])).
% 2.62/0.98  
% 2.62/0.98  fof(f16,plain,(
% 2.62/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 2.62/0.98    inference(ennf_transformation,[],[f15])).
% 2.62/0.98  
% 2.62/0.98  fof(f37,plain,(
% 2.62/0.98    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.62/0.98    introduced(choice_axiom,[])).
% 2.62/0.98  
% 2.62/0.98  fof(f38,plain,(
% 2.62/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 2.62/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f37])).
% 2.62/0.98  
% 2.62/0.98  fof(f48,plain,(
% 2.62/0.98    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f38])).
% 2.62/0.98  
% 2.62/0.98  fof(f47,plain,(
% 2.62/0.98    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f38])).
% 2.62/0.98  
% 2.62/0.98  fof(f49,plain,(
% 2.62/0.98    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f38])).
% 2.62/0.98  
% 2.62/0.98  fof(f9,axiom,(
% 2.62/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0) & v2_pre_topc(X0)) => v4_pre_topc(k2_pre_topc(X0,X1),X0))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f27,plain,(
% 2.62/0.98    ! [X0,X1] : (v4_pre_topc(k2_pre_topc(X0,X1),X0) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f9])).
% 2.62/0.98  
% 2.62/0.98  fof(f28,plain,(
% 2.62/0.98    ! [X0,X1] : (v4_pre_topc(k2_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.62/0.98    inference(flattening,[],[f27])).
% 2.62/0.98  
% 2.62/0.98  fof(f57,plain,(
% 2.62/0.98    ( ! [X0,X1] : (v4_pre_topc(k2_pre_topc(X0,X1),X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f28])).
% 2.62/0.98  
% 2.62/0.98  fof(f10,axiom,(
% 2.62/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => (v3_tdlat_3(X0) <=> ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v4_pre_topc(X1,X0) => v3_pre_topc(X1,X0)))))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f29,plain,(
% 2.62/0.98    ! [X0] : ((v3_tdlat_3(X0) <=> ! [X1] : ((v3_pre_topc(X1,X0) | ~v4_pre_topc(X1,X0)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f10])).
% 2.62/0.98  
% 2.62/0.98  fof(f30,plain,(
% 2.62/0.98    ! [X0] : ((v3_tdlat_3(X0) <=> ! [X1] : (v3_pre_topc(X1,X0) | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.62/0.98    inference(flattening,[],[f29])).
% 2.62/0.98  
% 2.62/0.98  fof(f39,plain,(
% 2.62/0.98    ! [X0] : (((v3_tdlat_3(X0) | ? [X1] : (~v3_pre_topc(X1,X0) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X1] : (v3_pre_topc(X1,X0) | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~v3_tdlat_3(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.62/0.98    inference(nnf_transformation,[],[f30])).
% 2.62/0.98  
% 2.62/0.98  fof(f40,plain,(
% 2.62/0.98    ! [X0] : (((v3_tdlat_3(X0) | ? [X1] : (~v3_pre_topc(X1,X0) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v3_pre_topc(X2,X0) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v3_tdlat_3(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.62/0.98    inference(rectify,[],[f39])).
% 2.62/0.98  
% 2.62/0.98  fof(f41,plain,(
% 2.62/0.98    ! [X0] : (? [X1] : (~v3_pre_topc(X1,X0) & v4_pre_topc(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (~v3_pre_topc(sK1(X0),X0) & v4_pre_topc(sK1(X0),X0) & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.62/0.98    introduced(choice_axiom,[])).
% 2.62/0.98  
% 2.62/0.98  fof(f42,plain,(
% 2.62/0.98    ! [X0] : (((v3_tdlat_3(X0) | (~v3_pre_topc(sK1(X0),X0) & v4_pre_topc(sK1(X0),X0) & m1_subset_1(sK1(X0),k1_zfmisc_1(u1_struct_0(X0))))) & (! [X2] : (v3_pre_topc(X2,X0) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v3_tdlat_3(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.62/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f40,f41])).
% 2.62/0.98  
% 2.62/0.98  fof(f58,plain,(
% 2.62/0.98    ( ! [X2,X0] : (v3_pre_topc(X2,X0) | ~v4_pre_topc(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_tdlat_3(X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f42])).
% 2.62/0.98  
% 2.62/0.98  fof(f4,axiom,(
% 2.62/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f18,plain,(
% 2.62/0.98    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f4])).
% 2.62/0.98  
% 2.62/0.98  fof(f19,plain,(
% 2.62/0.98    ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 2.62/0.98    inference(flattening,[],[f18])).
% 2.62/0.98  
% 2.62/0.98  fof(f52,plain,(
% 2.62/0.98    ( ! [X0,X1] : (m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f19])).
% 2.62/0.98  
% 2.62/0.98  fof(f13,conjecture,(
% 2.62/0.98    ! [X0] : ((l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))))))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f14,negated_conjecture,(
% 2.62/0.98    ~! [X0] : ((l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))))))),
% 2.62/0.98    inference(negated_conjecture,[],[f13])).
% 2.62/0.98  
% 2.62/0.98  fof(f35,plain,(
% 2.62/0.98    ? [X0] : (? [X1] : (? [X2] : ((k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f14])).
% 2.62/0.98  
% 2.62/0.98  fof(f36,plain,(
% 2.62/0.98    ? [X0] : (? [X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.62/0.98    inference(flattening,[],[f35])).
% 2.62/0.98  
% 2.62/0.98  fof(f45,plain,(
% 2.62/0.98    ( ! [X0,X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) => (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK4)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK4))) & m1_subset_1(sK4,u1_struct_0(X0)))) )),
% 2.62/0.98    introduced(choice_axiom,[])).
% 2.62/0.98  
% 2.62/0.98  fof(f44,plain,(
% 2.62/0.98    ( ! [X0] : (? [X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) => (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),sK3)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(sK3,u1_struct_0(X0)))) )),
% 2.62/0.98    introduced(choice_axiom,[])).
% 2.62/0.98  
% 2.62/0.98  fof(f43,plain,(
% 2.62/0.98    ? [X0] : (? [X1] : (? [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) != k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) & ~r1_xboole_0(k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)),k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) & m1_subset_1(X2,u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X2)) & ~r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X2))) & m1_subset_1(X2,u1_struct_0(sK2))) & m1_subset_1(X1,u1_struct_0(sK2))) & l1_pre_topc(sK2) & v3_tdlat_3(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))),
% 2.62/0.98    introduced(choice_axiom,[])).
% 2.62/0.98  
% 2.62/0.98  fof(f46,plain,(
% 2.62/0.98    ((k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)) & ~r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) & m1_subset_1(sK4,u1_struct_0(sK2))) & m1_subset_1(sK3,u1_struct_0(sK2))) & l1_pre_topc(sK2) & v3_tdlat_3(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)),
% 2.62/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f36,f45,f44,f43])).
% 2.62/0.98  
% 2.62/0.98  fof(f65,plain,(
% 2.62/0.98    v2_pre_topc(sK2)),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f66,plain,(
% 2.62/0.98    v3_tdlat_3(sK2)),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f67,plain,(
% 2.62/0.98    l1_pre_topc(sK2)),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f11,axiom,(
% 2.62/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((v3_pre_topc(X1,X0) & r1_xboole_0(X1,X2)) => r1_xboole_0(X1,k2_pre_topc(X0,X2))))))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f31,plain,(
% 2.62/0.98    ! [X0] : (! [X1] : (! [X2] : ((r1_xboole_0(X1,k2_pre_topc(X0,X2)) | (~v3_pre_topc(X1,X0) | ~r1_xboole_0(X1,X2))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f11])).
% 2.62/0.98  
% 2.62/0.98  fof(f32,plain,(
% 2.62/0.98    ! [X0] : (! [X1] : (! [X2] : (r1_xboole_0(X1,k2_pre_topc(X0,X2)) | ~v3_pre_topc(X1,X0) | ~r1_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.62/0.98    inference(flattening,[],[f31])).
% 2.62/0.98  
% 2.62/0.98  fof(f62,plain,(
% 2.62/0.98    ( ! [X2,X0,X1] : (r1_xboole_0(X1,k2_pre_topc(X0,X2)) | ~v3_pre_topc(X1,X0) | ~r1_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f32])).
% 2.62/0.98  
% 2.62/0.98  fof(f69,plain,(
% 2.62/0.98    m1_subset_1(sK4,u1_struct_0(sK2))),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f8,axiom,(
% 2.62/0.98    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f25,plain,(
% 2.62/0.98    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f8])).
% 2.62/0.98  
% 2.62/0.98  fof(f26,plain,(
% 2.62/0.98    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.62/0.98    inference(flattening,[],[f25])).
% 2.62/0.98  
% 2.62/0.98  fof(f56,plain,(
% 2.62/0.98    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f26])).
% 2.62/0.98  
% 2.62/0.98  fof(f73,plain,(
% 2.62/0.98    ( ! [X0,X1] : (k2_tarski(X1,X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.62/0.98    inference(definition_unfolding,[],[f56,f50])).
% 2.62/0.98  
% 2.62/0.98  fof(f5,axiom,(
% 2.62/0.98    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f20,plain,(
% 2.62/0.98    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.62/0.98    inference(ennf_transformation,[],[f5])).
% 2.62/0.98  
% 2.62/0.98  fof(f53,plain,(
% 2.62/0.98    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f20])).
% 2.62/0.98  
% 2.62/0.98  fof(f6,axiom,(
% 2.62/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f21,plain,(
% 2.62/0.98    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f6])).
% 2.62/0.98  
% 2.62/0.98  fof(f22,plain,(
% 2.62/0.98    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.62/0.98    inference(flattening,[],[f21])).
% 2.62/0.98  
% 2.62/0.98  fof(f54,plain,(
% 2.62/0.98    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f22])).
% 2.62/0.98  
% 2.62/0.98  fof(f64,plain,(
% 2.62/0.98    ~v2_struct_0(sK2)),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f70,plain,(
% 2.62/0.98    ~r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)))),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f68,plain,(
% 2.62/0.98    m1_subset_1(sK3,u1_struct_0(sK2))),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  fof(f7,axiom,(
% 2.62/0.98    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f23,plain,(
% 2.62/0.98    ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f7])).
% 2.62/0.98  
% 2.62/0.98  fof(f24,plain,(
% 2.62/0.98    ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.62/0.98    inference(flattening,[],[f23])).
% 2.62/0.98  
% 2.62/0.98  fof(f55,plain,(
% 2.62/0.98    ( ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f24])).
% 2.62/0.98  
% 2.62/0.98  fof(f12,axiom,(
% 2.62/0.98    ! [X0] : ((l1_pre_topc(X0) & v3_tdlat_3(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => (r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) => k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))))))),
% 2.62/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.62/0.98  
% 2.62/0.98  fof(f33,plain,(
% 2.62/0.98    ! [X0] : (! [X1] : (! [X2] : ((k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | ~r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v3_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.62/0.98    inference(ennf_transformation,[],[f12])).
% 2.62/0.98  
% 2.62/0.98  fof(f34,plain,(
% 2.62/0.98    ! [X0] : (! [X1] : (! [X2] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | ~r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v3_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.62/0.98    inference(flattening,[],[f33])).
% 2.62/0.98  
% 2.62/0.98  fof(f63,plain,(
% 2.62/0.98    ( ! [X2,X0,X1] : (k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X1)) = k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2)) | ~r2_hidden(X1,k2_pre_topc(X0,k6_domain_1(u1_struct_0(X0),X2))) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v3_tdlat_3(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.62/0.98    inference(cnf_transformation,[],[f34])).
% 2.62/0.98  
% 2.62/0.98  fof(f71,plain,(
% 2.62/0.98    k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))),
% 2.62/0.98    inference(cnf_transformation,[],[f46])).
% 2.62/0.98  
% 2.62/0.98  cnf(c_3,plain,
% 2.62/0.98      ( r2_hidden(X0,X1) | r1_xboole_0(k2_tarski(X0,X0),X1) ),
% 2.62/0.98      inference(cnf_transformation,[],[f72]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_620,plain,
% 2.62/0.98      ( r2_hidden(X0_49,X1_49)
% 2.62/0.98      | r1_xboole_0(k2_tarski(X0_49,X0_49),X1_49) ),
% 2.62/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_877,plain,
% 2.62/0.98      ( r2_hidden(X0_49,X1_49) = iProver_top
% 2.62/0.98      | r1_xboole_0(k2_tarski(X0_49,X0_49),X1_49) = iProver_top ),
% 2.62/0.98      inference(predicate_to_equality,[status(thm)],[c_620]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_1,plain,
% 2.62/0.98      ( r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1) ),
% 2.62/0.98      inference(cnf_transformation,[],[f48]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_622,plain,
% 2.62/0.98      ( r2_hidden(sK0(X0_49,X1_49),X1_49) | r1_xboole_0(X0_49,X1_49) ),
% 2.62/0.98      inference(subtyping,[status(esa)],[c_1]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_875,plain,
% 2.62/0.98      ( r2_hidden(sK0(X0_49,X1_49),X1_49) = iProver_top
% 2.62/0.98      | r1_xboole_0(X0_49,X1_49) = iProver_top ),
% 2.62/0.98      inference(predicate_to_equality,[status(thm)],[c_622]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_2,plain,
% 2.62/0.98      ( r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1) ),
% 2.62/0.98      inference(cnf_transformation,[],[f47]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_621,plain,
% 2.62/0.98      ( r2_hidden(sK0(X0_49,X1_49),X0_49) | r1_xboole_0(X0_49,X1_49) ),
% 2.62/0.98      inference(subtyping,[status(esa)],[c_2]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_876,plain,
% 2.62/0.98      ( r2_hidden(sK0(X0_49,X1_49),X0_49) = iProver_top
% 2.62/0.98      | r1_xboole_0(X0_49,X1_49) = iProver_top ),
% 2.62/0.98      inference(predicate_to_equality,[status(thm)],[c_621]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_0,plain,
% 2.62/0.98      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,X2) | ~ r1_xboole_0(X2,X1) ),
% 2.62/0.98      inference(cnf_transformation,[],[f49]) ).
% 2.62/0.98  
% 2.62/0.98  cnf(c_623,plain,
% 2.62/0.98      ( ~ r2_hidden(X0_49,X1_49)
% 2.62/0.98      | ~ r2_hidden(X0_49,X2_49)
% 2.62/0.99      | ~ r1_xboole_0(X2_49,X1_49) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_0]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_874,plain,
% 2.62/0.99      ( r2_hidden(X0_49,X1_49) != iProver_top
% 2.62/0.99      | r2_hidden(X0_49,X2_49) != iProver_top
% 2.62/0.99      | r1_xboole_0(X2_49,X1_49) != iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_623]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1376,plain,
% 2.62/0.99      ( r2_hidden(sK0(X0_49,X1_49),X2_49) != iProver_top
% 2.62/0.99      | r1_xboole_0(X2_49,X0_49) != iProver_top
% 2.62/0.99      | r1_xboole_0(X0_49,X1_49) = iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_876,c_874]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_2184,plain,
% 2.62/0.99      ( r1_xboole_0(X0_49,X1_49) != iProver_top
% 2.62/0.99      | r1_xboole_0(X1_49,X0_49) = iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_875,c_1376]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_2534,plain,
% 2.62/0.99      ( r2_hidden(X0_49,X1_49) = iProver_top
% 2.62/0.99      | r1_xboole_0(X1_49,k2_tarski(X0_49,X0_49)) = iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_877,c_2184]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_9,plain,
% 2.62/0.99      ( v4_pre_topc(k2_pre_topc(X0,X1),X0)
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.62/0.99      | ~ v2_pre_topc(X0)
% 2.62/0.99      | ~ l1_pre_topc(X0) ),
% 2.62/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_13,plain,
% 2.62/0.99      ( v3_pre_topc(X0,X1)
% 2.62/0.99      | ~ v4_pre_topc(X0,X1)
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ v3_tdlat_3(X1)
% 2.62/0.99      | ~ v2_pre_topc(X1)
% 2.62/0.99      | ~ l1_pre_topc(X1) ),
% 2.62/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_387,plain,
% 2.62/0.99      ( v3_pre_topc(X0,X1)
% 2.62/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X3)))
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ v3_tdlat_3(X1)
% 2.62/0.99      | ~ v2_pre_topc(X3)
% 2.62/0.99      | ~ v2_pre_topc(X1)
% 2.62/0.99      | ~ l1_pre_topc(X3)
% 2.62/0.99      | ~ l1_pre_topc(X1)
% 2.62/0.99      | X1 != X3
% 2.62/0.99      | k2_pre_topc(X3,X2) != X0 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_13]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_388,plain,
% 2.62/0.99      ( v3_pre_topc(k2_pre_topc(X0,X1),X0)
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.62/0.99      | ~ m1_subset_1(k2_pre_topc(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
% 2.62/0.99      | ~ v3_tdlat_3(X0)
% 2.62/0.99      | ~ v2_pre_topc(X0)
% 2.62/0.99      | ~ l1_pre_topc(X0) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_387]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_4,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ l1_pre_topc(X1) ),
% 2.62/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_404,plain,
% 2.62/0.99      ( v3_pre_topc(k2_pre_topc(X0,X1),X0)
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.62/0.99      | ~ v3_tdlat_3(X0)
% 2.62/0.99      | ~ v2_pre_topc(X0)
% 2.62/0.99      | ~ l1_pre_topc(X0) ),
% 2.62/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_388,c_4]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_22,negated_conjecture,
% 2.62/0.99      ( v2_pre_topc(sK2) ),
% 2.62/0.99      inference(cnf_transformation,[],[f65]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_421,plain,
% 2.62/0.99      ( v3_pre_topc(k2_pre_topc(X0,X1),X0)
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.62/0.99      | ~ v3_tdlat_3(X0)
% 2.62/0.99      | ~ l1_pre_topc(X0)
% 2.62/0.99      | sK2 != X0 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_404,c_22]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_422,plain,
% 2.62/0.99      ( v3_pre_topc(k2_pre_topc(sK2,X0),sK2)
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ v3_tdlat_3(sK2)
% 2.62/0.99      | ~ l1_pre_topc(sK2) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_421]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_21,negated_conjecture,
% 2.62/0.99      ( v3_tdlat_3(sK2) ),
% 2.62/0.99      inference(cnf_transformation,[],[f66]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_20,negated_conjecture,
% 2.62/0.99      ( l1_pre_topc(sK2) ),
% 2.62/0.99      inference(cnf_transformation,[],[f67]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_426,plain,
% 2.62/0.99      ( v3_pre_topc(k2_pre_topc(sK2,X0),sK2)
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.62/0.99      inference(global_propositional_subsumption,
% 2.62/0.99                [status(thm)],
% 2.62/0.99                [c_422,c_21,c_20]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_14,plain,
% 2.62/0.99      ( ~ v3_pre_topc(X0,X1)
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ r1_xboole_0(X0,X2)
% 2.62/0.99      | r1_xboole_0(X0,k2_pre_topc(X1,X2))
% 2.62/0.99      | ~ v2_pre_topc(X1)
% 2.62/0.99      | ~ l1_pre_topc(X1) ),
% 2.62/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_443,plain,
% 2.62/0.99      ( ~ v3_pre_topc(X0,X1)
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | ~ r1_xboole_0(X0,X2)
% 2.62/0.99      | r1_xboole_0(X0,k2_pre_topc(X1,X2))
% 2.62/0.99      | ~ l1_pre_topc(X1)
% 2.62/0.99      | sK2 != X1 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_22]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_444,plain,
% 2.62/0.99      ( ~ v3_pre_topc(X0,sK2)
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(X0,X1)
% 2.62/0.99      | r1_xboole_0(X0,k2_pre_topc(sK2,X1))
% 2.62/0.99      | ~ l1_pre_topc(sK2) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_443]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_448,plain,
% 2.62/0.99      ( r1_xboole_0(X0,k2_pre_topc(sK2,X1))
% 2.62/0.99      | ~ r1_xboole_0(X0,X1)
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ v3_pre_topc(X0,sK2) ),
% 2.62/0.99      inference(global_propositional_subsumption,
% 2.62/0.99                [status(thm)],
% 2.62/0.99                [c_444,c_20]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_449,plain,
% 2.62/0.99      ( ~ v3_pre_topc(X0,sK2)
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(X0,X1)
% 2.62/0.99      | r1_xboole_0(X0,k2_pre_topc(sK2,X1)) ),
% 2.62/0.99      inference(renaming,[status(thm)],[c_448]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_494,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(X0,X2)
% 2.62/0.99      | r1_xboole_0(X0,k2_pre_topc(sK2,X2))
% 2.62/0.99      | k2_pre_topc(sK2,X1) != X0
% 2.62/0.99      | sK2 != sK2 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_426,c_449]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_495,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(k2_pre_topc(sK2,X0),X1)
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X0),k2_pre_topc(sK2,X1)) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_494]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_479,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | m1_subset_1(k2_pre_topc(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.62/0.99      | sK2 != X1 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_20]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_480,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | m1_subset_1(k2_pre_topc(sK2,X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_479]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_499,plain,
% 2.62/0.99      ( ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(k2_pre_topc(sK2,X0),X1)
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X0),k2_pre_topc(sK2,X1)) ),
% 2.62/0.99      inference(global_propositional_subsumption,
% 2.62/0.99                [status(thm)],
% 2.62/0.99                [c_495,c_480]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_500,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(k2_pre_topc(sK2,X1),X0)
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X1),k2_pre_topc(sK2,X0)) ),
% 2.62/0.99      inference(renaming,[status(thm)],[c_499]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_611,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0_49,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ m1_subset_1(X1_49,k1_zfmisc_1(u1_struct_0(sK2)))
% 2.62/0.99      | ~ r1_xboole_0(k2_pre_topc(sK2,X1_49),X0_49)
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X1_49),k2_pre_topc(sK2,X0_49)) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_500]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_885,plain,
% 2.62/0.99      ( m1_subset_1(X0_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.62/0.99      | m1_subset_1(X1_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X1_49),X0_49) != iProver_top
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X1_49),k2_pre_topc(sK2,X0_49)) = iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_611]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_2533,plain,
% 2.62/0.99      ( m1_subset_1(X0_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.62/0.99      | m1_subset_1(X1_49,k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X1_49),X0_49) != iProver_top
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,X0_49),k2_pre_topc(sK2,X1_49)) = iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_885,c_2184]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_18,negated_conjecture,
% 2.62/0.99      ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
% 2.62/0.99      inference(cnf_transformation,[],[f69]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_617,negated_conjecture,
% 2.62/0.99      ( m1_subset_1(sK4,u1_struct_0(sK2)) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_18]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_879,plain,
% 2.62/0.99      ( m1_subset_1(sK4,u1_struct_0(sK2)) = iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_617]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_8,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,X1)
% 2.62/0.99      | v1_xboole_0(X1)
% 2.62/0.99      | k6_domain_1(X1,X0) = k2_tarski(X0,X0) ),
% 2.62/0.99      inference(cnf_transformation,[],[f73]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_5,plain,
% 2.62/0.99      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 2.62/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_6,plain,
% 2.62/0.99      ( v2_struct_0(X0)
% 2.62/0.99      | ~ v1_xboole_0(u1_struct_0(X0))
% 2.62/0.99      | ~ l1_struct_0(X0) ),
% 2.62/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_253,plain,
% 2.62/0.99      ( v2_struct_0(X0)
% 2.62/0.99      | ~ v1_xboole_0(u1_struct_0(X0))
% 2.62/0.99      | ~ l1_pre_topc(X0) ),
% 2.62/0.99      inference(resolution,[status(thm)],[c_5,c_6]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_23,negated_conjecture,
% 2.62/0.99      ( ~ v2_struct_0(sK2) ),
% 2.62/0.99      inference(cnf_transformation,[],[f64]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_315,plain,
% 2.62/0.99      ( ~ v1_xboole_0(u1_struct_0(X0)) | ~ l1_pre_topc(X0) | sK2 != X0 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_253,c_23]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_316,plain,
% 2.62/0.99      ( ~ v1_xboole_0(u1_struct_0(sK2)) | ~ l1_pre_topc(sK2) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_315]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_53,plain,
% 2.62/0.99      ( v2_struct_0(sK2)
% 2.62/0.99      | ~ v1_xboole_0(u1_struct_0(sK2))
% 2.62/0.99      | ~ l1_struct_0(sK2) ),
% 2.62/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_56,plain,
% 2.62/0.99      ( l1_struct_0(sK2) | ~ l1_pre_topc(sK2) ),
% 2.62/0.99      inference(instantiation,[status(thm)],[c_5]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_318,plain,
% 2.62/0.99      ( ~ v1_xboole_0(u1_struct_0(sK2)) ),
% 2.62/0.99      inference(global_propositional_subsumption,
% 2.62/0.99                [status(thm)],
% 2.62/0.99                [c_316,c_23,c_20,c_53,c_56]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_357,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,X1)
% 2.62/0.99      | k6_domain_1(X1,X0) = k2_tarski(X0,X0)
% 2.62/0.99      | u1_struct_0(sK2) != X1 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_318]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_358,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.62/0.99      | k6_domain_1(u1_struct_0(sK2),X0) = k2_tarski(X0,X0) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_357]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_614,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0_49,u1_struct_0(sK2))
% 2.62/0.99      | k6_domain_1(u1_struct_0(sK2),X0_49) = k2_tarski(X0_49,X0_49) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_358]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_882,plain,
% 2.62/0.99      ( k6_domain_1(u1_struct_0(sK2),X0_49) = k2_tarski(X0_49,X0_49)
% 2.62/0.99      | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_614]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1154,plain,
% 2.62/0.99      ( k6_domain_1(u1_struct_0(sK2),sK4) = k2_tarski(sK4,sK4) ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_879,c_882]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_17,negated_conjecture,
% 2.62/0.99      ( ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) ),
% 2.62/0.99      inference(cnf_transformation,[],[f70]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_618,negated_conjecture,
% 2.62/0.99      ( ~ r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_17]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_878,plain,
% 2.62/0.99      ( r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))) != iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_618]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1161,plain,
% 2.62/0.99      ( r1_xboole_0(k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)),k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
% 2.62/0.99      inference(demodulation,[status(thm)],[c_1154,c_878]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_19,negated_conjecture,
% 2.62/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 2.62/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_616,negated_conjecture,
% 2.62/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_19]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_880,plain,
% 2.62/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_616]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1155,plain,
% 2.62/0.99      ( k6_domain_1(u1_struct_0(sK2),sK3) = k2_tarski(sK3,sK3) ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_880,c_882]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1512,plain,
% 2.62/0.99      ( r1_xboole_0(k2_pre_topc(sK2,k2_tarski(sK3,sK3)),k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
% 2.62/0.99      inference(light_normalisation,[status(thm)],[c_1161,c_1155]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_3434,plain,
% 2.62/0.99      ( m1_subset_1(k2_tarski(sK4,sK4),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.62/0.99      | m1_subset_1(k2_tarski(sK3,sK3),k1_zfmisc_1(u1_struct_0(sK2))) != iProver_top
% 2.62/0.99      | r1_xboole_0(k2_pre_topc(sK2,k2_tarski(sK4,sK4)),k2_tarski(sK3,sK3)) != iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_2533,c_1512]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_28,plain,
% 2.62/0.99      ( m1_subset_1(sK3,u1_struct_0(sK2)) = iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_29,plain,
% 2.62/0.99      ( m1_subset_1(sK4,u1_struct_0(sK2)) = iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_7,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,X1)
% 2.62/0.99      | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1))
% 2.62/0.99      | v1_xboole_0(X1) ),
% 2.62/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_369,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,X1)
% 2.62/0.99      | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1))
% 2.62/0.99      | u1_struct_0(sK2) != X1 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_7,c_318]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_370,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.62/0.99      | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_369]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_613,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0_49,u1_struct_0(sK2))
% 2.62/0.99      | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0_49),k1_zfmisc_1(u1_struct_0(sK2))) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_370]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_883,plain,
% 2.62/0.99      ( m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | m1_subset_1(k6_domain_1(u1_struct_0(sK2),X0_49),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_613]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1589,plain,
% 2.62/0.99      ( m1_subset_1(k2_tarski(sK3,sK3),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
% 2.62/0.99      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_1155,c_883]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1590,plain,
% 2.62/0.99      ( m1_subset_1(k2_tarski(sK4,sK4),k1_zfmisc_1(u1_struct_0(sK2))) = iProver_top
% 2.62/0.99      | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_1154,c_883]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_3469,plain,
% 2.62/0.99      ( r1_xboole_0(k2_pre_topc(sK2,k2_tarski(sK4,sK4)),k2_tarski(sK3,sK3)) != iProver_top ),
% 2.62/0.99      inference(global_propositional_subsumption,
% 2.62/0.99                [status(thm)],
% 2.62/0.99                [c_3434,c_28,c_29,c_1589,c_1590]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_3474,plain,
% 2.62/0.99      ( r2_hidden(sK3,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) = iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_2534,c_3469]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_15,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.62/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.62/0.99      | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
% 2.62/0.99      | ~ v3_tdlat_3(X1)
% 2.62/0.99      | ~ v2_pre_topc(X1)
% 2.62/0.99      | v2_struct_0(X1)
% 2.62/0.99      | ~ l1_pre_topc(X1)
% 2.62/0.99      | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) ),
% 2.62/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_326,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 2.62/0.99      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.62/0.99      | ~ r2_hidden(X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0)))
% 2.62/0.99      | ~ v3_tdlat_3(X1)
% 2.62/0.99      | ~ v2_pre_topc(X1)
% 2.62/0.99      | ~ l1_pre_topc(X1)
% 2.62/0.99      | k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X2)) = k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X0))
% 2.62/0.99      | sK2 != X1 ),
% 2.62/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_23]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_327,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.62/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.62/0.99      | ~ r2_hidden(X0,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
% 2.62/0.99      | ~ v3_tdlat_3(sK2)
% 2.62/0.99      | ~ v2_pre_topc(sK2)
% 2.62/0.99      | ~ l1_pre_topc(sK2)
% 2.62/0.99      | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) ),
% 2.62/0.99      inference(unflattening,[status(thm)],[c_326]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_331,plain,
% 2.62/0.99      ( ~ r2_hidden(X0,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
% 2.62/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.62/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.62/0.99      | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) ),
% 2.62/0.99      inference(global_propositional_subsumption,
% 2.62/0.99                [status(thm)],
% 2.62/0.99                [c_327,c_22,c_21,c_20]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_332,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK2))
% 2.62/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK2))
% 2.62/0.99      | ~ r2_hidden(X0,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)))
% 2.62/0.99      | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1)) ),
% 2.62/0.99      inference(renaming,[status(thm)],[c_331]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_615,plain,
% 2.62/0.99      ( ~ m1_subset_1(X0_49,u1_struct_0(sK2))
% 2.62/0.99      | ~ m1_subset_1(X1_49,u1_struct_0(sK2))
% 2.62/0.99      | ~ r2_hidden(X0_49,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49)))
% 2.62/0.99      | k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49)) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_332]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_881,plain,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49))
% 2.62/0.99      | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | m1_subset_1(X1_49,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | r2_hidden(X0_49,k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X1_49))) != iProver_top ),
% 2.62/0.99      inference(predicate_to_equality,[status(thm)],[c_615]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1168,plain,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4))
% 2.62/0.99      | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | r2_hidden(X0_49,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
% 2.62/0.99      inference(superposition,[status(thm)],[c_1154,c_881]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1169,plain,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),X0_49)) = k2_pre_topc(sK2,k2_tarski(sK4,sK4))
% 2.62/0.99      | m1_subset_1(X0_49,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | r2_hidden(X0_49,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
% 2.62/0.99      inference(light_normalisation,[status(thm)],[c_1168,c_1154]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1171,plain,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) = k2_pre_topc(sK2,k2_tarski(sK4,sK4))
% 2.62/0.99      | m1_subset_1(sK4,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | m1_subset_1(sK3,u1_struct_0(sK2)) != iProver_top
% 2.62/0.99      | r2_hidden(sK3,k2_pre_topc(sK2,k2_tarski(sK4,sK4))) != iProver_top ),
% 2.62/0.99      inference(instantiation,[status(thm)],[c_1169]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_16,negated_conjecture,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)) ),
% 2.62/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_619,negated_conjecture,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK4)) ),
% 2.62/0.99      inference(subtyping,[status(esa)],[c_16]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(c_1162,plain,
% 2.62/0.99      ( k2_pre_topc(sK2,k6_domain_1(u1_struct_0(sK2),sK3)) != k2_pre_topc(sK2,k2_tarski(sK4,sK4)) ),
% 2.62/0.99      inference(demodulation,[status(thm)],[c_1154,c_619]) ).
% 2.62/0.99  
% 2.62/0.99  cnf(contradiction,plain,
% 2.62/0.99      ( $false ),
% 2.62/0.99      inference(minisat,[status(thm)],[c_3474,c_1171,c_1162,c_29,c_28]) ).
% 2.62/0.99  
% 2.62/0.99  
% 2.62/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.62/0.99  
% 2.62/0.99  ------                               Statistics
% 2.62/0.99  
% 2.62/0.99  ------ General
% 2.62/0.99  
% 2.62/0.99  abstr_ref_over_cycles:                  0
% 2.62/0.99  abstr_ref_under_cycles:                 0
% 2.62/0.99  gc_basic_clause_elim:                   0
% 2.62/0.99  forced_gc_time:                         0
% 2.62/0.99  parsing_time:                           0.008
% 2.62/0.99  unif_index_cands_time:                  0.
% 2.62/0.99  unif_index_add_time:                    0.
% 2.62/0.99  orderings_time:                         0.
% 2.62/0.99  out_proof_time:                         0.01
% 2.62/0.99  total_time:                             0.15
% 2.62/0.99  num_of_symbols:                         55
% 2.62/0.99  num_of_terms:                           3446
% 2.62/0.99  
% 2.62/0.99  ------ Preprocessing
% 2.62/0.99  
% 2.62/0.99  num_of_splits:                          0
% 2.62/0.99  num_of_split_atoms:                     0
% 2.62/0.99  num_of_reused_defs:                     0
% 2.62/0.99  num_eq_ax_congr_red:                    21
% 2.62/0.99  num_of_sem_filtered_clauses:            1
% 2.62/0.99  num_of_subtypes:                        3
% 2.62/0.99  monotx_restored_types:                  0
% 2.62/0.99  sat_num_of_epr_types:                   0
% 2.62/0.99  sat_num_of_non_cyclic_types:            0
% 2.62/0.99  sat_guarded_non_collapsed_types:        0
% 2.62/0.99  num_pure_diseq_elim:                    0
% 2.62/0.99  simp_replaced_by:                       0
% 2.62/0.99  res_preprocessed:                       78
% 2.62/0.99  prep_upred:                             0
% 2.62/0.99  prep_unflattend:                        16
% 2.62/0.99  smt_new_axioms:                         0
% 2.62/0.99  pred_elim_cands:                        3
% 2.62/0.99  pred_elim:                              8
% 2.62/0.99  pred_elim_cl:                           11
% 2.62/0.99  pred_elim_cycles:                       11
% 2.62/0.99  merged_defs:                            0
% 2.62/0.99  merged_defs_ncl:                        0
% 2.62/0.99  bin_hyper_res:                          0
% 2.62/0.99  prep_cycles:                            4
% 2.62/0.99  pred_elim_time:                         0.005
% 2.62/0.99  splitting_time:                         0.
% 2.62/0.99  sem_filter_time:                        0.
% 2.62/0.99  monotx_time:                            0.
% 2.62/0.99  subtype_inf_time:                       0.
% 2.62/0.99  
% 2.62/0.99  ------ Problem properties
% 2.62/0.99  
% 2.62/0.99  clauses:                                13
% 2.62/0.99  conjectures:                            4
% 2.62/0.99  epr:                                    1
% 2.62/0.99  horn:                                   10
% 2.62/0.99  ground:                                 4
% 2.62/0.99  unary:                                  4
% 2.62/0.99  binary:                                 6
% 2.62/0.99  lits:                                   27
% 2.62/0.99  lits_eq:                                3
% 2.62/0.99  fd_pure:                                0
% 2.62/0.99  fd_pseudo:                              0
% 2.62/0.99  fd_cond:                                0
% 2.62/0.99  fd_pseudo_cond:                         0
% 2.62/0.99  ac_symbols:                             0
% 2.62/0.99  
% 2.62/0.99  ------ Propositional Solver
% 2.62/0.99  
% 2.62/0.99  prop_solver_calls:                      29
% 2.62/0.99  prop_fast_solver_calls:                 599
% 2.62/0.99  smt_solver_calls:                       0
% 2.62/0.99  smt_fast_solver_calls:                  0
% 2.62/0.99  prop_num_of_clauses:                    1278
% 2.62/0.99  prop_preprocess_simplified:             3505
% 2.62/0.99  prop_fo_subsumed:                       20
% 2.62/0.99  prop_solver_time:                       0.
% 2.62/0.99  smt_solver_time:                        0.
% 2.62/0.99  smt_fast_solver_time:                   0.
% 2.62/0.99  prop_fast_solver_time:                  0.
% 2.62/0.99  prop_unsat_core_time:                   0.
% 2.62/0.99  
% 2.62/0.99  ------ QBF
% 2.62/0.99  
% 2.62/0.99  qbf_q_res:                              0
% 2.62/0.99  qbf_num_tautologies:                    0
% 2.62/0.99  qbf_prep_cycles:                        0
% 2.62/0.99  
% 2.62/0.99  ------ BMC1
% 2.62/0.99  
% 2.62/0.99  bmc1_current_bound:                     -1
% 2.62/0.99  bmc1_last_solved_bound:                 -1
% 2.62/0.99  bmc1_unsat_core_size:                   -1
% 2.62/0.99  bmc1_unsat_core_parents_size:           -1
% 2.62/0.99  bmc1_merge_next_fun:                    0
% 2.62/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.62/0.99  
% 2.62/0.99  ------ Instantiation
% 2.62/0.99  
% 2.62/0.99  inst_num_of_clauses:                    339
% 2.62/0.99  inst_num_in_passive:                    34
% 2.62/0.99  inst_num_in_active:                     233
% 2.62/0.99  inst_num_in_unprocessed:                72
% 2.62/0.99  inst_num_of_loops:                      250
% 2.62/0.99  inst_num_of_learning_restarts:          0
% 2.62/0.99  inst_num_moves_active_passive:          13
% 2.62/0.99  inst_lit_activity:                      0
% 2.62/0.99  inst_lit_activity_moves:                0
% 2.62/0.99  inst_num_tautologies:                   0
% 2.62/0.99  inst_num_prop_implied:                  0
% 2.62/0.99  inst_num_existing_simplified:           0
% 2.62/0.99  inst_num_eq_res_simplified:             0
% 2.62/0.99  inst_num_child_elim:                    0
% 2.62/0.99  inst_num_of_dismatching_blockings:      98
% 2.62/0.99  inst_num_of_non_proper_insts:           377
% 2.62/0.99  inst_num_of_duplicates:                 0
% 2.62/0.99  inst_inst_num_from_inst_to_res:         0
% 2.62/0.99  inst_dismatching_checking_time:         0.
% 2.62/0.99  
% 2.62/0.99  ------ Resolution
% 2.62/0.99  
% 2.62/0.99  res_num_of_clauses:                     0
% 2.62/0.99  res_num_in_passive:                     0
% 2.62/0.99  res_num_in_active:                      0
% 2.62/0.99  res_num_of_loops:                       82
% 2.62/0.99  res_forward_subset_subsumed:            47
% 2.62/0.99  res_backward_subset_subsumed:           0
% 2.62/0.99  res_forward_subsumed:                   0
% 2.62/0.99  res_backward_subsumed:                  0
% 2.62/0.99  res_forward_subsumption_resolution:     1
% 2.62/0.99  res_backward_subsumption_resolution:    0
% 2.62/0.99  res_clause_to_clause_subsumption:       368
% 2.62/0.99  res_orphan_elimination:                 0
% 2.62/0.99  res_tautology_del:                      74
% 2.62/0.99  res_num_eq_res_simplified:              0
% 2.62/0.99  res_num_sel_changes:                    0
% 2.62/0.99  res_moves_from_active_to_pass:          0
% 2.62/0.99  
% 2.62/0.99  ------ Superposition
% 2.62/0.99  
% 2.62/0.99  sup_time_total:                         0.
% 2.62/0.99  sup_time_generating:                    0.
% 2.62/0.99  sup_time_sim_full:                      0.
% 2.62/0.99  sup_time_sim_immed:                     0.
% 2.62/0.99  
% 2.62/0.99  sup_num_of_clauses:                     73
% 2.62/0.99  sup_num_in_active:                      47
% 2.62/0.99  sup_num_in_passive:                     26
% 2.62/0.99  sup_num_of_loops:                       49
% 2.62/0.99  sup_fw_superposition:                   70
% 2.62/0.99  sup_bw_superposition:                   26
% 2.62/0.99  sup_immediate_simplified:               17
% 2.62/0.99  sup_given_eliminated:                   0
% 2.62/0.99  comparisons_done:                       0
% 2.62/0.99  comparisons_avoided:                    0
% 2.62/0.99  
% 2.62/0.99  ------ Simplifications
% 2.62/0.99  
% 2.62/0.99  
% 2.62/0.99  sim_fw_subset_subsumed:                 5
% 2.62/0.99  sim_bw_subset_subsumed:                 0
% 2.62/0.99  sim_fw_subsumed:                        6
% 2.62/0.99  sim_bw_subsumed:                        0
% 2.62/0.99  sim_fw_subsumption_res:                 0
% 2.62/0.99  sim_bw_subsumption_res:                 0
% 2.62/0.99  sim_tautology_del:                      3
% 2.62/0.99  sim_eq_tautology_del:                   0
% 2.62/0.99  sim_eq_res_simp:                        0
% 2.62/0.99  sim_fw_demodulated:                     0
% 2.62/0.99  sim_bw_demodulated:                     3
% 2.62/0.99  sim_light_normalised:                   11
% 2.62/0.99  sim_joinable_taut:                      0
% 2.62/0.99  sim_joinable_simp:                      0
% 2.62/0.99  sim_ac_normalised:                      0
% 2.62/0.99  sim_smt_subsumption:                    0
% 2.62/0.99  
%------------------------------------------------------------------------------
