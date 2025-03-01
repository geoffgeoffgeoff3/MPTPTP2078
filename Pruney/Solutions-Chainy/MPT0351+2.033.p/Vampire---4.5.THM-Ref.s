%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:07 EST 2020

% Result     : Theorem 0.13s
% Output     : Refutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   67 ( 134 expanded)
%              Number of leaves         :   16 (  41 expanded)
%              Depth                    :   13
%              Number of atoms          :  102 ( 181 expanded)
%              Number of equality atoms :   50 ( 113 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f141,plain,(
    $false ),
    inference(subsumption_resolution,[],[f140,f51])).

fof(f51,plain,(
    sK0 != k4_subset_1(sK0,sK1,sK0) ),
    inference(backward_demodulation,[],[f27,f28])).

fof(f28,plain,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] : k2_subset_1(X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(f27,plain,(
    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0)) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ? [X0,X1] :
      ( k2_subset_1(X0) != k4_subset_1(X0,X1,k2_subset_1(X0))
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f17,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f16,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_subset_1)).

fof(f140,plain,(
    sK0 = k4_subset_1(sK0,sK1,sK0) ),
    inference(forward_demodulation,[],[f139,f86])).

fof(f86,plain,(
    sK0 = k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) ),
    inference(forward_demodulation,[],[f85,f46])).

fof(f46,plain,(
    ! [X0] : k3_tarski(k2_enumset1(X0,X0,X0,k1_xboole_0)) = X0 ),
    inference(definition_unfolding,[],[f29,f45])).

fof(f45,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f35,f44])).

fof(f44,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f34,f42])).

fof(f42,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f34,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f35,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f29,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(f85,plain,(
    k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) = k3_tarski(k2_enumset1(sK0,sK0,sK0,k1_xboole_0)) ),
    inference(forward_demodulation,[],[f84,f65])).

fof(f65,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0) ),
    inference(forward_demodulation,[],[f63,f31])).

fof(f31,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(f63,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X0)) ),
    inference(superposition,[],[f47,f46])).

fof(f47,plain,(
    ! [X0,X1] : k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) ),
    inference(definition_unfolding,[],[f32,f36,f45])).

fof(f36,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f32,plain,(
    ! [X0,X1] : k1_xboole_0 = k4_xboole_0(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k1_xboole_0 = k4_xboole_0(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_xboole_1)).

fof(f84,plain,(
    k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) = k3_tarski(k2_enumset1(sK0,sK0,sK0,k5_xboole_0(sK1,sK1))) ),
    inference(superposition,[],[f49,f83])).

fof(f83,plain,(
    sK1 = k3_xboole_0(sK1,sK0) ),
    inference(resolution,[],[f71,f38])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k3_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f71,plain,(
    r1_tarski(sK1,sK0) ),
    inference(duplicate_literal_removal,[],[f69])).

fof(f69,plain,
    ( r1_tarski(sK1,sK0)
    | r1_tarski(sK1,sK0) ),
    inference(resolution,[],[f67,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK2(X0,X1),X1)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) )
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(f67,plain,(
    ! [X0] :
      ( r2_hidden(sK2(sK1,X0),sK0)
      | r1_tarski(sK1,X0) ) ),
    inference(resolution,[],[f56,f26])).

fof(f26,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f20])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
      | r2_hidden(sK2(X0,X2),X1)
      | r1_tarski(X0,X2) ) ),
    inference(resolution,[],[f39,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK2(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_subset_1)).

fof(f49,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X0,X0,X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) ),
    inference(definition_unfolding,[],[f37,f45,f36,f45])).

fof(f37,plain,(
    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(f139,plain,(
    k4_subset_1(sK0,sK1,sK0) = k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) ),
    inference(forward_demodulation,[],[f137,f48])).

fof(f48,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f33,f44,f44])).

fof(f33,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f137,plain,(
    k4_subset_1(sK0,sK1,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK0)) ),
    inference(resolution,[],[f132,f26])).

fof(f132,plain,(
    ! [X2,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | k3_tarski(k2_enumset1(X1,X1,X1,X2)) = k4_subset_1(X2,X1,X2) ) ),
    inference(resolution,[],[f50,f52])).

fof(f52,plain,(
    ! [X0] : m1_subset_1(X0,k1_zfmisc_1(X0)) ),
    inference(forward_demodulation,[],[f30,f28])).

fof(f30,plain,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k4_subset_1(X0,X1,X2) = k3_tarski(k2_enumset1(X1,X1,X1,X2)) ) ),
    inference(definition_unfolding,[],[f43,f45])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X0))
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
     => k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.01/0.07  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.01/0.08  % Command    : run_vampire %s %d
% 0.07/0.28  % Computer   : n009.cluster.edu
% 0.07/0.28  % Model      : x86_64 x86_64
% 0.07/0.28  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.07/0.28  % Memory     : 8042.1875MB
% 0.07/0.28  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.07/0.28  % CPULimit   : 60
% 0.07/0.28  % WCLimit    : 600
% 0.07/0.28  % DateTime   : Tue Dec  1 13:12:11 EST 2020
% 0.07/0.28  % CPUTime    : 
% 0.13/0.39  % (2552)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.13/0.41  % (2552)Refutation not found, incomplete strategy% (2552)------------------------------
% 0.13/0.41  % (2552)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.13/0.41  % (2552)Termination reason: Refutation not found, incomplete strategy
% 0.13/0.41  
% 0.13/0.41  % (2552)Memory used [KB]: 10746
% 0.13/0.41  % (2552)Time elapsed: 0.051 s
% 0.13/0.41  % (2552)------------------------------
% 0.13/0.41  % (2552)------------------------------
% 0.13/0.41  % (2571)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.13/0.43  % (2558)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.13/0.43  % (2566)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.13/0.45  % (2550)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.13/0.45  % (2550)Refutation found. Thanks to Tanya!
% 0.13/0.45  % SZS status Theorem for theBenchmark
% 0.13/0.45  % SZS output start Proof for theBenchmark
% 0.13/0.45  fof(f141,plain,(
% 0.13/0.45    $false),
% 0.13/0.45    inference(subsumption_resolution,[],[f140,f51])).
% 0.13/0.45  fof(f51,plain,(
% 0.13/0.45    sK0 != k4_subset_1(sK0,sK1,sK0)),
% 0.13/0.45    inference(backward_demodulation,[],[f27,f28])).
% 0.13/0.45  fof(f28,plain,(
% 0.13/0.45    ( ! [X0] : (k2_subset_1(X0) = X0) )),
% 0.13/0.45    inference(cnf_transformation,[],[f12])).
% 0.13/0.45  fof(f12,axiom,(
% 0.13/0.45    ! [X0] : k2_subset_1(X0) = X0),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).
% 0.13/0.45  fof(f27,plain,(
% 0.13/0.45    k2_subset_1(sK0) != k4_subset_1(sK0,sK1,k2_subset_1(sK0))),
% 0.13/0.45    inference(cnf_transformation,[],[f20])).
% 0.13/0.45  fof(f20,plain,(
% 0.13/0.45    ? [X0,X1] : (k2_subset_1(X0) != k4_subset_1(X0,X1,k2_subset_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.13/0.45    inference(ennf_transformation,[],[f17])).
% 0.13/0.45  fof(f17,negated_conjecture,(
% 0.13/0.45    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)))),
% 0.13/0.45    inference(negated_conjecture,[],[f16])).
% 0.13/0.45  fof(f16,conjecture,(
% 0.13/0.45    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k2_subset_1(X0) = k4_subset_1(X0,X1,k2_subset_1(X0)))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_subset_1)).
% 0.13/0.45  fof(f140,plain,(
% 0.13/0.45    sK0 = k4_subset_1(sK0,sK1,sK0)),
% 0.13/0.45    inference(forward_demodulation,[],[f139,f86])).
% 0.13/0.45  fof(f86,plain,(
% 0.13/0.45    sK0 = k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1))),
% 0.13/0.45    inference(forward_demodulation,[],[f85,f46])).
% 0.13/0.45  fof(f46,plain,(
% 0.13/0.45    ( ! [X0] : (k3_tarski(k2_enumset1(X0,X0,X0,k1_xboole_0)) = X0) )),
% 0.13/0.45    inference(definition_unfolding,[],[f29,f45])).
% 0.13/0.45  fof(f45,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 0.13/0.45    inference(definition_unfolding,[],[f35,f44])).
% 0.13/0.45  fof(f44,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 0.13/0.45    inference(definition_unfolding,[],[f34,f42])).
% 0.13/0.45  fof(f42,plain,(
% 0.13/0.45    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f10])).
% 0.13/0.45  fof(f10,axiom,(
% 0.13/0.45    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 0.13/0.45  fof(f34,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f9])).
% 0.13/0.45  fof(f9,axiom,(
% 0.13/0.45    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.13/0.45  fof(f35,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 0.13/0.45    inference(cnf_transformation,[],[f11])).
% 0.13/0.45  fof(f11,axiom,(
% 0.13/0.45    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 0.13/0.45  fof(f29,plain,(
% 0.13/0.45    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.13/0.45    inference(cnf_transformation,[],[f4])).
% 0.13/0.45  fof(f4,axiom,(
% 0.13/0.45    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).
% 0.13/0.45  fof(f85,plain,(
% 0.13/0.45    k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) = k3_tarski(k2_enumset1(sK0,sK0,sK0,k1_xboole_0))),
% 0.13/0.45    inference(forward_demodulation,[],[f84,f65])).
% 0.13/0.45  fof(f65,plain,(
% 0.13/0.45    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(X0,X0)) )),
% 0.13/0.45    inference(forward_demodulation,[],[f63,f31])).
% 0.13/0.45  fof(f31,plain,(
% 0.13/0.45    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 0.13/0.45    inference(cnf_transformation,[],[f18])).
% 0.13/0.45  fof(f18,plain,(
% 0.13/0.45    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 0.13/0.45    inference(rectify,[],[f2])).
% 0.13/0.45  fof(f2,axiom,(
% 0.13/0.45    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).
% 0.13/0.45  fof(f63,plain,(
% 0.13/0.45    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X0))) )),
% 0.13/0.45    inference(superposition,[],[f47,f46])).
% 0.13/0.45  fof(f47,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))))) )),
% 0.13/0.45    inference(definition_unfolding,[],[f32,f36,f45])).
% 0.13/0.45  fof(f36,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.13/0.45    inference(cnf_transformation,[],[f3])).
% 0.13/0.45  fof(f3,axiom,(
% 0.13/0.45    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.13/0.45  fof(f32,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(X0,k2_xboole_0(X0,X1))) )),
% 0.13/0.45    inference(cnf_transformation,[],[f7])).
% 0.13/0.45  fof(f7,axiom,(
% 0.13/0.45    ! [X0,X1] : k1_xboole_0 = k4_xboole_0(X0,k2_xboole_0(X0,X1))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_xboole_1)).
% 0.13/0.45  fof(f84,plain,(
% 0.13/0.45    k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1)) = k3_tarski(k2_enumset1(sK0,sK0,sK0,k5_xboole_0(sK1,sK1)))),
% 0.13/0.45    inference(superposition,[],[f49,f83])).
% 0.13/0.45  fof(f83,plain,(
% 0.13/0.45    sK1 = k3_xboole_0(sK1,sK0)),
% 0.13/0.45    inference(resolution,[],[f71,f38])).
% 0.13/0.45  fof(f38,plain,(
% 0.13/0.45    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0) )),
% 0.13/0.45    inference(cnf_transformation,[],[f21])).
% 0.13/0.45  fof(f21,plain,(
% 0.13/0.45    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.13/0.45    inference(ennf_transformation,[],[f5])).
% 0.13/0.45  fof(f5,axiom,(
% 0.13/0.45    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.13/0.45  fof(f71,plain,(
% 0.13/0.45    r1_tarski(sK1,sK0)),
% 0.13/0.45    inference(duplicate_literal_removal,[],[f69])).
% 0.13/0.45  fof(f69,plain,(
% 0.13/0.45    r1_tarski(sK1,sK0) | r1_tarski(sK1,sK0)),
% 0.13/0.45    inference(resolution,[],[f67,f41])).
% 0.13/0.45  fof(f41,plain,(
% 0.13/0.45    ( ! [X0,X1] : (~r2_hidden(sK2(X0,X1),X1) | r1_tarski(X0,X1)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f23])).
% 0.13/0.45  fof(f23,plain,(
% 0.13/0.45    ! [X0,X1] : (r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)))),
% 0.13/0.45    inference(ennf_transformation,[],[f19])).
% 0.13/0.45  fof(f19,plain,(
% 0.13/0.45    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)) => r1_tarski(X0,X1))),
% 0.13/0.45    inference(unused_predicate_definition_removal,[],[f1])).
% 0.13/0.45  fof(f1,axiom,(
% 0.13/0.45    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 0.13/0.45  fof(f67,plain,(
% 0.13/0.45    ( ! [X0] : (r2_hidden(sK2(sK1,X0),sK0) | r1_tarski(sK1,X0)) )),
% 0.13/0.45    inference(resolution,[],[f56,f26])).
% 0.13/0.45  fof(f26,plain,(
% 0.13/0.45    m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 0.13/0.45    inference(cnf_transformation,[],[f20])).
% 0.13/0.45  fof(f56,plain,(
% 0.13/0.45    ( ! [X2,X0,X1] : (~m1_subset_1(X0,k1_zfmisc_1(X1)) | r2_hidden(sK2(X0,X2),X1) | r1_tarski(X0,X2)) )),
% 0.13/0.45    inference(resolution,[],[f39,f40])).
% 0.13/0.45  fof(f40,plain,(
% 0.13/0.45    ( ! [X0,X1] : (r2_hidden(sK2(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f23])).
% 0.13/0.45  fof(f39,plain,(
% 0.13/0.45    ( ! [X2,X0,X1] : (~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | r2_hidden(X2,X0)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f22])).
% 0.13/0.45  fof(f22,plain,(
% 0.13/0.45    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.13/0.45    inference(ennf_transformation,[],[f14])).
% 0.13/0.45  fof(f14,axiom,(
% 0.13/0.45    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_subset_1)).
% 0.13/0.45  fof(f49,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X0,X0,X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))))) )),
% 0.13/0.45    inference(definition_unfolding,[],[f37,f45,f36,f45])).
% 0.13/0.45  fof(f37,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f6])).
% 0.13/0.45  fof(f6,axiom,(
% 0.13/0.45    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).
% 0.13/0.45  fof(f139,plain,(
% 0.13/0.45    k4_subset_1(sK0,sK1,sK0) = k3_tarski(k2_enumset1(sK0,sK0,sK0,sK1))),
% 0.13/0.45    inference(forward_demodulation,[],[f137,f48])).
% 0.13/0.45  fof(f48,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0)) )),
% 0.13/0.45    inference(definition_unfolding,[],[f33,f44,f44])).
% 0.13/0.45  fof(f33,plain,(
% 0.13/0.45    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f8])).
% 0.13/0.45  fof(f8,axiom,(
% 0.13/0.45    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 0.13/0.45  fof(f137,plain,(
% 0.13/0.45    k4_subset_1(sK0,sK1,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK0))),
% 0.13/0.45    inference(resolution,[],[f132,f26])).
% 0.13/0.45  fof(f132,plain,(
% 0.13/0.45    ( ! [X2,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X2)) | k3_tarski(k2_enumset1(X1,X1,X1,X2)) = k4_subset_1(X2,X1,X2)) )),
% 0.13/0.45    inference(resolution,[],[f50,f52])).
% 0.13/0.45  fof(f52,plain,(
% 0.13/0.45    ( ! [X0] : (m1_subset_1(X0,k1_zfmisc_1(X0))) )),
% 0.13/0.45    inference(forward_demodulation,[],[f30,f28])).
% 0.13/0.45  fof(f30,plain,(
% 0.13/0.45    ( ! [X0] : (m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))) )),
% 0.13/0.45    inference(cnf_transformation,[],[f13])).
% 0.13/0.45  fof(f13,axiom,(
% 0.13/0.45    ! [X0] : m1_subset_1(k2_subset_1(X0),k1_zfmisc_1(X0))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).
% 0.13/0.45  fof(f50,plain,(
% 0.13/0.45    ( ! [X2,X0,X1] : (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | k4_subset_1(X0,X1,X2) = k3_tarski(k2_enumset1(X1,X1,X1,X2))) )),
% 0.13/0.45    inference(definition_unfolding,[],[f43,f45])).
% 0.13/0.45  fof(f43,plain,(
% 0.13/0.45    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2)) )),
% 0.13/0.45    inference(cnf_transformation,[],[f25])).
% 0.13/0.45  fof(f25,plain,(
% 0.13/0.45    ! [X0,X1,X2] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.13/0.45    inference(flattening,[],[f24])).
% 0.13/0.45  fof(f24,plain,(
% 0.13/0.45    ! [X0,X1,X2] : (k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2) | (~m1_subset_1(X2,k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))))),
% 0.13/0.45    inference(ennf_transformation,[],[f15])).
% 0.13/0.45  fof(f15,axiom,(
% 0.13/0.45    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(X0)) & m1_subset_1(X1,k1_zfmisc_1(X0))) => k4_subset_1(X0,X1,X2) = k2_xboole_0(X1,X2))),
% 0.13/0.45    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).
% 0.13/0.45  % SZS output end Proof for theBenchmark
% 0.13/0.45  % (2550)------------------------------
% 0.13/0.45  % (2550)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.13/0.45  % (2550)Termination reason: Refutation
% 0.13/0.45  
% 0.13/0.45  % (2550)Memory used [KB]: 6268
% 0.13/0.45  % (2550)Time elapsed: 0.079 s
% 0.13/0.45  % (2550)------------------------------
% 0.13/0.45  % (2550)------------------------------
% 0.13/0.45  % (2543)Success in time 0.158 s
%------------------------------------------------------------------------------
