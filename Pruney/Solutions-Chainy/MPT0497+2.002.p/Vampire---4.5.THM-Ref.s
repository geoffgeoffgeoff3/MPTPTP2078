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
% DateTime   : Thu Dec  3 12:48:24 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   63 ( 101 expanded)
%              Number of leaves         :   13 (  26 expanded)
%              Depth                    :   13
%              Number of atoms          :  157 ( 284 expanded)
%              Number of equality atoms :   55 ( 111 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f384,plain,(
    $false ),
    inference(subsumption_resolution,[],[f383,f27])).

fof(f27,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,
    ( ( ~ r1_xboole_0(k1_relat_1(sK1),sK0)
      | k1_xboole_0 != k7_relat_1(sK1,sK0) )
    & ( r1_xboole_0(k1_relat_1(sK1),sK0)
      | k1_xboole_0 = k7_relat_1(sK1,sK0) )
    & v1_relat_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f24])).

fof(f24,plain,
    ( ? [X0,X1] :
        ( ( ~ r1_xboole_0(k1_relat_1(X1),X0)
          | k1_xboole_0 != k7_relat_1(X1,X0) )
        & ( r1_xboole_0(k1_relat_1(X1),X0)
          | k1_xboole_0 = k7_relat_1(X1,X0) )
        & v1_relat_1(X1) )
   => ( ( ~ r1_xboole_0(k1_relat_1(sK1),sK0)
        | k1_xboole_0 != k7_relat_1(sK1,sK0) )
      & ( r1_xboole_0(k1_relat_1(sK1),sK0)
        | k1_xboole_0 = k7_relat_1(sK1,sK0) )
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ? [X0,X1] :
      ( ( ~ r1_xboole_0(k1_relat_1(X1),X0)
        | k1_xboole_0 != k7_relat_1(X1,X0) )
      & ( r1_xboole_0(k1_relat_1(X1),X0)
        | k1_xboole_0 = k7_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f22,plain,(
    ? [X0,X1] :
      ( ( ~ r1_xboole_0(k1_relat_1(X1),X0)
        | k1_xboole_0 != k7_relat_1(X1,X0) )
      & ( r1_xboole_0(k1_relat_1(X1),X0)
        | k1_xboole_0 = k7_relat_1(X1,X0) )
      & v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f15,plain,(
    ? [X0,X1] :
      ( ( k1_xboole_0 = k7_relat_1(X1,X0)
      <~> r1_xboole_0(k1_relat_1(X1),X0) )
      & v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( v1_relat_1(X1)
       => ( k1_xboole_0 = k7_relat_1(X1,X0)
        <=> r1_xboole_0(k1_relat_1(X1),X0) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( k1_xboole_0 = k7_relat_1(X1,X0)
      <=> r1_xboole_0(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_relat_1)).

fof(f383,plain,(
    ~ v1_relat_1(sK1) ),
    inference(subsumption_resolution,[],[f367,f241])).

fof(f241,plain,(
    r1_xboole_0(k1_relat_1(sK1),sK0) ),
    inference(subsumption_resolution,[],[f240,f27])).

fof(f240,plain,
    ( r1_xboole_0(k1_relat_1(sK1),sK0)
    | ~ v1_relat_1(sK1) ),
    inference(subsumption_resolution,[],[f239,f30])).

fof(f30,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,
    ( k1_xboole_0 = k2_relat_1(k1_xboole_0)
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t60_relat_1)).

fof(f239,plain,
    ( k1_xboole_0 != k1_relat_1(k1_xboole_0)
    | r1_xboole_0(k1_relat_1(sK1),sK0)
    | ~ v1_relat_1(sK1) ),
    inference(duplicate_literal_removal,[],[f228])).

fof(f228,plain,
    ( k1_xboole_0 != k1_relat_1(k1_xboole_0)
    | r1_xboole_0(k1_relat_1(sK1),sK0)
    | ~ v1_relat_1(sK1)
    | r1_xboole_0(k1_relat_1(sK1),sK0) ),
    inference(superposition,[],[f98,f28])).

fof(f28,plain,
    ( k1_xboole_0 = k7_relat_1(sK1,sK0)
    | r1_xboole_0(k1_relat_1(sK1),sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f98,plain,(
    ! [X4,X3] :
      ( k1_xboole_0 != k1_relat_1(k7_relat_1(X3,X4))
      | r1_xboole_0(k1_relat_1(X3),X4)
      | ~ v1_relat_1(X3) ) ),
    inference(superposition,[],[f50,f49])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X1,X0)) = k1_setfam_1(k2_tarski(k1_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f40,f38])).

fof(f38,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f40,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X1,X0)) = k3_xboole_0(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X1,X0)) = k3_xboole_0(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k1_relat_1(k7_relat_1(X1,X0)) = k3_xboole_0(k1_relat_1(X1),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t90_relat_1)).

fof(f50,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 != k1_setfam_1(k2_tarski(X0,X1))
      | r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f43,f38])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k3_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
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

fof(f367,plain,
    ( ~ r1_xboole_0(k1_relat_1(sK1),sK0)
    | ~ v1_relat_1(sK1) ),
    inference(trivial_inequality_removal,[],[f366])).

fof(f366,plain,
    ( k1_xboole_0 != k1_xboole_0
    | ~ r1_xboole_0(k1_relat_1(sK1),sK0)
    | ~ v1_relat_1(sK1) ),
    inference(duplicate_literal_removal,[],[f365])).

fof(f365,plain,
    ( k1_xboole_0 != k1_xboole_0
    | ~ r1_xboole_0(k1_relat_1(sK1),sK0)
    | ~ v1_relat_1(sK1)
    | ~ r1_xboole_0(k1_relat_1(sK1),sK0) ),
    inference(superposition,[],[f29,f197])).

fof(f197,plain,(
    ! [X4,X5] :
      ( k1_xboole_0 = k7_relat_1(X4,X5)
      | ~ v1_relat_1(X4)
      | ~ r1_xboole_0(k1_relat_1(X4),X5) ) ),
    inference(subsumption_resolution,[],[f196,f39])).

fof(f39,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(f196,plain,(
    ! [X4,X5] :
      ( ~ v1_relat_1(k7_relat_1(X4,X5))
      | k1_xboole_0 = k7_relat_1(X4,X5)
      | ~ v1_relat_1(X4)
      | ~ r1_xboole_0(k1_relat_1(X4),X5) ) ),
    inference(subsumption_resolution,[],[f191,f54])).

fof(f54,plain,(
    ! [X0] : r1_xboole_0(k1_xboole_0,X0) ),
    inference(resolution,[],[f41,f32])).

fof(f32,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | r1_xboole_0(X1,X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(f191,plain,(
    ! [X4,X5] :
      ( ~ r1_xboole_0(k1_xboole_0,k1_xboole_0)
      | ~ v1_relat_1(k7_relat_1(X4,X5))
      | k1_xboole_0 = k7_relat_1(X4,X5)
      | ~ v1_relat_1(X4)
      | ~ r1_xboole_0(k1_relat_1(X4),X5) ) ),
    inference(superposition,[],[f108,f92])).

fof(f92,plain,(
    ! [X4,X3] :
      ( k1_xboole_0 = k1_relat_1(k7_relat_1(X3,X4))
      | ~ v1_relat_1(X3)
      | ~ r1_xboole_0(k1_relat_1(X3),X4) ) ),
    inference(superposition,[],[f49,f51])).

fof(f51,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k1_setfam_1(k2_tarski(X0,X1))
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f42,f38])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f108,plain,(
    ! [X16] :
      ( ~ r1_xboole_0(k1_relat_1(X16),k1_relat_1(X16))
      | ~ v1_relat_1(X16)
      | k1_xboole_0 = X16 ) ),
    inference(forward_demodulation,[],[f107,f46])).

fof(f46,plain,(
    ! [X0] : k1_xboole_0 = k1_setfam_1(k2_tarski(X0,k1_xboole_0)) ),
    inference(definition_unfolding,[],[f33,f38])).

fof(f33,plain,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(f107,plain,(
    ! [X16] :
      ( k1_setfam_1(k2_tarski(X16,k1_xboole_0)) = X16
      | ~ v1_relat_1(X16)
      | ~ r1_xboole_0(k1_relat_1(X16),k1_relat_1(X16)) ) ),
    inference(superposition,[],[f47,f81])).

fof(f81,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | ~ r1_xboole_0(X0,X0) ) ),
    inference(resolution,[],[f44,f35])).

fof(f35,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(X0,X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0] :
      ( ( ~ r1_xboole_0(X0,X0)
        | k1_xboole_0 = X0 )
      & ( k1_xboole_0 != X0
        | r1_xboole_0(X0,X0) ) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] :
      ( ~ ( r1_xboole_0(X0,X0)
          & k1_xboole_0 != X0 )
      & ~ ( k1_xboole_0 = X0
          & ~ r1_xboole_0(X0,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t66_xboole_1)).

fof(f44,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( r1_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
      | ( ~ r1_xboole_0(X2,X3)
        & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( r1_xboole_0(X2,X3)
        | r1_xboole_0(X0,X1) )
     => r1_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t127_zfmisc_1)).

fof(f47,plain,(
    ! [X0] :
      ( k1_setfam_1(k2_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f36,f38])).

fof(f36,plain,(
    ! [X0] :
      ( k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0] :
      ( k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_relat_1)).

fof(f29,plain,
    ( k1_xboole_0 != k7_relat_1(sK1,sK0)
    | ~ r1_xboole_0(k1_relat_1(sK1),sK0) ),
    inference(cnf_transformation,[],[f25])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n018.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 19:23:27 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.51  % (15462)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.52  % (15466)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.22/0.53  % (15475)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 0.22/0.53  % (15482)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.22/0.53  % (15476)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.22/0.53  % (15459)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.53  % (15459)Refutation not found, incomplete strategy% (15459)------------------------------
% 0.22/0.53  % (15459)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (15459)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (15459)Memory used [KB]: 10746
% 0.22/0.53  % (15459)Time elapsed: 0.115 s
% 0.22/0.53  % (15459)------------------------------
% 0.22/0.53  % (15459)------------------------------
% 0.22/0.53  % (15461)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.53  % (15467)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.22/0.54  % (15479)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.22/0.54  % (15460)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.54  % (15457)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.22/0.54  % (15479)Refutation not found, incomplete strategy% (15479)------------------------------
% 0.22/0.54  % (15479)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (15479)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (15479)Memory used [KB]: 10618
% 0.22/0.54  % (15479)Time elapsed: 0.091 s
% 0.22/0.54  % (15479)------------------------------
% 0.22/0.54  % (15479)------------------------------
% 0.22/0.54  % (15458)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.54  % (15469)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.54  % (15483)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.22/0.55  % (15470)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.22/0.55  % (15480)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.22/0.55  % (15477)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.55  % (15463)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.55  % (15474)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.22/0.55  % (15471)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.55  % (15468)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.22/0.55  % (15472)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.22/0.55  % (15478)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.55  % (15486)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.22/0.55  % (15464)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.22/0.56  % (15484)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.56  % (15474)Refutation not found, incomplete strategy% (15474)------------------------------
% 0.22/0.56  % (15474)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (15474)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.56  
% 0.22/0.56  % (15474)Memory used [KB]: 10618
% 0.22/0.56  % (15474)Time elapsed: 0.150 s
% 0.22/0.56  % (15474)------------------------------
% 0.22/0.56  % (15474)------------------------------
% 0.22/0.56  % (15486)Refutation found. Thanks to Tanya!
% 0.22/0.56  % SZS status Theorem for theBenchmark
% 0.22/0.56  % SZS output start Proof for theBenchmark
% 0.22/0.56  fof(f384,plain,(
% 0.22/0.56    $false),
% 0.22/0.56    inference(subsumption_resolution,[],[f383,f27])).
% 0.22/0.56  fof(f27,plain,(
% 0.22/0.56    v1_relat_1(sK1)),
% 0.22/0.56    inference(cnf_transformation,[],[f25])).
% 0.22/0.56  fof(f25,plain,(
% 0.22/0.56    (~r1_xboole_0(k1_relat_1(sK1),sK0) | k1_xboole_0 != k7_relat_1(sK1,sK0)) & (r1_xboole_0(k1_relat_1(sK1),sK0) | k1_xboole_0 = k7_relat_1(sK1,sK0)) & v1_relat_1(sK1)),
% 0.22/0.56    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f24])).
% 0.22/0.56  fof(f24,plain,(
% 0.22/0.56    ? [X0,X1] : ((~r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k7_relat_1(X1,X0)) & (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 = k7_relat_1(X1,X0)) & v1_relat_1(X1)) => ((~r1_xboole_0(k1_relat_1(sK1),sK0) | k1_xboole_0 != k7_relat_1(sK1,sK0)) & (r1_xboole_0(k1_relat_1(sK1),sK0) | k1_xboole_0 = k7_relat_1(sK1,sK0)) & v1_relat_1(sK1))),
% 0.22/0.56    introduced(choice_axiom,[])).
% 0.22/0.56  fof(f23,plain,(
% 0.22/0.56    ? [X0,X1] : ((~r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k7_relat_1(X1,X0)) & (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 = k7_relat_1(X1,X0)) & v1_relat_1(X1))),
% 0.22/0.56    inference(flattening,[],[f22])).
% 0.22/0.56  fof(f22,plain,(
% 0.22/0.56    ? [X0,X1] : (((~r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 != k7_relat_1(X1,X0)) & (r1_xboole_0(k1_relat_1(X1),X0) | k1_xboole_0 = k7_relat_1(X1,X0))) & v1_relat_1(X1))),
% 0.22/0.56    inference(nnf_transformation,[],[f15])).
% 0.22/0.56  fof(f15,plain,(
% 0.22/0.56    ? [X0,X1] : ((k1_xboole_0 = k7_relat_1(X1,X0) <~> r1_xboole_0(k1_relat_1(X1),X0)) & v1_relat_1(X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f14])).
% 0.22/0.56  fof(f14,negated_conjecture,(
% 0.22/0.56    ~! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k7_relat_1(X1,X0) <=> r1_xboole_0(k1_relat_1(X1),X0)))),
% 0.22/0.56    inference(negated_conjecture,[],[f13])).
% 0.22/0.56  fof(f13,conjecture,(
% 0.22/0.56    ! [X0,X1] : (v1_relat_1(X1) => (k1_xboole_0 = k7_relat_1(X1,X0) <=> r1_xboole_0(k1_relat_1(X1),X0)))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_relat_1)).
% 0.22/0.56  fof(f383,plain,(
% 0.22/0.56    ~v1_relat_1(sK1)),
% 0.22/0.56    inference(subsumption_resolution,[],[f367,f241])).
% 0.22/0.56  fof(f241,plain,(
% 0.22/0.56    r1_xboole_0(k1_relat_1(sK1),sK0)),
% 0.22/0.56    inference(subsumption_resolution,[],[f240,f27])).
% 0.22/0.56  fof(f240,plain,(
% 0.22/0.56    r1_xboole_0(k1_relat_1(sK1),sK0) | ~v1_relat_1(sK1)),
% 0.22/0.56    inference(subsumption_resolution,[],[f239,f30])).
% 0.22/0.56  fof(f30,plain,(
% 0.22/0.56    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.22/0.56    inference(cnf_transformation,[],[f11])).
% 0.22/0.56  fof(f11,axiom,(
% 0.22/0.56    k1_xboole_0 = k2_relat_1(k1_xboole_0) & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t60_relat_1)).
% 0.22/0.56  fof(f239,plain,(
% 0.22/0.56    k1_xboole_0 != k1_relat_1(k1_xboole_0) | r1_xboole_0(k1_relat_1(sK1),sK0) | ~v1_relat_1(sK1)),
% 0.22/0.56    inference(duplicate_literal_removal,[],[f228])).
% 0.22/0.56  fof(f228,plain,(
% 0.22/0.56    k1_xboole_0 != k1_relat_1(k1_xboole_0) | r1_xboole_0(k1_relat_1(sK1),sK0) | ~v1_relat_1(sK1) | r1_xboole_0(k1_relat_1(sK1),sK0)),
% 0.22/0.56    inference(superposition,[],[f98,f28])).
% 0.22/0.56  fof(f28,plain,(
% 0.22/0.56    k1_xboole_0 = k7_relat_1(sK1,sK0) | r1_xboole_0(k1_relat_1(sK1),sK0)),
% 0.22/0.56    inference(cnf_transformation,[],[f25])).
% 0.22/0.56  fof(f98,plain,(
% 0.22/0.56    ( ! [X4,X3] : (k1_xboole_0 != k1_relat_1(k7_relat_1(X3,X4)) | r1_xboole_0(k1_relat_1(X3),X4) | ~v1_relat_1(X3)) )),
% 0.22/0.56    inference(superposition,[],[f50,f49])).
% 0.22/0.56  fof(f49,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k1_relat_1(k7_relat_1(X1,X0)) = k1_setfam_1(k2_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f40,f38])).
% 0.22/0.56  fof(f38,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 0.22/0.56    inference(cnf_transformation,[],[f8])).
% 0.22/0.56  fof(f8,axiom,(
% 0.22/0.56    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).
% 0.22/0.56  fof(f40,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k1_relat_1(k7_relat_1(X1,X0)) = k3_xboole_0(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f19])).
% 0.22/0.56  fof(f19,plain,(
% 0.22/0.56    ! [X0,X1] : (k1_relat_1(k7_relat_1(X1,X0)) = k3_xboole_0(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f12])).
% 0.22/0.56  fof(f12,axiom,(
% 0.22/0.56    ! [X0,X1] : (v1_relat_1(X1) => k1_relat_1(k7_relat_1(X1,X0)) = k3_xboole_0(k1_relat_1(X1),X0))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t90_relat_1)).
% 0.22/0.56  fof(f50,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k1_xboole_0 != k1_setfam_1(k2_tarski(X0,X1)) | r1_xboole_0(X0,X1)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f43,f38])).
% 0.22/0.56  fof(f43,plain,(
% 0.22/0.56    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) )),
% 0.22/0.56    inference(cnf_transformation,[],[f26])).
% 0.22/0.56  fof(f26,plain,(
% 0.22/0.56    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) & (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)))),
% 0.22/0.56    inference(nnf_transformation,[],[f2])).
% 0.22/0.56  fof(f2,axiom,(
% 0.22/0.56    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k3_xboole_0(X0,X1) = k1_xboole_0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).
% 0.22/0.56  fof(f367,plain,(
% 0.22/0.56    ~r1_xboole_0(k1_relat_1(sK1),sK0) | ~v1_relat_1(sK1)),
% 0.22/0.56    inference(trivial_inequality_removal,[],[f366])).
% 0.22/0.56  fof(f366,plain,(
% 0.22/0.56    k1_xboole_0 != k1_xboole_0 | ~r1_xboole_0(k1_relat_1(sK1),sK0) | ~v1_relat_1(sK1)),
% 0.22/0.56    inference(duplicate_literal_removal,[],[f365])).
% 0.22/0.56  fof(f365,plain,(
% 0.22/0.56    k1_xboole_0 != k1_xboole_0 | ~r1_xboole_0(k1_relat_1(sK1),sK0) | ~v1_relat_1(sK1) | ~r1_xboole_0(k1_relat_1(sK1),sK0)),
% 0.22/0.56    inference(superposition,[],[f29,f197])).
% 0.22/0.56  fof(f197,plain,(
% 0.22/0.56    ( ! [X4,X5] : (k1_xboole_0 = k7_relat_1(X4,X5) | ~v1_relat_1(X4) | ~r1_xboole_0(k1_relat_1(X4),X5)) )),
% 0.22/0.56    inference(subsumption_resolution,[],[f196,f39])).
% 0.22/0.56  fof(f39,plain,(
% 0.22/0.56    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f18])).
% 0.22/0.56  fof(f18,plain,(
% 0.22/0.56    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 0.22/0.56    inference(ennf_transformation,[],[f9])).
% 0.22/0.56  fof(f9,axiom,(
% 0.22/0.56    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).
% 0.22/0.56  fof(f196,plain,(
% 0.22/0.56    ( ! [X4,X5] : (~v1_relat_1(k7_relat_1(X4,X5)) | k1_xboole_0 = k7_relat_1(X4,X5) | ~v1_relat_1(X4) | ~r1_xboole_0(k1_relat_1(X4),X5)) )),
% 0.22/0.56    inference(subsumption_resolution,[],[f191,f54])).
% 0.22/0.56  fof(f54,plain,(
% 0.22/0.56    ( ! [X0] : (r1_xboole_0(k1_xboole_0,X0)) )),
% 0.22/0.56    inference(resolution,[],[f41,f32])).
% 0.22/0.56  fof(f32,plain,(
% 0.22/0.56    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f5])).
% 0.22/0.56  fof(f5,axiom,(
% 0.22/0.56    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).
% 0.22/0.56  fof(f41,plain,(
% 0.22/0.56    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | r1_xboole_0(X1,X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f20])).
% 0.22/0.56  fof(f20,plain,(
% 0.22/0.56    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 0.22/0.56    inference(ennf_transformation,[],[f3])).
% 0.22/0.56  fof(f3,axiom,(
% 0.22/0.56    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).
% 0.22/0.56  fof(f191,plain,(
% 0.22/0.56    ( ! [X4,X5] : (~r1_xboole_0(k1_xboole_0,k1_xboole_0) | ~v1_relat_1(k7_relat_1(X4,X5)) | k1_xboole_0 = k7_relat_1(X4,X5) | ~v1_relat_1(X4) | ~r1_xboole_0(k1_relat_1(X4),X5)) )),
% 0.22/0.56    inference(superposition,[],[f108,f92])).
% 0.22/0.56  fof(f92,plain,(
% 0.22/0.56    ( ! [X4,X3] : (k1_xboole_0 = k1_relat_1(k7_relat_1(X3,X4)) | ~v1_relat_1(X3) | ~r1_xboole_0(k1_relat_1(X3),X4)) )),
% 0.22/0.56    inference(superposition,[],[f49,f51])).
% 0.22/0.56  fof(f51,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k1_xboole_0 = k1_setfam_1(k2_tarski(X0,X1)) | ~r1_xboole_0(X0,X1)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f42,f38])).
% 0.22/0.56  fof(f42,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f26])).
% 0.22/0.56  fof(f108,plain,(
% 0.22/0.56    ( ! [X16] : (~r1_xboole_0(k1_relat_1(X16),k1_relat_1(X16)) | ~v1_relat_1(X16) | k1_xboole_0 = X16) )),
% 0.22/0.56    inference(forward_demodulation,[],[f107,f46])).
% 0.22/0.56  fof(f46,plain,(
% 0.22/0.56    ( ! [X0] : (k1_xboole_0 = k1_setfam_1(k2_tarski(X0,k1_xboole_0))) )),
% 0.22/0.56    inference(definition_unfolding,[],[f33,f38])).
% 0.22/0.56  fof(f33,plain,(
% 0.22/0.56    ( ! [X0] : (k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f4])).
% 0.22/0.56  fof(f4,axiom,(
% 0.22/0.56    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).
% 0.22/0.56  fof(f107,plain,(
% 0.22/0.56    ( ! [X16] : (k1_setfam_1(k2_tarski(X16,k1_xboole_0)) = X16 | ~v1_relat_1(X16) | ~r1_xboole_0(k1_relat_1(X16),k1_relat_1(X16))) )),
% 0.22/0.56    inference(superposition,[],[f47,f81])).
% 0.22/0.56  fof(f81,plain,(
% 0.22/0.56    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | ~r1_xboole_0(X0,X0)) )),
% 0.22/0.56    inference(resolution,[],[f44,f35])).
% 0.22/0.56  fof(f35,plain,(
% 0.22/0.56    ( ! [X0] : (~r1_xboole_0(X0,X0) | k1_xboole_0 = X0) )),
% 0.22/0.56    inference(cnf_transformation,[],[f16])).
% 0.22/0.56  fof(f16,plain,(
% 0.22/0.56    ! [X0] : ((~r1_xboole_0(X0,X0) | k1_xboole_0 = X0) & (k1_xboole_0 != X0 | r1_xboole_0(X0,X0)))),
% 0.22/0.56    inference(ennf_transformation,[],[f6])).
% 0.22/0.56  fof(f6,axiom,(
% 0.22/0.56    ! [X0] : (~(r1_xboole_0(X0,X0) & k1_xboole_0 != X0) & ~(k1_xboole_0 = X0 & ~r1_xboole_0(X0,X0)))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t66_xboole_1)).
% 0.22/0.56  fof(f44,plain,(
% 0.22/0.56    ( ! [X2,X0,X3,X1] : (r1_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3)) | ~r1_xboole_0(X0,X1)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f21])).
% 0.22/0.56  fof(f21,plain,(
% 0.22/0.56    ! [X0,X1,X2,X3] : (r1_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3)) | (~r1_xboole_0(X2,X3) & ~r1_xboole_0(X0,X1)))),
% 0.22/0.56    inference(ennf_transformation,[],[f7])).
% 0.22/0.56  fof(f7,axiom,(
% 0.22/0.56    ! [X0,X1,X2,X3] : ((r1_xboole_0(X2,X3) | r1_xboole_0(X0,X1)) => r1_xboole_0(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3)))),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t127_zfmisc_1)).
% 0.22/0.56  fof(f47,plain,(
% 0.22/0.56    ( ! [X0] : (k1_setfam_1(k2_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))) = X0 | ~v1_relat_1(X0)) )),
% 0.22/0.56    inference(definition_unfolding,[],[f36,f38])).
% 0.22/0.56  fof(f36,plain,(
% 0.22/0.56    ( ! [X0] : (k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 0.22/0.56    inference(cnf_transformation,[],[f17])).
% 0.22/0.56  fof(f17,plain,(
% 0.22/0.56    ! [X0] : (k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 0.22/0.56    inference(ennf_transformation,[],[f10])).
% 0.22/0.56  fof(f10,axiom,(
% 0.22/0.56    ! [X0] : (v1_relat_1(X0) => k3_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = X0)),
% 0.22/0.56    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_relat_1)).
% 0.22/0.56  fof(f29,plain,(
% 0.22/0.56    k1_xboole_0 != k7_relat_1(sK1,sK0) | ~r1_xboole_0(k1_relat_1(sK1),sK0)),
% 0.22/0.56    inference(cnf_transformation,[],[f25])).
% 0.22/0.56  % SZS output end Proof for theBenchmark
% 0.22/0.56  % (15486)------------------------------
% 0.22/0.56  % (15486)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (15486)Termination reason: Refutation
% 0.22/0.56  
% 0.22/0.56  % (15486)Memory used [KB]: 1918
% 0.22/0.56  % (15486)Time elapsed: 0.141 s
% 0.22/0.56  % (15486)------------------------------
% 0.22/0.56  % (15486)------------------------------
% 0.22/0.56  % (15456)Success in time 0.196 s
%------------------------------------------------------------------------------
