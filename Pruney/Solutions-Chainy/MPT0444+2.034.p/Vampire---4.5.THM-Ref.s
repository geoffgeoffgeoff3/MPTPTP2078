%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:47:05 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   39 (  65 expanded)
%              Number of leaves         :    9 (  20 expanded)
%              Depth                    :   14
%              Number of atoms          :   94 ( 183 expanded)
%              Number of equality atoms :    3 (   6 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f50,plain,(
    $false ),
    inference(subsumption_resolution,[],[f49,f23])).

fof(f23,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,
    ( ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(sK1)))
    & v1_relat_1(sK1)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f21,f20])).

fof(f20,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1)))
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,X1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(X1)))
          & v1_relat_1(X1) )
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,
    ( ? [X1] :
        ( ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,X1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(X1)))
        & v1_relat_1(X1) )
   => ( ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(sK1)))
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1)))
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1))) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t27_relat_1)).

fof(f49,plain,(
    ~ v1_relat_1(sK0) ),
    inference(resolution,[],[f48,f33])).

fof(f33,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k3_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_relat_1)).

fof(f48,plain,(
    ~ v1_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(subsumption_resolution,[],[f47,f23])).

fof(f47,plain,
    ( ~ v1_relat_1(k3_xboole_0(sK0,sK1))
    | ~ v1_relat_1(sK0) ),
    inference(subsumption_resolution,[],[f46,f29])).

fof(f29,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(f46,plain,
    ( ~ v1_relat_1(k3_xboole_0(sK0,sK1))
    | ~ r1_tarski(k3_xboole_0(sK0,sK1),sK0)
    | ~ v1_relat_1(sK0) ),
    inference(duplicate_literal_removal,[],[f45])).

fof(f45,plain,
    ( ~ v1_relat_1(k3_xboole_0(sK0,sK1))
    | ~ r1_tarski(k3_xboole_0(sK0,sK1),sK0)
    | ~ v1_relat_1(sK0)
    | ~ v1_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(resolution,[],[f44,f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f15])).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(X0,X1)
           => ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
              & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_relat_1)).

fof(f44,plain,
    ( ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0))
    | ~ v1_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(subsumption_resolution,[],[f43,f24])).

fof(f24,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f22])).

fof(f43,plain,
    ( ~ v1_relat_1(sK1)
    | ~ v1_relat_1(k3_xboole_0(sK0,sK1))
    | ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0)) ),
    inference(subsumption_resolution,[],[f42,f39])).

fof(f39,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X1) ),
    inference(forward_demodulation,[],[f37,f28])).

fof(f28,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(f37,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),k2_xboole_0(X1,X1)) ),
    inference(superposition,[],[f35,f28])).

fof(f35,plain,(
    ! [X2,X0,X1] : r1_tarski(k2_xboole_0(k3_xboole_0(X0,X1),k3_xboole_0(X0,X2)),k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] : r1_tarski(k2_xboole_0(k3_xboole_0(X0,X1),k3_xboole_0(X0,X2)),k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_xboole_1)).

fof(f42,plain,
    ( ~ r1_tarski(k3_xboole_0(sK0,sK1),sK1)
    | ~ v1_relat_1(sK1)
    | ~ v1_relat_1(k3_xboole_0(sK0,sK1))
    | ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0)) ),
    inference(resolution,[],[f27,f41])).

fof(f41,plain,
    ( ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK1))
    | ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0)) ),
    inference(resolution,[],[f36,f25])).

fof(f25,plain,(
    ~ r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(sK1))) ),
    inference(cnf_transformation,[],[f22])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f18])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.12/0.34  % Computer   : n015.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:19:53 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.20/0.45  % (5862)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.46  % (5860)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.20/0.46  % (5874)lrs+11_64_acc=model:afp=100000:afq=1.2:anc=all_dependent:bd=off:bs=unit_only:cond=fast:fsr=off:gs=on:gsaa=full_model:gsem=off:irw=on:lma=on:nwc=1:stl=150:sac=on:sp=reverse_arity:urr=on:updr=off_893 on theBenchmark
% 0.20/0.46  % (5857)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.20/0.46  % (5866)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.20/0.46  % (5860)Refutation found. Thanks to Tanya!
% 0.20/0.46  % SZS status Theorem for theBenchmark
% 0.20/0.46  % (5871)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.20/0.47  % (5869)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.20/0.47  % SZS output start Proof for theBenchmark
% 0.20/0.47  fof(f50,plain,(
% 0.20/0.47    $false),
% 0.20/0.47    inference(subsumption_resolution,[],[f49,f23])).
% 0.20/0.47  fof(f23,plain,(
% 0.20/0.47    v1_relat_1(sK0)),
% 0.20/0.47    inference(cnf_transformation,[],[f22])).
% 0.20/0.47  fof(f22,plain,(
% 0.20/0.47    (~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(sK1))) & v1_relat_1(sK1)) & v1_relat_1(sK0)),
% 0.20/0.47    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f21,f20])).
% 0.20/0.47  fof(f20,plain,(
% 0.20/0.47    ? [X0] : (? [X1] : (~r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1))) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (~r1_tarski(k2_relat_1(k3_xboole_0(sK0,X1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(X1))) & v1_relat_1(X1)) & v1_relat_1(sK0))),
% 0.20/0.47    introduced(choice_axiom,[])).
% 0.20/0.47  fof(f21,plain,(
% 0.20/0.47    ? [X1] : (~r1_tarski(k2_relat_1(k3_xboole_0(sK0,X1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(X1))) & v1_relat_1(X1)) => (~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(sK1))) & v1_relat_1(sK1))),
% 0.20/0.47    introduced(choice_axiom,[])).
% 0.20/0.47  fof(f14,plain,(
% 0.20/0.47    ? [X0] : (? [X1] : (~r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1))) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f12])).
% 0.20/0.47  fof(f12,negated_conjecture,(
% 0.20/0.47    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1)))))),
% 0.20/0.47    inference(negated_conjecture,[],[f11])).
% 0.20/0.47  fof(f11,conjecture,(
% 0.20/0.47    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k3_xboole_0(X0,X1)),k3_xboole_0(k2_relat_1(X0),k2_relat_1(X1)))))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t27_relat_1)).
% 0.20/0.47  fof(f49,plain,(
% 0.20/0.47    ~v1_relat_1(sK0)),
% 0.20/0.47    inference(resolution,[],[f48,f33])).
% 0.20/0.47  fof(f33,plain,(
% 0.20/0.47    ( ! [X0,X1] : (v1_relat_1(k3_xboole_0(X0,X1)) | ~v1_relat_1(X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f17])).
% 0.20/0.47  fof(f17,plain,(
% 0.20/0.47    ! [X0,X1] : (v1_relat_1(k3_xboole_0(X0,X1)) | ~v1_relat_1(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f9])).
% 0.20/0.47  fof(f9,axiom,(
% 0.20/0.47    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k3_xboole_0(X0,X1)))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_relat_1)).
% 0.20/0.47  fof(f48,plain,(
% 0.20/0.47    ~v1_relat_1(k3_xboole_0(sK0,sK1))),
% 0.20/0.47    inference(subsumption_resolution,[],[f47,f23])).
% 0.20/0.47  fof(f47,plain,(
% 0.20/0.47    ~v1_relat_1(k3_xboole_0(sK0,sK1)) | ~v1_relat_1(sK0)),
% 0.20/0.47    inference(subsumption_resolution,[],[f46,f29])).
% 0.20/0.47  fof(f29,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f2])).
% 0.20/0.47  fof(f2,axiom,(
% 0.20/0.47    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).
% 0.20/0.47  fof(f46,plain,(
% 0.20/0.47    ~v1_relat_1(k3_xboole_0(sK0,sK1)) | ~r1_tarski(k3_xboole_0(sK0,sK1),sK0) | ~v1_relat_1(sK0)),
% 0.20/0.47    inference(duplicate_literal_removal,[],[f45])).
% 0.20/0.47  fof(f45,plain,(
% 0.20/0.47    ~v1_relat_1(k3_xboole_0(sK0,sK1)) | ~r1_tarski(k3_xboole_0(sK0,sK1),sK0) | ~v1_relat_1(sK0) | ~v1_relat_1(k3_xboole_0(sK0,sK1))),
% 0.20/0.47    inference(resolution,[],[f44,f27])).
% 0.20/0.47  fof(f27,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f16])).
% 0.20/0.47  fof(f16,plain,(
% 0.20/0.47    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 0.20/0.47    inference(flattening,[],[f15])).
% 0.20/0.47  fof(f15,plain,(
% 0.20/0.47    ! [X0] : (! [X1] : (((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 0.20/0.47    inference(ennf_transformation,[],[f10])).
% 0.20/0.47  fof(f10,axiom,(
% 0.20/0.47    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(X0,X1) => (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))))))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_relat_1)).
% 0.20/0.47  fof(f44,plain,(
% 0.20/0.47    ~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0)) | ~v1_relat_1(k3_xboole_0(sK0,sK1))),
% 0.20/0.47    inference(subsumption_resolution,[],[f43,f24])).
% 0.20/0.47  fof(f24,plain,(
% 0.20/0.47    v1_relat_1(sK1)),
% 0.20/0.47    inference(cnf_transformation,[],[f22])).
% 0.20/0.47  fof(f43,plain,(
% 0.20/0.47    ~v1_relat_1(sK1) | ~v1_relat_1(k3_xboole_0(sK0,sK1)) | ~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0))),
% 0.20/0.47    inference(subsumption_resolution,[],[f42,f39])).
% 0.20/0.47  fof(f39,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X1)) )),
% 0.20/0.47    inference(forward_demodulation,[],[f37,f28])).
% 0.20/0.47  fof(f28,plain,(
% 0.20/0.47    ( ! [X0] : (k2_xboole_0(X0,X0) = X0) )),
% 0.20/0.47    inference(cnf_transformation,[],[f13])).
% 0.20/0.47  fof(f13,plain,(
% 0.20/0.47    ! [X0] : k2_xboole_0(X0,X0) = X0),
% 0.20/0.47    inference(rectify,[],[f1])).
% 0.20/0.47  fof(f1,axiom,(
% 0.20/0.47    ! [X0,X1] : k2_xboole_0(X0,X0) = X0),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).
% 0.20/0.47  fof(f37,plain,(
% 0.20/0.47    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),k2_xboole_0(X1,X1))) )),
% 0.20/0.47    inference(superposition,[],[f35,f28])).
% 0.20/0.47  fof(f35,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (r1_tarski(k2_xboole_0(k3_xboole_0(X0,X1),k3_xboole_0(X0,X2)),k2_xboole_0(X1,X2))) )),
% 0.20/0.47    inference(cnf_transformation,[],[f4])).
% 0.20/0.47  fof(f4,axiom,(
% 0.20/0.47    ! [X0,X1,X2] : r1_tarski(k2_xboole_0(k3_xboole_0(X0,X1),k3_xboole_0(X0,X2)),k2_xboole_0(X1,X2))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_xboole_1)).
% 0.20/0.47  fof(f42,plain,(
% 0.20/0.47    ~r1_tarski(k3_xboole_0(sK0,sK1),sK1) | ~v1_relat_1(sK1) | ~v1_relat_1(k3_xboole_0(sK0,sK1)) | ~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0))),
% 0.20/0.47    inference(resolution,[],[f27,f41])).
% 0.20/0.47  fof(f41,plain,(
% 0.20/0.47    ~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK1)) | ~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k2_relat_1(sK0))),
% 0.20/0.47    inference(resolution,[],[f36,f25])).
% 0.20/0.47  fof(f25,plain,(
% 0.20/0.47    ~r1_tarski(k2_relat_1(k3_xboole_0(sK0,sK1)),k3_xboole_0(k2_relat_1(sK0),k2_relat_1(sK1)))),
% 0.20/0.47    inference(cnf_transformation,[],[f22])).
% 0.20/0.47  fof(f36,plain,(
% 0.20/0.47    ( ! [X2,X0,X1] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 0.20/0.47    inference(cnf_transformation,[],[f19])).
% 0.20/0.47  fof(f19,plain,(
% 0.20/0.47    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1))),
% 0.20/0.47    inference(flattening,[],[f18])).
% 0.20/0.47  fof(f18,plain,(
% 0.20/0.47    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | (~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)))),
% 0.20/0.47    inference(ennf_transformation,[],[f3])).
% 0.20/0.47  fof(f3,axiom,(
% 0.20/0.47    ! [X0,X1,X2] : ((r1_tarski(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k3_xboole_0(X1,X2)))),
% 0.20/0.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_xboole_1)).
% 0.20/0.47  % SZS output end Proof for theBenchmark
% 0.20/0.47  % (5860)------------------------------
% 0.20/0.47  % (5860)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.47  % (5860)Termination reason: Refutation
% 0.20/0.47  
% 0.20/0.47  % (5860)Memory used [KB]: 1663
% 0.20/0.47  % (5860)Time elapsed: 0.043 s
% 0.20/0.47  % (5860)------------------------------
% 0.20/0.47  % (5860)------------------------------
% 0.20/0.47  % (5863)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.20/0.47  % (5856)Success in time 0.116 s
%------------------------------------------------------------------------------
