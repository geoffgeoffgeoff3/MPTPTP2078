%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:43:46 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   69 ( 219 expanded)
%              Number of leaves         :   16 (  60 expanded)
%              Depth                    :   21
%              Number of atoms          :  147 ( 626 expanded)
%              Number of equality atoms :   54 ( 179 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f170,plain,(
    $false ),
    inference(subsumption_resolution,[],[f169,f120])).

fof(f120,plain,(
    k1_xboole_0 != k4_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(superposition,[],[f67,f113])).

fof(f113,plain,(
    k1_xboole_0 = k1_tarski(sK2(sK1)) ),
    inference(resolution,[],[f108,f45])).

fof(f45,plain,(
    ! [X0] :
      ( ~ r1_tarski(X0,k1_xboole_0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ( r1_tarski(X0,k1_xboole_0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_1)).

fof(f108,plain,(
    r1_tarski(k1_tarski(sK2(sK1)),k1_xboole_0) ),
    inference(resolution,[],[f97,f58])).

fof(f58,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f17,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(f97,plain,(
    r2_hidden(sK2(sK1),k1_xboole_0) ),
    inference(backward_demodulation,[],[f87,f91])).

fof(f91,plain,(
    k1_xboole_0 = sK0 ),
    inference(resolution,[],[f88,f44])).

fof(f44,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f26,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(f88,plain,(
    v1_xboole_0(sK0) ),
    inference(subsumption_resolution,[],[f76,f87])).

fof(f76,plain,
    ( ~ r2_hidden(sK2(sK1),sK0)
    | v1_xboole_0(sK0) ),
    inference(subsumption_resolution,[],[f75,f39])).

fof(f39,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f32])).

fof(f32,plain,
    ( ! [X2] :
        ( ~ r2_hidden(X2,sK1)
        | ~ m1_subset_1(X2,sK0) )
    & k1_xboole_0 != sK1
    & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f25,f31])).

fof(f31,plain,
    ( ? [X0,X1] :
        ( ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ m1_subset_1(X2,X0) )
        & k1_xboole_0 != X1
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ! [X2] :
          ( ~ r2_hidden(X2,sK1)
          | ~ m1_subset_1(X2,sK0) )
      & k1_xboole_0 != sK1
      & m1_subset_1(sK1,k1_zfmisc_1(sK0)) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ~ r2_hidden(X2,X1)
          | ~ m1_subset_1(X2,X0) )
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( ~ r2_hidden(X2,X1)
          | ~ m1_subset_1(X2,X0) )
      & k1_xboole_0 != X1
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ~ ( ! [X2] :
                ( m1_subset_1(X2,X0)
               => ~ r2_hidden(X2,X1) )
            & k1_xboole_0 != X1 ) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f22,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ~ ( ! [X2] :
              ( m1_subset_1(X2,X0)
             => ~ r2_hidden(X2,X1) )
          & k1_xboole_0 != X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_subset_1)).

fof(f75,plain,
    ( v1_xboole_0(sK0)
    | ~ r2_hidden(sK2(sK1),sK0)
    | k1_xboole_0 = sK1 ),
    inference(resolution,[],[f72,f46])).

fof(f46,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f34,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f33])).

fof(f33,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(f72,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK1)
      | v1_xboole_0(sK0)
      | ~ r2_hidden(X0,sK0) ) ),
    inference(resolution,[],[f53,f40])).

fof(f40,plain,(
    ! [X2] :
      ( ~ m1_subset_1(X2,sK0)
      | ~ r2_hidden(X2,sK1) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f53,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f35,plain,(
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
    inference(nnf_transformation,[],[f29])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f20,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(f87,plain,(
    r2_hidden(sK2(sK1),sK0) ),
    inference(subsumption_resolution,[],[f86,f39])).

fof(f86,plain,
    ( r2_hidden(sK2(sK1),sK0)
    | k1_xboole_0 = sK1 ),
    inference(resolution,[],[f84,f46])).

fof(f84,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK1)
      | r2_hidden(X0,sK0) ) ),
    inference(resolution,[],[f56,f38])).

fof(f38,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(sK0)) ),
    inference(cnf_transformation,[],[f32])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ r2_hidden(X2,X1)
      | r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f21,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_subset_1)).

fof(f67,plain,(
    ! [X1] : k1_tarski(X1) != k4_xboole_0(k1_tarski(X1),k1_tarski(X1)) ),
    inference(equality_resolution,[],[f59])).

fof(f59,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1))
        | X0 = X1 )
      & ( X0 != X1
        | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1))
    <=> X0 != X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_zfmisc_1)).

fof(f169,plain,(
    k1_xboole_0 = k4_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f168,f41])).

fof(f41,plain,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).

fof(f168,plain,(
    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k4_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(superposition,[],[f49,f166])).

fof(f166,plain,(
    k1_xboole_0 = k3_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f165,f41])).

fof(f165,plain,(
    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k3_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(forward_demodulation,[],[f161,f41])).

fof(f161,plain,(
    k3_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k5_xboole_0(k1_xboole_0,k1_xboole_0),k1_xboole_0) ),
    inference(superposition,[],[f51,f123])).

fof(f123,plain,(
    k1_xboole_0 = k2_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(superposition,[],[f117,f69])).

fof(f69,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = k3_tarski(k1_tarski(X0)) ),
    inference(superposition,[],[f47,f43])).

fof(f43,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(f47,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f117,plain,(
    k1_xboole_0 = k3_tarski(k1_tarski(k1_xboole_0)) ),
    inference(superposition,[],[f82,f113])).

fof(f82,plain,(
    ! [X2] : k1_tarski(X2) = k3_tarski(k1_tarski(k1_tarski(X2))) ),
    inference(forward_demodulation,[],[f80,f43])).

fof(f80,plain,(
    ! [X2] : k3_tarski(k1_tarski(k1_tarski(X2))) = k2_tarski(X2,X2) ),
    inference(superposition,[],[f50,f69])).

fof(f50,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

fof(f51,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t95_xboole_1)).

fof(f49,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.13  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n003.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 17:50:27 EST 2020
% 0.21/0.35  % CPUTime    : 
% 0.22/0.52  % (24530)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.22/0.52  % (24529)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.52  % (24523)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.53  % (24523)Refutation not found, incomplete strategy% (24523)------------------------------
% 0.22/0.53  % (24523)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (24523)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (24523)Memory used [KB]: 10746
% 0.22/0.53  % (24523)Time elapsed: 0.103 s
% 0.22/0.53  % (24523)------------------------------
% 0.22/0.53  % (24523)------------------------------
% 0.22/0.53  % (24522)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.22/0.53  % (24521)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.53  % (24522)Refutation found. Thanks to Tanya!
% 0.22/0.53  % SZS status Theorem for theBenchmark
% 0.22/0.53  % SZS output start Proof for theBenchmark
% 0.22/0.53  fof(f170,plain,(
% 0.22/0.53    $false),
% 0.22/0.53    inference(subsumption_resolution,[],[f169,f120])).
% 0.22/0.53  fof(f120,plain,(
% 0.22/0.53    k1_xboole_0 != k4_xboole_0(k1_xboole_0,k1_xboole_0)),
% 0.22/0.53    inference(superposition,[],[f67,f113])).
% 0.22/0.53  fof(f113,plain,(
% 0.22/0.53    k1_xboole_0 = k1_tarski(sK2(sK1))),
% 0.22/0.53    inference(resolution,[],[f108,f45])).
% 0.22/0.53  fof(f45,plain,(
% 0.22/0.53    ( ! [X0] : (~r1_tarski(X0,k1_xboole_0) | k1_xboole_0 = X0) )),
% 0.22/0.53    inference(cnf_transformation,[],[f27])).
% 0.22/0.53  fof(f27,plain,(
% 0.22/0.53    ! [X0] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k1_xboole_0))),
% 0.22/0.53    inference(ennf_transformation,[],[f4])).
% 0.22/0.53  fof(f4,axiom,(
% 0.22/0.53    ! [X0] : (r1_tarski(X0,k1_xboole_0) => k1_xboole_0 = X0)),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_1)).
% 0.22/0.53  fof(f108,plain,(
% 0.22/0.53    r1_tarski(k1_tarski(sK2(sK1)),k1_xboole_0)),
% 0.22/0.53    inference(resolution,[],[f97,f58])).
% 0.22/0.53  fof(f58,plain,(
% 0.22/0.53    ( ! [X0,X1] : (~r2_hidden(X0,X1) | r1_tarski(k1_tarski(X0),X1)) )),
% 0.22/0.53    inference(cnf_transformation,[],[f36])).
% 0.22/0.53  fof(f36,plain,(
% 0.22/0.53    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 0.22/0.53    inference(nnf_transformation,[],[f17])).
% 0.22/0.53  fof(f17,axiom,(
% 0.22/0.53    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).
% 0.22/0.53  fof(f97,plain,(
% 0.22/0.53    r2_hidden(sK2(sK1),k1_xboole_0)),
% 0.22/0.53    inference(backward_demodulation,[],[f87,f91])).
% 0.22/0.53  fof(f91,plain,(
% 0.22/0.53    k1_xboole_0 = sK0),
% 0.22/0.53    inference(resolution,[],[f88,f44])).
% 0.22/0.53  fof(f44,plain,(
% 0.22/0.53    ( ! [X0] : (~v1_xboole_0(X0) | k1_xboole_0 = X0) )),
% 0.22/0.53    inference(cnf_transformation,[],[f26])).
% 0.22/0.53  fof(f26,plain,(
% 0.22/0.53    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 0.22/0.53    inference(ennf_transformation,[],[f1])).
% 0.22/0.53  fof(f1,axiom,(
% 0.22/0.53    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).
% 0.22/0.53  fof(f88,plain,(
% 0.22/0.53    v1_xboole_0(sK0)),
% 0.22/0.53    inference(subsumption_resolution,[],[f76,f87])).
% 0.22/0.53  fof(f76,plain,(
% 0.22/0.53    ~r2_hidden(sK2(sK1),sK0) | v1_xboole_0(sK0)),
% 0.22/0.53    inference(subsumption_resolution,[],[f75,f39])).
% 0.22/0.53  fof(f39,plain,(
% 0.22/0.53    k1_xboole_0 != sK1),
% 0.22/0.53    inference(cnf_transformation,[],[f32])).
% 0.22/0.53  fof(f32,plain,(
% 0.22/0.53    ! [X2] : (~r2_hidden(X2,sK1) | ~m1_subset_1(X2,sK0)) & k1_xboole_0 != sK1 & m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 0.22/0.53    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f25,f31])).
% 0.22/0.53  fof(f31,plain,(
% 0.22/0.53    ? [X0,X1] : (! [X2] : (~r2_hidden(X2,X1) | ~m1_subset_1(X2,X0)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(X0))) => (! [X2] : (~r2_hidden(X2,sK1) | ~m1_subset_1(X2,sK0)) & k1_xboole_0 != sK1 & m1_subset_1(sK1,k1_zfmisc_1(sK0)))),
% 0.22/0.53    introduced(choice_axiom,[])).
% 0.22/0.53  fof(f25,plain,(
% 0.22/0.53    ? [X0,X1] : (! [X2] : (~r2_hidden(X2,X1) | ~m1_subset_1(X2,X0)) & k1_xboole_0 != X1 & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.22/0.53    inference(flattening,[],[f24])).
% 0.22/0.53  fof(f24,plain,(
% 0.22/0.53    ? [X0,X1] : ((! [X2] : (~r2_hidden(X2,X1) | ~m1_subset_1(X2,X0)) & k1_xboole_0 != X1) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.22/0.53    inference(ennf_transformation,[],[f23])).
% 0.22/0.53  fof(f23,negated_conjecture,(
% 0.22/0.53    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ~(! [X2] : (m1_subset_1(X2,X0) => ~r2_hidden(X2,X1)) & k1_xboole_0 != X1))),
% 0.22/0.53    inference(negated_conjecture,[],[f22])).
% 0.22/0.53  fof(f22,conjecture,(
% 0.22/0.53    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ~(! [X2] : (m1_subset_1(X2,X0) => ~r2_hidden(X2,X1)) & k1_xboole_0 != X1))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_subset_1)).
% 0.22/0.53  fof(f75,plain,(
% 0.22/0.53    v1_xboole_0(sK0) | ~r2_hidden(sK2(sK1),sK0) | k1_xboole_0 = sK1),
% 0.22/0.53    inference(resolution,[],[f72,f46])).
% 0.22/0.53  fof(f46,plain,(
% 0.22/0.53    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 0.22/0.53    inference(cnf_transformation,[],[f34])).
% 0.22/0.53  fof(f34,plain,(
% 0.22/0.53    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 0.22/0.53    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f33])).
% 0.22/0.53  fof(f33,plain,(
% 0.22/0.53    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 0.22/0.53    introduced(choice_axiom,[])).
% 0.22/0.53  fof(f28,plain,(
% 0.22/0.53    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 0.22/0.53    inference(ennf_transformation,[],[f2])).
% 0.22/0.53  fof(f2,axiom,(
% 0.22/0.53    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).
% 0.22/0.53  fof(f72,plain,(
% 0.22/0.53    ( ! [X0] : (~r2_hidden(X0,sK1) | v1_xboole_0(sK0) | ~r2_hidden(X0,sK0)) )),
% 0.22/0.53    inference(resolution,[],[f53,f40])).
% 0.22/0.53  fof(f40,plain,(
% 0.22/0.53    ( ! [X2] : (~m1_subset_1(X2,sK0) | ~r2_hidden(X2,sK1)) )),
% 0.22/0.53    inference(cnf_transformation,[],[f32])).
% 0.22/0.53  fof(f53,plain,(
% 0.22/0.53    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 0.22/0.53    inference(cnf_transformation,[],[f35])).
% 0.22/0.53  fof(f35,plain,(
% 0.22/0.53    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 0.22/0.53    inference(nnf_transformation,[],[f29])).
% 0.22/0.53  fof(f29,plain,(
% 0.22/0.53    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 0.22/0.53    inference(ennf_transformation,[],[f20])).
% 0.22/0.53  fof(f20,axiom,(
% 0.22/0.53    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).
% 0.22/0.53  fof(f87,plain,(
% 0.22/0.53    r2_hidden(sK2(sK1),sK0)),
% 0.22/0.53    inference(subsumption_resolution,[],[f86,f39])).
% 0.22/0.53  fof(f86,plain,(
% 0.22/0.53    r2_hidden(sK2(sK1),sK0) | k1_xboole_0 = sK1),
% 0.22/0.53    inference(resolution,[],[f84,f46])).
% 0.22/0.53  fof(f84,plain,(
% 0.22/0.53    ( ! [X0] : (~r2_hidden(X0,sK1) | r2_hidden(X0,sK0)) )),
% 0.22/0.53    inference(resolution,[],[f56,f38])).
% 0.22/0.53  fof(f38,plain,(
% 0.22/0.53    m1_subset_1(sK1,k1_zfmisc_1(sK0))),
% 0.22/0.53    inference(cnf_transformation,[],[f32])).
% 0.22/0.53  fof(f56,plain,(
% 0.22/0.53    ( ! [X2,X0,X1] : (~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~r2_hidden(X2,X1) | r2_hidden(X2,X0)) )),
% 0.22/0.53    inference(cnf_transformation,[],[f30])).
% 0.22/0.53  fof(f30,plain,(
% 0.22/0.53    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.22/0.53    inference(ennf_transformation,[],[f21])).
% 0.22/0.53  fof(f21,axiom,(
% 0.22/0.53    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_subset_1)).
% 0.22/0.53  fof(f67,plain,(
% 0.22/0.53    ( ! [X1] : (k1_tarski(X1) != k4_xboole_0(k1_tarski(X1),k1_tarski(X1))) )),
% 0.22/0.53    inference(equality_resolution,[],[f59])).
% 0.22/0.53  fof(f59,plain,(
% 0.22/0.53    ( ! [X0,X1] : (X0 != X1 | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),k1_tarski(X1))) )),
% 0.22/0.53    inference(cnf_transformation,[],[f37])).
% 0.22/0.53  fof(f37,plain,(
% 0.22/0.53    ! [X0,X1] : ((k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1) & (X0 != X1 | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),k1_tarski(X1))))),
% 0.22/0.53    inference(nnf_transformation,[],[f19])).
% 0.22/0.53  fof(f19,axiom,(
% 0.22/0.53    ! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) <=> X0 != X1)),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_zfmisc_1)).
% 0.22/0.53  fof(f169,plain,(
% 0.22/0.53    k1_xboole_0 = k4_xboole_0(k1_xboole_0,k1_xboole_0)),
% 0.22/0.53    inference(forward_demodulation,[],[f168,f41])).
% 0.22/0.53  fof(f41,plain,(
% 0.22/0.53    ( ! [X0] : (k1_xboole_0 = k5_xboole_0(X0,X0)) )),
% 0.22/0.53    inference(cnf_transformation,[],[f7])).
% 0.22/0.53  fof(f7,axiom,(
% 0.22/0.53    ! [X0] : k1_xboole_0 = k5_xboole_0(X0,X0)),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).
% 0.22/0.53  fof(f168,plain,(
% 0.22/0.53    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k4_xboole_0(k1_xboole_0,k1_xboole_0)),
% 0.22/0.53    inference(superposition,[],[f49,f166])).
% 0.22/0.53  fof(f166,plain,(
% 0.22/0.53    k1_xboole_0 = k3_xboole_0(k1_xboole_0,k1_xboole_0)),
% 0.22/0.53    inference(forward_demodulation,[],[f165,f41])).
% 0.22/0.53  fof(f165,plain,(
% 0.22/0.53    k5_xboole_0(k1_xboole_0,k1_xboole_0) = k3_xboole_0(k1_xboole_0,k1_xboole_0)),
% 0.22/0.53    inference(forward_demodulation,[],[f161,f41])).
% 0.22/0.53  fof(f161,plain,(
% 0.22/0.53    k3_xboole_0(k1_xboole_0,k1_xboole_0) = k5_xboole_0(k5_xboole_0(k1_xboole_0,k1_xboole_0),k1_xboole_0)),
% 0.22/0.53    inference(superposition,[],[f51,f123])).
% 0.22/0.53  fof(f123,plain,(
% 0.22/0.53    k1_xboole_0 = k2_xboole_0(k1_xboole_0,k1_xboole_0)),
% 0.22/0.53    inference(superposition,[],[f117,f69])).
% 0.22/0.53  fof(f69,plain,(
% 0.22/0.53    ( ! [X0] : (k2_xboole_0(X0,X0) = k3_tarski(k1_tarski(X0))) )),
% 0.22/0.53    inference(superposition,[],[f47,f43])).
% 0.22/0.53  fof(f43,plain,(
% 0.22/0.53    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 0.22/0.53    inference(cnf_transformation,[],[f10])).
% 0.22/0.53  fof(f10,axiom,(
% 0.22/0.53    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).
% 0.22/0.53  fof(f47,plain,(
% 0.22/0.53    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 0.22/0.53    inference(cnf_transformation,[],[f18])).
% 0.22/0.53  fof(f18,axiom,(
% 0.22/0.53    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 0.22/0.53  fof(f117,plain,(
% 0.22/0.53    k1_xboole_0 = k3_tarski(k1_tarski(k1_xboole_0))),
% 0.22/0.53    inference(superposition,[],[f82,f113])).
% 0.22/0.53  fof(f82,plain,(
% 0.22/0.53    ( ! [X2] : (k1_tarski(X2) = k3_tarski(k1_tarski(k1_tarski(X2)))) )),
% 0.22/0.53    inference(forward_demodulation,[],[f80,f43])).
% 0.22/0.53  fof(f80,plain,(
% 0.22/0.53    ( ! [X2] : (k3_tarski(k1_tarski(k1_tarski(X2))) = k2_tarski(X2,X2)) )),
% 0.22/0.53    inference(superposition,[],[f50,f69])).
% 0.22/0.53  fof(f50,plain,(
% 0.22/0.53    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1))) )),
% 0.22/0.53    inference(cnf_transformation,[],[f9])).
% 0.22/0.53  fof(f9,axiom,(
% 0.22/0.53    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).
% 0.22/0.53  fof(f51,plain,(
% 0.22/0.53    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) )),
% 0.22/0.53    inference(cnf_transformation,[],[f8])).
% 0.22/0.53  fof(f8,axiom,(
% 0.22/0.53    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t95_xboole_1)).
% 0.22/0.53  fof(f49,plain,(
% 0.22/0.53    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.22/0.53    inference(cnf_transformation,[],[f3])).
% 0.22/0.53  fof(f3,axiom,(
% 0.22/0.53    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.22/0.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.22/0.53  % SZS output end Proof for theBenchmark
% 0.22/0.53  % (24522)------------------------------
% 0.22/0.53  % (24522)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (24522)Termination reason: Refutation
% 0.22/0.53  
% 0.22/0.53  % (24522)Memory used [KB]: 6268
% 0.22/0.53  % (24522)Time elapsed: 0.109 s
% 0.22/0.53  % (24522)------------------------------
% 0.22/0.53  % (24522)------------------------------
% 0.22/0.54  % (24539)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.54  % (24519)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.55  % (24531)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.22/0.55  % (24520)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.55  % (24527)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.55  % (24543)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.22/0.55  % (24542)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.55  % (24518)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.55  % (24535)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.55  % (24538)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.22/0.55  % (24514)Success in time 0.18 s
%------------------------------------------------------------------------------
