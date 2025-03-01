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
% DateTime   : Thu Dec  3 12:48:36 EST 2020

% Result     : Theorem 1.51s
% Output     : Refutation 1.51s
% Verified   : 
% Statistics : Number of formulae       :   50 (  99 expanded)
%              Number of leaves         :   10 (  25 expanded)
%              Depth                    :   13
%              Number of atoms          :  102 ( 203 expanded)
%              Number of equality atoms :   33 (  76 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f446,plain,(
    $false ),
    inference(subsumption_resolution,[],[f445,f171])).

fof(f171,plain,(
    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(superposition,[],[f28,f146])).

fof(f146,plain,(
    ! [X2,X3] : k7_relat_1(k7_relat_1(sK2,X2),X3) = k7_relat_1(k7_relat_1(sK2,X3),X2) ),
    inference(superposition,[],[f69,f53])).

fof(f53,plain,(
    ! [X2,X3] : k7_relat_1(k7_relat_1(sK2,X2),X3) = k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X2,X2,X2,X3))) ),
    inference(resolution,[],[f26,f51])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) ) ),
    inference(definition_unfolding,[],[f43,f48])).

fof(f48,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f35,f47])).

fof(f47,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f34,f42])).

fof(f42,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f34,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f35,plain,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_relat_1)).

fof(f26,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ? [X0,X1,X2] :
      ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ? [X0,X1,X2] :
      ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0)
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r1_tarski(X0,X1)
         => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t103_relat_1)).

fof(f69,plain,(
    ! [X0,X1] : k7_relat_1(k7_relat_1(sK2,X0),X1) = k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))) ),
    inference(superposition,[],[f53,f49])).

fof(f49,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f33,f47,f47])).

fof(f33,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f28,plain,(
    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0) ),
    inference(cnf_transformation,[],[f17])).

fof(f445,plain,(
    k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(resolution,[],[f429,f26])).

fof(f429,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k7_relat_1(X0,sK0) = k7_relat_1(k7_relat_1(X0,sK0),sK1) ) ),
    inference(subsumption_resolution,[],[f428,f36])).

fof(f36,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(f428,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_relat_1(k7_relat_1(X0,sK0))
      | k7_relat_1(X0,sK0) = k7_relat_1(k7_relat_1(X0,sK0),sK1) ) ),
    inference(subsumption_resolution,[],[f418,f38])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1)
      | k7_relat_1(X1,X0) = X1 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t97_relat_1)).

fof(f418,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | ~ v1_relat_1(k7_relat_1(X0,sK0))
      | k7_relat_1(X0,sK0) = k7_relat_1(k7_relat_1(X0,sK0),sK1)
      | r1_tarski(k1_relat_1(k7_relat_1(X0,sK0)),sK1) ) ),
    inference(resolution,[],[f67,f40])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(f67,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK3(k1_relat_1(X1),sK1),k1_relat_1(k7_relat_1(X0,sK0)))
      | ~ v1_relat_1(X0)
      | ~ v1_relat_1(X1)
      | k7_relat_1(X1,sK1) = X1 ) ),
    inference(resolution,[],[f62,f38])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,sK1)
      | ~ v1_relat_1(X1)
      | ~ r2_hidden(sK3(X0,sK1),k1_relat_1(k7_relat_1(X1,sK0))) ) ),
    inference(resolution,[],[f60,f44])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ v1_relat_1(X2)
      | ~ r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
      <=> ( r2_hidden(X0,k1_relat_1(X2))
          & r2_hidden(X0,X1) ) )
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))
      <=> ( r2_hidden(X0,k1_relat_1(X2))
          & r2_hidden(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_relat_1)).

fof(f60,plain,(
    ! [X0] :
      ( ~ r2_hidden(sK3(X0,sK1),sK0)
      | r1_tarski(X0,sK1) ) ),
    inference(resolution,[],[f56,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK3(X0,X1),X1)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f56,plain,(
    ! [X0] :
      ( r2_hidden(X0,sK1)
      | ~ r2_hidden(X0,sK0) ) ),
    inference(resolution,[],[f27,f39])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f27,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f17])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 12:28:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.52  % (30471)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.21/0.52  % (30478)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.21/0.52  % (30485)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.21/0.54  % (30470)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.21/0.54  % (30474)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.21/0.54  % (30476)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 1.35/0.54  % (30488)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 1.35/0.54  % (30475)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 1.35/0.55  % (30499)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 1.35/0.55  % (30480)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 1.35/0.55  % (30472)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 1.35/0.55  % (30492)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 1.35/0.55  % (30490)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 1.35/0.56  % (30487)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 1.35/0.56  % (30487)Refutation not found, incomplete strategy% (30487)------------------------------
% 1.35/0.56  % (30487)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.35/0.56  % (30487)Termination reason: Refutation not found, incomplete strategy
% 1.35/0.56  
% 1.35/0.56  % (30487)Memory used [KB]: 10618
% 1.35/0.56  % (30487)Time elapsed: 0.134 s
% 1.35/0.56  % (30487)------------------------------
% 1.35/0.56  % (30487)------------------------------
% 1.35/0.56  % (30493)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 1.35/0.56  % (30484)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 1.35/0.56  % (30479)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 1.35/0.56  % (30491)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 1.35/0.56  % (30482)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 1.35/0.56  % (30496)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 1.51/0.56  % (30498)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.51/0.56  % (30483)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 1.51/0.57  % (30473)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 1.51/0.57  % (30494)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 1.51/0.57  % (30495)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 1.51/0.57  % (30486)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 1.51/0.57  % (30492)Refutation not found, incomplete strategy% (30492)------------------------------
% 1.51/0.57  % (30492)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.51/0.57  % (30492)Termination reason: Refutation not found, incomplete strategy
% 1.51/0.57  
% 1.51/0.57  % (30492)Memory used [KB]: 10746
% 1.51/0.57  % (30492)Time elapsed: 0.158 s
% 1.51/0.57  % (30492)------------------------------
% 1.51/0.57  % (30492)------------------------------
% 1.51/0.58  % (30477)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 1.51/0.58  % (30497)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 1.51/0.59  % (30491)Refutation found. Thanks to Tanya!
% 1.51/0.59  % SZS status Theorem for theBenchmark
% 1.51/0.59  % SZS output start Proof for theBenchmark
% 1.51/0.59  fof(f446,plain,(
% 1.51/0.59    $false),
% 1.51/0.59    inference(subsumption_resolution,[],[f445,f171])).
% 1.51/0.59  fof(f171,plain,(
% 1.51/0.59    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)),
% 1.51/0.59    inference(superposition,[],[f28,f146])).
% 1.51/0.59  fof(f146,plain,(
% 1.51/0.59    ( ! [X2,X3] : (k7_relat_1(k7_relat_1(sK2,X2),X3) = k7_relat_1(k7_relat_1(sK2,X3),X2)) )),
% 1.51/0.59    inference(superposition,[],[f69,f53])).
% 1.51/0.59  fof(f53,plain,(
% 1.51/0.59    ( ! [X2,X3] : (k7_relat_1(k7_relat_1(sK2,X2),X3) = k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X2,X2,X2,X3)))) )),
% 1.51/0.59    inference(resolution,[],[f26,f51])).
% 1.51/0.59  fof(f51,plain,(
% 1.51/0.59    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1)))) )),
% 1.51/0.59    inference(definition_unfolding,[],[f43,f48])).
% 1.51/0.59  fof(f48,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) )),
% 1.51/0.59    inference(definition_unfolding,[],[f35,f47])).
% 1.51/0.59  fof(f47,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.51/0.59    inference(definition_unfolding,[],[f34,f42])).
% 1.51/0.59  fof(f42,plain,(
% 1.51/0.59    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f4])).
% 1.51/0.59  fof(f4,axiom,(
% 1.51/0.59    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.51/0.59  fof(f34,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f3])).
% 1.51/0.59  fof(f3,axiom,(
% 1.51/0.59    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.51/0.59  fof(f35,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f5])).
% 1.51/0.59  fof(f5,axiom,(
% 1.51/0.59    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k3_xboole_0(X0,X1)),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).
% 1.51/0.59  fof(f43,plain,(
% 1.51/0.59    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1))) )),
% 1.51/0.59    inference(cnf_transformation,[],[f24])).
% 1.51/0.59  fof(f24,plain,(
% 1.51/0.59    ! [X0,X1,X2] : (k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)) | ~v1_relat_1(X2))),
% 1.51/0.59    inference(ennf_transformation,[],[f8])).
% 1.51/0.59  fof(f8,axiom,(
% 1.51/0.59    ! [X0,X1,X2] : (v1_relat_1(X2) => k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)))),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_relat_1)).
% 1.51/0.59  fof(f26,plain,(
% 1.51/0.59    v1_relat_1(sK2)),
% 1.51/0.59    inference(cnf_transformation,[],[f17])).
% 1.51/0.59  fof(f17,plain,(
% 1.51/0.59    ? [X0,X1,X2] : (k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) & r1_tarski(X0,X1) & v1_relat_1(X2))),
% 1.51/0.59    inference(flattening,[],[f16])).
% 1.51/0.59  fof(f16,plain,(
% 1.51/0.59    ? [X0,X1,X2] : ((k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X1),X0) & r1_tarski(X0,X1)) & v1_relat_1(X2))),
% 1.51/0.59    inference(ennf_transformation,[],[f15])).
% 1.51/0.59  fof(f15,negated_conjecture,(
% 1.51/0.59    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)))),
% 1.51/0.59    inference(negated_conjecture,[],[f14])).
% 1.51/0.59  fof(f14,conjecture,(
% 1.51/0.59    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X1),X0)))),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t103_relat_1)).
% 1.51/0.59  fof(f69,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k7_relat_1(k7_relat_1(sK2,X0),X1) = k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) )),
% 1.51/0.59    inference(superposition,[],[f53,f49])).
% 1.51/0.59  fof(f49,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0)) )),
% 1.51/0.59    inference(definition_unfolding,[],[f33,f47,f47])).
% 1.51/0.59  fof(f33,plain,(
% 1.51/0.59    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f2])).
% 1.51/0.59  fof(f2,axiom,(
% 1.51/0.59    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 1.51/0.59  fof(f28,plain,(
% 1.51/0.59    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK1),sK0)),
% 1.51/0.59    inference(cnf_transformation,[],[f17])).
% 1.51/0.59  fof(f445,plain,(
% 1.51/0.59    k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK0),sK1)),
% 1.51/0.59    inference(resolution,[],[f429,f26])).
% 1.51/0.59  fof(f429,plain,(
% 1.51/0.59    ( ! [X0] : (~v1_relat_1(X0) | k7_relat_1(X0,sK0) = k7_relat_1(k7_relat_1(X0,sK0),sK1)) )),
% 1.51/0.59    inference(subsumption_resolution,[],[f428,f36])).
% 1.51/0.59  fof(f36,plain,(
% 1.51/0.59    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f19])).
% 1.51/0.59  fof(f19,plain,(
% 1.51/0.59    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 1.51/0.59    inference(ennf_transformation,[],[f7])).
% 1.51/0.59  fof(f7,axiom,(
% 1.51/0.59    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).
% 1.51/0.59  fof(f428,plain,(
% 1.51/0.59    ( ! [X0] : (~v1_relat_1(X0) | ~v1_relat_1(k7_relat_1(X0,sK0)) | k7_relat_1(X0,sK0) = k7_relat_1(k7_relat_1(X0,sK0),sK1)) )),
% 1.51/0.59    inference(subsumption_resolution,[],[f418,f38])).
% 1.51/0.59  fof(f38,plain,(
% 1.51/0.59    ( ! [X0,X1] : (~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1) | k7_relat_1(X1,X0) = X1) )),
% 1.51/0.59    inference(cnf_transformation,[],[f22])).
% 1.51/0.59  fof(f22,plain,(
% 1.51/0.59    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 1.51/0.59    inference(flattening,[],[f21])).
% 1.51/0.59  fof(f21,plain,(
% 1.51/0.59    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.51/0.59    inference(ennf_transformation,[],[f12])).
% 1.51/0.59  fof(f12,axiom,(
% 1.51/0.59    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t97_relat_1)).
% 1.51/0.59  fof(f418,plain,(
% 1.51/0.59    ( ! [X0] : (~v1_relat_1(X0) | ~v1_relat_1(k7_relat_1(X0,sK0)) | k7_relat_1(X0,sK0) = k7_relat_1(k7_relat_1(X0,sK0),sK1) | r1_tarski(k1_relat_1(k7_relat_1(X0,sK0)),sK1)) )),
% 1.51/0.59    inference(resolution,[],[f67,f40])).
% 1.51/0.59  fof(f40,plain,(
% 1.51/0.59    ( ! [X0,X1] : (r2_hidden(sK3(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f23])).
% 1.51/0.59  fof(f23,plain,(
% 1.51/0.59    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.51/0.59    inference(ennf_transformation,[],[f1])).
% 1.51/0.59  fof(f1,axiom,(
% 1.51/0.59    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).
% 1.51/0.59  fof(f67,plain,(
% 1.51/0.59    ( ! [X0,X1] : (~r2_hidden(sK3(k1_relat_1(X1),sK1),k1_relat_1(k7_relat_1(X0,sK0))) | ~v1_relat_1(X0) | ~v1_relat_1(X1) | k7_relat_1(X1,sK1) = X1) )),
% 1.51/0.59    inference(resolution,[],[f62,f38])).
% 1.51/0.59  fof(f62,plain,(
% 1.51/0.59    ( ! [X0,X1] : (r1_tarski(X0,sK1) | ~v1_relat_1(X1) | ~r2_hidden(sK3(X0,sK1),k1_relat_1(k7_relat_1(X1,sK0)))) )),
% 1.51/0.59    inference(resolution,[],[f60,f44])).
% 1.51/0.59  fof(f44,plain,(
% 1.51/0.59    ( ! [X2,X0,X1] : (r2_hidden(X0,X1) | ~v1_relat_1(X2) | ~r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1)))) )),
% 1.51/0.59    inference(cnf_transformation,[],[f25])).
% 1.51/0.59  fof(f25,plain,(
% 1.51/0.59    ! [X0,X1,X2] : ((r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) <=> (r2_hidden(X0,k1_relat_1(X2)) & r2_hidden(X0,X1))) | ~v1_relat_1(X2))),
% 1.51/0.59    inference(ennf_transformation,[],[f10])).
% 1.51/0.59  fof(f10,axiom,(
% 1.51/0.59    ! [X0,X1,X2] : (v1_relat_1(X2) => (r2_hidden(X0,k1_relat_1(k7_relat_1(X2,X1))) <=> (r2_hidden(X0,k1_relat_1(X2)) & r2_hidden(X0,X1))))),
% 1.51/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_relat_1)).
% 1.51/0.59  fof(f60,plain,(
% 1.51/0.59    ( ! [X0] : (~r2_hidden(sK3(X0,sK1),sK0) | r1_tarski(X0,sK1)) )),
% 1.51/0.59    inference(resolution,[],[f56,f41])).
% 1.51/0.59  fof(f41,plain,(
% 1.51/0.59    ( ! [X0,X1] : (~r2_hidden(sK3(X0,X1),X1) | r1_tarski(X0,X1)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f23])).
% 1.51/0.59  fof(f56,plain,(
% 1.51/0.59    ( ! [X0] : (r2_hidden(X0,sK1) | ~r2_hidden(X0,sK0)) )),
% 1.51/0.59    inference(resolution,[],[f27,f39])).
% 1.51/0.59  fof(f39,plain,(
% 1.51/0.59    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 1.51/0.59    inference(cnf_transformation,[],[f23])).
% 1.51/0.59  fof(f27,plain,(
% 1.51/0.59    r1_tarski(sK0,sK1)),
% 1.51/0.59    inference(cnf_transformation,[],[f17])).
% 1.51/0.59  % SZS output end Proof for theBenchmark
% 1.51/0.59  % (30491)------------------------------
% 1.51/0.59  % (30491)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.51/0.59  % (30491)Termination reason: Refutation
% 1.51/0.59  
% 1.51/0.59  % (30491)Memory used [KB]: 2046
% 1.51/0.59  % (30491)Time elapsed: 0.173 s
% 1.51/0.59  % (30491)------------------------------
% 1.51/0.59  % (30491)------------------------------
% 1.51/0.59  % (30469)Success in time 0.219 s
%------------------------------------------------------------------------------
