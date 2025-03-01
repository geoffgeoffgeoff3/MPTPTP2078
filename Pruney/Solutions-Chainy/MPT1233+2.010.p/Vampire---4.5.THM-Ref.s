%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:10:57 EST 2020

% Result     : Theorem 0.18s
% Output     : Refutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   81 ( 216 expanded)
%              Number of leaves         :   15 (  55 expanded)
%              Depth                    :   14
%              Number of atoms          :  208 ( 555 expanded)
%              Number of equality atoms :   48 ( 149 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f886,plain,(
    $false ),
    inference(subsumption_resolution,[],[f885,f45])).

fof(f45,plain,(
    k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f39])).

fof(f39,plain,
    ( k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0))
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f38])).

fof(f38,plain,
    ( ? [X0] :
        ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
        & l1_pre_topc(X0)
        & v2_pre_topc(X0) )
   => ( k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0))
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ? [X0] :
      ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(flattening,[],[f20])).

fof(f20,plain,(
    ? [X0] :
      ( k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0))
      & l1_pre_topc(X0)
      & v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f19,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0) )
       => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f18,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_tops_1)).

fof(f885,plain,(
    k2_struct_0(sK0) = k1_tops_1(sK0,k2_struct_0(sK0)) ),
    inference(forward_demodulation,[],[f884,f101])).

fof(f101,plain,(
    k2_struct_0(sK0) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0) ),
    inference(forward_demodulation,[],[f100,f78])).

fof(f78,plain,(
    k1_xboole_0 = k1_struct_0(sK0) ),
    inference(resolution,[],[f77,f44])).

fof(f44,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f39])).

fof(f77,plain,(
    ! [X0] :
      ( ~ l1_pre_topc(X0)
      | k1_xboole_0 = k1_struct_0(X0) ) ),
    inference(resolution,[],[f76,f52])).

fof(f52,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(f76,plain,(
    ! [X0] :
      ( ~ l1_struct_0(X0)
      | k1_xboole_0 = k1_struct_0(X0) ) ),
    inference(resolution,[],[f73,f50])).

fof(f50,plain,(
    ! [X0] :
      ( v1_xboole_0(k1_struct_0(X0))
      | ~ l1_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( v1_xboole_0(k1_struct_0(X0))
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => v1_xboole_0(k1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_struct_0)).

fof(f73,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
      | k1_xboole_0 = X0 ) ),
    inference(resolution,[],[f65,f46])).

fof(f46,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(f65,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X0)
      | X0 = X1
      | ~ v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ~ ( v1_xboole_0(X1)
        & X0 != X1
        & v1_xboole_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_boole)).

fof(f100,plain,(
    k2_struct_0(sK0) = k3_subset_1(u1_struct_0(sK0),k1_struct_0(sK0)) ),
    inference(resolution,[],[f87,f44])).

fof(f87,plain,(
    ! [X0] :
      ( ~ l1_pre_topc(X0)
      | k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) ) ),
    inference(resolution,[],[f51,f52])).

fof(f51,plain,(
    ! [X0] :
      ( ~ l1_struct_0(X0)
      | k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0] :
      ( k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0))
      | ~ l1_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
     => k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t27_pre_topc)).

fof(f884,plain,(
    k1_tops_1(sK0,k2_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0) ),
    inference(forward_demodulation,[],[f883,f149])).

fof(f149,plain,(
    k1_xboole_0 = k2_pre_topc(sK0,k1_xboole_0) ),
    inference(subsumption_resolution,[],[f148,f48])).

fof(f48,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(f148,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k1_xboole_0 = k2_pre_topc(sK0,k1_xboole_0) ),
    inference(resolution,[],[f147,f138])).

fof(f138,plain,(
    v4_pre_topc(k1_xboole_0,sK0) ),
    inference(subsumption_resolution,[],[f136,f48])).

fof(f136,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0)))
    | v4_pre_topc(k1_xboole_0,sK0) ),
    inference(resolution,[],[f135,f46])).

fof(f135,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | v4_pre_topc(X0,sK0) ) ),
    inference(subsumption_resolution,[],[f134,f43])).

fof(f43,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f39])).

fof(f134,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | v4_pre_topc(X0,sK0)
      | ~ v2_pre_topc(sK0) ) ),
    inference(resolution,[],[f56,f44])).

fof(f56,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | v4_pre_topc(X1,X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f28])).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v4_pre_topc(X1,X0)
          | ~ v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v1_xboole_0(X1)
           => v4_pre_topc(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_pre_topc)).

fof(f147,plain,(
    ! [X0] :
      ( ~ v4_pre_topc(X0,sK0)
      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | k2_pre_topc(sK0,X0) = X0 ) ),
    inference(resolution,[],[f54,f44])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ v4_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | k2_pre_topc(X0,X1) = X1 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f26])).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v4_pre_topc(X1,X0)
              | k2_pre_topc(X0,X1) != X1
              | ~ v2_pre_topc(X0) )
            & ( k2_pre_topc(X0,X1) = X1
              | ~ v4_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( ( ( k2_pre_topc(X0,X1) = X1
                & v2_pre_topc(X0) )
             => v4_pre_topc(X1,X0) )
            & ( v4_pre_topc(X1,X0)
             => k2_pre_topc(X0,X1) = X1 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_pre_topc)).

fof(f883,plain,(
    k1_tops_1(sK0,k2_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f878,f318])).

fof(f318,plain,(
    k1_xboole_0 = k3_subset_1(u1_struct_0(sK0),k2_struct_0(sK0)) ),
    inference(resolution,[],[f309,f84])).

fof(f84,plain,(
    ! [X1] :
      ( ~ r1_tarski(X1,k1_xboole_0)
      | k1_xboole_0 = X1 ) ),
    inference(resolution,[],[f62,f70])).

fof(f70,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(resolution,[],[f63,f48])).

fof(f63,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(f62,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_tarski(X1,X0)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f309,plain,(
    r1_tarski(k3_subset_1(u1_struct_0(sK0),k2_struct_0(sK0)),k1_xboole_0) ),
    inference(superposition,[],[f268,f101])).

fof(f268,plain,(
    ! [X0] : r1_tarski(k3_subset_1(X0,k3_subset_1(X0,k1_xboole_0)),k1_xboole_0) ),
    inference(resolution,[],[f212,f48])).

fof(f212,plain,(
    ! [X2,X3] :
      ( ~ m1_subset_1(X3,k1_zfmisc_1(X2))
      | r1_tarski(k3_subset_1(X2,k3_subset_1(X2,X3)),X3) ) ),
    inference(subsumption_resolution,[],[f207,f57])).

fof(f57,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_subset_1)).

fof(f207,plain,(
    ! [X2,X3] :
      ( r1_tarski(k3_subset_1(X2,k3_subset_1(X2,X3)),X3)
      | ~ m1_subset_1(k3_subset_1(X2,X3),k1_zfmisc_1(X2))
      | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ) ),
    inference(resolution,[],[f58,f67])).

fof(f67,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f61])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f41])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(k3_subset_1(X0,X1),X2)
      | r1_tarski(k3_subset_1(X0,X2),X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r1_tarski(k3_subset_1(X0,X2),X1)
          | ~ r1_tarski(k3_subset_1(X0,X1),X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r1_tarski(k3_subset_1(X0,X2),X1)
          | ~ r1_tarski(k3_subset_1(X0,X1),X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(X0)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( r1_tarski(k3_subset_1(X0,X1),X2)
           => r1_tarski(k3_subset_1(X0,X2),X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_subset_1)).

fof(f878,plain,(
    k1_tops_1(sK0,k2_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k2_struct_0(sK0)))) ),
    inference(resolution,[],[f877,f105])).

fof(f105,plain,(
    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subsumption_resolution,[],[f103,f48])).

fof(f103,plain,
    ( m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(superposition,[],[f57,f101])).

fof(f877,plain,(
    ! [X0] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
      | k1_tops_1(sK0,X0) = k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0))) ) ),
    inference(resolution,[],[f53,f44])).

fof(f53,plain,(
    ! [X0,X1] :
      ( ~ l1_pre_topc(X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | k1_tops_1(X0,X1) = k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_tops_1(X0,X1) = k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1)))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k1_tops_1(X0,X1) = k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tops_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 18:37:54 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.18/0.42  % (27673)lrs+1_4:1_awrs=converge:awrsf=128:av=off:cond=fast:fde=none:gsp=input_only:gs=on:gsem=on:lcm=predicate:lwlo=on:nm=4:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:s2a=on:st=2.0:sos=on_27 on theBenchmark
% 0.18/0.43  % (27673)Refutation not found, incomplete strategy% (27673)------------------------------
% 0.18/0.43  % (27673)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.18/0.43  % (27673)Termination reason: Refutation not found, incomplete strategy
% 0.18/0.43  
% 0.18/0.43  % (27673)Memory used [KB]: 6140
% 0.18/0.43  % (27673)Time elapsed: 0.057 s
% 0.18/0.43  % (27673)------------------------------
% 0.18/0.43  % (27673)------------------------------
% 0.18/0.43  % (27689)dis+11_1024_av=off:bd=off:bs=on:cond=on:gs=on:lma=on:nm=16:nwc=1:sp=occurrence:updr=off_98 on theBenchmark
% 0.18/0.43  % (27681)ott-3_4:1_awrs=converge:awrsf=2:acc=model:add=large:afr=on:afp=40000:afq=1.2:anc=none:ccuc=small_ones:fde=unused:gsp=input_only:irw=on:nm=0:nwc=4:sd=4:ss=axioms:s2a=on:st=1.2:sos=on:urr=on:updr=off:uhcvi=on_2 on theBenchmark
% 0.18/0.44  % (27681)Refutation not found, incomplete strategy% (27681)------------------------------
% 0.18/0.44  % (27681)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.18/0.44  % (27681)Termination reason: Refutation not found, incomplete strategy
% 0.18/0.44  
% 0.18/0.44  % (27681)Memory used [KB]: 6140
% 0.18/0.44  % (27681)Time elapsed: 0.068 s
% 0.18/0.44  % (27681)------------------------------
% 0.18/0.44  % (27681)------------------------------
% 0.18/0.45  % (27689)Refutation found. Thanks to Tanya!
% 0.18/0.45  % SZS status Theorem for theBenchmark
% 0.18/0.45  % SZS output start Proof for theBenchmark
% 0.18/0.45  fof(f886,plain,(
% 0.18/0.45    $false),
% 0.18/0.45    inference(subsumption_resolution,[],[f885,f45])).
% 0.18/0.45  fof(f45,plain,(
% 0.18/0.45    k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0))),
% 0.18/0.45    inference(cnf_transformation,[],[f39])).
% 0.18/0.45  fof(f39,plain,(
% 0.18/0.45    k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) & l1_pre_topc(sK0) & v2_pre_topc(sK0)),
% 0.18/0.45    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f38])).
% 0.18/0.45  fof(f38,plain,(
% 0.18/0.45    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0)) => (k2_struct_0(sK0) != k1_tops_1(sK0,k2_struct_0(sK0)) & l1_pre_topc(sK0) & v2_pre_topc(sK0))),
% 0.18/0.45    introduced(choice_axiom,[])).
% 0.18/0.45  fof(f21,plain,(
% 0.18/0.45    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & l1_pre_topc(X0) & v2_pre_topc(X0))),
% 0.18/0.45    inference(flattening,[],[f20])).
% 0.18/0.45  fof(f20,plain,(
% 0.18/0.45    ? [X0] : (k2_struct_0(X0) != k1_tops_1(X0,k2_struct_0(X0)) & (l1_pre_topc(X0) & v2_pre_topc(X0)))),
% 0.18/0.45    inference(ennf_transformation,[],[f19])).
% 0.18/0.45  fof(f19,negated_conjecture,(
% 0.18/0.45    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)))),
% 0.18/0.45    inference(negated_conjecture,[],[f18])).
% 0.18/0.45  fof(f18,conjecture,(
% 0.18/0.45    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => k2_struct_0(X0) = k1_tops_1(X0,k2_struct_0(X0)))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_tops_1)).
% 0.18/0.45  fof(f885,plain,(
% 0.18/0.45    k2_struct_0(sK0) = k1_tops_1(sK0,k2_struct_0(sK0))),
% 0.18/0.45    inference(forward_demodulation,[],[f884,f101])).
% 0.18/0.45  fof(f101,plain,(
% 0.18/0.45    k2_struct_0(sK0) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0)),
% 0.18/0.45    inference(forward_demodulation,[],[f100,f78])).
% 0.18/0.45  fof(f78,plain,(
% 0.18/0.45    k1_xboole_0 = k1_struct_0(sK0)),
% 0.18/0.45    inference(resolution,[],[f77,f44])).
% 0.18/0.45  fof(f44,plain,(
% 0.18/0.45    l1_pre_topc(sK0)),
% 0.18/0.45    inference(cnf_transformation,[],[f39])).
% 0.18/0.45  fof(f77,plain,(
% 0.18/0.45    ( ! [X0] : (~l1_pre_topc(X0) | k1_xboole_0 = k1_struct_0(X0)) )),
% 0.18/0.45    inference(resolution,[],[f76,f52])).
% 0.18/0.45  fof(f52,plain,(
% 0.18/0.45    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 0.18/0.45    inference(cnf_transformation,[],[f24])).
% 0.18/0.45  fof(f24,plain,(
% 0.18/0.45    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 0.18/0.45    inference(ennf_transformation,[],[f12])).
% 0.18/0.45  fof(f12,axiom,(
% 0.18/0.45    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).
% 0.18/0.45  fof(f76,plain,(
% 0.18/0.45    ( ! [X0] : (~l1_struct_0(X0) | k1_xboole_0 = k1_struct_0(X0)) )),
% 0.18/0.45    inference(resolution,[],[f73,f50])).
% 0.18/0.45  fof(f50,plain,(
% 0.18/0.45    ( ! [X0] : (v1_xboole_0(k1_struct_0(X0)) | ~l1_struct_0(X0)) )),
% 0.18/0.45    inference(cnf_transformation,[],[f22])).
% 0.18/0.45  fof(f22,plain,(
% 0.18/0.45    ! [X0] : (v1_xboole_0(k1_struct_0(X0)) | ~l1_struct_0(X0))),
% 0.18/0.45    inference(ennf_transformation,[],[f13])).
% 0.18/0.45  fof(f13,axiom,(
% 0.18/0.45    ! [X0] : (l1_struct_0(X0) => v1_xboole_0(k1_struct_0(X0)))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_struct_0)).
% 0.18/0.45  fof(f73,plain,(
% 0.18/0.45    ( ! [X0] : (~v1_xboole_0(X0) | k1_xboole_0 = X0) )),
% 0.18/0.45    inference(resolution,[],[f65,f46])).
% 0.18/0.45  fof(f46,plain,(
% 0.18/0.45    v1_xboole_0(k1_xboole_0)),
% 0.18/0.45    inference(cnf_transformation,[],[f1])).
% 0.18/0.45  fof(f1,axiom,(
% 0.18/0.45    v1_xboole_0(k1_xboole_0)),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).
% 0.18/0.45  fof(f65,plain,(
% 0.18/0.45    ( ! [X0,X1] : (~v1_xboole_0(X0) | X0 = X1 | ~v1_xboole_0(X1)) )),
% 0.18/0.45    inference(cnf_transformation,[],[f35])).
% 0.18/0.45  fof(f35,plain,(
% 0.18/0.45    ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0))),
% 0.18/0.45    inference(ennf_transformation,[],[f3])).
% 0.18/0.45  fof(f3,axiom,(
% 0.18/0.45    ! [X0,X1] : ~(v1_xboole_0(X1) & X0 != X1 & v1_xboole_0(X0))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_boole)).
% 0.18/0.45  fof(f100,plain,(
% 0.18/0.45    k2_struct_0(sK0) = k3_subset_1(u1_struct_0(sK0),k1_struct_0(sK0))),
% 0.18/0.45    inference(resolution,[],[f87,f44])).
% 0.18/0.45  fof(f87,plain,(
% 0.18/0.45    ( ! [X0] : (~l1_pre_topc(X0) | k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0))) )),
% 0.18/0.45    inference(resolution,[],[f51,f52])).
% 0.18/0.45  fof(f51,plain,(
% 0.18/0.45    ( ! [X0] : (~l1_struct_0(X0) | k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0))) )),
% 0.18/0.45    inference(cnf_transformation,[],[f23])).
% 0.18/0.45  fof(f23,plain,(
% 0.18/0.45    ! [X0] : (k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)) | ~l1_struct_0(X0))),
% 0.18/0.45    inference(ennf_transformation,[],[f14])).
% 0.18/0.45  fof(f14,axiom,(
% 0.18/0.45    ! [X0] : (l1_struct_0(X0) => k2_struct_0(X0) = k3_subset_1(u1_struct_0(X0),k1_struct_0(X0)))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t27_pre_topc)).
% 0.18/0.45  fof(f884,plain,(
% 0.18/0.45    k1_tops_1(sK0,k2_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k1_xboole_0)),
% 0.18/0.45    inference(forward_demodulation,[],[f883,f149])).
% 0.18/0.45  fof(f149,plain,(
% 0.18/0.45    k1_xboole_0 = k2_pre_topc(sK0,k1_xboole_0)),
% 0.18/0.45    inference(subsumption_resolution,[],[f148,f48])).
% 0.18/0.45  fof(f48,plain,(
% 0.18/0.45    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 0.18/0.45    inference(cnf_transformation,[],[f8])).
% 0.18/0.45  fof(f8,axiom,(
% 0.18/0.45    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).
% 0.18/0.45  fof(f148,plain,(
% 0.18/0.45    ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) | k1_xboole_0 = k2_pre_topc(sK0,k1_xboole_0)),
% 0.18/0.45    inference(resolution,[],[f147,f138])).
% 0.18/0.45  fof(f138,plain,(
% 0.18/0.45    v4_pre_topc(k1_xboole_0,sK0)),
% 0.18/0.45    inference(subsumption_resolution,[],[f136,f48])).
% 0.18/0.45  fof(f136,plain,(
% 0.18/0.45    ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0))) | v4_pre_topc(k1_xboole_0,sK0)),
% 0.18/0.45    inference(resolution,[],[f135,f46])).
% 0.18/0.45  fof(f135,plain,(
% 0.18/0.45    ( ! [X0] : (~v1_xboole_0(X0) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | v4_pre_topc(X0,sK0)) )),
% 0.18/0.45    inference(subsumption_resolution,[],[f134,f43])).
% 0.18/0.45  fof(f43,plain,(
% 0.18/0.45    v2_pre_topc(sK0)),
% 0.18/0.45    inference(cnf_transformation,[],[f39])).
% 0.18/0.45  fof(f134,plain,(
% 0.18/0.45    ( ! [X0] : (~v1_xboole_0(X0) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | v4_pre_topc(X0,sK0) | ~v2_pre_topc(sK0)) )),
% 0.18/0.45    inference(resolution,[],[f56,f44])).
% 0.18/0.45  fof(f56,plain,(
% 0.18/0.45    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | v4_pre_topc(X1,X0) | ~v2_pre_topc(X0)) )),
% 0.18/0.45    inference(cnf_transformation,[],[f29])).
% 0.18/0.45  fof(f29,plain,(
% 0.18/0.45    ! [X0] : (! [X1] : (v4_pre_topc(X1,X0) | ~v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 0.18/0.45    inference(flattening,[],[f28])).
% 0.18/0.45  fof(f28,plain,(
% 0.18/0.45    ! [X0] : (! [X1] : ((v4_pre_topc(X1,X0) | ~v1_xboole_0(X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 0.18/0.45    inference(ennf_transformation,[],[f11])).
% 0.18/0.45  fof(f11,axiom,(
% 0.18/0.45    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v1_xboole_0(X1) => v4_pre_topc(X1,X0))))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_pre_topc)).
% 0.18/0.45  fof(f147,plain,(
% 0.18/0.45    ( ! [X0] : (~v4_pre_topc(X0,sK0) | ~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | k2_pre_topc(sK0,X0) = X0) )),
% 0.18/0.45    inference(resolution,[],[f54,f44])).
% 0.18/0.45  fof(f54,plain,(
% 0.18/0.45    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~v4_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | k2_pre_topc(X0,X1) = X1) )),
% 0.18/0.45    inference(cnf_transformation,[],[f27])).
% 0.18/0.45  fof(f27,plain,(
% 0.18/0.45    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0)) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.18/0.45    inference(flattening,[],[f26])).
% 0.18/0.45  fof(f26,plain,(
% 0.18/0.45    ! [X0] : (! [X1] : (((v4_pre_topc(X1,X0) | (k2_pre_topc(X0,X1) != X1 | ~v2_pre_topc(X0))) & (k2_pre_topc(X0,X1) = X1 | ~v4_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.18/0.45    inference(ennf_transformation,[],[f15])).
% 0.18/0.45  fof(f15,axiom,(
% 0.18/0.45    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (((k2_pre_topc(X0,X1) = X1 & v2_pre_topc(X0)) => v4_pre_topc(X1,X0)) & (v4_pre_topc(X1,X0) => k2_pre_topc(X0,X1) = X1))))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_pre_topc)).
% 0.18/0.45  fof(f883,plain,(
% 0.18/0.45    k1_tops_1(sK0,k2_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k1_xboole_0))),
% 0.18/0.45    inference(forward_demodulation,[],[f878,f318])).
% 0.18/0.45  fof(f318,plain,(
% 0.18/0.45    k1_xboole_0 = k3_subset_1(u1_struct_0(sK0),k2_struct_0(sK0))),
% 0.18/0.45    inference(resolution,[],[f309,f84])).
% 0.18/0.45  fof(f84,plain,(
% 0.18/0.45    ( ! [X1] : (~r1_tarski(X1,k1_xboole_0) | k1_xboole_0 = X1) )),
% 0.18/0.45    inference(resolution,[],[f62,f70])).
% 0.18/0.45  fof(f70,plain,(
% 0.18/0.45    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.18/0.45    inference(resolution,[],[f63,f48])).
% 0.18/0.45  fof(f63,plain,(
% 0.18/0.45    ( ! [X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1)) )),
% 0.18/0.45    inference(cnf_transformation,[],[f42])).
% 0.18/0.45  fof(f42,plain,(
% 0.18/0.45    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 0.18/0.45    inference(nnf_transformation,[],[f9])).
% 0.18/0.45  fof(f9,axiom,(
% 0.18/0.45    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).
% 0.18/0.45  fof(f62,plain,(
% 0.18/0.45    ( ! [X0,X1] : (~r1_tarski(X0,X1) | ~r1_tarski(X1,X0) | X0 = X1) )),
% 0.18/0.45    inference(cnf_transformation,[],[f41])).
% 0.18/0.45  fof(f41,plain,(
% 0.18/0.45    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.18/0.45    inference(flattening,[],[f40])).
% 0.18/0.45  fof(f40,plain,(
% 0.18/0.45    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.18/0.45    inference(nnf_transformation,[],[f2])).
% 0.18/0.45  fof(f2,axiom,(
% 0.18/0.45    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).
% 0.18/0.45  fof(f309,plain,(
% 0.18/0.45    r1_tarski(k3_subset_1(u1_struct_0(sK0),k2_struct_0(sK0)),k1_xboole_0)),
% 0.18/0.45    inference(superposition,[],[f268,f101])).
% 0.18/0.45  fof(f268,plain,(
% 0.18/0.45    ( ! [X0] : (r1_tarski(k3_subset_1(X0,k3_subset_1(X0,k1_xboole_0)),k1_xboole_0)) )),
% 0.18/0.45    inference(resolution,[],[f212,f48])).
% 0.18/0.45  fof(f212,plain,(
% 0.18/0.45    ( ! [X2,X3] : (~m1_subset_1(X3,k1_zfmisc_1(X2)) | r1_tarski(k3_subset_1(X2,k3_subset_1(X2,X3)),X3)) )),
% 0.18/0.45    inference(subsumption_resolution,[],[f207,f57])).
% 0.18/0.45  fof(f57,plain,(
% 0.18/0.45    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.18/0.45    inference(cnf_transformation,[],[f30])).
% 0.18/0.45  fof(f30,plain,(
% 0.18/0.45    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.18/0.45    inference(ennf_transformation,[],[f6])).
% 0.18/0.45  fof(f6,axiom,(
% 0.18/0.45    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_subset_1)).
% 0.18/0.45  fof(f207,plain,(
% 0.18/0.45    ( ! [X2,X3] : (r1_tarski(k3_subset_1(X2,k3_subset_1(X2,X3)),X3) | ~m1_subset_1(k3_subset_1(X2,X3),k1_zfmisc_1(X2)) | ~m1_subset_1(X3,k1_zfmisc_1(X2))) )),
% 0.18/0.45    inference(resolution,[],[f58,f67])).
% 0.18/0.45  fof(f67,plain,(
% 0.18/0.45    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 0.18/0.45    inference(equality_resolution,[],[f61])).
% 0.18/0.45  fof(f61,plain,(
% 0.18/0.45    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 0.18/0.45    inference(cnf_transformation,[],[f41])).
% 0.18/0.45  fof(f58,plain,(
% 0.18/0.45    ( ! [X2,X0,X1] : (~r1_tarski(k3_subset_1(X0,X1),X2) | r1_tarski(k3_subset_1(X0,X2),X1) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.18/0.45    inference(cnf_transformation,[],[f32])).
% 0.18/0.45  fof(f32,plain,(
% 0.18/0.45    ! [X0,X1] : (! [X2] : (r1_tarski(k3_subset_1(X0,X2),X1) | ~r1_tarski(k3_subset_1(X0,X1),X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.18/0.45    inference(flattening,[],[f31])).
% 0.18/0.45  fof(f31,plain,(
% 0.18/0.45    ! [X0,X1] : (! [X2] : ((r1_tarski(k3_subset_1(X0,X2),X1) | ~r1_tarski(k3_subset_1(X0,X1),X2)) | ~m1_subset_1(X2,k1_zfmisc_1(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.18/0.45    inference(ennf_transformation,[],[f7])).
% 0.18/0.45  fof(f7,axiom,(
% 0.18/0.45    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (r1_tarski(k3_subset_1(X0,X1),X2) => r1_tarski(k3_subset_1(X0,X2),X1))))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_subset_1)).
% 0.18/0.45  fof(f878,plain,(
% 0.18/0.45    k1_tops_1(sK0,k2_struct_0(sK0)) = k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),k2_struct_0(sK0))))),
% 0.18/0.45    inference(resolution,[],[f877,f105])).
% 0.18/0.45  fof(f105,plain,(
% 0.18/0.45    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.18/0.45    inference(subsumption_resolution,[],[f103,f48])).
% 0.18/0.45  fof(f103,plain,(
% 0.18/0.45    m1_subset_1(k2_struct_0(sK0),k1_zfmisc_1(u1_struct_0(sK0))) | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(u1_struct_0(sK0)))),
% 0.18/0.45    inference(superposition,[],[f57,f101])).
% 0.18/0.45  fof(f877,plain,(
% 0.18/0.45    ( ! [X0] : (~m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0))) | k1_tops_1(sK0,X0) = k3_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,k3_subset_1(u1_struct_0(sK0),X0)))) )),
% 0.18/0.45    inference(resolution,[],[f53,f44])).
% 0.18/0.45  fof(f53,plain,(
% 0.18/0.45    ( ! [X0,X1] : (~l1_pre_topc(X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | k1_tops_1(X0,X1) = k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1)))) )),
% 0.18/0.45    inference(cnf_transformation,[],[f25])).
% 0.18/0.45  fof(f25,plain,(
% 0.18/0.45    ! [X0] : (! [X1] : (k1_tops_1(X0,X1) = k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 0.18/0.45    inference(ennf_transformation,[],[f16])).
% 0.18/0.45  fof(f16,axiom,(
% 0.18/0.45    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k1_tops_1(X0,X1) = k3_subset_1(u1_struct_0(X0),k2_pre_topc(X0,k3_subset_1(u1_struct_0(X0),X1)))))),
% 0.18/0.45    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tops_1)).
% 0.18/0.45  % SZS output end Proof for theBenchmark
% 0.18/0.45  % (27689)------------------------------
% 0.18/0.45  % (27689)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.18/0.45  % (27689)Termination reason: Refutation
% 0.18/0.45  
% 0.18/0.45  % (27689)Memory used [KB]: 6268
% 0.18/0.45  % (27689)Time elapsed: 0.082 s
% 0.18/0.45  % (27689)------------------------------
% 0.18/0.45  % (27689)------------------------------
% 0.18/0.45  % (27667)Success in time 0.107 s
%------------------------------------------------------------------------------
