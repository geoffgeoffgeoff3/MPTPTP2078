%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:41:47 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   46 (  58 expanded)
%              Number of leaves         :   11 (  16 expanded)
%              Depth                    :   14
%              Number of atoms          :  114 ( 174 expanded)
%              Number of equality atoms :   29 (  39 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f134,plain,(
    $false ),
    inference(subsumption_resolution,[],[f133,f37])).

fof(f37,plain,(
    ! [X0] : r1_tarski(X0,X0) ),
    inference(superposition,[],[f25,f24])).

fof(f24,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(f25,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(f133,plain,(
    ~ r1_tarski(sK0,sK0) ),
    inference(resolution,[],[f132,f35])).

fof(f35,plain,(
    ! [X0,X3] :
      ( r2_hidden(X3,k1_zfmisc_1(X0))
      | ~ r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f32])).

fof(f32,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK2(X0,X1),X0)
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( r1_tarski(sK2(X0,X1),X0)
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f20,f21])).

fof(f21,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK2(X0,X1),X0)
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( r1_tarski(sK2(X0,X1),X0)
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(f132,plain,(
    ~ r2_hidden(sK0,k1_zfmisc_1(sK0)) ),
    inference(trivial_inequality_removal,[],[f122])).

fof(f122,plain,
    ( sK0 != sK0
    | ~ r2_hidden(sK0,k1_zfmisc_1(sK0)) ),
    inference(superposition,[],[f23,f94])).

fof(f94,plain,(
    ! [X0] :
      ( k3_tarski(k1_zfmisc_1(X0)) = X0
      | ~ r2_hidden(X0,k1_zfmisc_1(X0)) ) ),
    inference(resolution,[],[f79,f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(X1))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(X0,k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l49_zfmisc_1)).

fof(f79,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,k3_tarski(k1_zfmisc_1(X0)))
      | k3_tarski(k1_zfmisc_1(X0)) = X0 ) ),
    inference(resolution,[],[f75,f50])).

fof(f50,plain,(
    ! [X4,X3] :
      ( ~ r1_tarski(X4,X3)
      | X3 = X4
      | ~ r1_tarski(X3,X4) ) ),
    inference(superposition,[],[f44,f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f44,plain,(
    ! [X4,X3] :
      ( k3_xboole_0(X4,X3) = X3
      | ~ r1_tarski(X3,X4) ) ),
    inference(superposition,[],[f28,f26])).

fof(f26,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f75,plain,(
    ! [X0] : r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X0) ),
    inference(duplicate_literal_removal,[],[f73])).

fof(f73,plain,(
    ! [X0] :
      ( r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X0)
      | r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X0) ) ),
    inference(resolution,[],[f58,f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(sK1(X0,X1),X1)
      | r1_tarski(k3_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_tarski(X0),X1)
      | ( ~ r1_tarski(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f14,f17])).

fof(f17,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r1_tarski(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r1_tarski(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_tarski(X0),X1)
      | ? [X2] :
          ( ~ r1_tarski(X2,X1)
          & r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
         => r1_tarski(X2,X1) )
     => r1_tarski(k3_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_zfmisc_1)).

fof(f58,plain,(
    ! [X0,X1] :
      ( r1_tarski(sK1(k1_zfmisc_1(X0),X1),X0)
      | r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X1) ) ),
    inference(resolution,[],[f29,f36])).

fof(f36,plain,(
    ! [X0,X3] :
      ( ~ r2_hidden(X3,k1_zfmisc_1(X0))
      | r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f31])).

fof(f31,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X0)
      | r1_tarski(k3_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f23,plain,(
    sK0 != k3_tarski(k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    sK0 != k3_tarski(k1_zfmisc_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f11,f15])).

fof(f15,plain,
    ( ? [X0] : k3_tarski(k1_zfmisc_1(X0)) != X0
   => sK0 != k3_tarski(k1_zfmisc_1(sK0)) ),
    introduced(choice_axiom,[])).

fof(f11,plain,(
    ? [X0] : k3_tarski(k1_zfmisc_1(X0)) != X0 ),
    inference(ennf_transformation,[],[f9])).

fof(f9,negated_conjecture,(
    ~ ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(negated_conjecture,[],[f8])).

fof(f8,conjecture,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_zfmisc_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:17:11 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.21/0.45  % (25430)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.21/0.47  % (25438)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_159 on theBenchmark
% 0.21/0.47  % (25427)lrs+1011_3:1_av=off:cond=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sos=all:updr=off_11 on theBenchmark
% 0.21/0.47  % (25425)lrs+1010_2:1_aac=none:afr=on:afp=10000:afq=1.4:amm=sco:anc=none:gs=on:gsem=off:irw=on:nm=16:nwc=3:stl=30_7 on theBenchmark
% 0.21/0.47  % (25438)Refutation not found, incomplete strategy% (25438)------------------------------
% 0.21/0.47  % (25438)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.47  % (25438)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.47  
% 0.21/0.47  % (25438)Memory used [KB]: 6012
% 0.21/0.47  % (25438)Time elapsed: 0.065 s
% 0.21/0.47  % (25438)------------------------------
% 0.21/0.47  % (25438)------------------------------
% 0.21/0.48  % (25436)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_81 on theBenchmark
% 0.21/0.48  % (25428)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.21/0.48  % (25437)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_129 on theBenchmark
% 0.21/0.48  % (25431)lrs+10_4_add=off:afp=100000:afq=2.0:anc=none:bd=off:er=known:gs=on:gsem=off:irw=on:lcm=reverse:nm=4:newcnf=on:nwc=2.5:sas=z3:stl=30:sac=on:urr=ec_only:updr=off_3 on theBenchmark
% 0.21/0.48  % (25439)ott+1002_7_acc=on:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bs=unit_only:gsp=input_only:gs=on:nm=2:nwc=10:sos=theory:sp=reverse_arity:urr=on:updr=off_45 on theBenchmark
% 0.21/0.48  % (25434)lrs+10_50_add=large:afp=40000:afq=1.2:amm=sco:anc=none:br=off:cond=on:fsr=off:gsp=input_only:gs=on:irw=on:lma=on:nm=64:nwc=1:stl=30:sos=all:sp=reverse_arity:urr=on_21 on theBenchmark
% 0.21/0.48  % (25434)Refutation not found, incomplete strategy% (25434)------------------------------
% 0.21/0.48  % (25434)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.48  % (25434)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.48  
% 0.21/0.48  % (25434)Memory used [KB]: 10490
% 0.21/0.48  % (25434)Time elapsed: 0.074 s
% 0.21/0.48  % (25434)------------------------------
% 0.21/0.48  % (25434)------------------------------
% 0.21/0.48  % (25436)Refutation not found, incomplete strategy% (25436)------------------------------
% 0.21/0.48  % (25436)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.48  % (25436)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.48  
% 0.21/0.48  % (25436)Memory used [KB]: 1535
% 0.21/0.48  % (25436)Time elapsed: 0.077 s
% 0.21/0.48  % (25436)------------------------------
% 0.21/0.48  % (25436)------------------------------
% 0.21/0.48  % (25423)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_2 on theBenchmark
% 0.21/0.48  % (25433)dis+11_2:1_add=large:afp=4000:afq=1.4:amm=sco:anc=none:fsr=off:nm=16:nwc=1:sd=3:ss=axioms:st=1.2:sos=all:urr=ec_only:updr=off_2 on theBenchmark
% 0.21/0.48  % (25433)Refutation not found, incomplete strategy% (25433)------------------------------
% 0.21/0.48  % (25433)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.48  % (25433)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.48  
% 0.21/0.48  % (25433)Memory used [KB]: 6012
% 0.21/0.48  % (25433)Time elapsed: 0.073 s
% 0.21/0.48  % (25433)------------------------------
% 0.21/0.48  % (25433)------------------------------
% 0.21/0.48  % (25429)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_38 on theBenchmark
% 0.21/0.49  % (25424)lrs+1002_8_add=large:afp=40000:afq=1.0:amm=off:anc=none:cond=on:gs=on:irw=on:nm=16:newcnf=on:nwc=1:stl=30:sos=on:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.49  % (25424)Refutation not found, incomplete strategy% (25424)------------------------------
% 0.21/0.49  % (25424)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.49  % (25424)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.49  
% 0.21/0.49  % (25424)Memory used [KB]: 10490
% 0.21/0.49  % (25424)Time elapsed: 0.055 s
% 0.21/0.49  % (25424)------------------------------
% 0.21/0.49  % (25424)------------------------------
% 0.21/0.49  % (25425)Refutation found. Thanks to Tanya!
% 0.21/0.49  % SZS status Theorem for theBenchmark
% 0.21/0.49  % SZS output start Proof for theBenchmark
% 0.21/0.49  fof(f134,plain,(
% 0.21/0.49    $false),
% 0.21/0.49    inference(subsumption_resolution,[],[f133,f37])).
% 0.21/0.49  fof(f37,plain,(
% 0.21/0.49    ( ! [X0] : (r1_tarski(X0,X0)) )),
% 0.21/0.49    inference(superposition,[],[f25,f24])).
% 0.21/0.49  fof(f24,plain,(
% 0.21/0.49    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 0.21/0.49    inference(cnf_transformation,[],[f10])).
% 0.21/0.49  fof(f10,plain,(
% 0.21/0.49    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 0.21/0.49    inference(rectify,[],[f2])).
% 0.21/0.49  fof(f2,axiom,(
% 0.21/0.49    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).
% 0.21/0.49  fof(f25,plain,(
% 0.21/0.49    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f3])).
% 0.21/0.49  fof(f3,axiom,(
% 0.21/0.49    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).
% 0.21/0.49  fof(f133,plain,(
% 0.21/0.49    ~r1_tarski(sK0,sK0)),
% 0.21/0.49    inference(resolution,[],[f132,f35])).
% 0.21/0.49  fof(f35,plain,(
% 0.21/0.49    ( ! [X0,X3] : (r2_hidden(X3,k1_zfmisc_1(X0)) | ~r1_tarski(X3,X0)) )),
% 0.21/0.49    inference(equality_resolution,[],[f32])).
% 0.21/0.49  fof(f32,plain,(
% 0.21/0.49    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k1_zfmisc_1(X0) != X1) )),
% 0.21/0.49    inference(cnf_transformation,[],[f22])).
% 0.21/0.49  fof(f22,plain,(
% 0.21/0.49    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK2(X0,X1),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r1_tarski(sK2(X0,X1),X0) | r2_hidden(sK2(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f20,f21])).
% 0.21/0.49  fof(f21,plain,(
% 0.21/0.49    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK2(X0,X1),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r1_tarski(sK2(X0,X1),X0) | r2_hidden(sK2(X0,X1),X1))))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f20,plain,(
% 0.21/0.49    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.21/0.49    inference(rectify,[],[f19])).
% 0.21/0.49  fof(f19,plain,(
% 0.21/0.49    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.21/0.49    inference(nnf_transformation,[],[f5])).
% 0.21/0.49  fof(f5,axiom,(
% 0.21/0.49    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).
% 0.21/0.49  fof(f132,plain,(
% 0.21/0.49    ~r2_hidden(sK0,k1_zfmisc_1(sK0))),
% 0.21/0.49    inference(trivial_inequality_removal,[],[f122])).
% 0.21/0.49  fof(f122,plain,(
% 0.21/0.49    sK0 != sK0 | ~r2_hidden(sK0,k1_zfmisc_1(sK0))),
% 0.21/0.49    inference(superposition,[],[f23,f94])).
% 0.21/0.49  fof(f94,plain,(
% 0.21/0.49    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0 | ~r2_hidden(X0,k1_zfmisc_1(X0))) )),
% 0.21/0.49    inference(resolution,[],[f79,f27])).
% 0.21/0.49  fof(f27,plain,(
% 0.21/0.49    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f12])).
% 0.21/0.49  fof(f12,plain,(
% 0.21/0.49    ! [X0,X1] : (r1_tarski(X0,k3_tarski(X1)) | ~r2_hidden(X0,X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f6])).
% 0.21/0.49  fof(f6,axiom,(
% 0.21/0.49    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(X0,k3_tarski(X1)))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l49_zfmisc_1)).
% 0.21/0.49  fof(f79,plain,(
% 0.21/0.49    ( ! [X0] : (~r1_tarski(X0,k3_tarski(k1_zfmisc_1(X0))) | k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 0.21/0.49    inference(resolution,[],[f75,f50])).
% 0.21/0.49  fof(f50,plain,(
% 0.21/0.49    ( ! [X4,X3] : (~r1_tarski(X4,X3) | X3 = X4 | ~r1_tarski(X3,X4)) )),
% 0.21/0.49    inference(superposition,[],[f44,f28])).
% 0.21/0.49  fof(f28,plain,(
% 0.21/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f13])).
% 0.21/0.49  fof(f13,plain,(
% 0.21/0.49    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.21/0.49    inference(ennf_transformation,[],[f4])).
% 0.21/0.49  fof(f4,axiom,(
% 0.21/0.49    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.21/0.49  fof(f44,plain,(
% 0.21/0.49    ( ! [X4,X3] : (k3_xboole_0(X4,X3) = X3 | ~r1_tarski(X3,X4)) )),
% 0.21/0.49    inference(superposition,[],[f28,f26])).
% 0.21/0.49  fof(f26,plain,(
% 0.21/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f1])).
% 0.21/0.49  fof(f1,axiom,(
% 0.21/0.49    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.21/0.49  fof(f75,plain,(
% 0.21/0.49    ( ! [X0] : (r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X0)) )),
% 0.21/0.49    inference(duplicate_literal_removal,[],[f73])).
% 0.21/0.49  fof(f73,plain,(
% 0.21/0.49    ( ! [X0] : (r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X0) | r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X0)) )),
% 0.21/0.49    inference(resolution,[],[f58,f30])).
% 0.21/0.49  fof(f30,plain,(
% 0.21/0.49    ( ! [X0,X1] : (~r1_tarski(sK1(X0,X1),X1) | r1_tarski(k3_tarski(X0),X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f18])).
% 0.21/0.49  fof(f18,plain,(
% 0.21/0.49    ! [X0,X1] : (r1_tarski(k3_tarski(X0),X1) | (~r1_tarski(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f14,f17])).
% 0.21/0.49  fof(f17,plain,(
% 0.21/0.49    ! [X1,X0] : (? [X2] : (~r1_tarski(X2,X1) & r2_hidden(X2,X0)) => (~r1_tarski(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f14,plain,(
% 0.21/0.49    ! [X0,X1] : (r1_tarski(k3_tarski(X0),X1) | ? [X2] : (~r1_tarski(X2,X1) & r2_hidden(X2,X0)))),
% 0.21/0.49    inference(ennf_transformation,[],[f7])).
% 0.21/0.49  fof(f7,axiom,(
% 0.21/0.49    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) => r1_tarski(X2,X1)) => r1_tarski(k3_tarski(X0),X1))),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_zfmisc_1)).
% 0.21/0.49  fof(f58,plain,(
% 0.21/0.49    ( ! [X0,X1] : (r1_tarski(sK1(k1_zfmisc_1(X0),X1),X0) | r1_tarski(k3_tarski(k1_zfmisc_1(X0)),X1)) )),
% 0.21/0.49    inference(resolution,[],[f29,f36])).
% 0.21/0.49  fof(f36,plain,(
% 0.21/0.49    ( ! [X0,X3] : (~r2_hidden(X3,k1_zfmisc_1(X0)) | r1_tarski(X3,X0)) )),
% 0.21/0.49    inference(equality_resolution,[],[f31])).
% 0.21/0.49  fof(f31,plain,(
% 0.21/0.49    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 0.21/0.49    inference(cnf_transformation,[],[f22])).
% 0.21/0.49  fof(f29,plain,(
% 0.21/0.49    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X0) | r1_tarski(k3_tarski(X0),X1)) )),
% 0.21/0.49    inference(cnf_transformation,[],[f18])).
% 0.21/0.49  fof(f23,plain,(
% 0.21/0.49    sK0 != k3_tarski(k1_zfmisc_1(sK0))),
% 0.21/0.49    inference(cnf_transformation,[],[f16])).
% 0.21/0.49  fof(f16,plain,(
% 0.21/0.49    sK0 != k3_tarski(k1_zfmisc_1(sK0))),
% 0.21/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f11,f15])).
% 0.21/0.49  fof(f15,plain,(
% 0.21/0.49    ? [X0] : k3_tarski(k1_zfmisc_1(X0)) != X0 => sK0 != k3_tarski(k1_zfmisc_1(sK0))),
% 0.21/0.49    introduced(choice_axiom,[])).
% 0.21/0.49  fof(f11,plain,(
% 0.21/0.49    ? [X0] : k3_tarski(k1_zfmisc_1(X0)) != X0),
% 0.21/0.49    inference(ennf_transformation,[],[f9])).
% 0.21/0.49  fof(f9,negated_conjecture,(
% 0.21/0.49    ~! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 0.21/0.49    inference(negated_conjecture,[],[f8])).
% 0.21/0.49  fof(f8,conjecture,(
% 0.21/0.49    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 0.21/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_zfmisc_1)).
% 0.21/0.49  % SZS output end Proof for theBenchmark
% 0.21/0.49  % (25425)------------------------------
% 0.21/0.49  % (25425)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.49  % (25425)Termination reason: Refutation
% 0.21/0.49  
% 0.21/0.49  % (25425)Memory used [KB]: 10618
% 0.21/0.49  % (25425)Time elapsed: 0.078 s
% 0.21/0.49  % (25425)------------------------------
% 0.21/0.49  % (25425)------------------------------
% 0.21/0.49  % (25432)lrs+1011_3:2_aac=none:afp=10000:afq=1.2:amm=off:anc=all:cond=on:fde=none:gs=on:gsem=on:irw=on:lma=on:nm=32:newcnf=on:nwc=3:nicw=on:stl=30:sac=on:sp=reverse_arity:urr=ec_only:updr=off:uhcvi=on_5 on theBenchmark
% 0.21/0.49  % (25422)Success in time 0.134 s
%------------------------------------------------------------------------------
