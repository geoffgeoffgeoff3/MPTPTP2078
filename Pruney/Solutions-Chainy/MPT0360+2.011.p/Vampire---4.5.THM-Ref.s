%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:44:49 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   71 ( 167 expanded)
%              Number of leaves         :   16 (  45 expanded)
%              Depth                    :   17
%              Number of atoms          :  181 ( 509 expanded)
%              Number of equality atoms :   48 ( 139 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f302,plain,(
    $false ),
    inference(subsumption_resolution,[],[f301,f33])).

fof(f33,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,
    ( k1_xboole_0 != sK1
    & r1_tarski(sK1,k3_subset_1(sK0,sK2))
    & r1_tarski(sK1,sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f17,f22])).

fof(f22,plain,
    ( ? [X0,X1,X2] :
        ( k1_xboole_0 != X1
        & r1_tarski(X1,k3_subset_1(X0,X2))
        & r1_tarski(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X0)) )
   => ( k1_xboole_0 != sK1
      & r1_tarski(sK1,k3_subset_1(sK0,sK2))
      & r1_tarski(sK1,sK2)
      & m1_subset_1(sK2,k1_zfmisc_1(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X1
      & r1_tarski(X1,k3_subset_1(X0,X2))
      & r1_tarski(X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X1
      & r1_tarski(X1,k3_subset_1(X0,X2))
      & r1_tarski(X1,X2)
      & m1_subset_1(X2,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X0))
       => ( ( r1_tarski(X1,k3_subset_1(X0,X2))
            & r1_tarski(X1,X2) )
         => k1_xboole_0 = X1 ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X0))
     => ( ( r1_tarski(X1,k3_subset_1(X0,X2))
          & r1_tarski(X1,X2) )
       => k1_xboole_0 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t40_subset_1)).

fof(f301,plain,(
    k1_xboole_0 = sK1 ),
    inference(backward_demodulation,[],[f117,f291])).

fof(f291,plain,(
    k1_xboole_0 = k3_xboole_0(sK1,k5_xboole_0(sK0,sK2)) ),
    inference(superposition,[],[f186,f38])).

fof(f38,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f186,plain,(
    k1_xboole_0 = k3_xboole_0(k5_xboole_0(sK0,sK2),sK1) ),
    inference(resolution,[],[f183,f47])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | k3_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_xboole_0)).

fof(f183,plain,(
    r1_xboole_0(k5_xboole_0(sK0,sK2),sK1) ),
    inference(resolution,[],[f80,f124])).

fof(f124,plain,(
    r1_xboole_0(k5_xboole_0(sK0,sK2),sK2) ),
    inference(backward_demodulation,[],[f104,f115])).

fof(f115,plain,(
    k3_subset_1(sK0,sK2) = k5_xboole_0(sK0,sK2) ),
    inference(backward_demodulation,[],[f65,f106])).

fof(f106,plain,(
    sK2 = k3_xboole_0(sK0,sK2) ),
    inference(superposition,[],[f72,f38])).

fof(f72,plain,(
    sK2 = k3_xboole_0(sK2,sK0) ),
    inference(resolution,[],[f69,f45])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k3_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f69,plain,(
    r1_tarski(sK2,sK0) ),
    inference(resolution,[],[f68,f63])).

fof(f63,plain,(
    ! [X0,X3] :
      ( ~ r2_hidden(X3,k1_zfmisc_1(X0))
      | r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f49])).

fof(f49,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK3(X0,X1),X0)
            | ~ r2_hidden(sK3(X0,X1),X1) )
          & ( r1_tarski(sK3(X0,X1),X0)
            | r2_hidden(sK3(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f27,f28])).

fof(f28,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK3(X0,X1),X0)
          | ~ r2_hidden(sK3(X0,X1),X1) )
        & ( r1_tarski(sK3(X0,X1),X0)
          | r2_hidden(sK3(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
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
    inference(rectify,[],[f26])).

fof(f26,plain,(
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
    inference(nnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(f68,plain,(
    r2_hidden(sK2,k1_zfmisc_1(sK0)) ),
    inference(subsumption_resolution,[],[f66,f34])).

fof(f34,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).

fof(f66,plain,
    ( r2_hidden(sK2,k1_zfmisc_1(sK0))
    | v1_xboole_0(k1_zfmisc_1(sK0)) ),
    inference(resolution,[],[f30,f41])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,X0)
      | r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(f30,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f23])).

fof(f65,plain,(
    k3_subset_1(sK0,sK2) = k5_xboole_0(sK0,k3_xboole_0(sK0,sK2)) ),
    inference(resolution,[],[f30,f58])).

fof(f58,plain,(
    ! [X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1) ) ),
    inference(definition_unfolding,[],[f46,f40])).

fof(f40,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f46,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

fof(f104,plain,(
    r1_xboole_0(k3_subset_1(sK0,sK2),sK2) ),
    inference(superposition,[],[f57,f65])).

fof(f57,plain,(
    ! [X0,X1] : r1_xboole_0(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X1) ),
    inference(definition_unfolding,[],[f37,f40])).

fof(f37,plain,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_xboole_1)).

fof(f80,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(X0,sK2)
      | r1_xboole_0(X0,sK1) ) ),
    inference(forward_demodulation,[],[f79,f36])).

fof(f36,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

fof(f79,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(X0,k5_xboole_0(sK2,k1_xboole_0))
      | r1_xboole_0(X0,sK1) ) ),
    inference(forward_demodulation,[],[f75,f35])).

fof(f35,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0) ),
    inference(cnf_transformation,[],[f8])).

% (26397)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
fof(f8,axiom,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).

fof(f75,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(X0,k5_xboole_0(sK2,k5_xboole_0(sK1,sK1)))
      | r1_xboole_0(X0,sK1) ) ),
    inference(superposition,[],[f59,f64])).

fof(f64,plain,(
    sK1 = k3_xboole_0(sK1,sK2) ),
    inference(resolution,[],[f31,f45])).

fof(f31,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f23])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))))
      | r1_xboole_0(X0,X2) ) ),
    inference(definition_unfolding,[],[f55,f56])).

fof(f56,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(definition_unfolding,[],[f39,f40])).

fof(f39,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,k2_xboole_0(X1,X2))
      | r1_xboole_0(X0,X2) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ( ~ r1_xboole_0(X0,k2_xboole_0(X1,X2))
        | ( r1_xboole_0(X0,X2)
          & r1_xboole_0(X0,X1) ) )
      & ( ~ r1_xboole_0(X0,X2)
        | ~ r1_xboole_0(X0,X1)
        | r1_xboole_0(X0,k2_xboole_0(X1,X2)) ) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( ~ ( r1_xboole_0(X0,k2_xboole_0(X1,X2))
          & ~ ( r1_xboole_0(X0,X2)
              & r1_xboole_0(X0,X1) ) )
      & ~ ( r1_xboole_0(X0,X2)
          & r1_xboole_0(X0,X1)
          & ~ r1_xboole_0(X0,k2_xboole_0(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_xboole_1)).

fof(f117,plain,(
    sK1 = k3_xboole_0(sK1,k5_xboole_0(sK0,sK2)) ),
    inference(backward_demodulation,[],[f71,f115])).

fof(f71,plain,(
    sK1 = k3_xboole_0(sK1,k3_subset_1(sK0,sK2)) ),
    inference(resolution,[],[f32,f45])).

fof(f32,plain,(
    r1_tarski(sK1,k3_subset_1(sK0,sK2)) ),
    inference(cnf_transformation,[],[f23])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.12  % Command    : run_vampire %s %d
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:05:53 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.20/0.51  % (26395)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.20/0.51  % (26372)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.20/0.51  % (26377)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.20/0.51  % (26379)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.20/0.52  % (26388)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.20/0.52  % (26379)Refutation found. Thanks to Tanya!
% 0.20/0.52  % SZS status Theorem for theBenchmark
% 0.20/0.52  % (26371)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.20/0.52  % (26374)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.20/0.52  % (26373)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.20/0.52  % (26378)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.20/0.52  % (26398)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.20/0.52  % (26394)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.20/0.53  % (26388)Refutation not found, incomplete strategy% (26388)------------------------------
% 0.20/0.53  % (26388)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.53  % (26388)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.53  
% 0.20/0.53  % (26388)Memory used [KB]: 10618
% 0.20/0.53  % (26388)Time elapsed: 0.135 s
% 0.20/0.53  % (26388)------------------------------
% 0.20/0.53  % (26388)------------------------------
% 0.20/0.53  % (26387)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.20/0.53  % (26390)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.20/0.53  % (26381)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.20/0.53  % (26375)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.20/0.53  % (26396)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.20/0.54  % (26381)Refutation not found, incomplete strategy% (26381)------------------------------
% 0.20/0.54  % (26381)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.54  % (26385)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.20/0.54  % (26383)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.20/0.54  % (26371)Refutation not found, incomplete strategy% (26371)------------------------------
% 0.20/0.54  % (26371)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.54  % (26371)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.54  
% 0.20/0.54  % (26371)Memory used [KB]: 1663
% 0.20/0.54  % (26371)Time elapsed: 0.127 s
% 0.20/0.54  % (26371)------------------------------
% 0.20/0.54  % (26371)------------------------------
% 0.20/0.54  % (26382)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.20/0.54  % (26381)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.54  
% 0.20/0.54  % (26381)Memory used [KB]: 10618
% 0.20/0.54  % (26381)Time elapsed: 0.139 s
% 0.20/0.54  % (26381)------------------------------
% 0.20/0.54  % (26381)------------------------------
% 0.20/0.54  % (26386)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.20/0.54  % (26382)Refutation not found, incomplete strategy% (26382)------------------------------
% 0.20/0.54  % (26382)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.54  % (26382)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.54  
% 0.20/0.54  % (26382)Memory used [KB]: 10618
% 0.20/0.54  % (26382)Time elapsed: 0.148 s
% 0.20/0.54  % (26382)------------------------------
% 0.20/0.54  % (26382)------------------------------
% 0.20/0.54  % (26386)Refutation not found, incomplete strategy% (26386)------------------------------
% 0.20/0.54  % (26386)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.54  % (26386)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.54  
% 0.20/0.54  % (26386)Memory used [KB]: 6140
% 0.20/0.54  % (26386)Time elapsed: 0.150 s
% 0.20/0.54  % (26386)------------------------------
% 0.20/0.54  % (26386)------------------------------
% 0.20/0.54  % (26376)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.20/0.54  % SZS output start Proof for theBenchmark
% 0.20/0.54  fof(f302,plain,(
% 0.20/0.54    $false),
% 0.20/0.54    inference(subsumption_resolution,[],[f301,f33])).
% 0.20/0.54  fof(f33,plain,(
% 0.20/0.54    k1_xboole_0 != sK1),
% 0.20/0.54    inference(cnf_transformation,[],[f23])).
% 0.20/0.54  fof(f23,plain,(
% 0.20/0.54    k1_xboole_0 != sK1 & r1_tarski(sK1,k3_subset_1(sK0,sK2)) & r1_tarski(sK1,sK2) & m1_subset_1(sK2,k1_zfmisc_1(sK0))),
% 0.20/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f17,f22])).
% 0.20/0.54  fof(f22,plain,(
% 0.20/0.54    ? [X0,X1,X2] : (k1_xboole_0 != X1 & r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(X0))) => (k1_xboole_0 != sK1 & r1_tarski(sK1,k3_subset_1(sK0,sK2)) & r1_tarski(sK1,sK2) & m1_subset_1(sK2,k1_zfmisc_1(sK0)))),
% 0.20/0.54    introduced(choice_axiom,[])).
% 0.20/0.54  fof(f17,plain,(
% 0.20/0.54    ? [X0,X1,X2] : (k1_xboole_0 != X1 & r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 0.20/0.54    inference(flattening,[],[f16])).
% 0.20/0.54  fof(f16,plain,(
% 0.20/0.54    ? [X0,X1,X2] : ((k1_xboole_0 != X1 & (r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2))) & m1_subset_1(X2,k1_zfmisc_1(X0)))),
% 0.20/0.54    inference(ennf_transformation,[],[f15])).
% 0.20/0.54  fof(f15,negated_conjecture,(
% 0.20/0.54    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ((r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2)) => k1_xboole_0 = X1))),
% 0.20/0.54    inference(negated_conjecture,[],[f14])).
% 0.20/0.54  fof(f14,conjecture,(
% 0.20/0.54    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => ((r1_tarski(X1,k3_subset_1(X0,X2)) & r1_tarski(X1,X2)) => k1_xboole_0 = X1))),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t40_subset_1)).
% 0.20/0.54  fof(f301,plain,(
% 0.20/0.54    k1_xboole_0 = sK1),
% 0.20/0.54    inference(backward_demodulation,[],[f117,f291])).
% 0.20/0.54  fof(f291,plain,(
% 0.20/0.54    k1_xboole_0 = k3_xboole_0(sK1,k5_xboole_0(sK0,sK2))),
% 0.20/0.54    inference(superposition,[],[f186,f38])).
% 0.20/0.54  fof(f38,plain,(
% 0.20/0.54    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.20/0.54    inference(cnf_transformation,[],[f1])).
% 0.20/0.54  fof(f1,axiom,(
% 0.20/0.54    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.20/0.54  fof(f186,plain,(
% 0.20/0.54    k1_xboole_0 = k3_xboole_0(k5_xboole_0(sK0,sK2),sK1)),
% 0.20/0.54    inference(resolution,[],[f183,f47])).
% 0.20/0.54  fof(f47,plain,(
% 0.20/0.54    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) = k1_xboole_0) )),
% 0.20/0.54    inference(cnf_transformation,[],[f25])).
% 0.20/0.54  fof(f25,plain,(
% 0.20/0.54    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) & (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)))),
% 0.20/0.54    inference(nnf_transformation,[],[f2])).
% 0.20/0.54  fof(f2,axiom,(
% 0.20/0.54    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k3_xboole_0(X0,X1) = k1_xboole_0)),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_xboole_0)).
% 0.20/0.54  fof(f183,plain,(
% 0.20/0.54    r1_xboole_0(k5_xboole_0(sK0,sK2),sK1)),
% 0.20/0.54    inference(resolution,[],[f80,f124])).
% 0.20/0.54  fof(f124,plain,(
% 0.20/0.54    r1_xboole_0(k5_xboole_0(sK0,sK2),sK2)),
% 0.20/0.54    inference(backward_demodulation,[],[f104,f115])).
% 0.20/0.54  fof(f115,plain,(
% 0.20/0.54    k3_subset_1(sK0,sK2) = k5_xboole_0(sK0,sK2)),
% 0.20/0.54    inference(backward_demodulation,[],[f65,f106])).
% 0.20/0.54  fof(f106,plain,(
% 0.20/0.54    sK2 = k3_xboole_0(sK0,sK2)),
% 0.20/0.54    inference(superposition,[],[f72,f38])).
% 0.20/0.54  fof(f72,plain,(
% 0.20/0.54    sK2 = k3_xboole_0(sK2,sK0)),
% 0.20/0.54    inference(resolution,[],[f69,f45])).
% 0.20/0.54  fof(f45,plain,(
% 0.20/0.54    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0) )),
% 0.20/0.54    inference(cnf_transformation,[],[f19])).
% 0.20/0.54  fof(f19,plain,(
% 0.20/0.54    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.20/0.54    inference(ennf_transformation,[],[f4])).
% 0.20/0.54  fof(f4,axiom,(
% 0.20/0.54    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.20/0.54    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.20/0.54  fof(f69,plain,(
% 0.20/0.54    r1_tarski(sK2,sK0)),
% 0.20/0.54    inference(resolution,[],[f68,f63])).
% 0.20/0.54  fof(f63,plain,(
% 0.20/0.54    ( ! [X0,X3] : (~r2_hidden(X3,k1_zfmisc_1(X0)) | r1_tarski(X3,X0)) )),
% 0.20/0.54    inference(equality_resolution,[],[f49])).
% 0.20/0.54  fof(f49,plain,(
% 0.20/0.54    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 0.20/0.54    inference(cnf_transformation,[],[f29])).
% 0.20/0.54  fof(f29,plain,(
% 0.20/0.54    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.20/0.54    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f27,f28])).
% 0.20/0.55  fof(f28,plain,(
% 0.20/0.55    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1))))),
% 0.20/0.55    introduced(choice_axiom,[])).
% 0.20/0.55  fof(f27,plain,(
% 0.20/0.55    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.20/0.55    inference(rectify,[],[f26])).
% 0.20/0.55  fof(f26,plain,(
% 0.20/0.55    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.20/0.55    inference(nnf_transformation,[],[f10])).
% 0.20/0.55  fof(f10,axiom,(
% 0.20/0.55    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).
% 0.20/0.55  fof(f68,plain,(
% 0.20/0.55    r2_hidden(sK2,k1_zfmisc_1(sK0))),
% 0.20/0.55    inference(subsumption_resolution,[],[f66,f34])).
% 0.20/0.55  fof(f34,plain,(
% 0.20/0.55    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 0.20/0.55    inference(cnf_transformation,[],[f13])).
% 0.20/0.55  fof(f13,axiom,(
% 0.20/0.55    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).
% 0.20/0.55  fof(f66,plain,(
% 0.20/0.55    r2_hidden(sK2,k1_zfmisc_1(sK0)) | v1_xboole_0(k1_zfmisc_1(sK0))),
% 0.20/0.55    inference(resolution,[],[f30,f41])).
% 0.20/0.55  fof(f41,plain,(
% 0.20/0.55    ( ! [X0,X1] : (~m1_subset_1(X1,X0) | r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f24])).
% 0.20/0.55  fof(f24,plain,(
% 0.20/0.55    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 0.20/0.55    inference(nnf_transformation,[],[f18])).
% 0.20/0.55  fof(f18,plain,(
% 0.20/0.55    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 0.20/0.55    inference(ennf_transformation,[],[f11])).
% 0.20/0.55  fof(f11,axiom,(
% 0.20/0.55    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).
% 0.20/0.55  fof(f30,plain,(
% 0.20/0.55    m1_subset_1(sK2,k1_zfmisc_1(sK0))),
% 0.20/0.55    inference(cnf_transformation,[],[f23])).
% 0.20/0.55  fof(f65,plain,(
% 0.20/0.55    k3_subset_1(sK0,sK2) = k5_xboole_0(sK0,k3_xboole_0(sK0,sK2))),
% 0.20/0.55    inference(resolution,[],[f30,f58])).
% 0.20/0.55  fof(f58,plain,(
% 0.20/0.55    ( ! [X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)) )),
% 0.20/0.55    inference(definition_unfolding,[],[f46,f40])).
% 0.20/0.55  fof(f40,plain,(
% 0.20/0.55    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.20/0.55    inference(cnf_transformation,[],[f3])).
% 0.20/0.55  fof(f3,axiom,(
% 0.20/0.55    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.20/0.55  fof(f46,plain,(
% 0.20/0.55    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.20/0.55    inference(cnf_transformation,[],[f20])).
% 0.20/0.55  fof(f20,plain,(
% 0.20/0.55    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.20/0.55    inference(ennf_transformation,[],[f12])).
% 0.20/0.55  fof(f12,axiom,(
% 0.20/0.55    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).
% 0.20/0.55  fof(f104,plain,(
% 0.20/0.55    r1_xboole_0(k3_subset_1(sK0,sK2),sK2)),
% 0.20/0.55    inference(superposition,[],[f57,f65])).
% 0.20/0.55  fof(f57,plain,(
% 0.20/0.55    ( ! [X0,X1] : (r1_xboole_0(k5_xboole_0(X0,k3_xboole_0(X0,X1)),X1)) )),
% 0.20/0.55    inference(definition_unfolding,[],[f37,f40])).
% 0.20/0.55  fof(f37,plain,(
% 0.20/0.55    ( ! [X0,X1] : (r1_xboole_0(k4_xboole_0(X0,X1),X1)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f7])).
% 0.20/0.55  fof(f7,axiom,(
% 0.20/0.55    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1)),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_xboole_1)).
% 0.20/0.55  fof(f80,plain,(
% 0.20/0.55    ( ! [X0] : (~r1_xboole_0(X0,sK2) | r1_xboole_0(X0,sK1)) )),
% 0.20/0.55    inference(forward_demodulation,[],[f79,f36])).
% 0.20/0.55  fof(f36,plain,(
% 0.20/0.55    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.20/0.55    inference(cnf_transformation,[],[f5])).
% 0.20/0.55  fof(f5,axiom,(
% 0.20/0.55    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).
% 0.20/0.55  fof(f79,plain,(
% 0.20/0.55    ( ! [X0] : (~r1_xboole_0(X0,k5_xboole_0(sK2,k1_xboole_0)) | r1_xboole_0(X0,sK1)) )),
% 0.20/0.55    inference(forward_demodulation,[],[f75,f35])).
% 0.20/0.55  fof(f35,plain,(
% 0.20/0.55    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(X0,X0)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f8])).
% 0.20/0.55  % (26397)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.20/0.55  fof(f8,axiom,(
% 0.20/0.55    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0)),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).
% 0.20/0.55  fof(f75,plain,(
% 0.20/0.55    ( ! [X0] : (~r1_xboole_0(X0,k5_xboole_0(sK2,k5_xboole_0(sK1,sK1))) | r1_xboole_0(X0,sK1)) )),
% 0.20/0.55    inference(superposition,[],[f59,f64])).
% 0.20/0.55  fof(f64,plain,(
% 0.20/0.55    sK1 = k3_xboole_0(sK1,sK2)),
% 0.20/0.55    inference(resolution,[],[f31,f45])).
% 0.20/0.55  fof(f31,plain,(
% 0.20/0.55    r1_tarski(sK1,sK2)),
% 0.20/0.55    inference(cnf_transformation,[],[f23])).
% 0.20/0.55  fof(f59,plain,(
% 0.20/0.55    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))) | r1_xboole_0(X0,X2)) )),
% 0.20/0.55    inference(definition_unfolding,[],[f55,f56])).
% 0.20/0.55  fof(f56,plain,(
% 0.20/0.55    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) )),
% 0.20/0.55    inference(definition_unfolding,[],[f39,f40])).
% 0.20/0.55  fof(f39,plain,(
% 0.20/0.55    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 0.20/0.55    inference(cnf_transformation,[],[f9])).
% 0.20/0.55  fof(f9,axiom,(
% 0.20/0.55    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).
% 0.20/0.55  fof(f55,plain,(
% 0.20/0.55    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,k2_xboole_0(X1,X2)) | r1_xboole_0(X0,X2)) )),
% 0.20/0.55    inference(cnf_transformation,[],[f21])).
% 0.20/0.55  fof(f21,plain,(
% 0.20/0.55    ! [X0,X1,X2] : ((~r1_xboole_0(X0,k2_xboole_0(X1,X2)) | (r1_xboole_0(X0,X2) & r1_xboole_0(X0,X1))) & (~r1_xboole_0(X0,X2) | ~r1_xboole_0(X0,X1) | r1_xboole_0(X0,k2_xboole_0(X1,X2))))),
% 0.20/0.55    inference(ennf_transformation,[],[f6])).
% 0.20/0.55  fof(f6,axiom,(
% 0.20/0.55    ! [X0,X1,X2] : (~(r1_xboole_0(X0,k2_xboole_0(X1,X2)) & ~(r1_xboole_0(X0,X2) & r1_xboole_0(X0,X1))) & ~(r1_xboole_0(X0,X2) & r1_xboole_0(X0,X1) & ~r1_xboole_0(X0,k2_xboole_0(X1,X2))))),
% 0.20/0.55    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_xboole_1)).
% 0.20/0.55  fof(f117,plain,(
% 0.20/0.55    sK1 = k3_xboole_0(sK1,k5_xboole_0(sK0,sK2))),
% 0.20/0.55    inference(backward_demodulation,[],[f71,f115])).
% 0.20/0.55  fof(f71,plain,(
% 0.20/0.55    sK1 = k3_xboole_0(sK1,k3_subset_1(sK0,sK2))),
% 0.20/0.55    inference(resolution,[],[f32,f45])).
% 0.20/0.55  fof(f32,plain,(
% 0.20/0.55    r1_tarski(sK1,k3_subset_1(sK0,sK2))),
% 0.20/0.55    inference(cnf_transformation,[],[f23])).
% 0.20/0.55  % SZS output end Proof for theBenchmark
% 0.20/0.55  % (26379)------------------------------
% 0.20/0.55  % (26379)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.55  % (26379)Termination reason: Refutation
% 0.20/0.55  
% 0.20/0.55  % (26379)Memory used [KB]: 10746
% 0.20/0.55  % (26379)Time elapsed: 0.123 s
% 0.20/0.55  % (26379)------------------------------
% 0.20/0.55  % (26379)------------------------------
% 0.20/0.55  % (26370)Success in time 0.198 s
%------------------------------------------------------------------------------
