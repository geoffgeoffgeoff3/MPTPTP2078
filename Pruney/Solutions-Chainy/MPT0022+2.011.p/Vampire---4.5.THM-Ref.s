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
% DateTime   : Thu Dec  3 12:29:37 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   23 (  33 expanded)
%              Number of leaves         :    5 (  12 expanded)
%              Depth                    :    7
%              Number of atoms          :   46 (  68 expanded)
%              Number of equality atoms :   18 (  35 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f78,plain,(
    $false ),
    inference(unit_resulting_resolution,[],[f19,f14,f15,f60])).

fof(f60,plain,(
    ! [X6,X4,X5] :
      ( ~ sQ2_eqProxy(k1_xboole_0,k2_xboole_0(X4,X6))
      | sQ2_eqProxy(k1_xboole_0,X5)
      | ~ sQ2_eqProxy(X4,X5) ) ),
    inference(resolution,[],[f48,f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( sQ2_eqProxy(X1,X0)
      | ~ sQ2_eqProxy(X0,X1) ) ),
    inference(equality_proxy_axiom,[],[f13])).

fof(f13,plain,(
    ! [X1,X0] :
      ( sQ2_eqProxy(X0,X1)
    <=> X0 = X1 ) ),
    introduced(equality_proxy_definition,[new_symbols(naming,[sQ2_eqProxy])])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( ~ sQ2_eqProxy(k2_xboole_0(X0,X1),k1_xboole_0)
      | ~ sQ2_eqProxy(X0,X2)
      | sQ2_eqProxy(k1_xboole_0,X2) ) ),
    inference(resolution,[],[f29,f12])).

fof(f12,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X1,X0)
      | ~ sQ2_eqProxy(X0,k1_xboole_0)
      | ~ sQ2_eqProxy(X1,X2)
      | sQ2_eqProxy(k1_xboole_0,X2) ) ),
    inference(resolution,[],[f18,f16])).

fof(f16,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,k1_xboole_0)
      | sQ2_eqProxy(k1_xboole_0,X0) ) ),
    inference(equality_proxy_replacement,[],[f11,f13])).

fof(f11,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( r1_tarski(X0,k1_xboole_0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_1)).

fof(f18,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_tarski(X1,X3)
      | ~ sQ2_eqProxy(X2,X3)
      | ~ r1_tarski(X0,X2)
      | ~ sQ2_eqProxy(X0,X1) ) ),
    inference(equality_proxy_axiom,[],[f13])).

fof(f15,plain,(
    sQ2_eqProxy(k1_xboole_0,k2_xboole_0(sK0,sK1)) ),
    inference(equality_proxy_replacement,[],[f9,f13])).

fof(f9,plain,(
    k1_xboole_0 = k2_xboole_0(sK0,sK1) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,plain,
    ( k1_xboole_0 != sK0
    & k1_xboole_0 = k2_xboole_0(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f5,f7])).

fof(f7,plain,
    ( ? [X0,X1] :
        ( k1_xboole_0 != X0
        & k1_xboole_0 = k2_xboole_0(X0,X1) )
   => ( k1_xboole_0 != sK0
      & k1_xboole_0 = k2_xboole_0(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f5,plain,(
    ? [X0,X1] :
      ( k1_xboole_0 != X0
      & k1_xboole_0 = k2_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k1_xboole_0 = k2_xboole_0(X0,X1)
       => k1_xboole_0 = X0 ) ),
    inference(negated_conjecture,[],[f3])).

fof(f3,conjecture,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_xboole_0(X0,X1)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_xboole_1)).

fof(f14,plain,(
    ~ sQ2_eqProxy(k1_xboole_0,sK0) ),
    inference(equality_proxy_replacement,[],[f10,f13])).

fof(f10,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f8])).

fof(f19,plain,(
    ! [X0] : sQ2_eqProxy(X0,X0) ),
    inference(equality_proxy_axiom,[],[f13])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n015.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:56:23 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.44  % (1950)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.21/0.44  % (1950)Refutation found. Thanks to Tanya!
% 0.21/0.44  % SZS status Theorem for theBenchmark
% 0.21/0.44  % SZS output start Proof for theBenchmark
% 0.21/0.44  fof(f78,plain,(
% 0.21/0.44    $false),
% 0.21/0.44    inference(unit_resulting_resolution,[],[f19,f14,f15,f60])).
% 0.21/0.44  fof(f60,plain,(
% 0.21/0.44    ( ! [X6,X4,X5] : (~sQ2_eqProxy(k1_xboole_0,k2_xboole_0(X4,X6)) | sQ2_eqProxy(k1_xboole_0,X5) | ~sQ2_eqProxy(X4,X5)) )),
% 0.21/0.44    inference(resolution,[],[f48,f20])).
% 0.21/0.44  fof(f20,plain,(
% 0.21/0.44    ( ! [X0,X1] : (sQ2_eqProxy(X1,X0) | ~sQ2_eqProxy(X0,X1)) )),
% 0.21/0.44    inference(equality_proxy_axiom,[],[f13])).
% 0.21/0.44  fof(f13,plain,(
% 0.21/0.44    ! [X1,X0] : (sQ2_eqProxy(X0,X1) <=> X0 = X1)),
% 0.21/0.44    introduced(equality_proxy_definition,[new_symbols(naming,[sQ2_eqProxy])])).
% 0.21/0.44  fof(f48,plain,(
% 0.21/0.44    ( ! [X2,X0,X1] : (~sQ2_eqProxy(k2_xboole_0(X0,X1),k1_xboole_0) | ~sQ2_eqProxy(X0,X2) | sQ2_eqProxy(k1_xboole_0,X2)) )),
% 0.21/0.44    inference(resolution,[],[f29,f12])).
% 0.21/0.44  fof(f12,plain,(
% 0.21/0.44    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 0.21/0.44    inference(cnf_transformation,[],[f2])).
% 0.21/0.44  fof(f2,axiom,(
% 0.21/0.44    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 0.21/0.44    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).
% 0.21/0.44  fof(f29,plain,(
% 0.21/0.44    ( ! [X2,X0,X1] : (~r1_tarski(X1,X0) | ~sQ2_eqProxy(X0,k1_xboole_0) | ~sQ2_eqProxy(X1,X2) | sQ2_eqProxy(k1_xboole_0,X2)) )),
% 0.21/0.44    inference(resolution,[],[f18,f16])).
% 0.21/0.44  fof(f16,plain,(
% 0.21/0.44    ( ! [X0] : (~r1_tarski(X0,k1_xboole_0) | sQ2_eqProxy(k1_xboole_0,X0)) )),
% 0.21/0.44    inference(equality_proxy_replacement,[],[f11,f13])).
% 0.21/0.44  fof(f11,plain,(
% 0.21/0.44    ( ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0)) )),
% 0.21/0.44    inference(cnf_transformation,[],[f6])).
% 0.21/0.44  fof(f6,plain,(
% 0.21/0.44    ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0))),
% 0.21/0.44    inference(ennf_transformation,[],[f1])).
% 0.21/0.44  fof(f1,axiom,(
% 0.21/0.44    ! [X0] : (r1_tarski(X0,k1_xboole_0) => k1_xboole_0 = X0)),
% 0.21/0.44    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_1)).
% 0.21/0.44  fof(f18,plain,(
% 0.21/0.44    ( ! [X2,X0,X3,X1] : (r1_tarski(X1,X3) | ~sQ2_eqProxy(X2,X3) | ~r1_tarski(X0,X2) | ~sQ2_eqProxy(X0,X1)) )),
% 0.21/0.44    inference(equality_proxy_axiom,[],[f13])).
% 0.21/0.44  fof(f15,plain,(
% 0.21/0.44    sQ2_eqProxy(k1_xboole_0,k2_xboole_0(sK0,sK1))),
% 0.21/0.44    inference(equality_proxy_replacement,[],[f9,f13])).
% 0.21/0.44  fof(f9,plain,(
% 0.21/0.44    k1_xboole_0 = k2_xboole_0(sK0,sK1)),
% 0.21/0.44    inference(cnf_transformation,[],[f8])).
% 0.21/0.44  fof(f8,plain,(
% 0.21/0.44    k1_xboole_0 != sK0 & k1_xboole_0 = k2_xboole_0(sK0,sK1)),
% 0.21/0.44    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f5,f7])).
% 0.21/0.44  fof(f7,plain,(
% 0.21/0.44    ? [X0,X1] : (k1_xboole_0 != X0 & k1_xboole_0 = k2_xboole_0(X0,X1)) => (k1_xboole_0 != sK0 & k1_xboole_0 = k2_xboole_0(sK0,sK1))),
% 0.21/0.44    introduced(choice_axiom,[])).
% 0.21/0.44  fof(f5,plain,(
% 0.21/0.44    ? [X0,X1] : (k1_xboole_0 != X0 & k1_xboole_0 = k2_xboole_0(X0,X1))),
% 0.21/0.44    inference(ennf_transformation,[],[f4])).
% 0.21/0.44  fof(f4,negated_conjecture,(
% 0.21/0.44    ~! [X0,X1] : (k1_xboole_0 = k2_xboole_0(X0,X1) => k1_xboole_0 = X0)),
% 0.21/0.44    inference(negated_conjecture,[],[f3])).
% 0.21/0.44  fof(f3,conjecture,(
% 0.21/0.44    ! [X0,X1] : (k1_xboole_0 = k2_xboole_0(X0,X1) => k1_xboole_0 = X0)),
% 0.21/0.44    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_xboole_1)).
% 0.21/0.44  fof(f14,plain,(
% 0.21/0.44    ~sQ2_eqProxy(k1_xboole_0,sK0)),
% 0.21/0.44    inference(equality_proxy_replacement,[],[f10,f13])).
% 0.21/0.44  fof(f10,plain,(
% 0.21/0.44    k1_xboole_0 != sK0),
% 0.21/0.44    inference(cnf_transformation,[],[f8])).
% 0.21/0.44  fof(f19,plain,(
% 0.21/0.44    ( ! [X0] : (sQ2_eqProxy(X0,X0)) )),
% 0.21/0.44    inference(equality_proxy_axiom,[],[f13])).
% 0.21/0.44  % SZS output end Proof for theBenchmark
% 0.21/0.44  % (1950)------------------------------
% 0.21/0.44  % (1950)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.44  % (1950)Termination reason: Refutation
% 0.21/0.44  
% 0.21/0.44  % (1950)Memory used [KB]: 6140
% 0.21/0.44  % (1950)Time elapsed: 0.041 s
% 0.21/0.44  % (1950)------------------------------
% 0.21/0.44  % (1950)------------------------------
% 0.21/0.45  % (1942)Success in time 0.086 s
%------------------------------------------------------------------------------
