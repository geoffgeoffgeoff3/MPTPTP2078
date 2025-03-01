%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:00 EST 2020

% Result     : Theorem 1.38s
% Output     : Refutation 1.38s
% Verified   : 
% Statistics : Number of formulae       :   94 ( 427 expanded)
%              Number of leaves         :   19 ( 128 expanded)
%              Depth                    :   18
%              Number of atoms          :  138 ( 664 expanded)
%              Number of equality atoms :   78 ( 337 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f286,plain,(
    $false ),
    inference(subsumption_resolution,[],[f285,f83])).

fof(f83,plain,(
    sK0 != k4_subset_1(sK0,sK1,k4_xboole_0(sK0,sK1)) ),
    inference(backward_demodulation,[],[f72,f75])).

fof(f75,plain,(
    k3_subset_1(sK0,sK1) = k4_xboole_0(sK0,sK1) ),
    inference(resolution,[],[f29,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).

fof(f29,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ? [X0,X1] :
      ( k2_subset_1(X0) != k4_subset_1(X0,X1,k3_subset_1(X0,X1))
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => k2_subset_1(X0) = k4_subset_1(X0,X1,k3_subset_1(X0,X1)) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f20,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k2_subset_1(X0) = k4_subset_1(X0,X1,k3_subset_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_subset_1)).

fof(f72,plain,(
    sK0 != k4_subset_1(sK0,sK1,k3_subset_1(sK0,sK1)) ),
    inference(forward_demodulation,[],[f30,f32])).

fof(f32,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(f30,plain,(
    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k3_subset_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f22])).

fof(f285,plain,(
    sK0 = k4_subset_1(sK0,sK1,k4_xboole_0(sK0,sK1)) ),
    inference(backward_demodulation,[],[f170,f282])).

fof(f282,plain,(
    sK0 = k5_xboole_0(sK1,k4_xboole_0(k4_xboole_0(sK0,sK1),sK1)) ),
    inference(superposition,[],[f250,f63])).

fof(f63,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f37,f59])).

fof(f59,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f35,f58])).

fof(f58,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f36,f55])).

fof(f55,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f36,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f35,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f37,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(f250,plain,(
    sK0 = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) ),
    inference(backward_demodulation,[],[f195,f247])).

fof(f247,plain,(
    sK0 = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0)) ),
    inference(superposition,[],[f145,f63])).

fof(f145,plain,(
    sK0 = k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) ),
    inference(superposition,[],[f62,f123])).

fof(f123,plain,(
    sK1 = k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(superposition,[],[f92,f61])).

fof(f61,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f33,f39,f39])).

fof(f39,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f33,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f92,plain,(
    sK1 = k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) ),
    inference(resolution,[],[f85,f65])).

fof(f65,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ) ),
    inference(definition_unfolding,[],[f45,f39])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k3_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f85,plain,(
    r1_tarski(sK1,sK0) ),
    inference(resolution,[],[f84,f70])).

fof(f70,plain,(
    ! [X2,X0] :
      ( r1_tarski(X2,X0)
      | ~ r2_hidden(X2,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f52])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X2,X0)
      | ~ r2_hidden(X2,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(f84,plain,(
    r2_hidden(sK1,k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f78,f31])).

fof(f31,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).

fof(f78,plain,
    ( v1_xboole_0(k1_zfmisc_1(sK0))
    | r2_hidden(sK1,k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f29,f44])).

fof(f44,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
      | r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).

fof(f62,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) = X0 ),
    inference(definition_unfolding,[],[f34,f59,f39])).

fof(f34,plain,(
    ! [X0,X1] : k2_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_xboole_1)).

fof(f195,plain,(
    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0)) ),
    inference(backward_demodulation,[],[f184,f194])).

fof(f194,plain,(
    k4_xboole_0(sK1,sK0) = k4_xboole_0(sK1,sK1) ),
    inference(forward_demodulation,[],[f185,f125])).

fof(f125,plain,(
    k4_xboole_0(sK1,sK0) = k5_xboole_0(sK1,sK1) ),
    inference(superposition,[],[f60,f92])).

fof(f60,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f38,f39])).

fof(f38,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f185,plain,(
    k4_xboole_0(sK1,sK1) = k5_xboole_0(sK1,sK1) ),
    inference(superposition,[],[f60,f164])).

fof(f164,plain,(
    sK1 = k4_xboole_0(sK1,k4_xboole_0(sK1,sK1)) ),
    inference(forward_demodulation,[],[f163,f132])).

fof(f132,plain,(
    sK1 = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK1,sK1))) ),
    inference(superposition,[],[f62,f92])).

fof(f163,plain,(
    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK1,sK1))) = k4_xboole_0(sK1,k4_xboole_0(sK1,sK1)) ),
    inference(forward_demodulation,[],[f162,f60])).

fof(f162,plain,(
    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK1,sK1))) = k5_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK1,sK1)))) ),
    inference(superposition,[],[f64,f131])).

fof(f131,plain,(
    sK1 = k5_xboole_0(sK1,k4_xboole_0(sK1,sK1)) ),
    inference(superposition,[],[f60,f92])).

fof(f64,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k5_xboole_0(k5_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f40,f59,f39])).

fof(f40,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t94_xboole_1)).

fof(f184,plain,(
    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK1)) ),
    inference(forward_demodulation,[],[f183,f130])).

fof(f130,plain,(
    ! [X0] : k4_xboole_0(sK1,X0) = k4_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK0,X0))) ),
    inference(superposition,[],[f66,f92])).

fof(f66,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X2))) = k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2) ),
    inference(definition_unfolding,[],[f56,f39,f39])).

fof(f56,plain,(
    ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).

fof(f183,plain,(
    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) = k5_xboole_0(sK0,k4_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK0,sK1)))) ),
    inference(superposition,[],[f64,f157])).

fof(f157,plain,(
    sK0 = k5_xboole_0(sK1,k4_xboole_0(sK0,sK1)) ),
    inference(forward_demodulation,[],[f156,f150])).

fof(f150,plain,(
    sK0 = k3_tarski(k2_enumset1(sK0,sK0,sK0,k4_xboole_0(sK0,sK1))) ),
    inference(superposition,[],[f62,f123])).

fof(f156,plain,(
    k5_xboole_0(sK1,k4_xboole_0(sK0,sK1)) = k3_tarski(k2_enumset1(sK0,sK0,sK0,k4_xboole_0(sK0,sK1))) ),
    inference(forward_demodulation,[],[f151,f149])).

fof(f149,plain,(
    sK1 = k5_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(superposition,[],[f60,f123])).

fof(f151,plain,(
    k3_tarski(k2_enumset1(sK0,sK0,sK0,k4_xboole_0(sK0,sK1))) = k5_xboole_0(k5_xboole_0(sK0,k4_xboole_0(sK0,sK1)),k4_xboole_0(sK0,sK1)) ),
    inference(superposition,[],[f64,f123])).

fof(f170,plain,(
    k4_subset_1(sK0,sK1,k4_xboole_0(sK0,sK1)) = k5_xboole_0(sK1,k4_xboole_0(k4_xboole_0(sK0,sK1),sK1)) ),
    inference(resolution,[],[f82,f95])).

fof(f95,plain,(
    m1_subset_1(k4_xboole_0(sK0,sK1),k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f94,f29])).

fof(f94,plain,
    ( m1_subset_1(k4_xboole_0(sK0,sK1),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(superposition,[],[f46,f75])).

fof(f46,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f17,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_subset_1)).

fof(f82,plain,(
    ! [X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(sK0))
      | k4_subset_1(sK0,sK1,X1) = k5_xboole_0(sK1,k4_xboole_0(X1,sK1)) ) ),
    inference(forward_demodulation,[],[f74,f63])).

fof(f74,plain,(
    ! [X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(sK0))
      | k4_subset_1(sK0,sK1,X1) = k3_tarski(k2_enumset1(sK1,sK1,sK1,X1)) ) ),
    inference(resolution,[],[f29,f67])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | k4_subset_1(X0,X1,X2) = k3_tarski(k2_enumset1(X1,X1,X1,X2)) ) ),
    inference(definition_unfolding,[],[f57,f59])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f27])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f19,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:46:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.21/0.51  % (32633)lrs+11_3_av=off:bce=on:cond=fast:ep=R:lcm=reverse:lma=on:newcnf=on:nwc=1.3:stl=30:sd=3:ss=axioms:st=1.2:sos=on:sp=occurrence:uhcvi=on_2 on theBenchmark
% 1.21/0.51  % (32607)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 1.21/0.51  % (32608)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 1.21/0.52  % (32625)dis+1010_3:2_acc=on:afr=on:afp=1000:afq=1.2:amm=sco:bs=on:ccuc=first:fde=none:nm=0:nwc=4:sd=3:ss=axioms:st=5.0:urr=ec_only_75 on theBenchmark
% 1.21/0.52  % (32617)dis+1010_7_afr=on:afp=10000:afq=1.1:amm=sco:anc=none:bd=off:bsr=on:cond=on:fsr=off:lma=on:nm=32:newcnf=on:nwc=1:urr=ec_only:updr=off_83 on theBenchmark
% 1.21/0.53  % (32614)dis+1002_7_acc=on:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:ccuc=first:fsr=off:gsp=input_only:gs=on:gsem=on:nm=6:nwc=1.1:nicw=on:sos=on:sac=on:sp=occurrence:urr=ec_only_217 on theBenchmark
% 1.21/0.53  % (32606)dis+1_5:1_aac=none:afr=on:afp=100000:afq=1.4:amm=sco:anc=none:br=off:gsp=input_only:gs=on:gsem=on:lcm=reverse:nm=6:nwc=1:nicw=on:sas=z3:sos=on:urr=on_1 on theBenchmark
% 1.21/0.53  % (32627)dis+1010_4_acc=on:afr=on:afp=1000:afq=2.0:anc=none:bd=off:bs=unit_only:bsr=on:ccuc=small_ones:cond=fast:fsr=off:gs=on:gsem=off:lcm=reverse:lma=on:nm=64:nwc=2.5:nicw=on:sd=3:ss=axioms:st=3.0:sac=on:urr=ec_only:updr=off:uhcvi=on_83 on theBenchmark
% 1.21/0.53  % (32622)ott-3_3_av=off:cond=fast:fde=none:lcm=reverse:nm=6:nwc=1:sd=5:ss=axioms:st=2.0:sos=on:sp=reverse_arity:updr=off:uhcvi=on_88 on theBenchmark
% 1.21/0.53  % (32631)lrs-4_5:1_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:bs=unit_only:bsr=on:irw=on:lcm=reverse:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:updr=off_6 on theBenchmark
% 1.21/0.53  % (32604)dis+10_16_awrs=decay:awrsf=256:afr=on:afp=40000:afq=2.0:amm=off:bsr=on:cond=on:er=known:gsp=input_only:irw=on:lma=on:nm=6:newcnf=on:nwc=3:sas=z3:sd=4:ss=axioms:s2a=on:sp=frequency:updr=off_8 on theBenchmark
% 1.21/0.53  % (32605)dis+11_3_av=off:fsr=off:lcm=predicate:lma=on:nm=4:nwc=1:sd=3:ss=axioms:st=1.2:sos=on:updr=off_4 on theBenchmark
% 1.21/0.53  % (32626)lrs+1011_2:3_av=off:gs=on:gsem=off:nwc=1.5:stl=30:sos=theory:sp=occurrence:urr=ec_only:updr=off_223 on theBenchmark
% 1.38/0.54  % (32614)Refutation not found, incomplete strategy% (32614)------------------------------
% 1.38/0.54  % (32614)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.54  % (32633)Refutation not found, incomplete strategy% (32633)------------------------------
% 1.38/0.54  % (32633)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.54  % (32633)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.54  
% 1.38/0.54  % (32633)Memory used [KB]: 1663
% 1.38/0.54  % (32633)Time elapsed: 0.003 s
% 1.38/0.54  % (32633)------------------------------
% 1.38/0.54  % (32633)------------------------------
% 1.38/0.54  % (32618)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 1.38/0.54  % (32614)Termination reason: Refutation not found, incomplete strategy
% 1.38/0.54  
% 1.38/0.54  % (32614)Memory used [KB]: 10746
% 1.38/0.54  % (32614)Time elapsed: 0.131 s
% 1.38/0.54  % (32614)------------------------------
% 1.38/0.54  % (32614)------------------------------
% 1.38/0.54  % (32609)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 1.38/0.54  % (32616)lrs+1011_1_afp=40000:afq=1.4:bd=off:cond=fast:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sd=2:ss=axioms:sos=all:sp=occurrence_6 on theBenchmark
% 1.38/0.54  % (32630)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_11 on theBenchmark
% 1.38/0.54  % (32621)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_36 on theBenchmark
% 1.38/0.54  % (32623)lrs+1011_3:2_av=off:er=known:lma=on:nm=2:newcnf=on:nwc=2:stl=30:sd=2:ss=axioms:st=3.0:urr=on:updr=off_24 on theBenchmark
% 1.38/0.54  % (32613)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 1.38/0.54  % (32619)dis+1011_3_afp=4000:afq=1.1:amm=sco:anc=none:gs=on:gsaa=from_current:gsem=off:irw=on:nm=16:nwc=1:sas=z3:ss=axioms:sos=all:sac=on:sp=reverse_arity:updr=off_17 on theBenchmark
% 1.38/0.54  % (32610)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 1.38/0.54  % (32615)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_23 on theBenchmark
% 1.38/0.55  % (32612)lrs+11_3_afr=on:afp=10000:afq=1.0:cond=fast:fsr=off:fde=none:gs=on:gsem=off:lcm=reverse:nm=2:newcnf=on:nwc=1:sas=z3:stl=30:sd=10:ss=axioms:st=2.0:sos=all:sp=reverse_arity:urr=on:uhcvi=on_23 on theBenchmark
% 1.38/0.55  % (32611)lrs+1_8:1_av=off:cond=fast:fde=unused:lcm=predicate:nm=16:nwc=10:stl=60:sp=occurrence:urr=ec_only_3 on theBenchmark
% 1.38/0.55  % (32629)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_91 on theBenchmark
% 1.38/0.55  % (32621)Refutation found. Thanks to Tanya!
% 1.38/0.55  % SZS status Theorem for theBenchmark
% 1.38/0.55  % (32632)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_73 on theBenchmark
% 1.38/0.56  % (32628)dis-11_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:gs=on:irw=on:lcm=reverse:nm=6:nwc=1:sd=4:ss=axioms:st=3.0:sos=on:sac=on_1 on theBenchmark
% 1.38/0.56  % (32624)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_13 on theBenchmark
% 1.38/0.56  % (32620)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_9 on theBenchmark
% 1.38/0.56  % (32632)Refutation not found, incomplete strategy% (32632)------------------------------
% 1.38/0.56  % (32632)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.57  % (32620)Refutation not found, incomplete strategy% (32620)------------------------------
% 1.38/0.57  % (32620)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.57  % SZS output start Proof for theBenchmark
% 1.38/0.57  fof(f286,plain,(
% 1.38/0.57    $false),
% 1.38/0.57    inference(subsumption_resolution,[],[f285,f83])).
% 1.38/0.57  fof(f83,plain,(
% 1.38/0.57    sK0 != k4_subset_1(sK0,sK1,k4_xboole_0(sK0,sK1))),
% 1.38/0.57    inference(backward_demodulation,[],[f72,f75])).
% 1.38/0.57  fof(f75,plain,(
% 1.38/0.57    k3_subset_1(sK0,sK1) = k4_xboole_0(sK0,sK1)),
% 1.38/0.57    inference(resolution,[],[f29,f47])).
% 1.38/0.57  fof(f47,plain,(
% 1.38/0.57    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f26])).
% 1.38/0.57  fof(f26,plain,(
% 1.38/0.57    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.57    inference(ennf_transformation,[],[f16])).
% 1.38/0.57  fof(f16,axiom,(
% 1.38/0.57    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).
% 1.38/0.57  fof(f29,plain,(
% 1.38/0.57    m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 1.38/0.57    inference(cnf_transformation,[],[f22])).
% 1.38/0.57  fof(f22,plain,(
% 1.38/0.57    ? [X0,X1] : (k2_subset_1(X0) != k4_subset_1(X0,X1,k3_subset_1(X0,X1)) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.57    inference(ennf_transformation,[],[f21])).
% 1.38/0.57  fof(f21,negated_conjecture,(
% 1.38/0.57    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k2_subset_1(X0) = k4_subset_1(X0,X1,k3_subset_1(X0,X1)))),
% 1.38/0.57    inference(negated_conjecture,[],[f20])).
% 1.38/0.57  fof(f20,conjecture,(
% 1.38/0.57    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k2_subset_1(X0) = k4_subset_1(X0,X1,k3_subset_1(X0,X1)))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_subset_1)).
% 1.38/0.57  fof(f72,plain,(
% 1.38/0.57    sK0 != k4_subset_1(sK0,sK1,k3_subset_1(sK0,sK1))),
% 1.38/0.57    inference(forward_demodulation,[],[f30,f32])).
% 1.38/0.57  fof(f32,plain,(
% 1.38/0.57    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 1.38/0.57    inference(cnf_transformation,[],[f15])).
% 1.38/0.57  fof(f15,axiom,(
% 1.38/0.57    ! [X0] : k2_subset_1(X0) = X0),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).
% 1.38/0.57  fof(f30,plain,(
% 1.38/0.57    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k3_subset_1(sK0,sK1))),
% 1.38/0.57    inference(cnf_transformation,[],[f22])).
% 1.38/0.57  fof(f285,plain,(
% 1.38/0.57    sK0 = k4_subset_1(sK0,sK1,k4_xboole_0(sK0,sK1))),
% 1.38/0.57    inference(backward_demodulation,[],[f170,f282])).
% 1.38/0.57  fof(f282,plain,(
% 1.38/0.57    sK0 = k5_xboole_0(sK1,k4_xboole_0(k4_xboole_0(sK0,sK1),sK1))),
% 1.38/0.57    inference(superposition,[],[f250,f63])).
% 1.38/0.57  fof(f63,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 1.38/0.57    inference(definition_unfolding,[],[f37,f59])).
% 1.38/0.57  fof(f59,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 1.38/0.57    inference(definition_unfolding,[],[f35,f58])).
% 1.38/0.57  fof(f58,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.38/0.57    inference(definition_unfolding,[],[f36,f55])).
% 1.38/0.57  fof(f55,plain,(
% 1.38/0.57    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f11])).
% 1.38/0.57  fof(f11,axiom,(
% 1.38/0.57    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.38/0.57  fof(f36,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f10])).
% 1.38/0.57  fof(f10,axiom,(
% 1.38/0.57    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.38/0.57  fof(f35,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f13])).
% 1.38/0.57  fof(f13,axiom,(
% 1.38/0.57    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 1.38/0.57  fof(f37,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f9])).
% 1.38/0.57  fof(f9,axiom,(
% 1.38/0.57    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).
% 1.38/0.57  fof(f250,plain,(
% 1.38/0.57    sK0 = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1)))),
% 1.38/0.57    inference(backward_demodulation,[],[f195,f247])).
% 1.38/0.57  fof(f247,plain,(
% 1.38/0.57    sK0 = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0))),
% 1.38/0.57    inference(superposition,[],[f145,f63])).
% 1.38/0.57  fof(f145,plain,(
% 1.38/0.57    sK0 = k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1))),
% 1.38/0.57    inference(superposition,[],[f62,f123])).
% 1.38/0.57  fof(f123,plain,(
% 1.38/0.57    sK1 = k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))),
% 1.38/0.57    inference(superposition,[],[f92,f61])).
% 1.38/0.57  fof(f61,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 1.38/0.57    inference(definition_unfolding,[],[f33,f39,f39])).
% 1.38/0.57  fof(f39,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f6])).
% 1.38/0.57  fof(f6,axiom,(
% 1.38/0.57    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).
% 1.38/0.57  fof(f33,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f1])).
% 1.38/0.57  fof(f1,axiom,(
% 1.38/0.57    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 1.38/0.57  fof(f92,plain,(
% 1.38/0.57    sK1 = k4_xboole_0(sK1,k4_xboole_0(sK1,sK0))),
% 1.38/0.57    inference(resolution,[],[f85,f65])).
% 1.38/0.57  fof(f65,plain,(
% 1.38/0.57    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0) )),
% 1.38/0.57    inference(definition_unfolding,[],[f45,f39])).
% 1.38/0.57  fof(f45,plain,(
% 1.38/0.57    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0) )),
% 1.38/0.57    inference(cnf_transformation,[],[f24])).
% 1.38/0.57  fof(f24,plain,(
% 1.38/0.57    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 1.38/0.57    inference(ennf_transformation,[],[f5])).
% 1.38/0.57  fof(f5,axiom,(
% 1.38/0.57    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).
% 1.38/0.57  fof(f85,plain,(
% 1.38/0.57    r1_tarski(sK1,sK0)),
% 1.38/0.57    inference(resolution,[],[f84,f70])).
% 1.38/0.57  fof(f70,plain,(
% 1.38/0.57    ( ! [X2,X0] : (r1_tarski(X2,X0) | ~r2_hidden(X2,k1_zfmisc_1(X0))) )),
% 1.38/0.57    inference(equality_resolution,[],[f52])).
% 1.38/0.57  fof(f52,plain,(
% 1.38/0.57    ( ! [X2,X0,X1] : (r1_tarski(X2,X0) | ~r2_hidden(X2,X1) | k1_zfmisc_1(X0) != X1) )),
% 1.38/0.57    inference(cnf_transformation,[],[f12])).
% 1.38/0.57  fof(f12,axiom,(
% 1.38/0.57    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).
% 1.38/0.57  fof(f84,plain,(
% 1.38/0.57    r2_hidden(sK1,k1_zfmisc_1(sK0))),
% 1.38/0.57    inference(subsumption_resolution,[],[f78,f31])).
% 1.38/0.57  fof(f31,plain,(
% 1.38/0.57    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f18])).
% 1.38/0.57  fof(f18,axiom,(
% 1.38/0.57    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).
% 1.38/0.57  fof(f78,plain,(
% 1.38/0.57    v1_xboole_0(k1_zfmisc_1(sK0)) | r2_hidden(sK1,k1_zfmisc_1(sK0))),
% 1.38/0.57    inference(resolution,[],[f29,f44])).
% 1.38/0.57  fof(f44,plain,(
% 1.38/0.57    ( ! [X0,X1] : (v1_xboole_0(X0) | r2_hidden(X1,X0) | ~m1_subset_1(X1,X0)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f23])).
% 1.38/0.57  fof(f23,plain,(
% 1.38/0.57    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 1.38/0.57    inference(ennf_transformation,[],[f14])).
% 1.38/0.57  fof(f14,axiom,(
% 1.38/0.57    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).
% 1.38/0.57  fof(f62,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) = X0) )),
% 1.38/0.57    inference(definition_unfolding,[],[f34,f59,f39])).
% 1.38/0.57  fof(f34,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k2_xboole_0(X0,k3_xboole_0(X0,X1)) = X0) )),
% 1.38/0.57    inference(cnf_transformation,[],[f4])).
% 1.38/0.57  fof(f4,axiom,(
% 1.38/0.57    ! [X0,X1] : k2_xboole_0(X0,k3_xboole_0(X0,X1)) = X0),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_xboole_1)).
% 1.38/0.57  fof(f195,plain,(
% 1.38/0.57    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK0))),
% 1.38/0.57    inference(backward_demodulation,[],[f184,f194])).
% 1.38/0.57  fof(f194,plain,(
% 1.38/0.57    k4_xboole_0(sK1,sK0) = k4_xboole_0(sK1,sK1)),
% 1.38/0.57    inference(forward_demodulation,[],[f185,f125])).
% 1.38/0.57  fof(f125,plain,(
% 1.38/0.57    k4_xboole_0(sK1,sK0) = k5_xboole_0(sK1,sK1)),
% 1.38/0.57    inference(superposition,[],[f60,f92])).
% 1.38/0.57  fof(f60,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 1.38/0.57    inference(definition_unfolding,[],[f38,f39])).
% 1.38/0.57  fof(f38,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f3])).
% 1.38/0.57  fof(f3,axiom,(
% 1.38/0.57    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 1.38/0.57  fof(f185,plain,(
% 1.38/0.57    k4_xboole_0(sK1,sK1) = k5_xboole_0(sK1,sK1)),
% 1.38/0.57    inference(superposition,[],[f60,f164])).
% 1.38/0.57  fof(f164,plain,(
% 1.38/0.57    sK1 = k4_xboole_0(sK1,k4_xboole_0(sK1,sK1))),
% 1.38/0.57    inference(forward_demodulation,[],[f163,f132])).
% 1.38/0.57  fof(f132,plain,(
% 1.38/0.57    sK1 = k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK1,sK1)))),
% 1.38/0.57    inference(superposition,[],[f62,f92])).
% 1.38/0.57  fof(f163,plain,(
% 1.38/0.57    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK1,sK1))) = k4_xboole_0(sK1,k4_xboole_0(sK1,sK1))),
% 1.38/0.57    inference(forward_demodulation,[],[f162,f60])).
% 1.38/0.57  fof(f162,plain,(
% 1.38/0.57    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK1,sK1))) = k5_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK1,sK1))))),
% 1.38/0.57    inference(superposition,[],[f64,f131])).
% 1.38/0.57  fof(f131,plain,(
% 1.38/0.57    sK1 = k5_xboole_0(sK1,k4_xboole_0(sK1,sK1))),
% 1.38/0.57    inference(superposition,[],[f60,f92])).
% 1.38/0.57  fof(f64,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k5_xboole_0(k5_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 1.38/0.57    inference(definition_unfolding,[],[f40,f59,f39])).
% 1.38/0.57  fof(f40,plain,(
% 1.38/0.57    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f8])).
% 1.38/0.57  fof(f8,axiom,(
% 1.38/0.57    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t94_xboole_1)).
% 1.38/0.57  fof(f184,plain,(
% 1.38/0.57    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) = k5_xboole_0(sK0,k4_xboole_0(sK1,sK1))),
% 1.38/0.57    inference(forward_demodulation,[],[f183,f130])).
% 1.38/0.57  fof(f130,plain,(
% 1.38/0.57    ( ! [X0] : (k4_xboole_0(sK1,X0) = k4_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK0,X0)))) )),
% 1.38/0.57    inference(superposition,[],[f66,f92])).
% 1.38/0.57  fof(f66,plain,(
% 1.38/0.57    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,X2))) = k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2)) )),
% 1.38/0.57    inference(definition_unfolding,[],[f56,f39,f39])).
% 1.38/0.57  fof(f56,plain,(
% 1.38/0.57    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f7])).
% 1.38/0.57  fof(f7,axiom,(
% 1.38/0.57    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).
% 1.38/0.57  fof(f183,plain,(
% 1.38/0.57    k3_tarski(k2_enumset1(sK1,sK1,sK1,k4_xboole_0(sK0,sK1))) = k5_xboole_0(sK0,k4_xboole_0(sK1,k4_xboole_0(sK1,k4_xboole_0(sK0,sK1))))),
% 1.38/0.57    inference(superposition,[],[f64,f157])).
% 1.38/0.57  fof(f157,plain,(
% 1.38/0.57    sK0 = k5_xboole_0(sK1,k4_xboole_0(sK0,sK1))),
% 1.38/0.57    inference(forward_demodulation,[],[f156,f150])).
% 1.38/0.57  fof(f150,plain,(
% 1.38/0.57    sK0 = k3_tarski(k2_enumset1(sK0,sK0,sK0,k4_xboole_0(sK0,sK1)))),
% 1.38/0.57    inference(superposition,[],[f62,f123])).
% 1.38/0.57  fof(f156,plain,(
% 1.38/0.57    k5_xboole_0(sK1,k4_xboole_0(sK0,sK1)) = k3_tarski(k2_enumset1(sK0,sK0,sK0,k4_xboole_0(sK0,sK1)))),
% 1.38/0.57    inference(forward_demodulation,[],[f151,f149])).
% 1.38/0.57  fof(f149,plain,(
% 1.38/0.57    sK1 = k5_xboole_0(sK0,k4_xboole_0(sK0,sK1))),
% 1.38/0.57    inference(superposition,[],[f60,f123])).
% 1.38/0.57  fof(f151,plain,(
% 1.38/0.57    k3_tarski(k2_enumset1(sK0,sK0,sK0,k4_xboole_0(sK0,sK1))) = k5_xboole_0(k5_xboole_0(sK0,k4_xboole_0(sK0,sK1)),k4_xboole_0(sK0,sK1))),
% 1.38/0.57    inference(superposition,[],[f64,f123])).
% 1.38/0.57  fof(f170,plain,(
% 1.38/0.57    k4_subset_1(sK0,sK1,k4_xboole_0(sK0,sK1)) = k5_xboole_0(sK1,k4_xboole_0(k4_xboole_0(sK0,sK1),sK1))),
% 1.38/0.57    inference(resolution,[],[f82,f95])).
% 1.38/0.57  fof(f95,plain,(
% 1.38/0.57    m1_subset_1(k4_xboole_0(sK0,sK1),k1_zfmisc_1(sK0))),
% 1.38/0.57    inference(subsumption_resolution,[],[f94,f29])).
% 1.38/0.57  fof(f94,plain,(
% 1.38/0.57    m1_subset_1(k4_xboole_0(sK0,sK1),k1_zfmisc_1(sK0)) | ~m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 1.38/0.57    inference(superposition,[],[f46,f75])).
% 1.38/0.57  fof(f46,plain,(
% 1.38/0.57    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))) )),
% 1.38/0.57    inference(cnf_transformation,[],[f25])).
% 1.38/0.57  fof(f25,plain,(
% 1.38/0.57    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.57    inference(ennf_transformation,[],[f17])).
% 1.38/0.57  fof(f17,axiom,(
% 1.38/0.57    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_subset_1)).
% 1.38/0.57  fof(f82,plain,(
% 1.38/0.57    ( ! [X1] : (~m1_subset_1(X1,k1_zfmisc_1(sK0)) | k4_subset_1(sK0,sK1,X1) = k5_xboole_0(sK1,k4_xboole_0(X1,sK1))) )),
% 1.38/0.57    inference(forward_demodulation,[],[f74,f63])).
% 1.38/0.57  fof(f74,plain,(
% 1.38/0.57    ( ! [X1] : (~m1_subset_1(X1,k1_zfmisc_1(sK0)) | k4_subset_1(sK0,sK1,X1) = k3_tarski(k2_enumset1(sK1,sK1,sK1,X1))) )),
% 1.38/0.57    inference(resolution,[],[f29,f67])).
% 1.38/0.57  fof(f67,plain,(
% 1.38/0.57    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | k4_subset_1(X0,X1,X2) = k3_tarski(k2_enumset1(X1,X1,X1,X2))) )),
% 1.38/0.57    inference(definition_unfolding,[],[f57,f59])).
% 1.38/0.57  fof(f57,plain,(
% 1.38/0.57    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)) )),
% 1.38/0.57    inference(cnf_transformation,[],[f28])).
% 1.38/0.57  fof(f28,plain,(
% 1.38/0.57    ! [X0,X1,X2] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.38/0.57    inference(flattening,[],[f27])).
% 1.38/0.57  fof(f27,plain,(
% 1.38/0.57    ! [X0,X1,X2] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 1.38/0.57    inference(ennf_transformation,[],[f19])).
% 1.38/0.57  fof(f19,axiom,(
% 1.38/0.57    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2))),
% 1.38/0.57    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
% 1.38/0.57  % SZS output end Proof for theBenchmark
% 1.38/0.57  % (32621)------------------------------
% 1.38/0.57  % (32621)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.38/0.57  % (32621)Termination reason: Refutation
% 1.38/0.57  
% 1.38/0.57  % (32621)Memory used [KB]: 1918
% 1.38/0.57  % (32621)Time elapsed: 0.143 s
% 1.38/0.57  % (32621)------------------------------
% 1.38/0.57  % (32621)------------------------------
% 1.38/0.57  % (32603)Success in time 0.21 s
%------------------------------------------------------------------------------
