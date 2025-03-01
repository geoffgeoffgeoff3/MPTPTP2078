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
% DateTime   : Thu Dec  3 12:27:02 EST 2020

% Result     : Theorem 2.67s
% Output     : CNFRefutation 2.67s
% Verified   : 
% Statistics : Number of formulae       :  139 ( 369 expanded)
%              Number of clauses        :   77 ( 138 expanded)
%              Number of leaves         :   23 (  86 expanded)
%              Depth                    :   21
%              Number of atoms          :  470 (1437 expanded)
%              Number of equality atoms :  148 ( 334 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => m1_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f54,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f8,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3,X4] :
                  ~ ( k3_mcart_1(X2,X3,X4) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4] :
              ( k3_mcart_1(X2,X3,X4) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f8])).

fof(f38,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3,X4] :
              ( k3_mcart_1(X2,X3,X4) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X4,X3,X2] :
            ( k3_mcart_1(X2,X3,X4) != sK1(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK1(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0] :
      ( ( ! [X2,X3,X4] :
            ( k3_mcart_1(X2,X3,X4) != sK1(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK1(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f38])).

fof(f56,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f62,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f35,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f34])).

fof(f36,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f35,f36])).

fof(f48,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f61,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f15,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v1_xboole_0(X1) )
         => ~ v3_tex_2(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
              & v1_xboole_0(X1) )
           => ~ v3_tex_2(X1,X0) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( v3_tex_2(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( v3_tex_2(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v1_xboole_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f32])).

fof(f46,plain,(
    ! [X0] :
      ( ? [X1] :
          ( v3_tex_2(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
          & v1_xboole_0(X1) )
     => ( v3_tex_2(sK4,X0)
        & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0)))
        & v1_xboole_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( v3_tex_2(X1,X0)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
            & v1_xboole_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( v3_tex_2(X1,sK3)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
          & v1_xboole_0(X1) )
      & l1_pre_topc(sK3)
      & v2_pre_topc(sK3)
      & ~ v2_struct_0(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( v3_tex_2(sK4,sK3)
    & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3)))
    & v1_xboole_0(sK4)
    & l1_pre_topc(sK3)
    & v2_pre_topc(sK3)
    & ~ v2_struct_0(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f33,f46,f45])).

fof(f73,plain,(
    v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f47])).

fof(f75,plain,(
    v3_tex_2(sK4,sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_tex_2(X1,X0)
          <=> ( ! [X2] :
                  ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
                 => ( ( r1_tarski(X1,X2)
                      & v2_tex_2(X2,X0) )
                   => X1 = X2 ) )
              & v2_tex_2(X1,X0) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_tex_2(X1,X0)
          <=> ( ! [X2] :
                  ( X1 = X2
                  | ~ r1_tarski(X1,X2)
                  | ~ v2_tex_2(X2,X0)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              & v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_tex_2(X1,X0)
          <=> ( ! [X2] :
                  ( X1 = X2
                  | ~ r1_tarski(X1,X2)
                  | ~ v2_tex_2(X2,X0)
                  | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              & v2_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f28])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ? [X2] :
                  ( X1 != X2
                  & r1_tarski(X1,X2)
                  & v2_tex_2(X2,X0)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X2] :
                    ( X1 = X2
                    | ~ r1_tarski(X1,X2)
                    | ~ v2_tex_2(X2,X0)
                    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ? [X2] :
                  ( X1 != X2
                  & r1_tarski(X1,X2)
                  & v2_tex_2(X2,X0)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X2] :
                    ( X1 = X2
                    | ~ r1_tarski(X1,X2)
                    | ~ v2_tex_2(X2,X0)
                    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f40])).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ? [X2] :
                  ( X1 != X2
                  & r1_tarski(X1,X2)
                  & v2_tex_2(X2,X0)
                  & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X3] :
                    ( X1 = X3
                    | ~ r1_tarski(X1,X3)
                    | ~ v2_tex_2(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(rectify,[],[f41])).

fof(f43,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( X1 != X2
          & r1_tarski(X1,X2)
          & v2_tex_2(X2,X0)
          & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( sK2(X0,X1) != X1
        & r1_tarski(X1,sK2(X0,X1))
        & v2_tex_2(sK2(X0,X1),X0)
        & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_tex_2(X1,X0)
              | ( sK2(X0,X1) != X1
                & r1_tarski(X1,sK2(X0,X1))
                & v2_tex_2(sK2(X0,X1),X0)
                & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) )
              | ~ v2_tex_2(X1,X0) )
            & ( ( ! [X3] :
                    ( X1 = X3
                    | ~ r1_tarski(X1,X3)
                    | ~ v2_tex_2(X3,X0)
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & v2_tex_2(X1,X0) )
              | ~ v3_tex_2(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f42,f43])).

fof(f64,plain,(
    ! [X0,X3,X1] :
      ( X1 = X3
      | ~ r1_tarski(X1,X3)
      | ~ v2_tex_2(X3,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ v3_tex_2(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f72,plain,(
    l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f5,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f5])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f59,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f23,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f60,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f70,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f14,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,u1_struct_0(X0))
         => v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
          | ~ m1_subset_1(X1,u1_struct_0(X0)) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f69,plain,(
    ! [X0,X1] :
      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f71,plain,(
    v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f2,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f4,axiom,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    inference(cnf_transformation,[],[f4])).

cnf(c_6,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_10,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_768,plain,
    ( m1_subset_1(X0,X1)
    | X2 != X1
    | sK1(X2) != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_10])).

cnf(c_769,plain,
    ( m1_subset_1(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_768])).

cnf(c_1667,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_769])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1674,plain,
    ( k6_domain_1(X0,X1) = k1_tarski(X1)
    | m1_subset_1(X1,X0) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2549,plain,
    ( k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0))
    | k1_xboole_0 = X0
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1667,c_1674])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_780,plain,
    ( ~ v1_xboole_0(X0)
    | X1 != X0
    | sK1(X1) != X2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_10])).

cnf(c_781,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(unflattening,[status(thm)],[c_780])).

cnf(c_2575,plain,
    ( v1_xboole_0(X0)
    | k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0))
    | k1_xboole_0 = X0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2549])).

cnf(c_2620,plain,
    ( k1_xboole_0 = X0
    | k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2549,c_781,c_2575])).

cnf(c_2621,plain,
    ( k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0))
    | k1_xboole_0 = X0 ),
    inference(renaming,[status(thm)],[c_2620])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,X1)
    | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1))
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1675,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2624,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(sK1(X0),X0) != iProver_top
    | m1_subset_1(k1_tarski(sK1(X0)),k1_zfmisc_1(X0)) = iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2621,c_1675])).

cnf(c_770,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_769])).

cnf(c_782,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_781])).

cnf(c_2697,plain,
    ( m1_subset_1(k1_tarski(sK1(X0)),k1_zfmisc_1(X0)) = iProver_top
    | k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2624,c_770,c_782])).

cnf(c_2698,plain,
    ( k1_xboole_0 = X0
    | m1_subset_1(k1_tarski(sK1(X0)),k1_zfmisc_1(X0)) = iProver_top ),
    inference(renaming,[status(thm)],[c_2697])).

cnf(c_24,negated_conjecture,
    ( v1_xboole_0(sK4) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1672,plain,
    ( v1_xboole_0(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_1666,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_781])).

cnf(c_2125,plain,
    ( sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1672,c_1666])).

cnf(c_22,negated_conjecture,
    ( v3_tex_2(sK4,sK3) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_19,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ v3_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | ~ l1_pre_topc(X1)
    | X0 = X2 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_536,plain,
    ( ~ v2_tex_2(X0,X1)
    | ~ v3_tex_2(X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_tarski(X2,X0)
    | X2 = X0
    | sK3 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_25])).

cnf(c_537,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ v3_tex_2(X1,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(unflattening,[status(thm)],[c_536])).

cnf(c_663,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ v3_tex_2(X1,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
    | X0 != X2
    | X0 = X1
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_537])).

cnf(c_664,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ v3_tex_2(k1_xboole_0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK3)))
    | X0 = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_663])).

cnf(c_5,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_678,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ v3_tex_2(k1_xboole_0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | X0 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_664,c_5])).

cnf(c_973,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | sK3 != sK3
    | sK4 != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_678])).

cnf(c_1111,plain,
    ( ~ v2_tex_2(X0,sK3)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
    | sK4 != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(equality_resolution_simp,[status(thm)],[c_973])).

cnf(c_1657,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = X0
    | v2_tex_2(X0,sK3) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1111])).

cnf(c_2180,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 != k1_xboole_0
    | v2_tex_2(X0,sK3) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2125,c_1657])).

cnf(c_2189,plain,
    ( k1_xboole_0 = X0
    | v2_tex_2(X0,sK3) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2180])).

cnf(c_2704,plain,
    ( u1_struct_0(sK3) = k1_xboole_0
    | k1_tarski(sK1(u1_struct_0(sK3))) = k1_xboole_0
    | v2_tex_2(k1_tarski(sK1(u1_struct_0(sK3))),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2698,c_2189])).

cnf(c_30,plain,
    ( l1_pre_topc(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_11,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_12,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_297,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_11,c_12])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_336,plain,
    ( ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_297,c_27])).

cnf(c_337,plain,
    ( ~ l1_pre_topc(sK3)
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(unflattening,[status(thm)],[c_336])).

cnf(c_338,plain,
    ( l1_pre_topc(sK3) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_337])).

cnf(c_1332,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_1827,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(u1_struct_0(sK3))
    | u1_struct_0(sK3) != X0 ),
    inference(instantiation,[status(thm)],[c_1332])).

cnf(c_1828,plain,
    ( u1_struct_0(sK3) != X0
    | v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1827])).

cnf(c_1830,plain,
    ( u1_struct_0(sK3) != k1_xboole_0
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1828])).

cnf(c_1330,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1977,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1330])).

cnf(c_2039,plain,
    ( m1_subset_1(sK1(u1_struct_0(sK3)),u1_struct_0(sK3))
    | k1_xboole_0 = u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_769])).

cnf(c_2043,plain,
    ( k1_xboole_0 = u1_struct_0(sK3)
    | m1_subset_1(sK1(u1_struct_0(sK3)),u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2039])).

cnf(c_1337,plain,
    ( X0 != X1
    | u1_struct_0(X0) = u1_struct_0(X1) ),
    theory(equality)).

cnf(c_1925,plain,
    ( u1_struct_0(sK3) = u1_struct_0(X0)
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_1337])).

cnf(c_2111,plain,
    ( u1_struct_0(sK3) = u1_struct_0(sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1925])).

cnf(c_1331,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1923,plain,
    ( X0 != X1
    | u1_struct_0(sK3) != X1
    | u1_struct_0(sK3) = X0 ),
    inference(instantiation,[status(thm)],[c_1331])).

cnf(c_2161,plain,
    ( X0 != u1_struct_0(sK3)
    | u1_struct_0(sK3) = X0
    | u1_struct_0(sK3) != u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_1923])).

cnf(c_2163,plain,
    ( u1_struct_0(sK3) != u1_struct_0(sK3)
    | u1_struct_0(sK3) = k1_xboole_0
    | k1_xboole_0 != u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_2161])).

cnf(c_2183,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2125,c_1672])).

cnf(c_21,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v2_pre_topc(X0)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_26,negated_conjecture,
    ( v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_315,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_26])).

cnf(c_316,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(sK3))
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_315])).

cnf(c_320,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
    | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_316,c_27,c_25])).

cnf(c_1671,plain,
    ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3) = iProver_top
    | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_320])).

cnf(c_2625,plain,
    ( u1_struct_0(sK3) = k1_xboole_0
    | v2_tex_2(k1_tarski(sK1(u1_struct_0(sK3))),sK3) = iProver_top
    | m1_subset_1(sK1(u1_struct_0(sK3)),u1_struct_0(sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2621,c_1671])).

cnf(c_2798,plain,
    ( k1_tarski(sK1(u1_struct_0(sK3))) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2704,c_30,c_338,c_1830,c_1977,c_2043,c_2111,c_2163,c_2183,c_2625])).

cnf(c_2,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_4,plain,
    ( k2_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_2065,plain,
    ( k1_tarski(X0) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2,c_4])).

cnf(c_2801,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2798,c_2065])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n010.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 11:53:59 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.67/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.67/1.00  
% 2.67/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.67/1.00  
% 2.67/1.00  ------  iProver source info
% 2.67/1.00  
% 2.67/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.67/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.67/1.00  git: non_committed_changes: false
% 2.67/1.00  git: last_make_outside_of_git: false
% 2.67/1.00  
% 2.67/1.00  ------ 
% 2.67/1.00  
% 2.67/1.00  ------ Input Options
% 2.67/1.00  
% 2.67/1.00  --out_options                           all
% 2.67/1.00  --tptp_safe_out                         true
% 2.67/1.00  --problem_path                          ""
% 2.67/1.00  --include_path                          ""
% 2.67/1.00  --clausifier                            res/vclausify_rel
% 2.67/1.00  --clausifier_options                    --mode clausify
% 2.67/1.00  --stdin                                 false
% 2.67/1.00  --stats_out                             all
% 2.67/1.00  
% 2.67/1.00  ------ General Options
% 2.67/1.00  
% 2.67/1.00  --fof                                   false
% 2.67/1.00  --time_out_real                         305.
% 2.67/1.00  --time_out_virtual                      -1.
% 2.67/1.00  --symbol_type_check                     false
% 2.67/1.00  --clausify_out                          false
% 2.67/1.00  --sig_cnt_out                           false
% 2.67/1.00  --trig_cnt_out                          false
% 2.67/1.00  --trig_cnt_out_tolerance                1.
% 2.67/1.00  --trig_cnt_out_sk_spl                   false
% 2.67/1.00  --abstr_cl_out                          false
% 2.67/1.00  
% 2.67/1.00  ------ Global Options
% 2.67/1.00  
% 2.67/1.00  --schedule                              default
% 2.67/1.00  --add_important_lit                     false
% 2.67/1.00  --prop_solver_per_cl                    1000
% 2.67/1.00  --min_unsat_core                        false
% 2.67/1.00  --soft_assumptions                      false
% 2.67/1.00  --soft_lemma_size                       3
% 2.67/1.00  --prop_impl_unit_size                   0
% 2.67/1.00  --prop_impl_unit                        []
% 2.67/1.00  --share_sel_clauses                     true
% 2.67/1.00  --reset_solvers                         false
% 2.67/1.00  --bc_imp_inh                            [conj_cone]
% 2.67/1.00  --conj_cone_tolerance                   3.
% 2.67/1.00  --extra_neg_conj                        none
% 2.67/1.00  --large_theory_mode                     true
% 2.67/1.00  --prolific_symb_bound                   200
% 2.67/1.00  --lt_threshold                          2000
% 2.67/1.00  --clause_weak_htbl                      true
% 2.67/1.00  --gc_record_bc_elim                     false
% 2.67/1.00  
% 2.67/1.00  ------ Preprocessing Options
% 2.67/1.00  
% 2.67/1.00  --preprocessing_flag                    true
% 2.67/1.00  --time_out_prep_mult                    0.1
% 2.67/1.00  --splitting_mode                        input
% 2.67/1.00  --splitting_grd                         true
% 2.67/1.00  --splitting_cvd                         false
% 2.67/1.00  --splitting_cvd_svl                     false
% 2.67/1.00  --splitting_nvd                         32
% 2.67/1.00  --sub_typing                            true
% 2.67/1.00  --prep_gs_sim                           true
% 2.67/1.00  --prep_unflatten                        true
% 2.67/1.00  --prep_res_sim                          true
% 2.67/1.00  --prep_upred                            true
% 2.67/1.00  --prep_sem_filter                       exhaustive
% 2.67/1.00  --prep_sem_filter_out                   false
% 2.67/1.00  --pred_elim                             true
% 2.67/1.00  --res_sim_input                         true
% 2.67/1.00  --eq_ax_congr_red                       true
% 2.67/1.00  --pure_diseq_elim                       true
% 2.67/1.00  --brand_transform                       false
% 2.67/1.00  --non_eq_to_eq                          false
% 2.67/1.00  --prep_def_merge                        true
% 2.67/1.00  --prep_def_merge_prop_impl              false
% 2.67/1.00  --prep_def_merge_mbd                    true
% 2.67/1.00  --prep_def_merge_tr_red                 false
% 2.67/1.00  --prep_def_merge_tr_cl                  false
% 2.67/1.00  --smt_preprocessing                     true
% 2.67/1.00  --smt_ac_axioms                         fast
% 2.67/1.00  --preprocessed_out                      false
% 2.67/1.00  --preprocessed_stats                    false
% 2.67/1.00  
% 2.67/1.00  ------ Abstraction refinement Options
% 2.67/1.00  
% 2.67/1.00  --abstr_ref                             []
% 2.67/1.00  --abstr_ref_prep                        false
% 2.67/1.00  --abstr_ref_until_sat                   false
% 2.67/1.00  --abstr_ref_sig_restrict                funpre
% 2.67/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.67/1.00  --abstr_ref_under                       []
% 2.67/1.00  
% 2.67/1.00  ------ SAT Options
% 2.67/1.00  
% 2.67/1.00  --sat_mode                              false
% 2.67/1.00  --sat_fm_restart_options                ""
% 2.67/1.00  --sat_gr_def                            false
% 2.67/1.00  --sat_epr_types                         true
% 2.67/1.00  --sat_non_cyclic_types                  false
% 2.67/1.00  --sat_finite_models                     false
% 2.67/1.00  --sat_fm_lemmas                         false
% 2.67/1.00  --sat_fm_prep                           false
% 2.67/1.00  --sat_fm_uc_incr                        true
% 2.67/1.00  --sat_out_model                         small
% 2.67/1.00  --sat_out_clauses                       false
% 2.67/1.00  
% 2.67/1.00  ------ QBF Options
% 2.67/1.00  
% 2.67/1.00  --qbf_mode                              false
% 2.67/1.00  --qbf_elim_univ                         false
% 2.67/1.00  --qbf_dom_inst                          none
% 2.67/1.00  --qbf_dom_pre_inst                      false
% 2.67/1.00  --qbf_sk_in                             false
% 2.67/1.00  --qbf_pred_elim                         true
% 2.67/1.00  --qbf_split                             512
% 2.67/1.00  
% 2.67/1.00  ------ BMC1 Options
% 2.67/1.00  
% 2.67/1.00  --bmc1_incremental                      false
% 2.67/1.00  --bmc1_axioms                           reachable_all
% 2.67/1.00  --bmc1_min_bound                        0
% 2.67/1.00  --bmc1_max_bound                        -1
% 2.67/1.00  --bmc1_max_bound_default                -1
% 2.67/1.00  --bmc1_symbol_reachability              true
% 2.67/1.00  --bmc1_property_lemmas                  false
% 2.67/1.00  --bmc1_k_induction                      false
% 2.67/1.00  --bmc1_non_equiv_states                 false
% 2.67/1.00  --bmc1_deadlock                         false
% 2.67/1.00  --bmc1_ucm                              false
% 2.67/1.00  --bmc1_add_unsat_core                   none
% 2.67/1.00  --bmc1_unsat_core_children              false
% 2.67/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.67/1.00  --bmc1_out_stat                         full
% 2.67/1.00  --bmc1_ground_init                      false
% 2.67/1.00  --bmc1_pre_inst_next_state              false
% 2.67/1.00  --bmc1_pre_inst_state                   false
% 2.67/1.00  --bmc1_pre_inst_reach_state             false
% 2.67/1.00  --bmc1_out_unsat_core                   false
% 2.67/1.00  --bmc1_aig_witness_out                  false
% 2.67/1.00  --bmc1_verbose                          false
% 2.67/1.00  --bmc1_dump_clauses_tptp                false
% 2.67/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.67/1.00  --bmc1_dump_file                        -
% 2.67/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.67/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.67/1.00  --bmc1_ucm_extend_mode                  1
% 2.67/1.00  --bmc1_ucm_init_mode                    2
% 2.67/1.00  --bmc1_ucm_cone_mode                    none
% 2.67/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.67/1.00  --bmc1_ucm_relax_model                  4
% 2.67/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.67/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.67/1.00  --bmc1_ucm_layered_model                none
% 2.67/1.00  --bmc1_ucm_max_lemma_size               10
% 2.67/1.00  
% 2.67/1.00  ------ AIG Options
% 2.67/1.00  
% 2.67/1.00  --aig_mode                              false
% 2.67/1.00  
% 2.67/1.00  ------ Instantiation Options
% 2.67/1.00  
% 2.67/1.00  --instantiation_flag                    true
% 2.67/1.00  --inst_sos_flag                         false
% 2.67/1.00  --inst_sos_phase                        true
% 2.67/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.67/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.67/1.00  --inst_lit_sel_side                     num_symb
% 2.67/1.00  --inst_solver_per_active                1400
% 2.67/1.00  --inst_solver_calls_frac                1.
% 2.67/1.00  --inst_passive_queue_type               priority_queues
% 2.67/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.67/1.00  --inst_passive_queues_freq              [25;2]
% 2.67/1.00  --inst_dismatching                      true
% 2.67/1.00  --inst_eager_unprocessed_to_passive     true
% 2.67/1.00  --inst_prop_sim_given                   true
% 2.67/1.00  --inst_prop_sim_new                     false
% 2.67/1.00  --inst_subs_new                         false
% 2.67/1.00  --inst_eq_res_simp                      false
% 2.67/1.00  --inst_subs_given                       false
% 2.67/1.00  --inst_orphan_elimination               true
% 2.67/1.00  --inst_learning_loop_flag               true
% 2.67/1.00  --inst_learning_start                   3000
% 2.67/1.00  --inst_learning_factor                  2
% 2.67/1.00  --inst_start_prop_sim_after_learn       3
% 2.67/1.00  --inst_sel_renew                        solver
% 2.67/1.00  --inst_lit_activity_flag                true
% 2.67/1.00  --inst_restr_to_given                   false
% 2.67/1.00  --inst_activity_threshold               500
% 2.67/1.00  --inst_out_proof                        true
% 2.67/1.00  
% 2.67/1.00  ------ Resolution Options
% 2.67/1.00  
% 2.67/1.00  --resolution_flag                       true
% 2.67/1.00  --res_lit_sel                           adaptive
% 2.67/1.00  --res_lit_sel_side                      none
% 2.67/1.00  --res_ordering                          kbo
% 2.67/1.00  --res_to_prop_solver                    active
% 2.67/1.00  --res_prop_simpl_new                    false
% 2.67/1.00  --res_prop_simpl_given                  true
% 2.67/1.00  --res_passive_queue_type                priority_queues
% 2.67/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.67/1.00  --res_passive_queues_freq               [15;5]
% 2.67/1.00  --res_forward_subs                      full
% 2.67/1.00  --res_backward_subs                     full
% 2.67/1.00  --res_forward_subs_resolution           true
% 2.67/1.00  --res_backward_subs_resolution          true
% 2.67/1.00  --res_orphan_elimination                true
% 2.67/1.00  --res_time_limit                        2.
% 2.67/1.00  --res_out_proof                         true
% 2.67/1.00  
% 2.67/1.00  ------ Superposition Options
% 2.67/1.00  
% 2.67/1.00  --superposition_flag                    true
% 2.67/1.00  --sup_passive_queue_type                priority_queues
% 2.67/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.67/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.67/1.00  --demod_completeness_check              fast
% 2.67/1.00  --demod_use_ground                      true
% 2.67/1.00  --sup_to_prop_solver                    passive
% 2.67/1.00  --sup_prop_simpl_new                    true
% 2.67/1.00  --sup_prop_simpl_given                  true
% 2.67/1.00  --sup_fun_splitting                     false
% 2.67/1.00  --sup_smt_interval                      50000
% 2.67/1.00  
% 2.67/1.00  ------ Superposition Simplification Setup
% 2.67/1.00  
% 2.67/1.00  --sup_indices_passive                   []
% 2.67/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.67/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/1.00  --sup_full_bw                           [BwDemod]
% 2.67/1.00  --sup_immed_triv                        [TrivRules]
% 2.67/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.67/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/1.00  --sup_immed_bw_main                     []
% 2.67/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.67/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/1.00  
% 2.67/1.00  ------ Combination Options
% 2.67/1.00  
% 2.67/1.00  --comb_res_mult                         3
% 2.67/1.00  --comb_sup_mult                         2
% 2.67/1.00  --comb_inst_mult                        10
% 2.67/1.00  
% 2.67/1.00  ------ Debug Options
% 2.67/1.00  
% 2.67/1.00  --dbg_backtrace                         false
% 2.67/1.00  --dbg_dump_prop_clauses                 false
% 2.67/1.00  --dbg_dump_prop_clauses_file            -
% 2.67/1.00  --dbg_out_stat                          false
% 2.67/1.00  ------ Parsing...
% 2.67/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.67/1.00  
% 2.67/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 7 0s  sf_e  pe_s  pe_e 
% 2.67/1.00  
% 2.67/1.00  ------ Preprocessing... gs_s  sp: 3 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.67/1.00  
% 2.67/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.67/1.00  ------ Proving...
% 2.67/1.00  ------ Problem Properties 
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  clauses                                 26
% 2.67/1.00  conjectures                             2
% 2.67/1.00  EPR                                     3
% 2.67/1.00  Horn                                    18
% 2.67/1.00  unary                                   7
% 2.67/1.00  binary                                  8
% 2.67/1.00  lits                                    60
% 2.67/1.00  lits eq                                 20
% 2.67/1.00  fd_pure                                 0
% 2.67/1.00  fd_pseudo                               0
% 2.67/1.00  fd_cond                                 11
% 2.67/1.00  fd_pseudo_cond                          0
% 2.67/1.00  AC symbols                              0
% 2.67/1.00  
% 2.67/1.00  ------ Schedule dynamic 5 is on 
% 2.67/1.00  
% 2.67/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  ------ 
% 2.67/1.00  Current options:
% 2.67/1.00  ------ 
% 2.67/1.00  
% 2.67/1.00  ------ Input Options
% 2.67/1.00  
% 2.67/1.00  --out_options                           all
% 2.67/1.00  --tptp_safe_out                         true
% 2.67/1.00  --problem_path                          ""
% 2.67/1.00  --include_path                          ""
% 2.67/1.00  --clausifier                            res/vclausify_rel
% 2.67/1.00  --clausifier_options                    --mode clausify
% 2.67/1.00  --stdin                                 false
% 2.67/1.00  --stats_out                             all
% 2.67/1.00  
% 2.67/1.00  ------ General Options
% 2.67/1.00  
% 2.67/1.00  --fof                                   false
% 2.67/1.00  --time_out_real                         305.
% 2.67/1.00  --time_out_virtual                      -1.
% 2.67/1.00  --symbol_type_check                     false
% 2.67/1.00  --clausify_out                          false
% 2.67/1.00  --sig_cnt_out                           false
% 2.67/1.00  --trig_cnt_out                          false
% 2.67/1.00  --trig_cnt_out_tolerance                1.
% 2.67/1.00  --trig_cnt_out_sk_spl                   false
% 2.67/1.00  --abstr_cl_out                          false
% 2.67/1.00  
% 2.67/1.00  ------ Global Options
% 2.67/1.00  
% 2.67/1.00  --schedule                              default
% 2.67/1.00  --add_important_lit                     false
% 2.67/1.00  --prop_solver_per_cl                    1000
% 2.67/1.00  --min_unsat_core                        false
% 2.67/1.00  --soft_assumptions                      false
% 2.67/1.00  --soft_lemma_size                       3
% 2.67/1.00  --prop_impl_unit_size                   0
% 2.67/1.00  --prop_impl_unit                        []
% 2.67/1.00  --share_sel_clauses                     true
% 2.67/1.00  --reset_solvers                         false
% 2.67/1.00  --bc_imp_inh                            [conj_cone]
% 2.67/1.00  --conj_cone_tolerance                   3.
% 2.67/1.00  --extra_neg_conj                        none
% 2.67/1.00  --large_theory_mode                     true
% 2.67/1.00  --prolific_symb_bound                   200
% 2.67/1.00  --lt_threshold                          2000
% 2.67/1.00  --clause_weak_htbl                      true
% 2.67/1.00  --gc_record_bc_elim                     false
% 2.67/1.00  
% 2.67/1.00  ------ Preprocessing Options
% 2.67/1.00  
% 2.67/1.00  --preprocessing_flag                    true
% 2.67/1.00  --time_out_prep_mult                    0.1
% 2.67/1.00  --splitting_mode                        input
% 2.67/1.00  --splitting_grd                         true
% 2.67/1.00  --splitting_cvd                         false
% 2.67/1.00  --splitting_cvd_svl                     false
% 2.67/1.00  --splitting_nvd                         32
% 2.67/1.00  --sub_typing                            true
% 2.67/1.00  --prep_gs_sim                           true
% 2.67/1.00  --prep_unflatten                        true
% 2.67/1.00  --prep_res_sim                          true
% 2.67/1.00  --prep_upred                            true
% 2.67/1.00  --prep_sem_filter                       exhaustive
% 2.67/1.00  --prep_sem_filter_out                   false
% 2.67/1.00  --pred_elim                             true
% 2.67/1.00  --res_sim_input                         true
% 2.67/1.00  --eq_ax_congr_red                       true
% 2.67/1.00  --pure_diseq_elim                       true
% 2.67/1.00  --brand_transform                       false
% 2.67/1.00  --non_eq_to_eq                          false
% 2.67/1.00  --prep_def_merge                        true
% 2.67/1.00  --prep_def_merge_prop_impl              false
% 2.67/1.00  --prep_def_merge_mbd                    true
% 2.67/1.00  --prep_def_merge_tr_red                 false
% 2.67/1.00  --prep_def_merge_tr_cl                  false
% 2.67/1.00  --smt_preprocessing                     true
% 2.67/1.00  --smt_ac_axioms                         fast
% 2.67/1.00  --preprocessed_out                      false
% 2.67/1.00  --preprocessed_stats                    false
% 2.67/1.00  
% 2.67/1.00  ------ Abstraction refinement Options
% 2.67/1.00  
% 2.67/1.00  --abstr_ref                             []
% 2.67/1.00  --abstr_ref_prep                        false
% 2.67/1.00  --abstr_ref_until_sat                   false
% 2.67/1.00  --abstr_ref_sig_restrict                funpre
% 2.67/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.67/1.00  --abstr_ref_under                       []
% 2.67/1.00  
% 2.67/1.00  ------ SAT Options
% 2.67/1.00  
% 2.67/1.00  --sat_mode                              false
% 2.67/1.00  --sat_fm_restart_options                ""
% 2.67/1.00  --sat_gr_def                            false
% 2.67/1.00  --sat_epr_types                         true
% 2.67/1.00  --sat_non_cyclic_types                  false
% 2.67/1.00  --sat_finite_models                     false
% 2.67/1.00  --sat_fm_lemmas                         false
% 2.67/1.00  --sat_fm_prep                           false
% 2.67/1.00  --sat_fm_uc_incr                        true
% 2.67/1.00  --sat_out_model                         small
% 2.67/1.00  --sat_out_clauses                       false
% 2.67/1.00  
% 2.67/1.00  ------ QBF Options
% 2.67/1.00  
% 2.67/1.00  --qbf_mode                              false
% 2.67/1.00  --qbf_elim_univ                         false
% 2.67/1.00  --qbf_dom_inst                          none
% 2.67/1.00  --qbf_dom_pre_inst                      false
% 2.67/1.00  --qbf_sk_in                             false
% 2.67/1.00  --qbf_pred_elim                         true
% 2.67/1.00  --qbf_split                             512
% 2.67/1.00  
% 2.67/1.00  ------ BMC1 Options
% 2.67/1.00  
% 2.67/1.00  --bmc1_incremental                      false
% 2.67/1.00  --bmc1_axioms                           reachable_all
% 2.67/1.00  --bmc1_min_bound                        0
% 2.67/1.00  --bmc1_max_bound                        -1
% 2.67/1.00  --bmc1_max_bound_default                -1
% 2.67/1.00  --bmc1_symbol_reachability              true
% 2.67/1.00  --bmc1_property_lemmas                  false
% 2.67/1.00  --bmc1_k_induction                      false
% 2.67/1.00  --bmc1_non_equiv_states                 false
% 2.67/1.00  --bmc1_deadlock                         false
% 2.67/1.00  --bmc1_ucm                              false
% 2.67/1.00  --bmc1_add_unsat_core                   none
% 2.67/1.00  --bmc1_unsat_core_children              false
% 2.67/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.67/1.00  --bmc1_out_stat                         full
% 2.67/1.00  --bmc1_ground_init                      false
% 2.67/1.00  --bmc1_pre_inst_next_state              false
% 2.67/1.00  --bmc1_pre_inst_state                   false
% 2.67/1.00  --bmc1_pre_inst_reach_state             false
% 2.67/1.00  --bmc1_out_unsat_core                   false
% 2.67/1.00  --bmc1_aig_witness_out                  false
% 2.67/1.00  --bmc1_verbose                          false
% 2.67/1.00  --bmc1_dump_clauses_tptp                false
% 2.67/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.67/1.00  --bmc1_dump_file                        -
% 2.67/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.67/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.67/1.00  --bmc1_ucm_extend_mode                  1
% 2.67/1.00  --bmc1_ucm_init_mode                    2
% 2.67/1.00  --bmc1_ucm_cone_mode                    none
% 2.67/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.67/1.00  --bmc1_ucm_relax_model                  4
% 2.67/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.67/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.67/1.00  --bmc1_ucm_layered_model                none
% 2.67/1.00  --bmc1_ucm_max_lemma_size               10
% 2.67/1.00  
% 2.67/1.00  ------ AIG Options
% 2.67/1.00  
% 2.67/1.00  --aig_mode                              false
% 2.67/1.00  
% 2.67/1.00  ------ Instantiation Options
% 2.67/1.00  
% 2.67/1.00  --instantiation_flag                    true
% 2.67/1.00  --inst_sos_flag                         false
% 2.67/1.00  --inst_sos_phase                        true
% 2.67/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.67/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.67/1.00  --inst_lit_sel_side                     none
% 2.67/1.00  --inst_solver_per_active                1400
% 2.67/1.00  --inst_solver_calls_frac                1.
% 2.67/1.00  --inst_passive_queue_type               priority_queues
% 2.67/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.67/1.00  --inst_passive_queues_freq              [25;2]
% 2.67/1.00  --inst_dismatching                      true
% 2.67/1.00  --inst_eager_unprocessed_to_passive     true
% 2.67/1.00  --inst_prop_sim_given                   true
% 2.67/1.00  --inst_prop_sim_new                     false
% 2.67/1.00  --inst_subs_new                         false
% 2.67/1.00  --inst_eq_res_simp                      false
% 2.67/1.00  --inst_subs_given                       false
% 2.67/1.00  --inst_orphan_elimination               true
% 2.67/1.00  --inst_learning_loop_flag               true
% 2.67/1.00  --inst_learning_start                   3000
% 2.67/1.00  --inst_learning_factor                  2
% 2.67/1.00  --inst_start_prop_sim_after_learn       3
% 2.67/1.00  --inst_sel_renew                        solver
% 2.67/1.00  --inst_lit_activity_flag                true
% 2.67/1.00  --inst_restr_to_given                   false
% 2.67/1.00  --inst_activity_threshold               500
% 2.67/1.00  --inst_out_proof                        true
% 2.67/1.00  
% 2.67/1.00  ------ Resolution Options
% 2.67/1.00  
% 2.67/1.00  --resolution_flag                       false
% 2.67/1.00  --res_lit_sel                           adaptive
% 2.67/1.00  --res_lit_sel_side                      none
% 2.67/1.00  --res_ordering                          kbo
% 2.67/1.00  --res_to_prop_solver                    active
% 2.67/1.00  --res_prop_simpl_new                    false
% 2.67/1.00  --res_prop_simpl_given                  true
% 2.67/1.00  --res_passive_queue_type                priority_queues
% 2.67/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.67/1.00  --res_passive_queues_freq               [15;5]
% 2.67/1.00  --res_forward_subs                      full
% 2.67/1.00  --res_backward_subs                     full
% 2.67/1.00  --res_forward_subs_resolution           true
% 2.67/1.00  --res_backward_subs_resolution          true
% 2.67/1.00  --res_orphan_elimination                true
% 2.67/1.00  --res_time_limit                        2.
% 2.67/1.00  --res_out_proof                         true
% 2.67/1.00  
% 2.67/1.00  ------ Superposition Options
% 2.67/1.00  
% 2.67/1.00  --superposition_flag                    true
% 2.67/1.00  --sup_passive_queue_type                priority_queues
% 2.67/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.67/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.67/1.00  --demod_completeness_check              fast
% 2.67/1.00  --demod_use_ground                      true
% 2.67/1.00  --sup_to_prop_solver                    passive
% 2.67/1.00  --sup_prop_simpl_new                    true
% 2.67/1.00  --sup_prop_simpl_given                  true
% 2.67/1.00  --sup_fun_splitting                     false
% 2.67/1.00  --sup_smt_interval                      50000
% 2.67/1.00  
% 2.67/1.00  ------ Superposition Simplification Setup
% 2.67/1.00  
% 2.67/1.00  --sup_indices_passive                   []
% 2.67/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.67/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.67/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/1.00  --sup_full_bw                           [BwDemod]
% 2.67/1.00  --sup_immed_triv                        [TrivRules]
% 2.67/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.67/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/1.00  --sup_immed_bw_main                     []
% 2.67/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.67/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.67/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.67/1.00  
% 2.67/1.00  ------ Combination Options
% 2.67/1.00  
% 2.67/1.00  --comb_res_mult                         3
% 2.67/1.00  --comb_sup_mult                         2
% 2.67/1.00  --comb_inst_mult                        10
% 2.67/1.00  
% 2.67/1.00  ------ Debug Options
% 2.67/1.00  
% 2.67/1.00  --dbg_backtrace                         false
% 2.67/1.00  --dbg_dump_prop_clauses                 false
% 2.67/1.00  --dbg_dump_prop_clauses_file            -
% 2.67/1.00  --dbg_out_stat                          false
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  ------ Proving...
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  % SZS status Theorem for theBenchmark.p
% 2.67/1.00  
% 2.67/1.00   Resolution empty clause
% 2.67/1.00  
% 2.67/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.67/1.00  
% 2.67/1.00  fof(f6,axiom,(
% 2.67/1.00    ! [X0,X1] : (r2_hidden(X0,X1) => m1_subset_1(X0,X1))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f17,plain,(
% 2.67/1.00    ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1))),
% 2.67/1.00    inference(ennf_transformation,[],[f6])).
% 2.67/1.00  
% 2.67/1.00  fof(f54,plain,(
% 2.67/1.00    ( ! [X0,X1] : (m1_subset_1(X0,X1) | ~r2_hidden(X0,X1)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f17])).
% 2.67/1.00  
% 2.67/1.00  fof(f8,axiom,(
% 2.67/1.00    ! [X0] : ~(! [X1] : ~(! [X2,X3,X4] : ~(k3_mcart_1(X2,X3,X4) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f20,plain,(
% 2.67/1.00    ! [X0] : (? [X1] : (! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 2.67/1.00    inference(ennf_transformation,[],[f8])).
% 2.67/1.00  
% 2.67/1.00  fof(f38,plain,(
% 2.67/1.00    ! [X0] : (? [X1] : (! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X4,X3,X2] : (k3_mcart_1(X2,X3,X4) != sK1(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK1(X0),X0)))),
% 2.67/1.00    introduced(choice_axiom,[])).
% 2.67/1.00  
% 2.67/1.00  fof(f39,plain,(
% 2.67/1.00    ! [X0] : ((! [X2,X3,X4] : (k3_mcart_1(X2,X3,X4) != sK1(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK1(X0),X0)) | k1_xboole_0 = X0)),
% 2.67/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f38])).
% 2.67/1.00  
% 2.67/1.00  fof(f56,plain,(
% 2.67/1.00    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.67/1.00    inference(cnf_transformation,[],[f39])).
% 2.67/1.00  
% 2.67/1.00  fof(f12,axiom,(
% 2.67/1.00    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f26,plain,(
% 2.67/1.00    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.67/1.00    inference(ennf_transformation,[],[f12])).
% 2.67/1.00  
% 2.67/1.00  fof(f27,plain,(
% 2.67/1.00    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.67/1.00    inference(flattening,[],[f26])).
% 2.67/1.00  
% 2.67/1.00  fof(f62,plain,(
% 2.67/1.00    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f27])).
% 2.67/1.00  
% 2.67/1.00  fof(f1,axiom,(
% 2.67/1.00    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f34,plain,(
% 2.67/1.00    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.67/1.00    inference(nnf_transformation,[],[f1])).
% 2.67/1.00  
% 2.67/1.00  fof(f35,plain,(
% 2.67/1.00    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.67/1.00    inference(rectify,[],[f34])).
% 2.67/1.00  
% 2.67/1.00  fof(f36,plain,(
% 2.67/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.67/1.00    introduced(choice_axiom,[])).
% 2.67/1.00  
% 2.67/1.00  fof(f37,plain,(
% 2.67/1.00    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.67/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f35,f36])).
% 2.67/1.00  
% 2.67/1.00  fof(f48,plain,(
% 2.67/1.00    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f37])).
% 2.67/1.00  
% 2.67/1.00  fof(f11,axiom,(
% 2.67/1.00    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f24,plain,(
% 2.67/1.00    ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 2.67/1.00    inference(ennf_transformation,[],[f11])).
% 2.67/1.00  
% 2.67/1.00  fof(f25,plain,(
% 2.67/1.00    ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 2.67/1.00    inference(flattening,[],[f24])).
% 2.67/1.00  
% 2.67/1.00  fof(f61,plain,(
% 2.67/1.00    ( ! [X0,X1] : (m1_subset_1(k6_domain_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f25])).
% 2.67/1.00  
% 2.67/1.00  fof(f15,conjecture,(
% 2.67/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => ~v3_tex_2(X1,X0)))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f16,negated_conjecture,(
% 2.67/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => ~v3_tex_2(X1,X0)))),
% 2.67/1.00    inference(negated_conjecture,[],[f15])).
% 2.67/1.00  
% 2.67/1.00  fof(f32,plain,(
% 2.67/1.00    ? [X0] : (? [X1] : (v3_tex_2(X1,X0) & (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.67/1.00    inference(ennf_transformation,[],[f16])).
% 2.67/1.00  
% 2.67/1.00  fof(f33,plain,(
% 2.67/1.00    ? [X0] : (? [X1] : (v3_tex_2(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.67/1.00    inference(flattening,[],[f32])).
% 2.67/1.00  
% 2.67/1.00  fof(f46,plain,(
% 2.67/1.00    ( ! [X0] : (? [X1] : (v3_tex_2(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) => (v3_tex_2(sK4,X0) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(sK4))) )),
% 2.67/1.00    introduced(choice_axiom,[])).
% 2.67/1.00  
% 2.67/1.00  fof(f45,plain,(
% 2.67/1.00    ? [X0] : (? [X1] : (v3_tex_2(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & v1_xboole_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (v3_tex_2(X1,sK3) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3))) & v1_xboole_0(X1)) & l1_pre_topc(sK3) & v2_pre_topc(sK3) & ~v2_struct_0(sK3))),
% 2.67/1.00    introduced(choice_axiom,[])).
% 2.67/1.00  
% 2.67/1.00  fof(f47,plain,(
% 2.67/1.00    (v3_tex_2(sK4,sK3) & m1_subset_1(sK4,k1_zfmisc_1(u1_struct_0(sK3))) & v1_xboole_0(sK4)) & l1_pre_topc(sK3) & v2_pre_topc(sK3) & ~v2_struct_0(sK3)),
% 2.67/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f33,f46,f45])).
% 2.67/1.00  
% 2.67/1.00  fof(f73,plain,(
% 2.67/1.00    v1_xboole_0(sK4)),
% 2.67/1.00    inference(cnf_transformation,[],[f47])).
% 2.67/1.00  
% 2.67/1.00  fof(f75,plain,(
% 2.67/1.00    v3_tex_2(sK4,sK3)),
% 2.67/1.00    inference(cnf_transformation,[],[f47])).
% 2.67/1.00  
% 2.67/1.00  fof(f3,axiom,(
% 2.67/1.00    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f51,plain,(
% 2.67/1.00    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f3])).
% 2.67/1.00  
% 2.67/1.00  fof(f13,axiom,(
% 2.67/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_tex_2(X1,X0) <=> (! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => ((r1_tarski(X1,X2) & v2_tex_2(X2,X0)) => X1 = X2)) & v2_tex_2(X1,X0)))))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f28,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : ((v3_tex_2(X1,X0) <=> (! [X2] : ((X1 = X2 | (~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0))) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(ennf_transformation,[],[f13])).
% 2.67/1.00  
% 2.67/1.00  fof(f29,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : ((v3_tex_2(X1,X0) <=> (! [X2] : (X1 = X2 | ~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(flattening,[],[f28])).
% 2.67/1.00  
% 2.67/1.00  fof(f40,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | (? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0))) & ((! [X2] : (X1 = X2 | ~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(nnf_transformation,[],[f29])).
% 2.67/1.00  
% 2.67/1.00  fof(f41,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | ? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0)) & ((! [X2] : (X1 = X2 | ~r1_tarski(X1,X2) | ~v2_tex_2(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(flattening,[],[f40])).
% 2.67/1.00  
% 2.67/1.00  fof(f42,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | ? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0)) & ((! [X3] : (X1 = X3 | ~r1_tarski(X1,X3) | ~v2_tex_2(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(rectify,[],[f41])).
% 2.67/1.00  
% 2.67/1.00  fof(f43,plain,(
% 2.67/1.00    ! [X1,X0] : (? [X2] : (X1 != X2 & r1_tarski(X1,X2) & v2_tex_2(X2,X0) & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) => (sK2(X0,X1) != X1 & r1_tarski(X1,sK2(X0,X1)) & v2_tex_2(sK2(X0,X1),X0) & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.67/1.00    introduced(choice_axiom,[])).
% 2.67/1.00  
% 2.67/1.00  fof(f44,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : (((v3_tex_2(X1,X0) | (sK2(X0,X1) != X1 & r1_tarski(X1,sK2(X0,X1)) & v2_tex_2(sK2(X0,X1),X0) & m1_subset_1(sK2(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))) | ~v2_tex_2(X1,X0)) & ((! [X3] : (X1 = X3 | ~r1_tarski(X1,X3) | ~v2_tex_2(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & v2_tex_2(X1,X0)) | ~v3_tex_2(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f42,f43])).
% 2.67/1.00  
% 2.67/1.00  fof(f64,plain,(
% 2.67/1.00    ( ! [X0,X3,X1] : (X1 = X3 | ~r1_tarski(X1,X3) | ~v2_tex_2(X3,X0) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) | ~v3_tex_2(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f44])).
% 2.67/1.00  
% 2.67/1.00  fof(f72,plain,(
% 2.67/1.00    l1_pre_topc(sK3)),
% 2.67/1.00    inference(cnf_transformation,[],[f47])).
% 2.67/1.00  
% 2.67/1.00  fof(f5,axiom,(
% 2.67/1.00    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f53,plain,(
% 2.67/1.00    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 2.67/1.00    inference(cnf_transformation,[],[f5])).
% 2.67/1.00  
% 2.67/1.00  fof(f9,axiom,(
% 2.67/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f21,plain,(
% 2.67/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.67/1.00    inference(ennf_transformation,[],[f9])).
% 2.67/1.00  
% 2.67/1.00  fof(f59,plain,(
% 2.67/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f21])).
% 2.67/1.00  
% 2.67/1.00  fof(f10,axiom,(
% 2.67/1.00    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f22,plain,(
% 2.67/1.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.67/1.00    inference(ennf_transformation,[],[f10])).
% 2.67/1.00  
% 2.67/1.00  fof(f23,plain,(
% 2.67/1.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.67/1.00    inference(flattening,[],[f22])).
% 2.67/1.00  
% 2.67/1.00  fof(f60,plain,(
% 2.67/1.00    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f23])).
% 2.67/1.00  
% 2.67/1.00  fof(f70,plain,(
% 2.67/1.00    ~v2_struct_0(sK3)),
% 2.67/1.00    inference(cnf_transformation,[],[f47])).
% 2.67/1.00  
% 2.67/1.00  fof(f14,axiom,(
% 2.67/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,u1_struct_0(X0)) => v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)))),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f30,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.67/1.00    inference(ennf_transformation,[],[f14])).
% 2.67/1.00  
% 2.67/1.00  fof(f31,plain,(
% 2.67/1.00    ! [X0] : (! [X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.67/1.00    inference(flattening,[],[f30])).
% 2.67/1.00  
% 2.67/1.00  fof(f69,plain,(
% 2.67/1.00    ( ! [X0,X1] : (v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f31])).
% 2.67/1.00  
% 2.67/1.00  fof(f71,plain,(
% 2.67/1.00    v2_pre_topc(sK3)),
% 2.67/1.00    inference(cnf_transformation,[],[f47])).
% 2.67/1.00  
% 2.67/1.00  fof(f2,axiom,(
% 2.67/1.00    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f50,plain,(
% 2.67/1.00    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 2.67/1.00    inference(cnf_transformation,[],[f2])).
% 2.67/1.00  
% 2.67/1.00  fof(f4,axiom,(
% 2.67/1.00    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 2.67/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.67/1.00  
% 2.67/1.00  fof(f52,plain,(
% 2.67/1.00    ( ! [X0,X1] : (k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)) )),
% 2.67/1.00    inference(cnf_transformation,[],[f4])).
% 2.67/1.00  
% 2.67/1.00  cnf(c_6,plain,
% 2.67/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 2.67/1.00      inference(cnf_transformation,[],[f54]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_10,plain,
% 2.67/1.00      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(cnf_transformation,[],[f56]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_768,plain,
% 2.67/1.00      ( m1_subset_1(X0,X1) | X2 != X1 | sK1(X2) != X0 | k1_xboole_0 = X2 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_6,c_10]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_769,plain,
% 2.67/1.00      ( m1_subset_1(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(unflattening,[status(thm)],[c_768]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1667,plain,
% 2.67/1.00      ( k1_xboole_0 = X0 | m1_subset_1(sK1(X0),X0) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_769]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_14,plain,
% 2.67/1.00      ( ~ m1_subset_1(X0,X1)
% 2.67/1.00      | v1_xboole_0(X1)
% 2.67/1.00      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 2.67/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1674,plain,
% 2.67/1.00      ( k6_domain_1(X0,X1) = k1_tarski(X1)
% 2.67/1.00      | m1_subset_1(X1,X0) != iProver_top
% 2.67/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2549,plain,
% 2.67/1.00      ( k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0))
% 2.67/1.00      | k1_xboole_0 = X0
% 2.67/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.67/1.00      inference(superposition,[status(thm)],[c_1667,c_1674]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1,plain,
% 2.67/1.00      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.67/1.00      inference(cnf_transformation,[],[f48]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_780,plain,
% 2.67/1.00      ( ~ v1_xboole_0(X0) | X1 != X0 | sK1(X1) != X2 | k1_xboole_0 = X1 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_1,c_10]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_781,plain,
% 2.67/1.00      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(unflattening,[status(thm)],[c_780]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2575,plain,
% 2.67/1.00      ( v1_xboole_0(X0)
% 2.67/1.00      | k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0))
% 2.67/1.00      | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_2549]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2620,plain,
% 2.67/1.00      ( k1_xboole_0 = X0 | k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0)) ),
% 2.67/1.00      inference(global_propositional_subsumption,
% 2.67/1.00                [status(thm)],
% 2.67/1.00                [c_2549,c_781,c_2575]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2621,plain,
% 2.67/1.00      ( k6_domain_1(X0,sK1(X0)) = k1_tarski(sK1(X0)) | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(renaming,[status(thm)],[c_2620]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_13,plain,
% 2.67/1.00      ( ~ m1_subset_1(X0,X1)
% 2.67/1.00      | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1))
% 2.67/1.00      | v1_xboole_0(X1) ),
% 2.67/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1675,plain,
% 2.67/1.00      ( m1_subset_1(X0,X1) != iProver_top
% 2.67/1.00      | m1_subset_1(k6_domain_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top
% 2.67/1.00      | v1_xboole_0(X1) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2624,plain,
% 2.67/1.00      ( k1_xboole_0 = X0
% 2.67/1.00      | m1_subset_1(sK1(X0),X0) != iProver_top
% 2.67/1.00      | m1_subset_1(k1_tarski(sK1(X0)),k1_zfmisc_1(X0)) = iProver_top
% 2.67/1.00      | v1_xboole_0(X0) = iProver_top ),
% 2.67/1.00      inference(superposition,[status(thm)],[c_2621,c_1675]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_770,plain,
% 2.67/1.00      ( k1_xboole_0 = X0 | m1_subset_1(sK1(X0),X0) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_769]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_782,plain,
% 2.67/1.00      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_781]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2697,plain,
% 2.67/1.00      ( m1_subset_1(k1_tarski(sK1(X0)),k1_zfmisc_1(X0)) = iProver_top
% 2.67/1.00      | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(global_propositional_subsumption,
% 2.67/1.00                [status(thm)],
% 2.67/1.00                [c_2624,c_770,c_782]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2698,plain,
% 2.67/1.00      ( k1_xboole_0 = X0
% 2.67/1.00      | m1_subset_1(k1_tarski(sK1(X0)),k1_zfmisc_1(X0)) = iProver_top ),
% 2.67/1.00      inference(renaming,[status(thm)],[c_2697]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_24,negated_conjecture,
% 2.67/1.00      ( v1_xboole_0(sK4) ),
% 2.67/1.00      inference(cnf_transformation,[],[f73]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1672,plain,
% 2.67/1.00      ( v1_xboole_0(sK4) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1666,plain,
% 2.67/1.00      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_781]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2125,plain,
% 2.67/1.00      ( sK4 = k1_xboole_0 ),
% 2.67/1.00      inference(superposition,[status(thm)],[c_1672,c_1666]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_22,negated_conjecture,
% 2.67/1.00      ( v3_tex_2(sK4,sK3) ),
% 2.67/1.00      inference(cnf_transformation,[],[f75]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_3,plain,
% 2.67/1.00      ( r1_tarski(k1_xboole_0,X0) ),
% 2.67/1.00      inference(cnf_transformation,[],[f51]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_19,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,X1)
% 2.67/1.00      | ~ v3_tex_2(X2,X1)
% 2.67/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.67/1.00      | ~ r1_tarski(X2,X0)
% 2.67/1.00      | ~ l1_pre_topc(X1)
% 2.67/1.00      | X0 = X2 ),
% 2.67/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_25,negated_conjecture,
% 2.67/1.00      ( l1_pre_topc(sK3) ),
% 2.67/1.00      inference(cnf_transformation,[],[f72]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_536,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,X1)
% 2.67/1.00      | ~ v3_tex_2(X2,X1)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.67/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
% 2.67/1.00      | ~ r1_tarski(X2,X0)
% 2.67/1.00      | X2 = X0
% 2.67/1.00      | sK3 != X1 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_19,c_25]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_537,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,sK3)
% 2.67/1.00      | ~ v3_tex_2(X1,sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | ~ r1_tarski(X1,X0)
% 2.67/1.00      | X1 = X0 ),
% 2.67/1.00      inference(unflattening,[status(thm)],[c_536]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_663,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,sK3)
% 2.67/1.00      | ~ v3_tex_2(X1,sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | X0 != X2
% 2.67/1.00      | X0 = X1
% 2.67/1.00      | k1_xboole_0 != X1 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_3,c_537]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_664,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,sK3)
% 2.67/1.00      | ~ v3_tex_2(k1_xboole_0,sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | X0 = k1_xboole_0 ),
% 2.67/1.00      inference(unflattening,[status(thm)],[c_663]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_5,plain,
% 2.67/1.00      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 2.67/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_678,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,sK3)
% 2.67/1.00      | ~ v3_tex_2(k1_xboole_0,sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | X0 = k1_xboole_0 ),
% 2.67/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_664,c_5]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_973,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | sK3 != sK3
% 2.67/1.00      | sK4 != k1_xboole_0
% 2.67/1.00      | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_22,c_678]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1111,plain,
% 2.67/1.00      ( ~ v2_tex_2(X0,sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3)))
% 2.67/1.00      | sK4 != k1_xboole_0
% 2.67/1.00      | k1_xboole_0 = X0 ),
% 2.67/1.00      inference(equality_resolution_simp,[status(thm)],[c_973]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1657,plain,
% 2.67/1.00      ( sK4 != k1_xboole_0
% 2.67/1.00      | k1_xboole_0 = X0
% 2.67/1.00      | v2_tex_2(X0,sK3) != iProver_top
% 2.67/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_1111]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2180,plain,
% 2.67/1.00      ( k1_xboole_0 = X0
% 2.67/1.00      | k1_xboole_0 != k1_xboole_0
% 2.67/1.00      | v2_tex_2(X0,sK3) != iProver_top
% 2.67/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
% 2.67/1.00      inference(demodulation,[status(thm)],[c_2125,c_1657]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2189,plain,
% 2.67/1.00      ( k1_xboole_0 = X0
% 2.67/1.00      | v2_tex_2(X0,sK3) != iProver_top
% 2.67/1.00      | m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top ),
% 2.67/1.00      inference(equality_resolution_simp,[status(thm)],[c_2180]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2704,plain,
% 2.67/1.00      ( u1_struct_0(sK3) = k1_xboole_0
% 2.67/1.00      | k1_tarski(sK1(u1_struct_0(sK3))) = k1_xboole_0
% 2.67/1.00      | v2_tex_2(k1_tarski(sK1(u1_struct_0(sK3))),sK3) != iProver_top ),
% 2.67/1.00      inference(superposition,[status(thm)],[c_2698,c_2189]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_30,plain,
% 2.67/1.00      ( l1_pre_topc(sK3) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_11,plain,
% 2.67/1.00      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.67/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_12,plain,
% 2.67/1.00      ( v2_struct_0(X0) | ~ l1_struct_0(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.67/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_297,plain,
% 2.67/1.00      ( v2_struct_0(X0) | ~ l1_pre_topc(X0) | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.67/1.00      inference(resolution,[status(thm)],[c_11,c_12]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_27,negated_conjecture,
% 2.67/1.00      ( ~ v2_struct_0(sK3) ),
% 2.67/1.00      inference(cnf_transformation,[],[f70]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_336,plain,
% 2.67/1.00      ( ~ l1_pre_topc(X0) | ~ v1_xboole_0(u1_struct_0(X0)) | sK3 != X0 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_297,c_27]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_337,plain,
% 2.67/1.00      ( ~ l1_pre_topc(sK3) | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 2.67/1.00      inference(unflattening,[status(thm)],[c_336]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_338,plain,
% 2.67/1.00      ( l1_pre_topc(sK3) != iProver_top
% 2.67/1.00      | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_337]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1332,plain,
% 2.67/1.00      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 2.67/1.00      theory(equality) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1827,plain,
% 2.67/1.00      ( ~ v1_xboole_0(X0)
% 2.67/1.00      | v1_xboole_0(u1_struct_0(sK3))
% 2.67/1.00      | u1_struct_0(sK3) != X0 ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1332]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1828,plain,
% 2.67/1.00      ( u1_struct_0(sK3) != X0
% 2.67/1.00      | v1_xboole_0(X0) != iProver_top
% 2.67/1.00      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_1827]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1830,plain,
% 2.67/1.00      ( u1_struct_0(sK3) != k1_xboole_0
% 2.67/1.00      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.67/1.00      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1828]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1330,plain,( X0 = X0 ),theory(equality) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1977,plain,
% 2.67/1.00      ( sK3 = sK3 ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1330]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2039,plain,
% 2.67/1.00      ( m1_subset_1(sK1(u1_struct_0(sK3)),u1_struct_0(sK3))
% 2.67/1.00      | k1_xboole_0 = u1_struct_0(sK3) ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_769]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2043,plain,
% 2.67/1.00      ( k1_xboole_0 = u1_struct_0(sK3)
% 2.67/1.00      | m1_subset_1(sK1(u1_struct_0(sK3)),u1_struct_0(sK3)) = iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_2039]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1337,plain,
% 2.67/1.00      ( X0 != X1 | u1_struct_0(X0) = u1_struct_0(X1) ),
% 2.67/1.00      theory(equality) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1925,plain,
% 2.67/1.00      ( u1_struct_0(sK3) = u1_struct_0(X0) | sK3 != X0 ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1337]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2111,plain,
% 2.67/1.00      ( u1_struct_0(sK3) = u1_struct_0(sK3) | sK3 != sK3 ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1925]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1331,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1923,plain,
% 2.67/1.00      ( X0 != X1 | u1_struct_0(sK3) != X1 | u1_struct_0(sK3) = X0 ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1331]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2161,plain,
% 2.67/1.00      ( X0 != u1_struct_0(sK3)
% 2.67/1.00      | u1_struct_0(sK3) = X0
% 2.67/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3) ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_1923]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2163,plain,
% 2.67/1.00      ( u1_struct_0(sK3) != u1_struct_0(sK3)
% 2.67/1.00      | u1_struct_0(sK3) = k1_xboole_0
% 2.67/1.00      | k1_xboole_0 != u1_struct_0(sK3) ),
% 2.67/1.00      inference(instantiation,[status(thm)],[c_2161]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2183,plain,
% 2.67/1.00      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.67/1.00      inference(demodulation,[status(thm)],[c_2125,c_1672]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_21,plain,
% 2.67/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
% 2.67/1.00      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.67/1.00      | ~ v2_pre_topc(X0)
% 2.67/1.00      | v2_struct_0(X0)
% 2.67/1.00      | ~ l1_pre_topc(X0) ),
% 2.67/1.00      inference(cnf_transformation,[],[f69]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_26,negated_conjecture,
% 2.67/1.00      ( v2_pre_topc(sK3) ),
% 2.67/1.00      inference(cnf_transformation,[],[f71]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_315,plain,
% 2.67/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(X0),X1),X0)
% 2.67/1.00      | ~ m1_subset_1(X1,u1_struct_0(X0))
% 2.67/1.00      | v2_struct_0(X0)
% 2.67/1.00      | ~ l1_pre_topc(X0)
% 2.67/1.00      | sK3 != X0 ),
% 2.67/1.00      inference(resolution_lifted,[status(thm)],[c_21,c_26]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_316,plain,
% 2.67/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,u1_struct_0(sK3))
% 2.67/1.00      | v2_struct_0(sK3)
% 2.67/1.00      | ~ l1_pre_topc(sK3) ),
% 2.67/1.00      inference(unflattening,[status(thm)],[c_315]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_320,plain,
% 2.67/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3)
% 2.67/1.00      | ~ m1_subset_1(X0,u1_struct_0(sK3)) ),
% 2.67/1.00      inference(global_propositional_subsumption,
% 2.67/1.00                [status(thm)],
% 2.67/1.00                [c_316,c_27,c_25]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_1671,plain,
% 2.67/1.00      ( v2_tex_2(k6_domain_1(u1_struct_0(sK3),X0),sK3) = iProver_top
% 2.67/1.00      | m1_subset_1(X0,u1_struct_0(sK3)) != iProver_top ),
% 2.67/1.00      inference(predicate_to_equality,[status(thm)],[c_320]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2625,plain,
% 2.67/1.00      ( u1_struct_0(sK3) = k1_xboole_0
% 2.67/1.00      | v2_tex_2(k1_tarski(sK1(u1_struct_0(sK3))),sK3) = iProver_top
% 2.67/1.00      | m1_subset_1(sK1(u1_struct_0(sK3)),u1_struct_0(sK3)) != iProver_top ),
% 2.67/1.00      inference(superposition,[status(thm)],[c_2621,c_1671]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2798,plain,
% 2.67/1.00      ( k1_tarski(sK1(u1_struct_0(sK3))) = k1_xboole_0 ),
% 2.67/1.00      inference(global_propositional_subsumption,
% 2.67/1.00                [status(thm)],
% 2.67/1.00                [c_2704,c_30,c_338,c_1830,c_1977,c_2043,c_2111,c_2163,c_2183,
% 2.67/1.00                 c_2625]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2,plain,
% 2.67/1.00      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 2.67/1.00      inference(cnf_transformation,[],[f50]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_4,plain,
% 2.67/1.00      ( k2_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 ),
% 2.67/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2065,plain,
% 2.67/1.00      ( k1_tarski(X0) != k1_xboole_0 ),
% 2.67/1.00      inference(superposition,[status(thm)],[c_2,c_4]) ).
% 2.67/1.00  
% 2.67/1.00  cnf(c_2801,plain,
% 2.67/1.00      ( $false ),
% 2.67/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_2798,c_2065]) ).
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.67/1.00  
% 2.67/1.00  ------                               Statistics
% 2.67/1.00  
% 2.67/1.00  ------ General
% 2.67/1.00  
% 2.67/1.00  abstr_ref_over_cycles:                  0
% 2.67/1.00  abstr_ref_under_cycles:                 0
% 2.67/1.00  gc_basic_clause_elim:                   0
% 2.67/1.00  forced_gc_time:                         0
% 2.67/1.00  parsing_time:                           0.012
% 2.67/1.00  unif_index_cands_time:                  0.
% 2.67/1.00  unif_index_add_time:                    0.
% 2.67/1.00  orderings_time:                         0.
% 2.67/1.00  out_proof_time:                         0.013
% 2.67/1.00  total_time:                             0.111
% 2.67/1.00  num_of_symbols:                         54
% 2.67/1.00  num_of_terms:                           1734
% 2.67/1.00  
% 2.67/1.00  ------ Preprocessing
% 2.67/1.00  
% 2.67/1.00  num_of_splits:                          3
% 2.67/1.00  num_of_split_atoms:                     1
% 2.67/1.00  num_of_reused_defs:                     2
% 2.67/1.00  num_eq_ax_congr_red:                    22
% 2.67/1.00  num_of_sem_filtered_clauses:            1
% 2.67/1.00  num_of_subtypes:                        0
% 2.67/1.00  monotx_restored_types:                  0
% 2.67/1.00  sat_num_of_epr_types:                   0
% 2.67/1.00  sat_num_of_non_cyclic_types:            0
% 2.67/1.00  sat_guarded_non_collapsed_types:        0
% 2.67/1.00  num_pure_diseq_elim:                    0
% 2.67/1.00  simp_replaced_by:                       0
% 2.67/1.00  res_preprocessed:                       122
% 2.67/1.00  prep_upred:                             0
% 2.67/1.00  prep_unflattend:                        59
% 2.67/1.00  smt_new_axioms:                         0
% 2.67/1.00  pred_elim_cands:                        3
% 2.67/1.00  pred_elim:                              7
% 2.67/1.00  pred_elim_cl:                           5
% 2.67/1.00  pred_elim_cycles:                       12
% 2.67/1.00  merged_defs:                            0
% 2.67/1.00  merged_defs_ncl:                        0
% 2.67/1.00  bin_hyper_res:                          0
% 2.67/1.00  prep_cycles:                            4
% 2.67/1.00  pred_elim_time:                         0.016
% 2.67/1.00  splitting_time:                         0.
% 2.67/1.00  sem_filter_time:                        0.
% 2.67/1.00  monotx_time:                            0.
% 2.67/1.00  subtype_inf_time:                       0.
% 2.67/1.00  
% 2.67/1.00  ------ Problem properties
% 2.67/1.00  
% 2.67/1.00  clauses:                                26
% 2.67/1.00  conjectures:                            2
% 2.67/1.00  epr:                                    3
% 2.67/1.00  horn:                                   18
% 2.67/1.00  ground:                                 7
% 2.67/1.00  unary:                                  7
% 2.67/1.00  binary:                                 8
% 2.67/1.00  lits:                                   60
% 2.67/1.00  lits_eq:                                20
% 2.67/1.00  fd_pure:                                0
% 2.67/1.00  fd_pseudo:                              0
% 2.67/1.00  fd_cond:                                11
% 2.67/1.00  fd_pseudo_cond:                         0
% 2.67/1.00  ac_symbols:                             0
% 2.67/1.00  
% 2.67/1.00  ------ Propositional Solver
% 2.67/1.00  
% 2.67/1.00  prop_solver_calls:                      26
% 2.67/1.00  prop_fast_solver_calls:                 869
% 2.67/1.00  smt_solver_calls:                       0
% 2.67/1.00  smt_fast_solver_calls:                  0
% 2.67/1.00  prop_num_of_clauses:                    696
% 2.67/1.00  prop_preprocess_simplified:             3787
% 2.67/1.00  prop_fo_subsumed:                       23
% 2.67/1.00  prop_solver_time:                       0.
% 2.67/1.00  smt_solver_time:                        0.
% 2.67/1.00  smt_fast_solver_time:                   0.
% 2.67/1.00  prop_fast_solver_time:                  0.
% 2.67/1.00  prop_unsat_core_time:                   0.
% 2.67/1.00  
% 2.67/1.00  ------ QBF
% 2.67/1.00  
% 2.67/1.00  qbf_q_res:                              0
% 2.67/1.00  qbf_num_tautologies:                    0
% 2.67/1.00  qbf_prep_cycles:                        0
% 2.67/1.00  
% 2.67/1.00  ------ BMC1
% 2.67/1.00  
% 2.67/1.00  bmc1_current_bound:                     -1
% 2.67/1.00  bmc1_last_solved_bound:                 -1
% 2.67/1.00  bmc1_unsat_core_size:                   -1
% 2.67/1.00  bmc1_unsat_core_parents_size:           -1
% 2.67/1.00  bmc1_merge_next_fun:                    0
% 2.67/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.67/1.00  
% 2.67/1.00  ------ Instantiation
% 2.67/1.00  
% 2.67/1.00  inst_num_of_clauses:                    184
% 2.67/1.00  inst_num_in_passive:                    22
% 2.67/1.00  inst_num_in_active:                     138
% 2.67/1.00  inst_num_in_unprocessed:                24
% 2.67/1.00  inst_num_of_loops:                      180
% 2.67/1.00  inst_num_of_learning_restarts:          0
% 2.67/1.00  inst_num_moves_active_passive:          40
% 2.67/1.00  inst_lit_activity:                      0
% 2.67/1.00  inst_lit_activity_moves:                0
% 2.67/1.00  inst_num_tautologies:                   0
% 2.67/1.00  inst_num_prop_implied:                  0
% 2.67/1.00  inst_num_existing_simplified:           0
% 2.67/1.00  inst_num_eq_res_simplified:             0
% 2.67/1.00  inst_num_child_elim:                    0
% 2.67/1.00  inst_num_of_dismatching_blockings:      23
% 2.67/1.00  inst_num_of_non_proper_insts:           131
% 2.67/1.00  inst_num_of_duplicates:                 0
% 2.67/1.00  inst_inst_num_from_inst_to_res:         0
% 2.67/1.00  inst_dismatching_checking_time:         0.
% 2.67/1.00  
% 2.67/1.00  ------ Resolution
% 2.67/1.00  
% 2.67/1.00  res_num_of_clauses:                     0
% 2.67/1.00  res_num_in_passive:                     0
% 2.67/1.00  res_num_in_active:                      0
% 2.67/1.00  res_num_of_loops:                       126
% 2.67/1.00  res_forward_subset_subsumed:            20
% 2.67/1.00  res_backward_subset_subsumed:           2
% 2.67/1.00  res_forward_subsumed:                   0
% 2.67/1.00  res_backward_subsumed:                  0
% 2.67/1.00  res_forward_subsumption_resolution:     5
% 2.67/1.00  res_backward_subsumption_resolution:    2
% 2.67/1.00  res_clause_to_clause_subsumption:       112
% 2.67/1.00  res_orphan_elimination:                 0
% 2.67/1.00  res_tautology_del:                      26
% 2.67/1.00  res_num_eq_res_simplified:              1
% 2.67/1.00  res_num_sel_changes:                    0
% 2.67/1.00  res_moves_from_active_to_pass:          0
% 2.67/1.00  
% 2.67/1.00  ------ Superposition
% 2.67/1.00  
% 2.67/1.00  sup_time_total:                         0.
% 2.67/1.00  sup_time_generating:                    0.
% 2.67/1.00  sup_time_sim_full:                      0.
% 2.67/1.00  sup_time_sim_immed:                     0.
% 2.67/1.00  
% 2.67/1.00  sup_num_of_clauses:                     41
% 2.67/1.00  sup_num_in_active:                      29
% 2.67/1.00  sup_num_in_passive:                     12
% 2.67/1.00  sup_num_of_loops:                       35
% 2.67/1.00  sup_fw_superposition:                   10
% 2.67/1.00  sup_bw_superposition:                   16
% 2.67/1.00  sup_immediate_simplified:               1
% 2.67/1.00  sup_given_eliminated:                   0
% 2.67/1.00  comparisons_done:                       0
% 2.67/1.00  comparisons_avoided:                    4
% 2.67/1.00  
% 2.67/1.00  ------ Simplifications
% 2.67/1.00  
% 2.67/1.00  
% 2.67/1.00  sim_fw_subset_subsumed:                 0
% 2.67/1.00  sim_bw_subset_subsumed:                 3
% 2.67/1.00  sim_fw_subsumed:                        1
% 2.67/1.00  sim_bw_subsumed:                        0
% 2.67/1.00  sim_fw_subsumption_res:                 1
% 2.67/1.00  sim_bw_subsumption_res:                 0
% 2.67/1.00  sim_tautology_del:                      1
% 2.67/1.00  sim_eq_tautology_del:                   4
% 2.67/1.00  sim_eq_res_simp:                        1
% 2.67/1.00  sim_fw_demodulated:                     0
% 2.67/1.00  sim_bw_demodulated:                     4
% 2.67/1.00  sim_light_normalised:                   0
% 2.67/1.00  sim_joinable_taut:                      0
% 2.67/1.00  sim_joinable_simp:                      0
% 2.67/1.00  sim_ac_normalised:                      0
% 2.67/1.00  sim_smt_subsumption:                    0
% 2.67/1.00  
%------------------------------------------------------------------------------
