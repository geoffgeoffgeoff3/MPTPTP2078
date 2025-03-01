%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:25:35 EST 2020

% Result     : Theorem 1.29s
% Output     : CNFRefutation 1.39s
% Verified   : 
% Statistics : Number of formulae       :  173 ( 891 expanded)
%              Number of clauses        :  100 ( 256 expanded)
%              Number of leaves         :   21 ( 186 expanded)
%              Depth                    :   24
%              Number of atoms          :  612 (4410 expanded)
%              Number of equality atoms :  105 ( 231 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( v1_subset_1(X1,X0)
      <=> X0 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( v1_subset_1(X1,X0)
      <=> X0 != X1 )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( ( v1_subset_1(X1,X0)
          | X0 = X1 )
        & ( X0 != X1
          | ~ v1_subset_1(X1,X0) ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f70,plain,(
    ! [X0,X1] :
      ( v1_subset_1(X1,X0)
      | X0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f17,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ( v1_tex_2(k1_tex_2(X0,X1),X0)
          <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( m1_subset_1(X1,u1_struct_0(X0))
           => ( v1_tex_2(k1_tex_2(X0,X1),X0)
            <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) ) ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f42,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_tex_2(k1_tex_2(X0,X1),X0)
          <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f43,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( v1_tex_2(k1_tex_2(X0,X1),X0)
          <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f42])).

fof(f49,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | v1_tex_2(k1_tex_2(X0,X1),X0) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f43])).

fof(f50,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | v1_tex_2(k1_tex_2(X0,X1),X0) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
      & l1_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f49])).

fof(f52,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
            | v1_tex_2(k1_tex_2(X0,X1),X0) )
          & m1_subset_1(X1,u1_struct_0(X0)) )
     => ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),sK2),u1_struct_0(X0))
          | ~ v1_tex_2(k1_tex_2(X0,sK2),X0) )
        & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),sK2),u1_struct_0(X0))
          | v1_tex_2(k1_tex_2(X0,sK2),X0) )
        & m1_subset_1(sK2,u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
              | ~ v1_tex_2(k1_tex_2(X0,X1),X0) )
            & ( v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
              | v1_tex_2(k1_tex_2(X0,X1),X0) )
            & m1_subset_1(X1,u1_struct_0(X0)) )
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X1),u1_struct_0(sK1))
            | ~ v1_tex_2(k1_tex_2(sK1,X1),sK1) )
          & ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),X1),u1_struct_0(sK1))
            | v1_tex_2(k1_tex_2(sK1,X1),sK1) )
          & m1_subset_1(X1,u1_struct_0(sK1)) )
      & l1_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
      | ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1) )
    & ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
      | v1_tex_2(k1_tex_2(sK1,sK2),sK1) )
    & m1_subset_1(sK2,u1_struct_0(sK1))
    & l1_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f50,f52,f51])).

fof(f80,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v7_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( ( ~ v1_tex_2(X1,X0)
              & ~ v2_struct_0(X1) )
           => ( ~ v7_struct_0(X1)
              & ~ v2_struct_0(X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ~ v7_struct_0(X1)
            & ~ v2_struct_0(X1) )
          | v1_tex_2(X1,X0)
          | v2_struct_0(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | v7_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ~ v7_struct_0(X1)
            & ~ v2_struct_0(X1) )
          | v1_tex_2(X1,X0)
          | v2_struct_0(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | v7_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f33])).

fof(f68,plain,(
    ! [X0,X1] :
      ( ~ v7_struct_0(X1)
      | v1_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | v7_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & v1_pre_topc(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & ~ v2_struct_0(k1_tex_2(X0,X1)) ) ) ),
    inference(pure_predicate_removal,[],[f14])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & ~ v2_struct_0(k1_tex_2(X0,X1)) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( m1_pre_topc(k1_tex_2(X0,X1),X0)
        & ~ v2_struct_0(k1_tex_2(X0,X1)) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f36])).

fof(f72,plain,(
    ! [X0,X1] :
      ( m1_pre_topc(k1_tex_2(X0,X1),X0)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f71,plain,(
    ! [X0,X1] :
      ( ~ v2_struct_0(k1_tex_2(X0,X1))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f15,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( v1_pre_topc(k1_tex_2(X0,X1))
        & v7_struct_0(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,u1_struct_0(X0))
        & l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ( v7_struct_0(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) ) ) ),
    inference(pure_predicate_removal,[],[f15])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( v7_struct_0(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( v7_struct_0(k1_tex_2(X0,X1))
        & ~ v2_struct_0(k1_tex_2(X0,X1)) )
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f38])).

fof(f74,plain,(
    ! [X0,X1] :
      ( v7_struct_0(k1_tex_2(X0,X1))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f76,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f77,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f78,plain,(
    m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f53])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f61,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f16,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => ~ ( v7_struct_0(X0)
              & v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v7_struct_0(X0)
          | ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ~ v7_struct_0(X0)
          | ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f40])).

fof(f75,plain,(
    ! [X0,X1] :
      ( ~ v7_struct_0(X0)
      | ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f30,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f29])).

fof(f64,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f81,plain,(
    ! [X0] : k1_tarski(X0) = k1_enumset1(X0,X0,X0) ),
    inference(definition_unfolding,[],[f56,f57])).

fof(f84,plain,(
    ! [X0,X1] :
      ( k1_enumset1(X1,X1,X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(definition_unfolding,[],[f64,f81])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f25])).

fof(f62,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
     => ( r2_hidden(X0,X1)
        | v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(flattening,[],[f22])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | v1_xboole_0(X1)
      | ~ m1_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f59,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f83,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f59,f81])).

fof(f4,axiom,(
    ! [X0] : v1_zfmisc_1(k1_tarski(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0] : v1_zfmisc_1(k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f82,plain,(
    ! [X0] : v1_zfmisc_1(k1_enumset1(X0,X0,X0)) ),
    inference(definition_unfolding,[],[f58,f81])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v7_struct_0(X0) )
     => ~ v1_zfmisc_1(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ~ v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v7_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X0] :
      ( ~ v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v7_struct_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f63,plain,(
    ! [X0] :
      ( ~ v1_zfmisc_1(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v7_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f79,plain,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v7_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ( ~ v2_struct_0(X1)
           => ( ~ v1_tex_2(X1,X0)
              & ~ v2_struct_0(X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ~ v1_tex_2(X1,X0)
            & ~ v2_struct_0(X1) )
          | v2_struct_0(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v7_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ~ v1_tex_2(X1,X0)
            & ~ v2_struct_0(X1) )
          | v2_struct_0(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v7_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f31])).

fof(f66,plain,(
    ! [X0,X1] :
      ( ~ v1_tex_2(X1,X0)
      | v2_struct_0(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v7_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_13,plain,
    ( v1_subset_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_20,negated_conjecture,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_184,plain,
    ( ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1)
    | ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) ),
    inference(prop_impl,[status(thm)],[c_20])).

cnf(c_185,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
    inference(renaming,[status(thm)],[c_184])).

cnf(c_11,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v1_tex_2(X0,X1)
    | ~ v7_struct_0(X0)
    | v7_struct_0(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_15,plain,
    ( m1_pre_topc(k1_tex_2(X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_571,plain,
    ( v1_tex_2(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X3))
    | ~ v7_struct_0(X0)
    | v7_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | X3 != X1
    | k1_tex_2(X3,X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_15])).

cnf(c_572,plain,
    ( v1_tex_2(k1_tex_2(X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v7_struct_0(X0)
    | ~ v7_struct_0(k1_tex_2(X0,X1))
    | v2_struct_0(X0)
    | v2_struct_0(k1_tex_2(X0,X1))
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_571])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | v2_struct_0(X1)
    | ~ v2_struct_0(k1_tex_2(X1,X0))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(X1))
    | v7_struct_0(k1_tex_2(X1,X0))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_590,plain,
    ( v1_tex_2(k1_tex_2(X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v7_struct_0(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_572,c_16,c_17])).

cnf(c_663,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | v7_struct_0(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k1_tex_2(X1,X0) != k1_tex_2(sK1,sK2)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_185,c_590])).

cnf(c_664,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | v7_struct_0(sK1)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_663])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_23,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_668,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | v7_struct_0(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_664,c_24,c_23])).

cnf(c_956,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | v7_struct_0(sK1)
    | X2 = X1
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
    | k6_domain_1(u1_struct_0(sK1),sK2) != X1
    | u1_struct_0(sK1) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_668])).

cnf(c_957,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | v7_struct_0(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(unflattening,[status(thm)],[c_956])).

cnf(c_1596,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | v7_struct_0(sK1)
    | k1_tex_2(sK1,X0_47) != k1_tex_2(sK1,sK2)
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(subtyping,[status(esa)],[c_957])).

cnf(c_1604,plain,
    ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | v7_struct_0(sK1)
    | sP0_iProver_split
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_1596])).

cnf(c_1880,plain,
    ( u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2)
    | m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
    | v7_struct_0(sK1) = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1604])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_27,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_1620,plain,
    ( X0_48 != X1_48
    | k1_tex_2(X0_48,X0_47) = k1_tex_2(X1_48,X1_47)
    | X0_47 != X1_47 ),
    theory(equality)).

cnf(c_1628,plain,
    ( k1_tex_2(sK1,sK2) = k1_tex_2(sK1,sK2)
    | sK1 != sK1
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1620])).

cnf(c_1609,plain,
    ( X0_47 = X0_47 ),
    theory(equality)).

cnf(c_1630,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_1609])).

cnf(c_1610,plain,
    ( X0_48 = X0_48 ),
    theory(equality)).

cnf(c_1631,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_1610])).

cnf(c_1603,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | k1_tex_2(sK1,X0_47) != k1_tex_2(sK1,sK2)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_1596])).

cnf(c_1648,plain,
    ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ sP0_iProver_split
    | k1_tex_2(sK1,sK2) != k1_tex_2(sK1,sK2) ),
    inference(instantiation,[status(thm)],[c_1603])).

cnf(c_5,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_19,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v7_struct_0(X0)
    | v2_struct_0(X0)
    | ~ l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_430,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v7_struct_0(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(resolution,[status(thm)],[c_5,c_19])).

cnf(c_718,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v7_struct_0(X0)
    | v2_struct_0(X0)
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_430,c_23])).

cnf(c_719,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | v2_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_718])).

cnf(c_723,plain,
    ( ~ v7_struct_0(sK1)
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_719,c_24])).

cnf(c_724,plain,
    ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_723])).

cnf(c_977,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v7_struct_0(sK1)
    | X2 = X1
    | k6_domain_1(u1_struct_0(sK1),X0) != X1
    | u1_struct_0(sK1) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_724])).

cnf(c_978,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v7_struct_0(sK1)
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),X0) ),
    inference(unflattening,[status(thm)],[c_977])).

cnf(c_1595,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0_47),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ v7_struct_0(sK1)
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),X0_47) ),
    inference(subtyping,[status(esa)],[c_978])).

cnf(c_1651,plain,
    ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | ~ m1_subset_1(sK2,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(instantiation,[status(thm)],[c_1595])).

cnf(c_1685,plain,
    ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
    | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1604,c_22,c_1628,c_1630,c_1631,c_1648,c_1651])).

cnf(c_1687,plain,
    ( u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2)
    | m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1685])).

cnf(c_1602,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
    inference(subtyping,[status(esa)],[c_22])).

cnf(c_1874,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1602])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k1_enumset1(X0,X0,X0) = k6_domain_1(X1,X0) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_6,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_464,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_5,c_6])).

cnf(c_697,plain,
    ( v2_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_464,c_23])).

cnf(c_698,plain,
    ( v2_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_697])).

cnf(c_62,plain,
    ( v2_struct_0(sK1)
    | ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_65,plain,
    ( ~ l1_pre_topc(sK1)
    | l1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_700,plain,
    ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_698,c_24,c_23,c_62,c_65])).

cnf(c_823,plain,
    ( ~ m1_subset_1(X0,X1)
    | k1_enumset1(X0,X0,X0) = k6_domain_1(X1,X0)
    | u1_struct_0(sK1) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_700])).

cnf(c_824,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | k1_enumset1(X0,X0,X0) = k6_domain_1(u1_struct_0(sK1),X0) ),
    inference(unflattening,[status(thm)],[c_823])).

cnf(c_1597,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | k1_enumset1(X0_47,X0_47,X0_47) = k6_domain_1(u1_struct_0(sK1),X0_47) ),
    inference(subtyping,[status(esa)],[c_824])).

cnf(c_1879,plain,
    ( k1_enumset1(X0_47,X0_47,X0_47) = k6_domain_1(u1_struct_0(sK1),X0_47)
    | m1_subset_1(X0_47,u1_struct_0(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1597])).

cnf(c_2055,plain,
    ( k6_domain_1(u1_struct_0(sK1),sK2) = k1_enumset1(sK2,sK2,sK2) ),
    inference(superposition,[status(thm)],[c_1874,c_1879])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_3,plain,
    ( m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_332,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
    | v1_xboole_0(X1) ),
    inference(resolution,[status(thm)],[c_4,c_3])).

cnf(c_811,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
    | u1_struct_0(sK1) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_332,c_700])).

cnf(c_812,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(unflattening,[status(thm)],[c_811])).

cnf(c_1598,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | m1_subset_1(k1_enumset1(X0_47,X0_47,X0_47),k1_zfmisc_1(u1_struct_0(sK1))) ),
    inference(subtyping,[status(esa)],[c_812])).

cnf(c_1878,plain,
    ( m1_subset_1(X0_47,u1_struct_0(sK1)) != iProver_top
    | m1_subset_1(k1_enumset1(X0_47,X0_47,X0_47),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1598])).

cnf(c_2172,plain,
    ( m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
    | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2055,c_1878])).

cnf(c_2468,plain,
    ( u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1880,c_27,c_1687,c_2172])).

cnf(c_2,plain,
    ( v1_zfmisc_1(k1_enumset1(X0,X0,X0)) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_7,plain,
    ( v7_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_zfmisc_1(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_450,plain,
    ( v7_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_zfmisc_1(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_5,c_7])).

cnf(c_708,plain,
    ( v7_struct_0(X0)
    | ~ v1_zfmisc_1(u1_struct_0(X0))
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_450,c_23])).

cnf(c_709,plain,
    ( v7_struct_0(sK1)
    | ~ v1_zfmisc_1(u1_struct_0(sK1)) ),
    inference(unflattening,[status(thm)],[c_708])).

cnf(c_790,plain,
    ( v7_struct_0(sK1)
    | k1_enumset1(X0,X0,X0) != u1_struct_0(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_2,c_709])).

cnf(c_1600,plain,
    ( v7_struct_0(sK1)
    | k1_enumset1(X0_47,X0_47,X0_47) != u1_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_790])).

cnf(c_1876,plain,
    ( k1_enumset1(X0_47,X0_47,X0_47) != u1_struct_0(sK1)
    | v7_struct_0(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1600])).

cnf(c_2106,plain,
    ( k6_domain_1(u1_struct_0(sK1),sK2) != u1_struct_0(sK1)
    | v7_struct_0(sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_2055,c_1876])).

cnf(c_2474,plain,
    ( u1_struct_0(sK1) != u1_struct_0(sK1)
    | v7_struct_0(sK1) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2468,c_2106])).

cnf(c_2478,plain,
    ( v7_struct_0(sK1) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2474])).

cnf(c_21,negated_conjecture,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_186,plain,
    ( v1_tex_2(k1_tex_2(sK1,sK2),sK1)
    | v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) ),
    inference(prop_impl,[status(thm)],[c_21])).

cnf(c_187,plain,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
    inference(renaming,[status(thm)],[c_186])).

cnf(c_9,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ v1_tex_2(X0,X1)
    | ~ v7_struct_0(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_599,plain,
    ( ~ v1_tex_2(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X3))
    | ~ v7_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | X3 != X1
    | k1_tex_2(X3,X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_15])).

cnf(c_600,plain,
    ( ~ v1_tex_2(k1_tex_2(X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v7_struct_0(X0)
    | v2_struct_0(X0)
    | v2_struct_0(k1_tex_2(X0,X1))
    | ~ l1_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_599])).

cnf(c_616,plain,
    ( ~ v1_tex_2(k1_tex_2(X0,X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v7_struct_0(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_600,c_16])).

cnf(c_639,plain,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(X1))
    | ~ v7_struct_0(X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | k1_tex_2(X1,X0) != k1_tex_2(sK1,sK2)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_187,c_616])).

cnf(c_640,plain,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
    inference(unflattening,[status(thm)],[c_639])).

cnf(c_644,plain,
    ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_640,c_24,c_23])).

cnf(c_1016,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
    | k6_domain_1(u1_struct_0(sK1),X1) != k6_domain_1(u1_struct_0(sK1),sK2)
    | u1_struct_0(sK1) != u1_struct_0(sK1) ),
    inference(resolution_lifted,[status(thm)],[c_644,c_724])).

cnf(c_1310,plain,
    ( ~ m1_subset_1(X0,u1_struct_0(sK1))
    | ~ m1_subset_1(X1,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
    | k6_domain_1(u1_struct_0(sK1),X1) != k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_1016])).

cnf(c_1593,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | ~ m1_subset_1(X1_47,u1_struct_0(sK1))
    | ~ v7_struct_0(sK1)
    | k1_tex_2(sK1,X0_47) != k1_tex_2(sK1,sK2)
    | k6_domain_1(u1_struct_0(sK1),X1_47) != k6_domain_1(u1_struct_0(sK1),sK2) ),
    inference(subtyping,[status(esa)],[c_1310])).

cnf(c_1606,plain,
    ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
    | k6_domain_1(u1_struct_0(sK1),X0_47) != k6_domain_1(u1_struct_0(sK1),sK2)
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_1593])).

cnf(c_1887,plain,
    ( k6_domain_1(u1_struct_0(sK1),X0_47) != k6_domain_1(u1_struct_0(sK1),sK2)
    | m1_subset_1(X0_47,u1_struct_0(sK1)) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1606])).

cnf(c_2305,plain,
    ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1887])).

cnf(c_1607,plain,
    ( ~ v7_struct_0(sK1)
    | sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_1593])).

cnf(c_1706,plain,
    ( sP1_iProver_split
    | ~ v7_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1607,c_22,c_1628,c_1630,c_1631,c_1648])).

cnf(c_1707,plain,
    ( ~ v7_struct_0(sK1)
    | sP1_iProver_split ),
    inference(renaming,[status(thm)],[c_1706])).

cnf(c_1708,plain,
    ( v7_struct_0(sK1) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1707])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2478,c_2305,c_1708,c_27])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 18:25:04 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.29/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.29/0.99  
% 1.29/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.29/0.99  
% 1.29/0.99  ------  iProver source info
% 1.29/0.99  
% 1.29/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.29/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.29/0.99  git: non_committed_changes: false
% 1.29/0.99  git: last_make_outside_of_git: false
% 1.29/0.99  
% 1.29/0.99  ------ 
% 1.29/0.99  
% 1.29/0.99  ------ Input Options
% 1.29/0.99  
% 1.29/0.99  --out_options                           all
% 1.29/0.99  --tptp_safe_out                         true
% 1.29/0.99  --problem_path                          ""
% 1.29/0.99  --include_path                          ""
% 1.29/0.99  --clausifier                            res/vclausify_rel
% 1.29/0.99  --clausifier_options                    --mode clausify
% 1.29/0.99  --stdin                                 false
% 1.29/0.99  --stats_out                             all
% 1.29/0.99  
% 1.29/0.99  ------ General Options
% 1.29/0.99  
% 1.29/0.99  --fof                                   false
% 1.29/0.99  --time_out_real                         305.
% 1.29/0.99  --time_out_virtual                      -1.
% 1.29/0.99  --symbol_type_check                     false
% 1.29/0.99  --clausify_out                          false
% 1.29/0.99  --sig_cnt_out                           false
% 1.29/0.99  --trig_cnt_out                          false
% 1.29/0.99  --trig_cnt_out_tolerance                1.
% 1.29/0.99  --trig_cnt_out_sk_spl                   false
% 1.29/0.99  --abstr_cl_out                          false
% 1.29/0.99  
% 1.29/0.99  ------ Global Options
% 1.29/0.99  
% 1.29/0.99  --schedule                              default
% 1.29/0.99  --add_important_lit                     false
% 1.29/0.99  --prop_solver_per_cl                    1000
% 1.29/0.99  --min_unsat_core                        false
% 1.29/0.99  --soft_assumptions                      false
% 1.29/0.99  --soft_lemma_size                       3
% 1.29/0.99  --prop_impl_unit_size                   0
% 1.29/0.99  --prop_impl_unit                        []
% 1.29/0.99  --share_sel_clauses                     true
% 1.29/0.99  --reset_solvers                         false
% 1.29/0.99  --bc_imp_inh                            [conj_cone]
% 1.29/0.99  --conj_cone_tolerance                   3.
% 1.29/0.99  --extra_neg_conj                        none
% 1.29/0.99  --large_theory_mode                     true
% 1.29/0.99  --prolific_symb_bound                   200
% 1.29/0.99  --lt_threshold                          2000
% 1.29/0.99  --clause_weak_htbl                      true
% 1.29/0.99  --gc_record_bc_elim                     false
% 1.29/0.99  
% 1.29/0.99  ------ Preprocessing Options
% 1.29/0.99  
% 1.29/0.99  --preprocessing_flag                    true
% 1.29/0.99  --time_out_prep_mult                    0.1
% 1.29/0.99  --splitting_mode                        input
% 1.29/0.99  --splitting_grd                         true
% 1.29/0.99  --splitting_cvd                         false
% 1.29/0.99  --splitting_cvd_svl                     false
% 1.29/0.99  --splitting_nvd                         32
% 1.29/0.99  --sub_typing                            true
% 1.29/0.99  --prep_gs_sim                           true
% 1.29/0.99  --prep_unflatten                        true
% 1.29/0.99  --prep_res_sim                          true
% 1.29/0.99  --prep_upred                            true
% 1.29/0.99  --prep_sem_filter                       exhaustive
% 1.29/0.99  --prep_sem_filter_out                   false
% 1.29/0.99  --pred_elim                             true
% 1.29/0.99  --res_sim_input                         true
% 1.29/0.99  --eq_ax_congr_red                       true
% 1.29/0.99  --pure_diseq_elim                       true
% 1.29/0.99  --brand_transform                       false
% 1.29/0.99  --non_eq_to_eq                          false
% 1.29/0.99  --prep_def_merge                        true
% 1.29/0.99  --prep_def_merge_prop_impl              false
% 1.29/0.99  --prep_def_merge_mbd                    true
% 1.29/0.99  --prep_def_merge_tr_red                 false
% 1.29/0.99  --prep_def_merge_tr_cl                  false
% 1.29/0.99  --smt_preprocessing                     true
% 1.29/0.99  --smt_ac_axioms                         fast
% 1.29/0.99  --preprocessed_out                      false
% 1.29/0.99  --preprocessed_stats                    false
% 1.29/0.99  
% 1.29/0.99  ------ Abstraction refinement Options
% 1.29/0.99  
% 1.29/0.99  --abstr_ref                             []
% 1.29/0.99  --abstr_ref_prep                        false
% 1.29/0.99  --abstr_ref_until_sat                   false
% 1.29/0.99  --abstr_ref_sig_restrict                funpre
% 1.29/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.29/0.99  --abstr_ref_under                       []
% 1.29/0.99  
% 1.29/0.99  ------ SAT Options
% 1.29/0.99  
% 1.29/0.99  --sat_mode                              false
% 1.29/0.99  --sat_fm_restart_options                ""
% 1.29/0.99  --sat_gr_def                            false
% 1.29/0.99  --sat_epr_types                         true
% 1.29/0.99  --sat_non_cyclic_types                  false
% 1.29/0.99  --sat_finite_models                     false
% 1.29/0.99  --sat_fm_lemmas                         false
% 1.29/0.99  --sat_fm_prep                           false
% 1.29/0.99  --sat_fm_uc_incr                        true
% 1.29/0.99  --sat_out_model                         small
% 1.29/0.99  --sat_out_clauses                       false
% 1.29/0.99  
% 1.29/0.99  ------ QBF Options
% 1.29/0.99  
% 1.29/0.99  --qbf_mode                              false
% 1.29/0.99  --qbf_elim_univ                         false
% 1.29/0.99  --qbf_dom_inst                          none
% 1.29/0.99  --qbf_dom_pre_inst                      false
% 1.29/0.99  --qbf_sk_in                             false
% 1.29/0.99  --qbf_pred_elim                         true
% 1.29/0.99  --qbf_split                             512
% 1.29/0.99  
% 1.29/0.99  ------ BMC1 Options
% 1.29/0.99  
% 1.29/0.99  --bmc1_incremental                      false
% 1.29/0.99  --bmc1_axioms                           reachable_all
% 1.29/0.99  --bmc1_min_bound                        0
% 1.29/0.99  --bmc1_max_bound                        -1
% 1.29/0.99  --bmc1_max_bound_default                -1
% 1.29/0.99  --bmc1_symbol_reachability              true
% 1.29/0.99  --bmc1_property_lemmas                  false
% 1.29/0.99  --bmc1_k_induction                      false
% 1.29/0.99  --bmc1_non_equiv_states                 false
% 1.29/0.99  --bmc1_deadlock                         false
% 1.29/0.99  --bmc1_ucm                              false
% 1.29/0.99  --bmc1_add_unsat_core                   none
% 1.29/0.99  --bmc1_unsat_core_children              false
% 1.29/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.29/0.99  --bmc1_out_stat                         full
% 1.29/0.99  --bmc1_ground_init                      false
% 1.29/0.99  --bmc1_pre_inst_next_state              false
% 1.29/0.99  --bmc1_pre_inst_state                   false
% 1.29/0.99  --bmc1_pre_inst_reach_state             false
% 1.29/0.99  --bmc1_out_unsat_core                   false
% 1.29/0.99  --bmc1_aig_witness_out                  false
% 1.29/0.99  --bmc1_verbose                          false
% 1.29/0.99  --bmc1_dump_clauses_tptp                false
% 1.29/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.29/0.99  --bmc1_dump_file                        -
% 1.29/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.29/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.29/0.99  --bmc1_ucm_extend_mode                  1
% 1.29/0.99  --bmc1_ucm_init_mode                    2
% 1.29/0.99  --bmc1_ucm_cone_mode                    none
% 1.29/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.29/0.99  --bmc1_ucm_relax_model                  4
% 1.29/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.29/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.29/0.99  --bmc1_ucm_layered_model                none
% 1.29/0.99  --bmc1_ucm_max_lemma_size               10
% 1.29/0.99  
% 1.29/0.99  ------ AIG Options
% 1.29/0.99  
% 1.29/0.99  --aig_mode                              false
% 1.29/0.99  
% 1.29/0.99  ------ Instantiation Options
% 1.29/0.99  
% 1.29/0.99  --instantiation_flag                    true
% 1.29/0.99  --inst_sos_flag                         false
% 1.29/0.99  --inst_sos_phase                        true
% 1.29/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.29/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.29/0.99  --inst_lit_sel_side                     num_symb
% 1.29/0.99  --inst_solver_per_active                1400
% 1.29/0.99  --inst_solver_calls_frac                1.
% 1.29/0.99  --inst_passive_queue_type               priority_queues
% 1.29/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.29/0.99  --inst_passive_queues_freq              [25;2]
% 1.29/0.99  --inst_dismatching                      true
% 1.29/0.99  --inst_eager_unprocessed_to_passive     true
% 1.29/0.99  --inst_prop_sim_given                   true
% 1.29/0.99  --inst_prop_sim_new                     false
% 1.29/0.99  --inst_subs_new                         false
% 1.29/0.99  --inst_eq_res_simp                      false
% 1.29/0.99  --inst_subs_given                       false
% 1.29/0.99  --inst_orphan_elimination               true
% 1.29/0.99  --inst_learning_loop_flag               true
% 1.29/0.99  --inst_learning_start                   3000
% 1.29/0.99  --inst_learning_factor                  2
% 1.29/0.99  --inst_start_prop_sim_after_learn       3
% 1.29/0.99  --inst_sel_renew                        solver
% 1.29/0.99  --inst_lit_activity_flag                true
% 1.29/0.99  --inst_restr_to_given                   false
% 1.29/0.99  --inst_activity_threshold               500
% 1.29/0.99  --inst_out_proof                        true
% 1.29/0.99  
% 1.29/0.99  ------ Resolution Options
% 1.29/0.99  
% 1.29/0.99  --resolution_flag                       true
% 1.29/0.99  --res_lit_sel                           adaptive
% 1.29/0.99  --res_lit_sel_side                      none
% 1.29/0.99  --res_ordering                          kbo
% 1.29/0.99  --res_to_prop_solver                    active
% 1.29/0.99  --res_prop_simpl_new                    false
% 1.29/0.99  --res_prop_simpl_given                  true
% 1.29/0.99  --res_passive_queue_type                priority_queues
% 1.29/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.29/0.99  --res_passive_queues_freq               [15;5]
% 1.29/0.99  --res_forward_subs                      full
% 1.29/0.99  --res_backward_subs                     full
% 1.29/0.99  --res_forward_subs_resolution           true
% 1.29/0.99  --res_backward_subs_resolution          true
% 1.29/0.99  --res_orphan_elimination                true
% 1.29/0.99  --res_time_limit                        2.
% 1.29/0.99  --res_out_proof                         true
% 1.29/0.99  
% 1.29/0.99  ------ Superposition Options
% 1.29/0.99  
% 1.29/0.99  --superposition_flag                    true
% 1.29/0.99  --sup_passive_queue_type                priority_queues
% 1.29/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.29/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.29/0.99  --demod_completeness_check              fast
% 1.29/0.99  --demod_use_ground                      true
% 1.29/0.99  --sup_to_prop_solver                    passive
% 1.29/0.99  --sup_prop_simpl_new                    true
% 1.29/0.99  --sup_prop_simpl_given                  true
% 1.29/0.99  --sup_fun_splitting                     false
% 1.29/0.99  --sup_smt_interval                      50000
% 1.29/0.99  
% 1.29/0.99  ------ Superposition Simplification Setup
% 1.29/0.99  
% 1.29/0.99  --sup_indices_passive                   []
% 1.29/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.29/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.29/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.29/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.29/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.29/0.99  --sup_full_bw                           [BwDemod]
% 1.29/0.99  --sup_immed_triv                        [TrivRules]
% 1.29/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.29/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.29/0.99  --sup_immed_bw_main                     []
% 1.29/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.29/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.29/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.29/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.29/0.99  
% 1.29/0.99  ------ Combination Options
% 1.29/0.99  
% 1.29/0.99  --comb_res_mult                         3
% 1.29/0.99  --comb_sup_mult                         2
% 1.29/0.99  --comb_inst_mult                        10
% 1.29/0.99  
% 1.29/0.99  ------ Debug Options
% 1.29/0.99  
% 1.29/0.99  --dbg_backtrace                         false
% 1.29/0.99  --dbg_dump_prop_clauses                 false
% 1.29/0.99  --dbg_dump_prop_clauses_file            -
% 1.29/0.99  --dbg_out_stat                          false
% 1.29/0.99  ------ Parsing...
% 1.29/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.29/0.99  
% 1.29/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 9 0s  sf_e  pe_s  pe_e 
% 1.29/0.99  
% 1.29/0.99  ------ Preprocessing... gs_s  sp: 4 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.29/0.99  
% 1.29/0.99  ------ Preprocessing... sf_s  rm: 2 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.29/0.99  ------ Proving...
% 1.29/0.99  ------ Problem Properties 
% 1.29/0.99  
% 1.29/0.99  
% 1.29/0.99  clauses                                 14
% 1.29/0.99  conjectures                             1
% 1.29/0.99  EPR                                     1
% 1.29/0.99  Horn                                    12
% 1.29/0.99  unary                                   2
% 1.29/0.99  binary                                  4
% 1.29/0.99  lits                                    37
% 1.29/0.99  lits eq                                 9
% 1.29/0.99  fd_pure                                 0
% 1.29/0.99  fd_pseudo                               0
% 1.29/0.99  fd_cond                                 0
% 1.29/0.99  fd_pseudo_cond                          0
% 1.29/0.99  AC symbols                              0
% 1.29/0.99  
% 1.29/0.99  ------ Schedule dynamic 5 is on 
% 1.29/0.99  
% 1.29/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.29/0.99  
% 1.29/0.99  
% 1.29/0.99  ------ 
% 1.29/0.99  Current options:
% 1.29/0.99  ------ 
% 1.29/0.99  
% 1.29/0.99  ------ Input Options
% 1.29/0.99  
% 1.29/0.99  --out_options                           all
% 1.29/0.99  --tptp_safe_out                         true
% 1.29/0.99  --problem_path                          ""
% 1.29/0.99  --include_path                          ""
% 1.29/0.99  --clausifier                            res/vclausify_rel
% 1.29/0.99  --clausifier_options                    --mode clausify
% 1.29/0.99  --stdin                                 false
% 1.29/0.99  --stats_out                             all
% 1.29/0.99  
% 1.29/0.99  ------ General Options
% 1.29/0.99  
% 1.29/0.99  --fof                                   false
% 1.29/0.99  --time_out_real                         305.
% 1.29/0.99  --time_out_virtual                      -1.
% 1.29/0.99  --symbol_type_check                     false
% 1.29/0.99  --clausify_out                          false
% 1.29/0.99  --sig_cnt_out                           false
% 1.29/0.99  --trig_cnt_out                          false
% 1.29/0.99  --trig_cnt_out_tolerance                1.
% 1.29/0.99  --trig_cnt_out_sk_spl                   false
% 1.29/0.99  --abstr_cl_out                          false
% 1.29/0.99  
% 1.29/0.99  ------ Global Options
% 1.29/0.99  
% 1.29/0.99  --schedule                              default
% 1.29/0.99  --add_important_lit                     false
% 1.29/0.99  --prop_solver_per_cl                    1000
% 1.29/0.99  --min_unsat_core                        false
% 1.29/0.99  --soft_assumptions                      false
% 1.29/0.99  --soft_lemma_size                       3
% 1.29/0.99  --prop_impl_unit_size                   0
% 1.29/0.99  --prop_impl_unit                        []
% 1.29/0.99  --share_sel_clauses                     true
% 1.29/0.99  --reset_solvers                         false
% 1.29/0.99  --bc_imp_inh                            [conj_cone]
% 1.29/0.99  --conj_cone_tolerance                   3.
% 1.29/0.99  --extra_neg_conj                        none
% 1.29/0.99  --large_theory_mode                     true
% 1.29/0.99  --prolific_symb_bound                   200
% 1.29/0.99  --lt_threshold                          2000
% 1.29/0.99  --clause_weak_htbl                      true
% 1.29/0.99  --gc_record_bc_elim                     false
% 1.29/0.99  
% 1.29/0.99  ------ Preprocessing Options
% 1.29/0.99  
% 1.29/0.99  --preprocessing_flag                    true
% 1.29/0.99  --time_out_prep_mult                    0.1
% 1.29/0.99  --splitting_mode                        input
% 1.29/0.99  --splitting_grd                         true
% 1.29/0.99  --splitting_cvd                         false
% 1.29/0.99  --splitting_cvd_svl                     false
% 1.29/0.99  --splitting_nvd                         32
% 1.29/0.99  --sub_typing                            true
% 1.29/0.99  --prep_gs_sim                           true
% 1.29/0.99  --prep_unflatten                        true
% 1.29/0.99  --prep_res_sim                          true
% 1.29/0.99  --prep_upred                            true
% 1.29/0.99  --prep_sem_filter                       exhaustive
% 1.29/0.99  --prep_sem_filter_out                   false
% 1.29/0.99  --pred_elim                             true
% 1.29/0.99  --res_sim_input                         true
% 1.29/0.99  --eq_ax_congr_red                       true
% 1.29/0.99  --pure_diseq_elim                       true
% 1.29/0.99  --brand_transform                       false
% 1.29/0.99  --non_eq_to_eq                          false
% 1.29/0.99  --prep_def_merge                        true
% 1.29/0.99  --prep_def_merge_prop_impl              false
% 1.29/0.99  --prep_def_merge_mbd                    true
% 1.29/0.99  --prep_def_merge_tr_red                 false
% 1.29/0.99  --prep_def_merge_tr_cl                  false
% 1.29/0.99  --smt_preprocessing                     true
% 1.29/0.99  --smt_ac_axioms                         fast
% 1.29/0.99  --preprocessed_out                      false
% 1.29/0.99  --preprocessed_stats                    false
% 1.29/0.99  
% 1.29/0.99  ------ Abstraction refinement Options
% 1.29/0.99  
% 1.29/0.99  --abstr_ref                             []
% 1.29/0.99  --abstr_ref_prep                        false
% 1.29/0.99  --abstr_ref_until_sat                   false
% 1.29/0.99  --abstr_ref_sig_restrict                funpre
% 1.29/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.29/0.99  --abstr_ref_under                       []
% 1.29/0.99  
% 1.29/0.99  ------ SAT Options
% 1.29/0.99  
% 1.29/0.99  --sat_mode                              false
% 1.29/0.99  --sat_fm_restart_options                ""
% 1.29/0.99  --sat_gr_def                            false
% 1.29/0.99  --sat_epr_types                         true
% 1.29/0.99  --sat_non_cyclic_types                  false
% 1.29/0.99  --sat_finite_models                     false
% 1.29/0.99  --sat_fm_lemmas                         false
% 1.29/0.99  --sat_fm_prep                           false
% 1.29/0.99  --sat_fm_uc_incr                        true
% 1.29/0.99  --sat_out_model                         small
% 1.29/0.99  --sat_out_clauses                       false
% 1.29/0.99  
% 1.29/0.99  ------ QBF Options
% 1.29/0.99  
% 1.29/0.99  --qbf_mode                              false
% 1.29/0.99  --qbf_elim_univ                         false
% 1.29/0.99  --qbf_dom_inst                          none
% 1.29/0.99  --qbf_dom_pre_inst                      false
% 1.29/0.99  --qbf_sk_in                             false
% 1.29/0.99  --qbf_pred_elim                         true
% 1.29/0.99  --qbf_split                             512
% 1.29/0.99  
% 1.29/0.99  ------ BMC1 Options
% 1.29/0.99  
% 1.29/0.99  --bmc1_incremental                      false
% 1.29/0.99  --bmc1_axioms                           reachable_all
% 1.29/0.99  --bmc1_min_bound                        0
% 1.29/0.99  --bmc1_max_bound                        -1
% 1.29/0.99  --bmc1_max_bound_default                -1
% 1.29/0.99  --bmc1_symbol_reachability              true
% 1.29/0.99  --bmc1_property_lemmas                  false
% 1.29/0.99  --bmc1_k_induction                      false
% 1.29/0.99  --bmc1_non_equiv_states                 false
% 1.29/0.99  --bmc1_deadlock                         false
% 1.29/0.99  --bmc1_ucm                              false
% 1.29/0.99  --bmc1_add_unsat_core                   none
% 1.29/0.99  --bmc1_unsat_core_children              false
% 1.29/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.29/0.99  --bmc1_out_stat                         full
% 1.29/0.99  --bmc1_ground_init                      false
% 1.29/0.99  --bmc1_pre_inst_next_state              false
% 1.29/0.99  --bmc1_pre_inst_state                   false
% 1.29/0.99  --bmc1_pre_inst_reach_state             false
% 1.29/0.99  --bmc1_out_unsat_core                   false
% 1.29/0.99  --bmc1_aig_witness_out                  false
% 1.29/0.99  --bmc1_verbose                          false
% 1.29/0.99  --bmc1_dump_clauses_tptp                false
% 1.29/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.29/0.99  --bmc1_dump_file                        -
% 1.29/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.29/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.29/0.99  --bmc1_ucm_extend_mode                  1
% 1.29/0.99  --bmc1_ucm_init_mode                    2
% 1.29/0.99  --bmc1_ucm_cone_mode                    none
% 1.29/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.29/0.99  --bmc1_ucm_relax_model                  4
% 1.29/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.29/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.29/0.99  --bmc1_ucm_layered_model                none
% 1.29/0.99  --bmc1_ucm_max_lemma_size               10
% 1.29/0.99  
% 1.29/0.99  ------ AIG Options
% 1.29/0.99  
% 1.29/0.99  --aig_mode                              false
% 1.29/0.99  
% 1.29/0.99  ------ Instantiation Options
% 1.29/0.99  
% 1.29/0.99  --instantiation_flag                    true
% 1.29/0.99  --inst_sos_flag                         false
% 1.29/0.99  --inst_sos_phase                        true
% 1.29/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.29/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.29/0.99  --inst_lit_sel_side                     none
% 1.29/0.99  --inst_solver_per_active                1400
% 1.29/0.99  --inst_solver_calls_frac                1.
% 1.29/0.99  --inst_passive_queue_type               priority_queues
% 1.29/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.29/0.99  --inst_passive_queues_freq              [25;2]
% 1.29/0.99  --inst_dismatching                      true
% 1.29/0.99  --inst_eager_unprocessed_to_passive     true
% 1.29/0.99  --inst_prop_sim_given                   true
% 1.29/0.99  --inst_prop_sim_new                     false
% 1.29/0.99  --inst_subs_new                         false
% 1.29/0.99  --inst_eq_res_simp                      false
% 1.29/0.99  --inst_subs_given                       false
% 1.29/0.99  --inst_orphan_elimination               true
% 1.29/0.99  --inst_learning_loop_flag               true
% 1.29/0.99  --inst_learning_start                   3000
% 1.29/0.99  --inst_learning_factor                  2
% 1.29/0.99  --inst_start_prop_sim_after_learn       3
% 1.29/0.99  --inst_sel_renew                        solver
% 1.29/0.99  --inst_lit_activity_flag                true
% 1.29/0.99  --inst_restr_to_given                   false
% 1.29/0.99  --inst_activity_threshold               500
% 1.29/0.99  --inst_out_proof                        true
% 1.29/0.99  
% 1.29/0.99  ------ Resolution Options
% 1.29/0.99  
% 1.29/0.99  --resolution_flag                       false
% 1.29/0.99  --res_lit_sel                           adaptive
% 1.29/0.99  --res_lit_sel_side                      none
% 1.29/0.99  --res_ordering                          kbo
% 1.29/0.99  --res_to_prop_solver                    active
% 1.29/0.99  --res_prop_simpl_new                    false
% 1.29/0.99  --res_prop_simpl_given                  true
% 1.29/0.99  --res_passive_queue_type                priority_queues
% 1.29/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.29/0.99  --res_passive_queues_freq               [15;5]
% 1.29/0.99  --res_forward_subs                      full
% 1.29/0.99  --res_backward_subs                     full
% 1.29/0.99  --res_forward_subs_resolution           true
% 1.29/0.99  --res_backward_subs_resolution          true
% 1.29/0.99  --res_orphan_elimination                true
% 1.29/0.99  --res_time_limit                        2.
% 1.29/0.99  --res_out_proof                         true
% 1.29/0.99  
% 1.29/0.99  ------ Superposition Options
% 1.29/0.99  
% 1.29/0.99  --superposition_flag                    true
% 1.29/0.99  --sup_passive_queue_type                priority_queues
% 1.29/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.29/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.29/0.99  --demod_completeness_check              fast
% 1.29/0.99  --demod_use_ground                      true
% 1.29/0.99  --sup_to_prop_solver                    passive
% 1.29/0.99  --sup_prop_simpl_new                    true
% 1.29/0.99  --sup_prop_simpl_given                  true
% 1.29/0.99  --sup_fun_splitting                     false
% 1.29/0.99  --sup_smt_interval                      50000
% 1.29/0.99  
% 1.29/0.99  ------ Superposition Simplification Setup
% 1.29/0.99  
% 1.29/0.99  --sup_indices_passive                   []
% 1.29/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.29/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.29/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.29/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.29/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.29/0.99  --sup_full_bw                           [BwDemod]
% 1.29/0.99  --sup_immed_triv                        [TrivRules]
% 1.29/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.29/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.29/0.99  --sup_immed_bw_main                     []
% 1.29/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.29/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.29/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.29/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.29/0.99  
% 1.29/0.99  ------ Combination Options
% 1.29/0.99  
% 1.29/0.99  --comb_res_mult                         3
% 1.29/0.99  --comb_sup_mult                         2
% 1.29/0.99  --comb_inst_mult                        10
% 1.29/0.99  
% 1.29/0.99  ------ Debug Options
% 1.29/0.99  
% 1.29/0.99  --dbg_backtrace                         false
% 1.29/0.99  --dbg_dump_prop_clauses                 false
% 1.29/0.99  --dbg_dump_prop_clauses_file            -
% 1.29/0.99  --dbg_out_stat                          false
% 1.29/0.99  
% 1.29/0.99  
% 1.29/0.99  
% 1.29/0.99  
% 1.29/0.99  ------ Proving...
% 1.29/0.99  
% 1.29/0.99  
% 1.29/0.99  % SZS status Theorem for theBenchmark.p
% 1.29/0.99  
% 1.29/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.29/0.99  
% 1.29/0.99  fof(f13,axiom,(
% 1.29/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (v1_subset_1(X1,X0) <=> X0 != X1))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f35,plain,(
% 1.29/0.99    ! [X0,X1] : ((v1_subset_1(X1,X0) <=> X0 != X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f13])).
% 1.29/0.99  
% 1.29/0.99  fof(f48,plain,(
% 1.29/0.99    ! [X0,X1] : (((v1_subset_1(X1,X0) | X0 = X1) & (X0 != X1 | ~v1_subset_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.29/0.99    inference(nnf_transformation,[],[f35])).
% 1.29/0.99  
% 1.29/0.99  fof(f70,plain,(
% 1.29/0.99    ( ! [X0,X1] : (v1_subset_1(X1,X0) | X0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.29/0.99    inference(cnf_transformation,[],[f48])).
% 1.29/0.99  
% 1.29/0.99  fof(f17,conjecture,(
% 1.29/0.99    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (v1_tex_2(k1_tex_2(X0,X1),X0) <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)))))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f18,negated_conjecture,(
% 1.29/0.99    ~! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => (v1_tex_2(k1_tex_2(X0,X1),X0) <=> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)))))),
% 1.29/0.99    inference(negated_conjecture,[],[f17])).
% 1.29/0.99  
% 1.29/0.99  fof(f42,plain,(
% 1.29/0.99    ? [X0] : (? [X1] : ((v1_tex_2(k1_tex_2(X0,X1),X0) <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & (l1_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f18])).
% 1.29/0.99  
% 1.29/0.99  fof(f43,plain,(
% 1.29/0.99    ? [X0] : (? [X1] : ((v1_tex_2(k1_tex_2(X0,X1),X0) <~> v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f42])).
% 1.29/0.99  
% 1.29/0.99  fof(f49,plain,(
% 1.29/0.99    ? [X0] : (? [X1] : (((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0))) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.29/0.99    inference(nnf_transformation,[],[f43])).
% 1.29/0.99  
% 1.29/0.99  fof(f50,plain,(
% 1.29/0.99    ? [X0] : (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0)) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f49])).
% 1.29/0.99  
% 1.29/0.99  fof(f52,plain,(
% 1.29/0.99    ( ! [X0] : (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0)) & m1_subset_1(X1,u1_struct_0(X0))) => ((~v1_subset_1(k6_domain_1(u1_struct_0(X0),sK2),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,sK2),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),sK2),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,sK2),X0)) & m1_subset_1(sK2,u1_struct_0(X0)))) )),
% 1.29/0.99    introduced(choice_axiom,[])).
% 1.29/0.99  
% 1.29/0.99  fof(f51,plain,(
% 1.29/0.99    ? [X0] : (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~v1_tex_2(k1_tex_2(X0,X1),X0)) & (v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | v1_tex_2(k1_tex_2(X0,X1),X0)) & m1_subset_1(X1,u1_struct_0(X0))) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : ((~v1_subset_1(k6_domain_1(u1_struct_0(sK1),X1),u1_struct_0(sK1)) | ~v1_tex_2(k1_tex_2(sK1,X1),sK1)) & (v1_subset_1(k6_domain_1(u1_struct_0(sK1),X1),u1_struct_0(sK1)) | v1_tex_2(k1_tex_2(sK1,X1),sK1)) & m1_subset_1(X1,u1_struct_0(sK1))) & l1_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 1.29/0.99    introduced(choice_axiom,[])).
% 1.29/0.99  
% 1.29/0.99  fof(f53,plain,(
% 1.29/0.99    ((~v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) | ~v1_tex_2(k1_tex_2(sK1,sK2),sK1)) & (v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) | v1_tex_2(k1_tex_2(sK1,sK2),sK1)) & m1_subset_1(sK2,u1_struct_0(sK1))) & l1_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 1.29/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f50,f52,f51])).
% 1.29/0.99  
% 1.29/0.99  fof(f80,plain,(
% 1.29/0.99    ~v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) | ~v1_tex_2(k1_tex_2(sK1,sK2),sK1)),
% 1.29/0.99    inference(cnf_transformation,[],[f53])).
% 1.29/0.99  
% 1.29/0.99  fof(f12,axiom,(
% 1.29/0.99    ! [X0] : ((l1_pre_topc(X0) & ~v7_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ((~v1_tex_2(X1,X0) & ~v2_struct_0(X1)) => (~v7_struct_0(X1) & ~v2_struct_0(X1)))))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f33,plain,(
% 1.29/0.99    ! [X0] : (! [X1] : (((~v7_struct_0(X1) & ~v2_struct_0(X1)) | (v1_tex_2(X1,X0) | v2_struct_0(X1))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | v7_struct_0(X0) | v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f12])).
% 1.29/0.99  
% 1.29/0.99  fof(f34,plain,(
% 1.29/0.99    ! [X0] : (! [X1] : ((~v7_struct_0(X1) & ~v2_struct_0(X1)) | v1_tex_2(X1,X0) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | v7_struct_0(X0) | v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f33])).
% 1.29/0.99  
% 1.29/0.99  fof(f68,plain,(
% 1.29/0.99    ( ! [X0,X1] : (~v7_struct_0(X1) | v1_tex_2(X1,X0) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | v7_struct_0(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f34])).
% 1.29/0.99  
% 1.29/0.99  fof(f14,axiom,(
% 1.29/0.99    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_pre_topc(k1_tex_2(X0,X1),X0) & v1_pre_topc(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f19,plain,(
% 1.29/0.99    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (m1_pre_topc(k1_tex_2(X0,X1),X0) & ~v2_struct_0(k1_tex_2(X0,X1))))),
% 1.29/0.99    inference(pure_predicate_removal,[],[f14])).
% 1.29/0.99  
% 1.29/0.99  fof(f36,plain,(
% 1.29/0.99    ! [X0,X1] : ((m1_pre_topc(k1_tex_2(X0,X1),X0) & ~v2_struct_0(k1_tex_2(X0,X1))) | (~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f19])).
% 1.29/0.99  
% 1.29/0.99  fof(f37,plain,(
% 1.29/0.99    ! [X0,X1] : ((m1_pre_topc(k1_tex_2(X0,X1),X0) & ~v2_struct_0(k1_tex_2(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f36])).
% 1.29/0.99  
% 1.29/0.99  fof(f72,plain,(
% 1.29/0.99    ( ! [X0,X1] : (m1_pre_topc(k1_tex_2(X0,X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f37])).
% 1.29/0.99  
% 1.29/0.99  fof(f71,plain,(
% 1.29/0.99    ( ! [X0,X1] : (~v2_struct_0(k1_tex_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f37])).
% 1.29/0.99  
% 1.29/0.99  fof(f15,axiom,(
% 1.29/0.99    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (v1_pre_topc(k1_tex_2(X0,X1)) & v7_struct_0(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f20,plain,(
% 1.29/0.99    ! [X0,X1] : ((m1_subset_1(X1,u1_struct_0(X0)) & l1_pre_topc(X0) & ~v2_struct_0(X0)) => (v7_struct_0(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))))),
% 1.29/0.99    inference(pure_predicate_removal,[],[f15])).
% 1.29/0.99  
% 1.29/0.99  fof(f38,plain,(
% 1.29/0.99    ! [X0,X1] : ((v7_struct_0(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))) | (~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f20])).
% 1.29/0.99  
% 1.29/0.99  fof(f39,plain,(
% 1.29/0.99    ! [X0,X1] : ((v7_struct_0(k1_tex_2(X0,X1)) & ~v2_struct_0(k1_tex_2(X0,X1))) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f38])).
% 1.29/0.99  
% 1.29/0.99  fof(f74,plain,(
% 1.29/0.99    ( ! [X0,X1] : (v7_struct_0(k1_tex_2(X0,X1)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f39])).
% 1.29/0.99  
% 1.29/0.99  fof(f76,plain,(
% 1.29/0.99    ~v2_struct_0(sK1)),
% 1.29/0.99    inference(cnf_transformation,[],[f53])).
% 1.29/0.99  
% 1.29/0.99  fof(f77,plain,(
% 1.29/0.99    l1_pre_topc(sK1)),
% 1.29/0.99    inference(cnf_transformation,[],[f53])).
% 1.29/0.99  
% 1.29/0.99  fof(f78,plain,(
% 1.29/0.99    m1_subset_1(sK2,u1_struct_0(sK1))),
% 1.29/0.99    inference(cnf_transformation,[],[f53])).
% 1.29/0.99  
% 1.29/0.99  fof(f7,axiom,(
% 1.29/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f24,plain,(
% 1.29/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.29/0.99    inference(ennf_transformation,[],[f7])).
% 1.29/0.99  
% 1.29/0.99  fof(f61,plain,(
% 1.29/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f24])).
% 1.29/0.99  
% 1.29/0.99  fof(f16,axiom,(
% 1.29/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => ~(v7_struct_0(X0) & v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)))))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f40,plain,(
% 1.29/0.99    ! [X0] : (! [X1] : ((~v7_struct_0(X0) | ~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f16])).
% 1.29/0.99  
% 1.29/0.99  fof(f41,plain,(
% 1.29/0.99    ! [X0] : (! [X1] : (~v7_struct_0(X0) | ~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f40])).
% 1.29/0.99  
% 1.29/0.99  fof(f75,plain,(
% 1.29/0.99    ( ! [X0,X1] : (~v7_struct_0(X0) | ~v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0)) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f41])).
% 1.29/0.99  
% 1.29/0.99  fof(f10,axiom,(
% 1.29/0.99    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f29,plain,(
% 1.29/0.99    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f10])).
% 1.29/0.99  
% 1.29/0.99  fof(f30,plain,(
% 1.29/0.99    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 1.29/0.99    inference(flattening,[],[f29])).
% 1.29/0.99  
% 1.29/0.99  fof(f64,plain,(
% 1.29/0.99    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f30])).
% 1.29/0.99  
% 1.29/0.99  fof(f2,axiom,(
% 1.29/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f56,plain,(
% 1.29/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f2])).
% 1.29/0.99  
% 1.29/0.99  fof(f3,axiom,(
% 1.29/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f57,plain,(
% 1.29/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f3])).
% 1.29/0.99  
% 1.29/0.99  fof(f81,plain,(
% 1.29/0.99    ( ! [X0] : (k1_tarski(X0) = k1_enumset1(X0,X0,X0)) )),
% 1.29/0.99    inference(definition_unfolding,[],[f56,f57])).
% 1.29/0.99  
% 1.29/0.99  fof(f84,plain,(
% 1.29/0.99    ( ! [X0,X1] : (k1_enumset1(X1,X1,X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.29/0.99    inference(definition_unfolding,[],[f64,f81])).
% 1.29/0.99  
% 1.29/0.99  fof(f8,axiom,(
% 1.29/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f25,plain,(
% 1.29/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f8])).
% 1.29/0.99  
% 1.29/0.99  fof(f26,plain,(
% 1.29/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f25])).
% 1.29/0.99  
% 1.29/0.99  fof(f62,plain,(
% 1.29/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f26])).
% 1.29/0.99  
% 1.29/0.99  fof(f6,axiom,(
% 1.29/0.99    ! [X0,X1] : (m1_subset_1(X0,X1) => (r2_hidden(X0,X1) | v1_xboole_0(X1)))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f22,plain,(
% 1.29/0.99    ! [X0,X1] : ((r2_hidden(X0,X1) | v1_xboole_0(X1)) | ~m1_subset_1(X0,X1))),
% 1.29/0.99    inference(ennf_transformation,[],[f6])).
% 1.29/0.99  
% 1.29/0.99  fof(f23,plain,(
% 1.29/0.99    ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1))),
% 1.29/0.99    inference(flattening,[],[f22])).
% 1.29/0.99  
% 1.29/0.99  fof(f60,plain,(
% 1.29/0.99    ( ! [X0,X1] : (r2_hidden(X0,X1) | v1_xboole_0(X1) | ~m1_subset_1(X0,X1)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f23])).
% 1.29/0.99  
% 1.29/0.99  fof(f5,axiom,(
% 1.29/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f21,plain,(
% 1.29/0.99    ! [X0,X1] : (m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) | ~r2_hidden(X0,X1))),
% 1.29/0.99    inference(ennf_transformation,[],[f5])).
% 1.29/0.99  
% 1.29/0.99  fof(f59,plain,(
% 1.29/0.99    ( ! [X0,X1] : (m1_subset_1(k1_tarski(X0),k1_zfmisc_1(X1)) | ~r2_hidden(X0,X1)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f21])).
% 1.29/0.99  
% 1.29/0.99  fof(f83,plain,(
% 1.29/0.99    ( ! [X0,X1] : (m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1)) | ~r2_hidden(X0,X1)) )),
% 1.29/0.99    inference(definition_unfolding,[],[f59,f81])).
% 1.29/0.99  
% 1.29/0.99  fof(f4,axiom,(
% 1.29/0.99    ! [X0] : v1_zfmisc_1(k1_tarski(X0))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f58,plain,(
% 1.29/0.99    ( ! [X0] : (v1_zfmisc_1(k1_tarski(X0))) )),
% 1.29/0.99    inference(cnf_transformation,[],[f4])).
% 1.29/0.99  
% 1.29/0.99  fof(f82,plain,(
% 1.29/0.99    ( ! [X0] : (v1_zfmisc_1(k1_enumset1(X0,X0,X0))) )),
% 1.29/0.99    inference(definition_unfolding,[],[f58,f81])).
% 1.29/0.99  
% 1.29/0.99  fof(f9,axiom,(
% 1.29/0.99    ! [X0] : ((l1_struct_0(X0) & ~v7_struct_0(X0)) => ~v1_zfmisc_1(u1_struct_0(X0)))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f27,plain,(
% 1.29/0.99    ! [X0] : (~v1_zfmisc_1(u1_struct_0(X0)) | (~l1_struct_0(X0) | v7_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f9])).
% 1.29/0.99  
% 1.29/0.99  fof(f28,plain,(
% 1.29/0.99    ! [X0] : (~v1_zfmisc_1(u1_struct_0(X0)) | ~l1_struct_0(X0) | v7_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f27])).
% 1.29/0.99  
% 1.29/0.99  fof(f63,plain,(
% 1.29/0.99    ( ! [X0] : (~v1_zfmisc_1(u1_struct_0(X0)) | ~l1_struct_0(X0) | v7_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f28])).
% 1.29/0.99  
% 1.29/0.99  fof(f79,plain,(
% 1.29/0.99    v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) | v1_tex_2(k1_tex_2(sK1,sK2),sK1)),
% 1.29/0.99    inference(cnf_transformation,[],[f53])).
% 1.29/0.99  
% 1.29/0.99  fof(f11,axiom,(
% 1.29/0.99    ! [X0] : ((l1_pre_topc(X0) & v7_struct_0(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => (~v2_struct_0(X1) => (~v1_tex_2(X1,X0) & ~v2_struct_0(X1)))))),
% 1.29/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.29/0.99  
% 1.29/0.99  fof(f31,plain,(
% 1.29/0.99    ! [X0] : (! [X1] : (((~v1_tex_2(X1,X0) & ~v2_struct_0(X1)) | v2_struct_0(X1)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v7_struct_0(X0) | v2_struct_0(X0)))),
% 1.29/0.99    inference(ennf_transformation,[],[f11])).
% 1.29/0.99  
% 1.29/0.99  fof(f32,plain,(
% 1.29/0.99    ! [X0] : (! [X1] : ((~v1_tex_2(X1,X0) & ~v2_struct_0(X1)) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v7_struct_0(X0) | v2_struct_0(X0))),
% 1.29/0.99    inference(flattening,[],[f31])).
% 1.29/0.99  
% 1.29/0.99  fof(f66,plain,(
% 1.29/0.99    ( ! [X0,X1] : (~v1_tex_2(X1,X0) | v2_struct_0(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v7_struct_0(X0) | v2_struct_0(X0)) )),
% 1.29/0.99    inference(cnf_transformation,[],[f32])).
% 1.29/0.99  
% 1.29/0.99  cnf(c_13,plain,
% 1.29/0.99      ( v1_subset_1(X0,X1)
% 1.29/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.29/0.99      | X0 = X1 ),
% 1.29/0.99      inference(cnf_transformation,[],[f70]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_20,negated_conjecture,
% 1.29/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.29/0.99      | ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
% 1.29/0.99      inference(cnf_transformation,[],[f80]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_184,plain,
% 1.29/0.99      ( ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1)
% 1.29/0.99      | ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) ),
% 1.29/0.99      inference(prop_impl,[status(thm)],[c_20]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_185,plain,
% 1.29/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.29/0.99      | ~ v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
% 1.29/0.99      inference(renaming,[status(thm)],[c_184]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_11,plain,
% 1.29/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.29/0.99      | v1_tex_2(X0,X1)
% 1.29/0.99      | ~ v7_struct_0(X0)
% 1.29/0.99      | v7_struct_0(X1)
% 1.29/0.99      | v2_struct_0(X1)
% 1.29/0.99      | v2_struct_0(X0)
% 1.29/0.99      | ~ l1_pre_topc(X1) ),
% 1.29/0.99      inference(cnf_transformation,[],[f68]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_15,plain,
% 1.29/0.99      ( m1_pre_topc(k1_tex_2(X0,X1),X0)
% 1.29/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.29/0.99      | v2_struct_0(X0)
% 1.29/0.99      | ~ l1_pre_topc(X0) ),
% 1.29/0.99      inference(cnf_transformation,[],[f72]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_571,plain,
% 1.29/0.99      ( v1_tex_2(X0,X1)
% 1.29/0.99      | ~ m1_subset_1(X2,u1_struct_0(X3))
% 1.29/0.99      | ~ v7_struct_0(X0)
% 1.29/0.99      | v7_struct_0(X1)
% 1.29/0.99      | v2_struct_0(X0)
% 1.29/0.99      | v2_struct_0(X3)
% 1.29/0.99      | v2_struct_0(X1)
% 1.29/0.99      | ~ l1_pre_topc(X1)
% 1.29/0.99      | ~ l1_pre_topc(X3)
% 1.29/0.99      | X3 != X1
% 1.29/0.99      | k1_tex_2(X3,X2) != X0 ),
% 1.29/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_15]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_572,plain,
% 1.29/0.99      ( v1_tex_2(k1_tex_2(X0,X1),X0)
% 1.29/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.29/0.99      | v7_struct_0(X0)
% 1.29/0.99      | ~ v7_struct_0(k1_tex_2(X0,X1))
% 1.29/0.99      | v2_struct_0(X0)
% 1.29/0.99      | v2_struct_0(k1_tex_2(X0,X1))
% 1.29/0.99      | ~ l1_pre_topc(X0) ),
% 1.29/0.99      inference(unflattening,[status(thm)],[c_571]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_16,plain,
% 1.29/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.29/0.99      | v2_struct_0(X1)
% 1.29/0.99      | ~ v2_struct_0(k1_tex_2(X1,X0))
% 1.29/0.99      | ~ l1_pre_topc(X1) ),
% 1.29/0.99      inference(cnf_transformation,[],[f71]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_17,plain,
% 1.29/0.99      ( ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.29/0.99      | v7_struct_0(k1_tex_2(X1,X0))
% 1.29/0.99      | v2_struct_0(X1)
% 1.29/0.99      | ~ l1_pre_topc(X1) ),
% 1.29/0.99      inference(cnf_transformation,[],[f74]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_590,plain,
% 1.29/0.99      ( v1_tex_2(k1_tex_2(X0,X1),X0)
% 1.29/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.29/0.99      | v7_struct_0(X0)
% 1.29/0.99      | v2_struct_0(X0)
% 1.29/0.99      | ~ l1_pre_topc(X0) ),
% 1.29/0.99      inference(forward_subsumption_resolution,
% 1.29/0.99                [status(thm)],
% 1.29/0.99                [c_572,c_16,c_17]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_663,plain,
% 1.29/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.29/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.29/0.99      | v7_struct_0(X1)
% 1.29/0.99      | v2_struct_0(X1)
% 1.29/0.99      | ~ l1_pre_topc(X1)
% 1.29/0.99      | k1_tex_2(X1,X0) != k1_tex_2(sK1,sK2)
% 1.29/0.99      | sK1 != X1 ),
% 1.29/0.99      inference(resolution_lifted,[status(thm)],[c_185,c_590]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_664,plain,
% 1.29/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.29/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.29/0.99      | v7_struct_0(sK1)
% 1.29/0.99      | v2_struct_0(sK1)
% 1.29/0.99      | ~ l1_pre_topc(sK1)
% 1.29/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
% 1.29/0.99      inference(unflattening,[status(thm)],[c_663]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_24,negated_conjecture,
% 1.29/0.99      ( ~ v2_struct_0(sK1) ),
% 1.29/0.99      inference(cnf_transformation,[],[f76]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_23,negated_conjecture,
% 1.29/0.99      ( l1_pre_topc(sK1) ),
% 1.29/0.99      inference(cnf_transformation,[],[f77]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_668,plain,
% 1.29/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.29/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.29/0.99      | v7_struct_0(sK1)
% 1.29/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
% 1.29/0.99      inference(global_propositional_subsumption,
% 1.29/0.99                [status(thm)],
% 1.29/0.99                [c_664,c_24,c_23]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_956,plain,
% 1.29/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.29/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 1.29/0.99      | v7_struct_0(sK1)
% 1.29/0.99      | X2 = X1
% 1.29/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
% 1.29/0.99      | k6_domain_1(u1_struct_0(sK1),sK2) != X1
% 1.29/0.99      | u1_struct_0(sK1) != X2 ),
% 1.29/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_668]) ).
% 1.29/0.99  
% 1.29/0.99  cnf(c_957,plain,
% 1.29/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.29/0.99      | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.29/0.99      | v7_struct_0(sK1)
% 1.29/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
% 1.29/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.29/0.99      inference(unflattening,[status(thm)],[c_956]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1596,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.39/0.99      | v7_struct_0(sK1)
% 1.39/0.99      | k1_tex_2(sK1,X0_47) != k1_tex_2(sK1,sK2)
% 1.39/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_957]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1604,plain,
% 1.39/0.99      ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.39/0.99      | v7_struct_0(sK1)
% 1.39/0.99      | sP0_iProver_split
% 1.39/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(splitting,
% 1.39/0.99                [splitting(split),new_symbols(definition,[])],
% 1.39/0.99                [c_1596]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1880,plain,
% 1.39/0.99      ( u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2)
% 1.39/0.99      | m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top
% 1.39/0.99      | v7_struct_0(sK1) = iProver_top
% 1.39/0.99      | sP0_iProver_split = iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1604]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_22,negated_conjecture,
% 1.39/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.39/0.99      inference(cnf_transformation,[],[f78]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_27,plain,
% 1.39/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1620,plain,
% 1.39/0.99      ( X0_48 != X1_48
% 1.39/0.99      | k1_tex_2(X0_48,X0_47) = k1_tex_2(X1_48,X1_47)
% 1.39/0.99      | X0_47 != X1_47 ),
% 1.39/0.99      theory(equality) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1628,plain,
% 1.39/0.99      ( k1_tex_2(sK1,sK2) = k1_tex_2(sK1,sK2) | sK1 != sK1 | sK2 != sK2 ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_1620]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1609,plain,( X0_47 = X0_47 ),theory(equality) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1630,plain,
% 1.39/0.99      ( sK2 = sK2 ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_1609]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1610,plain,( X0_48 = X0_48 ),theory(equality) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1631,plain,
% 1.39/0.99      ( sK1 = sK1 ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_1610]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1603,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | k1_tex_2(sK1,X0_47) != k1_tex_2(sK1,sK2)
% 1.39/0.99      | ~ sP0_iProver_split ),
% 1.39/0.99      inference(splitting,
% 1.39/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.39/0.99                [c_1596]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1648,plain,
% 1.39/0.99      ( ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 1.39/0.99      | ~ sP0_iProver_split
% 1.39/0.99      | k1_tex_2(sK1,sK2) != k1_tex_2(sK1,sK2) ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_1603]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_5,plain,
% 1.39/0.99      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 1.39/0.99      inference(cnf_transformation,[],[f61]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_19,plain,
% 1.39/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.39/0.99      | ~ v7_struct_0(X0)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | ~ l1_struct_0(X0) ),
% 1.39/0.99      inference(cnf_transformation,[],[f75]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_430,plain,
% 1.39/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.39/0.99      | ~ v7_struct_0(X0)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | ~ l1_pre_topc(X0) ),
% 1.39/0.99      inference(resolution,[status(thm)],[c_5,c_19]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_718,plain,
% 1.39/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(X0),X1),u1_struct_0(X0))
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.39/0.99      | ~ v7_struct_0(X0)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | sK1 != X0 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_430,c_23]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_719,plain,
% 1.39/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | v2_struct_0(sK1) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_718]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_723,plain,
% 1.39/0.99      ( ~ v7_struct_0(sK1)
% 1.39/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),u1_struct_0(sK1)) ),
% 1.39/0.99      inference(global_propositional_subsumption,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_719,c_24]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_724,plain,
% 1.39/0.99      ( ~ v1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1) ),
% 1.39/0.99      inference(renaming,[status(thm)],[c_723]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_977,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | X2 = X1
% 1.39/0.99      | k6_domain_1(u1_struct_0(sK1),X0) != X1
% 1.39/0.99      | u1_struct_0(sK1) != X2 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_724]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_978,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),X0) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_977]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1595,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),X0_47),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),X0_47) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_978]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1651,plain,
% 1.39/0.99      ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.39/0.99      | ~ m1_subset_1(sK2,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_1595]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1685,plain,
% 1.39/0.99      ( ~ m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1)))
% 1.39/0.99      | u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(global_propositional_subsumption,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_1604,c_22,c_1628,c_1630,c_1631,c_1648,c_1651]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1687,plain,
% 1.39/0.99      ( u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2)
% 1.39/0.99      | m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) != iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1685]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1602,negated_conjecture,
% 1.39/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_22]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1874,plain,
% 1.39/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) = iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1602]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_8,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,X1)
% 1.39/0.99      | v1_xboole_0(X1)
% 1.39/0.99      | k1_enumset1(X0,X0,X0) = k6_domain_1(X1,X0) ),
% 1.39/0.99      inference(cnf_transformation,[],[f84]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_6,plain,
% 1.39/0.99      ( v2_struct_0(X0)
% 1.39/0.99      | ~ l1_struct_0(X0)
% 1.39/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 1.39/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_464,plain,
% 1.39/0.99      ( v2_struct_0(X0)
% 1.39/0.99      | ~ l1_pre_topc(X0)
% 1.39/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 1.39/0.99      inference(resolution,[status(thm)],[c_5,c_6]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_697,plain,
% 1.39/0.99      ( v2_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK1 != X0 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_464,c_23]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_698,plain,
% 1.39/0.99      ( v2_struct_0(sK1) | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_697]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_62,plain,
% 1.39/0.99      ( v2_struct_0(sK1)
% 1.39/0.99      | ~ l1_struct_0(sK1)
% 1.39/0.99      | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_65,plain,
% 1.39/0.99      ( ~ l1_pre_topc(sK1) | l1_struct_0(sK1) ),
% 1.39/0.99      inference(instantiation,[status(thm)],[c_5]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_700,plain,
% 1.39/0.99      ( ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 1.39/0.99      inference(global_propositional_subsumption,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_698,c_24,c_23,c_62,c_65]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_823,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,X1)
% 1.39/0.99      | k1_enumset1(X0,X0,X0) = k6_domain_1(X1,X0)
% 1.39/0.99      | u1_struct_0(sK1) != X1 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_700]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_824,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | k1_enumset1(X0,X0,X0) = k6_domain_1(u1_struct_0(sK1),X0) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_823]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1597,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | k1_enumset1(X0_47,X0_47,X0_47) = k6_domain_1(u1_struct_0(sK1),X0_47) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_824]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1879,plain,
% 1.39/0.99      ( k1_enumset1(X0_47,X0_47,X0_47) = k6_domain_1(u1_struct_0(sK1),X0_47)
% 1.39/0.99      | m1_subset_1(X0_47,u1_struct_0(sK1)) != iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1597]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2055,plain,
% 1.39/0.99      ( k6_domain_1(u1_struct_0(sK1),sK2) = k1_enumset1(sK2,sK2,sK2) ),
% 1.39/0.99      inference(superposition,[status(thm)],[c_1874,c_1879]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_4,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 1.39/0.99      inference(cnf_transformation,[],[f60]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_3,plain,
% 1.39/0.99      ( m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
% 1.39/0.99      | ~ r2_hidden(X0,X1) ),
% 1.39/0.99      inference(cnf_transformation,[],[f83]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_332,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,X1)
% 1.39/0.99      | m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
% 1.39/0.99      | v1_xboole_0(X1) ),
% 1.39/0.99      inference(resolution,[status(thm)],[c_4,c_3]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_811,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,X1)
% 1.39/0.99      | m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(X1))
% 1.39/0.99      | u1_struct_0(sK1) != X1 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_332,c_700]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_812,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | m1_subset_1(k1_enumset1(X0,X0,X0),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_811]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1598,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | m1_subset_1(k1_enumset1(X0_47,X0_47,X0_47),k1_zfmisc_1(u1_struct_0(sK1))) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_812]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1878,plain,
% 1.39/0.99      ( m1_subset_1(X0_47,u1_struct_0(sK1)) != iProver_top
% 1.39/0.99      | m1_subset_1(k1_enumset1(X0_47,X0_47,X0_47),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1598]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2172,plain,
% 1.39/0.99      ( m1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),k1_zfmisc_1(u1_struct_0(sK1))) = iProver_top
% 1.39/0.99      | m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top ),
% 1.39/0.99      inference(superposition,[status(thm)],[c_2055,c_1878]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2468,plain,
% 1.39/0.99      ( u1_struct_0(sK1) = k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(global_propositional_subsumption,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_1880,c_27,c_1687,c_2172]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2,plain,
% 1.39/0.99      ( v1_zfmisc_1(k1_enumset1(X0,X0,X0)) ),
% 1.39/0.99      inference(cnf_transformation,[],[f82]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_7,plain,
% 1.39/0.99      ( v7_struct_0(X0)
% 1.39/0.99      | ~ l1_struct_0(X0)
% 1.39/0.99      | ~ v1_zfmisc_1(u1_struct_0(X0)) ),
% 1.39/0.99      inference(cnf_transformation,[],[f63]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_450,plain,
% 1.39/0.99      ( v7_struct_0(X0)
% 1.39/0.99      | ~ l1_pre_topc(X0)
% 1.39/0.99      | ~ v1_zfmisc_1(u1_struct_0(X0)) ),
% 1.39/0.99      inference(resolution,[status(thm)],[c_5,c_7]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_708,plain,
% 1.39/0.99      ( v7_struct_0(X0) | ~ v1_zfmisc_1(u1_struct_0(X0)) | sK1 != X0 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_450,c_23]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_709,plain,
% 1.39/0.99      ( v7_struct_0(sK1) | ~ v1_zfmisc_1(u1_struct_0(sK1)) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_708]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_790,plain,
% 1.39/0.99      ( v7_struct_0(sK1) | k1_enumset1(X0,X0,X0) != u1_struct_0(sK1) ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_709]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1600,plain,
% 1.39/0.99      ( v7_struct_0(sK1)
% 1.39/0.99      | k1_enumset1(X0_47,X0_47,X0_47) != u1_struct_0(sK1) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_790]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1876,plain,
% 1.39/0.99      ( k1_enumset1(X0_47,X0_47,X0_47) != u1_struct_0(sK1)
% 1.39/0.99      | v7_struct_0(sK1) = iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1600]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2106,plain,
% 1.39/0.99      ( k6_domain_1(u1_struct_0(sK1),sK2) != u1_struct_0(sK1)
% 1.39/0.99      | v7_struct_0(sK1) = iProver_top ),
% 1.39/0.99      inference(superposition,[status(thm)],[c_2055,c_1876]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2474,plain,
% 1.39/0.99      ( u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.39/0.99      | v7_struct_0(sK1) = iProver_top ),
% 1.39/0.99      inference(demodulation,[status(thm)],[c_2468,c_2106]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2478,plain,
% 1.39/0.99      ( v7_struct_0(sK1) = iProver_top ),
% 1.39/0.99      inference(equality_resolution_simp,[status(thm)],[c_2474]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_21,negated_conjecture,
% 1.39/0.99      ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.39/0.99      | v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
% 1.39/0.99      inference(cnf_transformation,[],[f79]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_186,plain,
% 1.39/0.99      ( v1_tex_2(k1_tex_2(sK1,sK2),sK1)
% 1.39/0.99      | v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1)) ),
% 1.39/0.99      inference(prop_impl,[status(thm)],[c_21]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_187,plain,
% 1.39/0.99      ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.39/0.99      | v1_tex_2(k1_tex_2(sK1,sK2),sK1) ),
% 1.39/0.99      inference(renaming,[status(thm)],[c_186]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_9,plain,
% 1.39/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.39/0.99      | ~ v1_tex_2(X0,X1)
% 1.39/0.99      | ~ v7_struct_0(X1)
% 1.39/0.99      | v2_struct_0(X1)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | ~ l1_pre_topc(X1) ),
% 1.39/0.99      inference(cnf_transformation,[],[f66]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_599,plain,
% 1.39/0.99      ( ~ v1_tex_2(X0,X1)
% 1.39/0.99      | ~ m1_subset_1(X2,u1_struct_0(X3))
% 1.39/0.99      | ~ v7_struct_0(X1)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | v2_struct_0(X3)
% 1.39/0.99      | v2_struct_0(X1)
% 1.39/0.99      | ~ l1_pre_topc(X1)
% 1.39/0.99      | ~ l1_pre_topc(X3)
% 1.39/0.99      | X3 != X1
% 1.39/0.99      | k1_tex_2(X3,X2) != X0 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_15]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_600,plain,
% 1.39/0.99      ( ~ v1_tex_2(k1_tex_2(X0,X1),X0)
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.39/0.99      | ~ v7_struct_0(X0)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | v2_struct_0(k1_tex_2(X0,X1))
% 1.39/0.99      | ~ l1_pre_topc(X0) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_599]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_616,plain,
% 1.39/0.99      ( ~ v1_tex_2(k1_tex_2(X0,X1),X0)
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 1.39/0.99      | ~ v7_struct_0(X0)
% 1.39/0.99      | v2_struct_0(X0)
% 1.39/0.99      | ~ l1_pre_topc(X0) ),
% 1.39/0.99      inference(forward_subsumption_resolution,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_600,c_16]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_639,plain,
% 1.39/0.99      ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X0,u1_struct_0(X1))
% 1.39/0.99      | ~ v7_struct_0(X1)
% 1.39/0.99      | v2_struct_0(X1)
% 1.39/0.99      | ~ l1_pre_topc(X1)
% 1.39/0.99      | k1_tex_2(X1,X0) != k1_tex_2(sK1,sK2)
% 1.39/0.99      | sK1 != X1 ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_187,c_616]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_640,plain,
% 1.39/0.99      ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | v2_struct_0(sK1)
% 1.39/0.99      | ~ l1_pre_topc(sK1)
% 1.39/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
% 1.39/0.99      inference(unflattening,[status(thm)],[c_639]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_644,plain,
% 1.39/0.99      ( v1_subset_1(k6_domain_1(u1_struct_0(sK1),sK2),u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2) ),
% 1.39/0.99      inference(global_propositional_subsumption,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_640,c_24,c_23]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1016,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
% 1.39/0.99      | k6_domain_1(u1_struct_0(sK1),X1) != k6_domain_1(u1_struct_0(sK1),sK2)
% 1.39/0.99      | u1_struct_0(sK1) != u1_struct_0(sK1) ),
% 1.39/0.99      inference(resolution_lifted,[status(thm)],[c_644,c_724]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1310,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X1,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | k1_tex_2(sK1,X0) != k1_tex_2(sK1,sK2)
% 1.39/0.99      | k6_domain_1(u1_struct_0(sK1),X1) != k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(equality_resolution_simp,[status(thm)],[c_1016]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1593,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | ~ m1_subset_1(X1_47,u1_struct_0(sK1))
% 1.39/0.99      | ~ v7_struct_0(sK1)
% 1.39/0.99      | k1_tex_2(sK1,X0_47) != k1_tex_2(sK1,sK2)
% 1.39/0.99      | k6_domain_1(u1_struct_0(sK1),X1_47) != k6_domain_1(u1_struct_0(sK1),sK2) ),
% 1.39/0.99      inference(subtyping,[status(esa)],[c_1310]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1606,plain,
% 1.39/0.99      ( ~ m1_subset_1(X0_47,u1_struct_0(sK1))
% 1.39/0.99      | k6_domain_1(u1_struct_0(sK1),X0_47) != k6_domain_1(u1_struct_0(sK1),sK2)
% 1.39/0.99      | ~ sP1_iProver_split ),
% 1.39/0.99      inference(splitting,
% 1.39/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.39/0.99                [c_1593]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1887,plain,
% 1.39/0.99      ( k6_domain_1(u1_struct_0(sK1),X0_47) != k6_domain_1(u1_struct_0(sK1),sK2)
% 1.39/0.99      | m1_subset_1(X0_47,u1_struct_0(sK1)) != iProver_top
% 1.39/0.99      | sP1_iProver_split != iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1606]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_2305,plain,
% 1.39/0.99      ( m1_subset_1(sK2,u1_struct_0(sK1)) != iProver_top
% 1.39/0.99      | sP1_iProver_split != iProver_top ),
% 1.39/0.99      inference(equality_resolution,[status(thm)],[c_1887]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1607,plain,
% 1.39/0.99      ( ~ v7_struct_0(sK1) | sP1_iProver_split | sP0_iProver_split ),
% 1.39/0.99      inference(splitting,
% 1.39/0.99                [splitting(split),new_symbols(definition,[])],
% 1.39/0.99                [c_1593]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1706,plain,
% 1.39/0.99      ( sP1_iProver_split | ~ v7_struct_0(sK1) ),
% 1.39/0.99      inference(global_propositional_subsumption,
% 1.39/0.99                [status(thm)],
% 1.39/0.99                [c_1607,c_22,c_1628,c_1630,c_1631,c_1648]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1707,plain,
% 1.39/0.99      ( ~ v7_struct_0(sK1) | sP1_iProver_split ),
% 1.39/0.99      inference(renaming,[status(thm)],[c_1706]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(c_1708,plain,
% 1.39/0.99      ( v7_struct_0(sK1) != iProver_top
% 1.39/0.99      | sP1_iProver_split = iProver_top ),
% 1.39/0.99      inference(predicate_to_equality,[status(thm)],[c_1707]) ).
% 1.39/0.99  
% 1.39/0.99  cnf(contradiction,plain,
% 1.39/0.99      ( $false ),
% 1.39/0.99      inference(minisat,[status(thm)],[c_2478,c_2305,c_1708,c_27]) ).
% 1.39/0.99  
% 1.39/0.99  
% 1.39/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.39/0.99  
% 1.39/0.99  ------                               Statistics
% 1.39/0.99  
% 1.39/0.99  ------ General
% 1.39/0.99  
% 1.39/0.99  abstr_ref_over_cycles:                  0
% 1.39/0.99  abstr_ref_under_cycles:                 0
% 1.39/0.99  gc_basic_clause_elim:                   0
% 1.39/0.99  forced_gc_time:                         0
% 1.39/0.99  parsing_time:                           0.01
% 1.39/0.99  unif_index_cands_time:                  0.
% 1.39/0.99  unif_index_add_time:                    0.
% 1.39/0.99  orderings_time:                         0.
% 1.39/0.99  out_proof_time:                         0.012
% 1.39/0.99  total_time:                             0.099
% 1.39/0.99  num_of_symbols:                         54
% 1.39/0.99  num_of_terms:                           1388
% 1.39/0.99  
% 1.39/0.99  ------ Preprocessing
% 1.39/0.99  
% 1.39/0.99  num_of_splits:                          4
% 1.39/0.99  num_of_split_atoms:                     2
% 1.39/0.99  num_of_reused_defs:                     2
% 1.39/0.99  num_eq_ax_congr_red:                    8
% 1.39/0.99  num_of_sem_filtered_clauses:            2
% 1.39/0.99  num_of_subtypes:                        2
% 1.39/0.99  monotx_restored_types:                  0
% 1.39/0.99  sat_num_of_epr_types:                   0
% 1.39/0.99  sat_num_of_non_cyclic_types:            0
% 1.39/0.99  sat_guarded_non_collapsed_types:        0
% 1.39/0.99  num_pure_diseq_elim:                    0
% 1.39/0.99  simp_replaced_by:                       0
% 1.39/0.99  res_preprocessed:                       80
% 1.39/0.99  prep_upred:                             0
% 1.39/0.99  prep_unflattend:                        31
% 1.39/0.99  smt_new_axioms:                         0
% 1.39/0.99  pred_elim_cands:                        2
% 1.39/0.99  pred_elim:                              9
% 1.39/0.99  pred_elim_cl:                           12
% 1.39/0.99  pred_elim_cycles:                       16
% 1.39/0.99  merged_defs:                            2
% 1.39/0.99  merged_defs_ncl:                        0
% 1.39/0.99  bin_hyper_res:                          2
% 1.39/0.99  prep_cycles:                            4
% 1.39/0.99  pred_elim_time:                         0.024
% 1.39/0.99  splitting_time:                         0.
% 1.39/0.99  sem_filter_time:                        0.
% 1.39/0.99  monotx_time:                            0.
% 1.39/0.99  subtype_inf_time:                       0.
% 1.39/0.99  
% 1.39/0.99  ------ Problem properties
% 1.39/0.99  
% 1.39/0.99  clauses:                                14
% 1.39/0.99  conjectures:                            1
% 1.39/0.99  epr:                                    1
% 1.39/0.99  horn:                                   12
% 1.39/0.99  ground:                                 5
% 1.39/0.99  unary:                                  2
% 1.39/0.99  binary:                                 4
% 1.39/0.99  lits:                                   37
% 1.39/0.99  lits_eq:                                9
% 1.39/0.99  fd_pure:                                0
% 1.39/0.99  fd_pseudo:                              0
% 1.39/0.99  fd_cond:                                0
% 1.39/0.99  fd_pseudo_cond:                         0
% 1.39/0.99  ac_symbols:                             0
% 1.39/0.99  
% 1.39/0.99  ------ Propositional Solver
% 1.39/0.99  
% 1.39/0.99  prop_solver_calls:                      28
% 1.39/0.99  prop_fast_solver_calls:                 726
% 1.39/0.99  smt_solver_calls:                       0
% 1.39/0.99  smt_fast_solver_calls:                  0
% 1.39/0.99  prop_num_of_clauses:                    525
% 1.39/0.99  prop_preprocess_simplified:             2573
% 1.39/0.99  prop_fo_subsumed:                       31
% 1.39/0.99  prop_solver_time:                       0.
% 1.39/0.99  smt_solver_time:                        0.
% 1.39/0.99  smt_fast_solver_time:                   0.
% 1.39/0.99  prop_fast_solver_time:                  0.
% 1.39/0.99  prop_unsat_core_time:                   0.
% 1.39/0.99  
% 1.39/0.99  ------ QBF
% 1.39/0.99  
% 1.39/0.99  qbf_q_res:                              0
% 1.39/0.99  qbf_num_tautologies:                    0
% 1.39/0.99  qbf_prep_cycles:                        0
% 1.39/0.99  
% 1.39/0.99  ------ BMC1
% 1.39/0.99  
% 1.39/0.99  bmc1_current_bound:                     -1
% 1.39/0.99  bmc1_last_solved_bound:                 -1
% 1.39/0.99  bmc1_unsat_core_size:                   -1
% 1.39/0.99  bmc1_unsat_core_parents_size:           -1
% 1.39/0.99  bmc1_merge_next_fun:                    0
% 1.39/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.39/0.99  
% 1.39/0.99  ------ Instantiation
% 1.39/0.99  
% 1.39/0.99  inst_num_of_clauses:                    112
% 1.39/0.99  inst_num_in_passive:                    18
% 1.39/0.99  inst_num_in_active:                     85
% 1.39/0.99  inst_num_in_unprocessed:                9
% 1.39/0.99  inst_num_of_loops:                      90
% 1.39/0.99  inst_num_of_learning_restarts:          0
% 1.39/0.99  inst_num_moves_active_passive:          1
% 1.39/0.99  inst_lit_activity:                      0
% 1.39/0.99  inst_lit_activity_moves:                0
% 1.39/0.99  inst_num_tautologies:                   0
% 1.39/0.99  inst_num_prop_implied:                  0
% 1.39/0.99  inst_num_existing_simplified:           0
% 1.39/0.99  inst_num_eq_res_simplified:             0
% 1.39/0.99  inst_num_child_elim:                    0
% 1.39/0.99  inst_num_of_dismatching_blockings:      40
% 1.39/0.99  inst_num_of_non_proper_insts:           117
% 1.39/0.99  inst_num_of_duplicates:                 0
% 1.39/0.99  inst_inst_num_from_inst_to_res:         0
% 1.39/0.99  inst_dismatching_checking_time:         0.
% 1.39/0.99  
% 1.39/0.99  ------ Resolution
% 1.39/0.99  
% 1.39/0.99  res_num_of_clauses:                     0
% 1.39/0.99  res_num_in_passive:                     0
% 1.39/0.99  res_num_in_active:                      0
% 1.39/0.99  res_num_of_loops:                       84
% 1.39/0.99  res_forward_subset_subsumed:            30
% 1.39/0.99  res_backward_subset_subsumed:           0
% 1.39/0.99  res_forward_subsumed:                   0
% 1.39/0.99  res_backward_subsumed:                  0
% 1.39/0.99  res_forward_subsumption_resolution:     3
% 1.39/0.99  res_backward_subsumption_resolution:    0
% 1.39/0.99  res_clause_to_clause_subsumption:       37
% 1.39/0.99  res_orphan_elimination:                 0
% 1.39/0.99  res_tautology_del:                      53
% 1.39/0.99  res_num_eq_res_simplified:              1
% 1.39/0.99  res_num_sel_changes:                    0
% 1.39/0.99  res_moves_from_active_to_pass:          0
% 1.39/0.99  
% 1.39/0.99  ------ Superposition
% 1.39/0.99  
% 1.39/0.99  sup_time_total:                         0.
% 1.39/0.99  sup_time_generating:                    0.
% 1.39/0.99  sup_time_sim_full:                      0.
% 1.39/0.99  sup_time_sim_immed:                     0.
% 1.39/0.99  
% 1.39/0.99  sup_num_of_clauses:                     13
% 1.39/0.99  sup_num_in_active:                      11
% 1.39/0.99  sup_num_in_passive:                     2
% 1.39/0.99  sup_num_of_loops:                       16
% 1.39/0.99  sup_fw_superposition:                   4
% 1.39/0.99  sup_bw_superposition:                   1
% 1.39/0.99  sup_immediate_simplified:               0
% 1.39/0.99  sup_given_eliminated:                   0
% 1.39/0.99  comparisons_done:                       0
% 1.39/0.99  comparisons_avoided:                    0
% 1.39/0.99  
% 1.39/0.99  ------ Simplifications
% 1.39/0.99  
% 1.39/0.99  
% 1.39/0.99  sim_fw_subset_subsumed:                 1
% 1.39/0.99  sim_bw_subset_subsumed:                 0
% 1.39/0.99  sim_fw_subsumed:                        0
% 1.39/0.99  sim_bw_subsumed:                        0
% 1.39/0.99  sim_fw_subsumption_res:                 0
% 1.39/0.99  sim_bw_subsumption_res:                 0
% 1.39/0.99  sim_tautology_del:                      0
% 1.39/0.99  sim_eq_tautology_del:                   1
% 1.39/0.99  sim_eq_res_simp:                        1
% 1.39/0.99  sim_fw_demodulated:                     0
% 1.39/0.99  sim_bw_demodulated:                     5
% 1.39/0.99  sim_light_normalised:                   0
% 1.39/0.99  sim_joinable_taut:                      0
% 1.39/0.99  sim_joinable_simp:                      0
% 1.39/0.99  sim_ac_normalised:                      0
% 1.39/0.99  sim_smt_subsumption:                    0
% 1.39/0.99  
%------------------------------------------------------------------------------
