%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:51:42 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   55 (  98 expanded)
%              Number of leaves         :   13 (  31 expanded)
%              Depth                    :   13
%              Number of atoms          :  114 ( 273 expanded)
%              Number of equality atoms :   26 (  37 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    7 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f333,plain,(
    $false ),
    inference(subsumption_resolution,[],[f332,f24])).

fof(f24,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,
    ( ~ v5_relat_1(sK2,sK1)
    & v5_relat_1(sK2,sK0)
    & v1_relat_1(sK2)
    & r1_tarski(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f14,f19,f18])).

fof(f18,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ~ v5_relat_1(X2,X1)
            & v5_relat_1(X2,X0)
            & v1_relat_1(X2) )
        & r1_tarski(X0,X1) )
   => ( ? [X2] :
          ( ~ v5_relat_1(X2,sK1)
          & v5_relat_1(X2,sK0)
          & v1_relat_1(X2) )
      & r1_tarski(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,
    ( ? [X2] :
        ( ~ v5_relat_1(X2,sK1)
        & v5_relat_1(X2,sK0)
        & v1_relat_1(X2) )
   => ( ~ v5_relat_1(sK2,sK1)
      & v5_relat_1(sK2,sK0)
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ v5_relat_1(X2,X1)
          & v5_relat_1(X2,X0)
          & v1_relat_1(X2) )
      & r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f13])).

fof(f13,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ v5_relat_1(X2,X1)
          & v5_relat_1(X2,X0)
          & v1_relat_1(X2) )
      & r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] :
        ( r1_tarski(X0,X1)
       => ! [X2] :
            ( ( v5_relat_1(X2,X0)
              & v1_relat_1(X2) )
           => v5_relat_1(X2,X1) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => ! [X2] :
          ( ( v5_relat_1(X2,X0)
            & v1_relat_1(X2) )
         => v5_relat_1(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t218_relat_1)).

fof(f332,plain,(
    ~ v1_relat_1(sK2) ),
    inference(subsumption_resolution,[],[f330,f26])).

fof(f26,plain,(
    ~ v5_relat_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f330,plain,
    ( v5_relat_1(sK2,sK1)
    | ~ v1_relat_1(sK2) ),
    inference(resolution,[],[f329,f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(k2_relat_1(X1),X0)
      | v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(f329,plain,(
    r1_tarski(k2_relat_1(sK2),sK1) ),
    inference(resolution,[],[f318,f23])).

fof(f23,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f318,plain,(
    ! [X0] :
      ( ~ r1_tarski(sK0,X0)
      | r1_tarski(k2_relat_1(sK2),X0) ) ),
    inference(superposition,[],[f42,f306])).

fof(f306,plain,(
    sK0 = k5_xboole_0(k2_relat_1(sK2),k5_xboole_0(sK0,k3_xboole_0(sK0,k2_relat_1(sK2)))) ),
    inference(resolution,[],[f296,f54])).

fof(f54,plain,(
    r1_tarski(k2_relat_1(sK2),sK0) ),
    inference(subsumption_resolution,[],[f53,f24])).

fof(f53,plain,
    ( r1_tarski(k2_relat_1(sK2),sK0)
    | ~ v1_relat_1(sK2) ),
    inference(resolution,[],[f32,f25])).

fof(f25,plain,(
    v5_relat_1(sK2,sK0) ),
    inference(cnf_transformation,[],[f20])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ v5_relat_1(X1,X0)
      | r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f296,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1 ) ),
    inference(forward_demodulation,[],[f295,f27])).

fof(f27,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).

fof(f295,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k1_xboole_0))) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(forward_demodulation,[],[f294,f59])).

fof(f59,plain,(
    ! [X2,X3] : k1_xboole_0 = k3_xboole_0(X3,k5_xboole_0(X2,k3_xboole_0(X2,X3))) ),
    inference(superposition,[],[f47,f29])).

fof(f29,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f47,plain,(
    ! [X0,X1] : k1_xboole_0 = k3_xboole_0(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X1) ),
    inference(resolution,[],[f35,f40])).

fof(f40,plain,(
    ! [X0,X1] : r1_xboole_0(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X1) ),
    inference(definition_unfolding,[],[f28,f31])).

fof(f31,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f28,plain,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | k3_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k3_xboole_0(X0,X1) != k1_xboole_0 )
      & ( k3_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k3_xboole_0(X0,X1) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).

fof(f294,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k3_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))))) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(forward_demodulation,[],[f293,f29])).

fof(f293,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0)))) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(forward_demodulation,[],[f41,f37])).

fof(f37,plain,(
    ! [X2,X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(f41,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f34,f39,f31])).

fof(f39,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(definition_unfolding,[],[f30,f31])).

fof(f30,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(f34,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_xboole_1)).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))),X2)
      | r1_tarski(X0,X2) ) ),
    inference(definition_unfolding,[],[f38,f39])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X1),X2)
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t11_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.15/0.35  % Computer   : n007.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 12:12:51 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.22/0.46  % (6882)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.22/0.47  % (6878)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.22/0.47  % (6872)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.22/0.47  % (6884)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.22/0.48  % (6882)Refutation found. Thanks to Tanya!
% 0.22/0.48  % SZS status Theorem for theBenchmark
% 0.22/0.48  % (6873)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.22/0.48  % SZS output start Proof for theBenchmark
% 0.22/0.48  fof(f333,plain,(
% 0.22/0.48    $false),
% 0.22/0.48    inference(subsumption_resolution,[],[f332,f24])).
% 0.22/0.48  fof(f24,plain,(
% 0.22/0.48    v1_relat_1(sK2)),
% 0.22/0.48    inference(cnf_transformation,[],[f20])).
% 0.22/0.48  fof(f20,plain,(
% 0.22/0.48    (~v5_relat_1(sK2,sK1) & v5_relat_1(sK2,sK0) & v1_relat_1(sK2)) & r1_tarski(sK0,sK1)),
% 0.22/0.48    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f14,f19,f18])).
% 0.22/0.48  fof(f18,plain,(
% 0.22/0.48    ? [X0,X1] : (? [X2] : (~v5_relat_1(X2,X1) & v5_relat_1(X2,X0) & v1_relat_1(X2)) & r1_tarski(X0,X1)) => (? [X2] : (~v5_relat_1(X2,sK1) & v5_relat_1(X2,sK0) & v1_relat_1(X2)) & r1_tarski(sK0,sK1))),
% 0.22/0.48    introduced(choice_axiom,[])).
% 0.22/0.48  fof(f19,plain,(
% 0.22/0.48    ? [X2] : (~v5_relat_1(X2,sK1) & v5_relat_1(X2,sK0) & v1_relat_1(X2)) => (~v5_relat_1(sK2,sK1) & v5_relat_1(sK2,sK0) & v1_relat_1(sK2))),
% 0.22/0.48    introduced(choice_axiom,[])).
% 0.22/0.48  fof(f14,plain,(
% 0.22/0.48    ? [X0,X1] : (? [X2] : (~v5_relat_1(X2,X1) & v5_relat_1(X2,X0) & v1_relat_1(X2)) & r1_tarski(X0,X1))),
% 0.22/0.48    inference(flattening,[],[f13])).
% 0.22/0.48  fof(f13,plain,(
% 0.22/0.48    ? [X0,X1] : (? [X2] : (~v5_relat_1(X2,X1) & (v5_relat_1(X2,X0) & v1_relat_1(X2))) & r1_tarski(X0,X1))),
% 0.22/0.48    inference(ennf_transformation,[],[f12])).
% 0.22/0.48  fof(f12,negated_conjecture,(
% 0.22/0.48    ~! [X0,X1] : (r1_tarski(X0,X1) => ! [X2] : ((v5_relat_1(X2,X0) & v1_relat_1(X2)) => v5_relat_1(X2,X1)))),
% 0.22/0.48    inference(negated_conjecture,[],[f11])).
% 0.22/0.48  fof(f11,conjecture,(
% 0.22/0.48    ! [X0,X1] : (r1_tarski(X0,X1) => ! [X2] : ((v5_relat_1(X2,X0) & v1_relat_1(X2)) => v5_relat_1(X2,X1)))),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t218_relat_1)).
% 0.22/0.48  fof(f332,plain,(
% 0.22/0.48    ~v1_relat_1(sK2)),
% 0.22/0.48    inference(subsumption_resolution,[],[f330,f26])).
% 0.22/0.48  fof(f26,plain,(
% 0.22/0.48    ~v5_relat_1(sK2,sK1)),
% 0.22/0.48    inference(cnf_transformation,[],[f20])).
% 0.22/0.48  fof(f330,plain,(
% 0.22/0.48    v5_relat_1(sK2,sK1) | ~v1_relat_1(sK2)),
% 0.22/0.48    inference(resolution,[],[f329,f33])).
% 0.22/0.48  fof(f33,plain,(
% 0.22/0.48    ( ! [X0,X1] : (~r1_tarski(k2_relat_1(X1),X0) | v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f21])).
% 0.22/0.48  fof(f21,plain,(
% 0.22/0.48    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 0.22/0.48    inference(nnf_transformation,[],[f15])).
% 0.22/0.48  fof(f15,plain,(
% 0.22/0.48    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.22/0.48    inference(ennf_transformation,[],[f10])).
% 0.22/0.48  fof(f10,axiom,(
% 0.22/0.48    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).
% 0.22/0.48  fof(f329,plain,(
% 0.22/0.48    r1_tarski(k2_relat_1(sK2),sK1)),
% 0.22/0.48    inference(resolution,[],[f318,f23])).
% 0.22/0.48  fof(f23,plain,(
% 0.22/0.48    r1_tarski(sK0,sK1)),
% 0.22/0.48    inference(cnf_transformation,[],[f20])).
% 0.22/0.48  fof(f318,plain,(
% 0.22/0.48    ( ! [X0] : (~r1_tarski(sK0,X0) | r1_tarski(k2_relat_1(sK2),X0)) )),
% 0.22/0.48    inference(superposition,[],[f42,f306])).
% 0.22/0.48  fof(f306,plain,(
% 0.22/0.48    sK0 = k5_xboole_0(k2_relat_1(sK2),k5_xboole_0(sK0,k3_xboole_0(sK0,k2_relat_1(sK2))))),
% 0.22/0.48    inference(resolution,[],[f296,f54])).
% 0.22/0.48  fof(f54,plain,(
% 0.22/0.48    r1_tarski(k2_relat_1(sK2),sK0)),
% 0.22/0.48    inference(subsumption_resolution,[],[f53,f24])).
% 0.22/0.48  fof(f53,plain,(
% 0.22/0.48    r1_tarski(k2_relat_1(sK2),sK0) | ~v1_relat_1(sK2)),
% 0.22/0.48    inference(resolution,[],[f32,f25])).
% 0.22/0.48  fof(f25,plain,(
% 0.22/0.48    v5_relat_1(sK2,sK0)),
% 0.22/0.48    inference(cnf_transformation,[],[f20])).
% 0.22/0.48  fof(f32,plain,(
% 0.22/0.48    ( ! [X0,X1] : (~v5_relat_1(X1,X0) | r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f21])).
% 0.22/0.48  fof(f296,plain,(
% 0.22/0.48    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = X1) )),
% 0.22/0.48    inference(forward_demodulation,[],[f295,f27])).
% 0.22/0.48  fof(f27,plain,(
% 0.22/0.48    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.22/0.48    inference(cnf_transformation,[],[f6])).
% 0.22/0.48  fof(f6,axiom,(
% 0.22/0.48    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).
% 0.22/0.48  fof(f295,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k1_xboole_0))) = X1 | ~r1_tarski(X0,X1)) )),
% 0.22/0.48    inference(forward_demodulation,[],[f294,f59])).
% 0.22/0.48  fof(f59,plain,(
% 0.22/0.48    ( ! [X2,X3] : (k1_xboole_0 = k3_xboole_0(X3,k5_xboole_0(X2,k3_xboole_0(X2,X3)))) )),
% 0.22/0.48    inference(superposition,[],[f47,f29])).
% 0.22/0.48  fof(f29,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f1])).
% 0.22/0.48  fof(f1,axiom,(
% 0.22/0.48    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.22/0.48  fof(f47,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k1_xboole_0 = k3_xboole_0(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X1)) )),
% 0.22/0.48    inference(resolution,[],[f35,f40])).
% 0.22/0.48  fof(f40,plain,(
% 0.22/0.48    ( ! [X0,X1] : (r1_xboole_0(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X1)) )),
% 0.22/0.48    inference(definition_unfolding,[],[f28,f31])).
% 0.22/0.48  fof(f31,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.48    inference(cnf_transformation,[],[f3])).
% 0.22/0.48  fof(f3,axiom,(
% 0.22/0.48    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.22/0.48  fof(f28,plain,(
% 0.22/0.48    ( ! [X0,X1] : (r1_xboole_0(k4_xboole_0(X0,X1),X1)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f7])).
% 0.22/0.48  fof(f7,axiom,(
% 0.22/0.48    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1)),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).
% 0.22/0.48  fof(f35,plain,(
% 0.22/0.48    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) = k1_xboole_0) )),
% 0.22/0.48    inference(cnf_transformation,[],[f22])).
% 0.22/0.48  fof(f22,plain,(
% 0.22/0.48    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) & (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)))),
% 0.22/0.48    inference(nnf_transformation,[],[f2])).
% 0.22/0.48  fof(f2,axiom,(
% 0.22/0.48    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k3_xboole_0(X0,X1) = k1_xboole_0)),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).
% 0.22/0.48  fof(f294,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k3_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))))) = X1 | ~r1_tarski(X0,X1)) )),
% 0.22/0.48    inference(forward_demodulation,[],[f293,f29])).
% 0.22/0.48  fof(f293,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k3_xboole_0(X1,X0),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0)))) = X1 | ~r1_tarski(X0,X1)) )),
% 0.22/0.48    inference(forward_demodulation,[],[f41,f37])).
% 0.22/0.48  fof(f37,plain,(
% 0.22/0.48    ( ! [X2,X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))) )),
% 0.22/0.48    inference(cnf_transformation,[],[f8])).
% 0.22/0.48  fof(f8,axiom,(
% 0.22/0.48    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).
% 0.22/0.48  fof(f41,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) = X1 | ~r1_tarski(X0,X1)) )),
% 0.22/0.48    inference(definition_unfolding,[],[f34,f39,f31])).
% 0.22/0.48  fof(f39,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) )),
% 0.22/0.48    inference(definition_unfolding,[],[f30,f31])).
% 0.22/0.48  fof(f30,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 0.22/0.48    inference(cnf_transformation,[],[f9])).
% 0.22/0.48  fof(f9,axiom,(
% 0.22/0.48    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).
% 0.22/0.48  fof(f34,plain,(
% 0.22/0.48    ( ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1 | ~r1_tarski(X0,X1)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f16])).
% 0.22/0.48  fof(f16,plain,(
% 0.22/0.48    ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1 | ~r1_tarski(X0,X1))),
% 0.22/0.48    inference(ennf_transformation,[],[f5])).
% 0.22/0.48  fof(f5,axiom,(
% 0.22/0.48    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1)),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_xboole_1)).
% 0.22/0.48  fof(f42,plain,(
% 0.22/0.48    ( ! [X2,X0,X1] : (~r1_tarski(k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))),X2) | r1_tarski(X0,X2)) )),
% 0.22/0.48    inference(definition_unfolding,[],[f38,f39])).
% 0.22/0.48  fof(f38,plain,(
% 0.22/0.48    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2)) )),
% 0.22/0.48    inference(cnf_transformation,[],[f17])).
% 0.22/0.48  fof(f17,plain,(
% 0.22/0.48    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2))),
% 0.22/0.48    inference(ennf_transformation,[],[f4])).
% 0.22/0.48  fof(f4,axiom,(
% 0.22/0.48    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X1),X2) => r1_tarski(X0,X2))),
% 0.22/0.48    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t11_xboole_1)).
% 0.22/0.48  % SZS output end Proof for theBenchmark
% 0.22/0.48  % (6882)------------------------------
% 0.22/0.48  % (6882)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.48  % (6882)Termination reason: Refutation
% 0.22/0.48  
% 0.22/0.48  % (6882)Memory used [KB]: 1791
% 0.22/0.48  % (6882)Time elapsed: 0.018 s
% 0.22/0.48  % (6882)------------------------------
% 0.22/0.48  % (6882)------------------------------
% 0.22/0.48  % (6861)Success in time 0.118 s
%------------------------------------------------------------------------------
