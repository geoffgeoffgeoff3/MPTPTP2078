%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:42:53 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   69 ( 125 expanded)
%              Number of leaves         :   14 (  36 expanded)
%              Depth                    :   13
%              Number of atoms          :  101 ( 199 expanded)
%              Number of equality atoms :   63 ( 117 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f588,plain,(
    $false ),
    inference(subsumption_resolution,[],[f587,f32])).

fof(f32,plain,(
    sK1 != k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0)) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,
    ( sK1 != k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0))
    & r2_hidden(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f26])).

fof(f26,plain,
    ( ? [X0,X1] :
        ( k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) != X1
        & r2_hidden(X0,X1) )
   => ( sK1 != k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0))
      & r2_hidden(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ? [X0,X1] :
      ( k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) != X1
      & r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1] :
        ( r2_hidden(X0,X1)
       => k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) = X1 ) ),
    inference(negated_conjecture,[],[f20])).

fof(f20,conjecture,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t140_zfmisc_1)).

fof(f587,plain,(
    sK1 = k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0)) ),
    inference(forward_demodulation,[],[f564,f176])).

fof(f176,plain,(
    sK1 = k2_xboole_0(sK1,k1_tarski(sK0)) ),
    inference(backward_demodulation,[],[f89,f169])).

fof(f169,plain,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(forward_demodulation,[],[f159,f60])).

fof(f60,plain,(
    ! [X1] : k3_xboole_0(X1,X1) = X1 ),
    inference(resolution,[],[f44,f55])).

fof(f55,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f46])).

fof(f46,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f28])).

fof(f28,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k3_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f159,plain,(
    ! [X1] : k3_xboole_0(X1,X1) = k4_xboole_0(X1,k1_xboole_0) ),
    inference(superposition,[],[f41,f64])).

fof(f64,plain,(
    ! [X1] : k1_xboole_0 = k4_xboole_0(X1,X1) ),
    inference(resolution,[],[f50,f55])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).

fof(f41,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f89,plain,(
    k2_xboole_0(sK1,k1_tarski(sK0)) = k4_xboole_0(sK1,k1_xboole_0) ),
    inference(backward_demodulation,[],[f77,f88])).

fof(f88,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f83,f40])).

fof(f40,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f83,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) ),
    inference(superposition,[],[f43,f34])).

fof(f34,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

fof(f43,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_xboole_1)).

fof(f77,plain,(
    k2_xboole_0(sK1,k1_tarski(sK0)) = k2_xboole_0(sK1,k1_xboole_0) ),
    inference(superposition,[],[f42,f66])).

fof(f66,plain,(
    k1_xboole_0 = k4_xboole_0(k1_tarski(sK0),sK1) ),
    inference(resolution,[],[f50,f57])).

fof(f57,plain,(
    r1_tarski(k1_tarski(sK0),sK1) ),
    inference(resolution,[],[f48,f31])).

% (18227)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
fof(f31,plain,(
    r2_hidden(sK0,sK1) ),
    inference(cnf_transformation,[],[f27])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(k1_tarski(X0),X1) ) ),
    inference(unused_predicate_definition_removal,[],[f18])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(f42,plain,(
    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(f564,plain,(
    k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0)) = k2_xboole_0(sK1,k1_tarski(sK0)) ),
    inference(superposition,[],[f267,f146])).

fof(f146,plain,(
    k1_tarski(sK0) = k3_xboole_0(sK1,k1_tarski(sK0)) ),
    inference(superposition,[],[f62,f37])).

fof(f37,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f62,plain,(
    k1_tarski(sK0) = k3_xboole_0(k1_tarski(sK0),sK1) ),
    inference(resolution,[],[f44,f57])).

fof(f267,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X1)) = k2_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(backward_demodulation,[],[f72,f265])).

fof(f265,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),X0) = k2_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(backward_demodulation,[],[f232,f264])).

fof(f264,plain,(
    ! [X2,X1] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = k5_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,X2)) ),
    inference(backward_demodulation,[],[f84,f263])).

fof(f263,plain,(
    ! [X2,X3] : k3_xboole_0(X2,X3) = k3_xboole_0(X2,k3_xboole_0(X2,X3)) ),
    inference(forward_demodulation,[],[f253,f41])).

fof(f253,plain,(
    ! [X2,X3] : k4_xboole_0(X2,k4_xboole_0(X2,X3)) = k3_xboole_0(X2,k3_xboole_0(X2,X3)) ),
    inference(superposition,[],[f41,f215])).

fof(f215,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(backward_demodulation,[],[f69,f206])).

fof(f206,plain,(
    ! [X2,X3] : k4_xboole_0(X2,X3) = k3_xboole_0(X2,k4_xboole_0(X2,X3)) ),
    inference(superposition,[],[f61,f37])).

fof(f61,plain,(
    ! [X2,X3] : k4_xboole_0(X2,X3) = k3_xboole_0(k4_xboole_0(X2,X3),X2) ),
    inference(resolution,[],[f44,f36])).

fof(f36,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f69,plain,(
    ! [X0,X1] : k3_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(superposition,[],[f41,f41])).

fof(f84,plain,(
    ! [X2,X1] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = k5_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,k3_xboole_0(X1,X2))) ),
    inference(superposition,[],[f43,f40])).

fof(f232,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),X0) = k5_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(superposition,[],[f104,f41])).

fof(f104,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(forward_demodulation,[],[f95,f67])).

fof(f67,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X1,X0)) ),
    inference(superposition,[],[f40,f37])).

fof(f95,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X0,X1))) ),
    inference(superposition,[],[f52,f43])).

fof(f52,plain,(
    ! [X2,X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_xboole_1)).

fof(f72,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),X0) = k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(superposition,[],[f42,f41])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n005.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 10:35:48 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.22/0.53  % (18230)lrs+11_3_afr=on:afp=10000:afq=1.0:cond=fast:fsr=off:fde=none:gs=on:gsem=off:lcm=reverse:nm=2:newcnf=on:nwc=1:sas=z3:stl=30:sd=10:ss=axioms:st=2.0:sos=all:sp=reverse_arity:urr=on:uhcvi=on_23 on theBenchmark
% 0.22/0.53  % (18229)lrs+1_8:1_av=off:cond=fast:fde=unused:lcm=predicate:nm=16:nwc=10:stl=60:sp=occurrence:urr=ec_only_3 on theBenchmark
% 0.22/0.54  % (18225)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 0.22/0.54  % (18245)dis+1010_4_acc=on:afr=on:afp=1000:afq=2.0:anc=none:bd=off:bs=unit_only:bsr=on:ccuc=small_ones:cond=fast:fsr=off:gs=on:gsem=off:lcm=reverse:lma=on:nm=64:nwc=2.5:nicw=on:sd=3:ss=axioms:st=3.0:sac=on:urr=ec_only:updr=off:uhcvi=on_83 on theBenchmark
% 0.22/0.55  % (18246)dis-11_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:gs=on:irw=on:lcm=reverse:nm=6:nwc=1:sd=4:ss=axioms:st=3.0:sos=on:sac=on_1 on theBenchmark
% 0.22/0.55  % (18237)dis+1011_3_afp=4000:afq=1.1:amm=sco:anc=none:gs=on:gsaa=from_current:gsem=off:irw=on:nm=16:nwc=1:sas=z3:ss=axioms:sos=all:sac=on:sp=reverse_arity:updr=off_17 on theBenchmark
% 0.22/0.55  % (18222)dis+10_16_awrs=decay:awrsf=256:afr=on:afp=40000:afq=2.0:amm=off:bsr=on:cond=on:er=known:gsp=input_only:irw=on:lma=on:nm=6:newcnf=on:nwc=3:sas=z3:sd=4:ss=axioms:s2a=on:sp=frequency:updr=off_8 on theBenchmark
% 0.22/0.55  % (18224)dis+1_5:1_aac=none:afr=on:afp=100000:afq=1.4:amm=sco:anc=none:br=off:gsp=input_only:gs=on:gsem=on:lcm=reverse:nm=6:nwc=1:nicw=on:sas=z3:sos=on:urr=on_1 on theBenchmark
% 0.22/0.55  % (18238)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_9 on theBenchmark
% 0.22/0.55  % (18228)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.55  % (18238)Refutation not found, incomplete strategy% (18238)------------------------------
% 0.22/0.55  % (18238)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.55  % (18238)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.55  
% 0.22/0.55  % (18238)Memory used [KB]: 10618
% 0.22/0.55  % (18238)Time elapsed: 0.125 s
% 0.22/0.55  % (18238)------------------------------
% 0.22/0.55  % (18238)------------------------------
% 0.22/0.56  % (18247)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_91 on theBenchmark
% 0.22/0.56  % (18231)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 0.22/0.56  % (18236)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 0.22/0.56  % (18229)Refutation found. Thanks to Tanya!
% 0.22/0.56  % SZS status Theorem for theBenchmark
% 0.22/0.56  % SZS output start Proof for theBenchmark
% 0.22/0.56  fof(f588,plain,(
% 0.22/0.56    $false),
% 0.22/0.56    inference(subsumption_resolution,[],[f587,f32])).
% 0.22/0.56  fof(f32,plain,(
% 0.22/0.56    sK1 != k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0))),
% 0.22/0.56    inference(cnf_transformation,[],[f27])).
% 0.22/0.56  fof(f27,plain,(
% 0.22/0.56    sK1 != k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0)) & r2_hidden(sK0,sK1)),
% 0.22/0.56    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f26])).
% 0.22/0.56  fof(f26,plain,(
% 0.22/0.56    ? [X0,X1] : (k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) != X1 & r2_hidden(X0,X1)) => (sK1 != k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0)) & r2_hidden(sK0,sK1))),
% 0.22/0.56    introduced(choice_axiom,[])).
% 0.22/0.56  fof(f23,plain,(
% 0.22/0.56    ? [X0,X1] : (k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) != X1 & r2_hidden(X0,X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f21])).
% 0.22/0.56  fof(f21,negated_conjecture,(
% 0.22/0.56    ~! [X0,X1] : (r2_hidden(X0,X1) => k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) = X1)),
% 0.22/0.56    inference(negated_conjecture,[],[f20])).
% 0.22/0.56  fof(f20,conjecture,(
% 0.22/0.56    ! [X0,X1] : (r2_hidden(X0,X1) => k2_xboole_0(k4_xboole_0(X1,k1_tarski(X0)),k1_tarski(X0)) = X1)),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t140_zfmisc_1)).
% 0.22/0.56  fof(f587,plain,(
% 0.22/0.56    sK1 = k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0))),
% 0.22/0.56    inference(forward_demodulation,[],[f564,f176])).
% 0.22/0.56  fof(f176,plain,(
% 0.22/0.56    sK1 = k2_xboole_0(sK1,k1_tarski(sK0))),
% 0.22/0.56    inference(backward_demodulation,[],[f89,f169])).
% 0.22/0.56  fof(f169,plain,(
% 0.22/0.56    ( ! [X1] : (k4_xboole_0(X1,k1_xboole_0) = X1) )),
% 0.22/0.56    inference(forward_demodulation,[],[f159,f60])).
% 0.22/0.56  fof(f60,plain,(
% 0.22/0.56    ( ! [X1] : (k3_xboole_0(X1,X1) = X1) )),
% 0.22/0.56    inference(resolution,[],[f44,f55])).
% 0.22/0.56  fof(f55,plain,(
% 0.22/0.56    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 0.22/0.56    inference(equality_resolution,[],[f46])).
% 0.22/0.56  fof(f46,plain,(
% 0.22/0.56    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 0.22/0.56    inference(cnf_transformation,[],[f29])).
% 0.22/0.56  fof(f29,plain,(
% 0.22/0.56    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.22/0.56    inference(flattening,[],[f28])).
% 0.22/0.56  fof(f28,plain,(
% 0.22/0.56    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.22/0.56    inference(nnf_transformation,[],[f2])).
% 0.22/0.56  fof(f2,axiom,(
% 0.22/0.56    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).
% 0.22/0.56  fof(f44,plain,(
% 0.22/0.56    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0) )),
% 0.22/0.56    inference(cnf_transformation,[],[f24])).
% 0.22/0.56  fof(f24,plain,(
% 0.22/0.56    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f6])).
% 0.22/0.56  fof(f6,axiom,(
% 0.22/0.56    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.22/0.56  fof(f159,plain,(
% 0.22/0.56    ( ! [X1] : (k3_xboole_0(X1,X1) = k4_xboole_0(X1,k1_xboole_0)) )),
% 0.22/0.56    inference(superposition,[],[f41,f64])).
% 0.22/0.56  fof(f64,plain,(
% 0.22/0.56    ( ! [X1] : (k1_xboole_0 = k4_xboole_0(X1,X1)) )),
% 0.22/0.56    inference(resolution,[],[f50,f55])).
% 0.22/0.56  fof(f50,plain,(
% 0.22/0.56    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0) )),
% 0.22/0.56    inference(cnf_transformation,[],[f30])).
% 0.22/0.56  fof(f30,plain,(
% 0.22/0.56    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 0.22/0.56    inference(nnf_transformation,[],[f3])).
% 0.22/0.56  fof(f3,axiom,(
% 0.22/0.56    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).
% 0.22/0.56  fof(f41,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(cnf_transformation,[],[f10])).
% 0.22/0.56  fof(f10,axiom,(
% 0.22/0.56    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).
% 0.22/0.56  fof(f89,plain,(
% 0.22/0.56    k2_xboole_0(sK1,k1_tarski(sK0)) = k4_xboole_0(sK1,k1_xboole_0)),
% 0.22/0.56    inference(backward_demodulation,[],[f77,f88])).
% 0.22/0.56  fof(f88,plain,(
% 0.22/0.56    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.56    inference(forward_demodulation,[],[f83,f40])).
% 0.22/0.56  fof(f40,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(cnf_transformation,[],[f4])).
% 0.22/0.56  fof(f4,axiom,(
% 0.22/0.56    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.22/0.56  fof(f83,plain,(
% 0.22/0.56    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0))) )),
% 0.22/0.56    inference(superposition,[],[f43,f34])).
% 0.22/0.56  fof(f34,plain,(
% 0.22/0.56    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.22/0.56    inference(cnf_transformation,[],[f11])).
% 0.22/0.56  fof(f11,axiom,(
% 0.22/0.56    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).
% 0.22/0.56  fof(f43,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(cnf_transformation,[],[f13])).
% 0.22/0.56  fof(f13,axiom,(
% 0.22/0.56    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_xboole_1)).
% 0.22/0.56  fof(f77,plain,(
% 0.22/0.56    k2_xboole_0(sK1,k1_tarski(sK0)) = k2_xboole_0(sK1,k1_xboole_0)),
% 0.22/0.56    inference(superposition,[],[f42,f66])).
% 0.22/0.56  fof(f66,plain,(
% 0.22/0.56    k1_xboole_0 = k4_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.56    inference(resolution,[],[f50,f57])).
% 0.22/0.56  fof(f57,plain,(
% 0.22/0.56    r1_tarski(k1_tarski(sK0),sK1)),
% 0.22/0.56    inference(resolution,[],[f48,f31])).
% 0.22/0.56  % (18227)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 0.22/0.56  fof(f31,plain,(
% 0.22/0.56    r2_hidden(sK0,sK1)),
% 0.22/0.56    inference(cnf_transformation,[],[f27])).
% 0.22/0.56  fof(f48,plain,(
% 0.22/0.56    ( ! [X0,X1] : (~r2_hidden(X0,X1) | r1_tarski(k1_tarski(X0),X1)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f25])).
% 0.22/0.56  fof(f25,plain,(
% 0.22/0.56    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f22])).
% 0.22/0.56  fof(f22,plain,(
% 0.22/0.56    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(k1_tarski(X0),X1))),
% 0.22/0.56    inference(unused_predicate_definition_removal,[],[f18])).
% 0.22/0.56  fof(f18,axiom,(
% 0.22/0.56    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).
% 0.22/0.56  fof(f42,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f9])).
% 0.22/0.56  fof(f9,axiom,(
% 0.22/0.56    ! [X0,X1] : k2_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).
% 0.22/0.56  fof(f564,plain,(
% 0.22/0.56    k2_xboole_0(k4_xboole_0(sK1,k1_tarski(sK0)),k1_tarski(sK0)) = k2_xboole_0(sK1,k1_tarski(sK0))),
% 0.22/0.56    inference(superposition,[],[f267,f146])).
% 0.22/0.56  fof(f146,plain,(
% 0.22/0.56    k1_tarski(sK0) = k3_xboole_0(sK1,k1_tarski(sK0))),
% 0.22/0.56    inference(superposition,[],[f62,f37])).
% 0.22/0.56  fof(f37,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f1])).
% 0.22/0.56  fof(f1,axiom,(
% 0.22/0.56    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.22/0.56  fof(f62,plain,(
% 0.22/0.56    k1_tarski(sK0) = k3_xboole_0(k1_tarski(sK0),sK1)),
% 0.22/0.56    inference(resolution,[],[f44,f57])).
% 0.22/0.56  fof(f267,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X1)) = k2_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(backward_demodulation,[],[f72,f265])).
% 0.22/0.56  fof(f265,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),X0) = k2_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(backward_demodulation,[],[f232,f264])).
% 0.22/0.56  fof(f264,plain,(
% 0.22/0.56    ( ! [X2,X1] : (k2_xboole_0(X1,k3_xboole_0(X1,X2)) = k5_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,X2))) )),
% 0.22/0.56    inference(backward_demodulation,[],[f84,f263])).
% 0.22/0.56  fof(f263,plain,(
% 0.22/0.56    ( ! [X2,X3] : (k3_xboole_0(X2,X3) = k3_xboole_0(X2,k3_xboole_0(X2,X3))) )),
% 0.22/0.56    inference(forward_demodulation,[],[f253,f41])).
% 0.22/0.56  fof(f253,plain,(
% 0.22/0.56    ( ! [X2,X3] : (k4_xboole_0(X2,k4_xboole_0(X2,X3)) = k3_xboole_0(X2,k3_xboole_0(X2,X3))) )),
% 0.22/0.56    inference(superposition,[],[f41,f215])).
% 0.22/0.56  fof(f215,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(backward_demodulation,[],[f69,f206])).
% 0.22/0.56  fof(f206,plain,(
% 0.22/0.56    ( ! [X2,X3] : (k4_xboole_0(X2,X3) = k3_xboole_0(X2,k4_xboole_0(X2,X3))) )),
% 0.22/0.56    inference(superposition,[],[f61,f37])).
% 0.22/0.56  fof(f61,plain,(
% 0.22/0.56    ( ! [X2,X3] : (k4_xboole_0(X2,X3) = k3_xboole_0(k4_xboole_0(X2,X3),X2)) )),
% 0.22/0.56    inference(resolution,[],[f44,f36])).
% 0.22/0.56  fof(f36,plain,(
% 0.22/0.56    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f8])).
% 0.22/0.56  fof(f8,axiom,(
% 0.22/0.56    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).
% 0.22/0.56  fof(f69,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(superposition,[],[f41,f41])).
% 0.22/0.56  fof(f84,plain,(
% 0.22/0.56    ( ! [X2,X1] : (k2_xboole_0(X1,k3_xboole_0(X1,X2)) = k5_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,k3_xboole_0(X1,X2)))) )),
% 0.22/0.56    inference(superposition,[],[f43,f40])).
% 0.22/0.56  fof(f232,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),X0) = k5_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(superposition,[],[f104,f41])).
% 0.22/0.56  fof(f104,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 0.22/0.56    inference(forward_demodulation,[],[f95,f67])).
% 0.22/0.56  fof(f67,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X1,X0))) )),
% 0.22/0.56    inference(superposition,[],[f40,f37])).
% 0.22/0.56  fof(f95,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X0,X1)))) )),
% 0.22/0.56    inference(superposition,[],[f52,f43])).
% 0.22/0.56  fof(f52,plain,(
% 0.22/0.56    ( ! [X2,X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))) )),
% 0.22/0.56    inference(cnf_transformation,[],[f12])).
% 0.22/0.56  fof(f12,axiom,(
% 0.22/0.56    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))),
% 0.22/0.56    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_xboole_1)).
% 0.22/0.56  fof(f72,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),X0) = k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X1))) )),
% 0.22/0.56    inference(superposition,[],[f42,f41])).
% 0.22/0.56  % SZS output end Proof for theBenchmark
% 0.22/0.56  % (18229)------------------------------
% 0.22/0.56  % (18229)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (18229)Termination reason: Refutation
% 0.22/0.56  
% 0.22/0.56  % (18229)Memory used [KB]: 2174
% 0.22/0.56  % (18229)Time elapsed: 0.135 s
% 0.22/0.56  % (18229)------------------------------
% 0.22/0.56  % (18229)------------------------------
% 0.22/0.56  % (18242)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_13 on theBenchmark
% 0.22/0.56  % (18221)Success in time 0.2 s
%------------------------------------------------------------------------------
