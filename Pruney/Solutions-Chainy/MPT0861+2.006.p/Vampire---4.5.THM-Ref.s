%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:58:23 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   34 (  79 expanded)
%              Number of leaves         :    6 (  22 expanded)
%              Depth                    :    9
%              Number of atoms          :   72 ( 180 expanded)
%              Number of equality atoms :   43 ( 121 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f79,plain,(
    $false ),
    inference(global_subsumption,[],[f14,f13,f78,f77])).

fof(f77,plain,(
    sK3 = k2_mcart_1(sK0) ),
    inference(duplicate_literal_removal,[],[f76])).

fof(f76,plain,
    ( sK3 = k2_mcart_1(sK0)
    | sK3 = k2_mcart_1(sK0)
    | sK3 = k2_mcart_1(sK0) ),
    inference(resolution,[],[f29,f61])).

fof(f61,plain,(
    sP5(k2_mcart_1(sK0),sK3,sK3,sK3) ),
    inference(unit_resulting_resolution,[],[f55,f48])).

fof(f48,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,k2_enumset1(X0,X0,X1,X2))
      | sP5(X4,X2,X1,X0) ) ),
    inference(equality_resolution,[],[f44])).

fof(f44,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( sP5(X4,X2,X1,X0)
      | ~ r2_hidden(X4,X3)
      | k2_enumset1(X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f31,f20])).

fof(f20,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f31,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( sP5(X4,X2,X1,X0)
      | ~ r2_hidden(X4,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(f55,plain,(
    r2_hidden(k2_mcart_1(sK0),k2_enumset1(sK3,sK3,sK3,sK3)) ),
    inference(unit_resulting_resolution,[],[f36,f22])).

fof(f22,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
      | r2_hidden(k2_mcart_1(X0),X2) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) )
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k2_zfmisc_1(X1,X2))
     => ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_mcart_1)).

fof(f36,plain,(
    r2_hidden(sK0,k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK2),k2_enumset1(sK3,sK3,sK3,sK3))) ),
    inference(definition_unfolding,[],[f15,f34,f35])).

fof(f35,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f16,f34])).

fof(f16,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f34,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f17,f20])).

fof(f17,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f15,plain,(
    r2_hidden(sK0,k2_zfmisc_1(k2_tarski(sK1,sK2),k1_tarski(sK3))) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    ? [X0,X1,X2,X3] :
      ( ( k2_mcart_1(X0) != X3
        | ( k1_mcart_1(X0) != X2
          & k1_mcart_1(X0) != X1 ) )
      & r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k1_tarski(X3))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k1_tarski(X3)))
       => ( k2_mcart_1(X0) = X3
          & ( k1_mcart_1(X0) = X2
            | k1_mcart_1(X0) = X1 ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f8,conjecture,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k1_tarski(X3)))
     => ( k2_mcart_1(X0) = X3
        & ( k1_mcart_1(X0) = X2
          | k1_mcart_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_mcart_1)).

fof(f29,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ sP5(X4,X2,X1,X0)
      | X1 = X4
      | X2 = X4
      | X0 = X4 ) ),
    inference(cnf_transformation,[],[f12])).

fof(f78,plain,
    ( sK1 = k1_mcart_1(sK0)
    | sK2 = k1_mcart_1(sK0) ),
    inference(duplicate_literal_removal,[],[f75])).

fof(f75,plain,
    ( sK1 = k1_mcart_1(sK0)
    | sK2 = k1_mcart_1(sK0)
    | sK1 = k1_mcart_1(sK0) ),
    inference(resolution,[],[f29,f60])).

% (26622)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
fof(f60,plain,(
    sP5(k1_mcart_1(sK0),sK2,sK1,sK1) ),
    inference(unit_resulting_resolution,[],[f53,f48])).

fof(f53,plain,(
    r2_hidden(k1_mcart_1(sK0),k2_enumset1(sK1,sK1,sK1,sK2)) ),
    inference(unit_resulting_resolution,[],[f36,f21])).

fof(f21,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
      | r2_hidden(k1_mcart_1(X0),X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f13,plain,
    ( sK3 != k2_mcart_1(sK0)
    | sK1 != k1_mcart_1(sK0) ),
    inference(cnf_transformation,[],[f10])).

fof(f14,plain,
    ( sK3 != k2_mcart_1(sK0)
    | sK2 != k1_mcart_1(sK0) ),
    inference(cnf_transformation,[],[f10])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 14:02:54 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.20/0.50  % (26618)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.20/0.50  % (26632)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.20/0.51  % (26624)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.20/0.51  % (26618)Refutation not found, incomplete strategy% (26618)------------------------------
% 0.20/0.51  % (26618)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.51  % (26618)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.51  
% 0.20/0.51  % (26618)Memory used [KB]: 10618
% 0.20/0.51  % (26618)Time elapsed: 0.103 s
% 0.20/0.51  % (26618)------------------------------
% 0.20/0.51  % (26618)------------------------------
% 0.20/0.51  % (26620)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.20/0.51  % (26619)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.20/0.51  % (26630)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.20/0.52  % (26632)Refutation found. Thanks to Tanya!
% 0.20/0.52  % SZS status Theorem for theBenchmark
% 0.20/0.52  % SZS output start Proof for theBenchmark
% 0.20/0.52  fof(f79,plain,(
% 0.20/0.52    $false),
% 0.20/0.52    inference(global_subsumption,[],[f14,f13,f78,f77])).
% 0.20/0.52  fof(f77,plain,(
% 0.20/0.52    sK3 = k2_mcart_1(sK0)),
% 0.20/0.52    inference(duplicate_literal_removal,[],[f76])).
% 0.20/0.52  fof(f76,plain,(
% 0.20/0.52    sK3 = k2_mcart_1(sK0) | sK3 = k2_mcart_1(sK0) | sK3 = k2_mcart_1(sK0)),
% 0.20/0.52    inference(resolution,[],[f29,f61])).
% 0.20/0.52  fof(f61,plain,(
% 0.20/0.52    sP5(k2_mcart_1(sK0),sK3,sK3,sK3)),
% 0.20/0.52    inference(unit_resulting_resolution,[],[f55,f48])).
% 0.20/0.52  fof(f48,plain,(
% 0.20/0.52    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,k2_enumset1(X0,X0,X1,X2)) | sP5(X4,X2,X1,X0)) )),
% 0.20/0.52    inference(equality_resolution,[],[f44])).
% 0.20/0.52  fof(f44,plain,(
% 0.20/0.52    ( ! [X4,X2,X0,X3,X1] : (sP5(X4,X2,X1,X0) | ~r2_hidden(X4,X3) | k2_enumset1(X0,X0,X1,X2) != X3) )),
% 0.20/0.52    inference(definition_unfolding,[],[f31,f20])).
% 0.20/0.52  fof(f20,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f4])).
% 0.20/0.52  fof(f4,axiom,(
% 0.20/0.52    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 0.20/0.52  fof(f31,plain,(
% 0.20/0.52    ( ! [X4,X2,X0,X3,X1] : (sP5(X4,X2,X1,X0) | ~r2_hidden(X4,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 0.20/0.52    inference(cnf_transformation,[],[f12])).
% 0.20/0.52  fof(f12,plain,(
% 0.20/0.52    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 0.20/0.52    inference(ennf_transformation,[],[f1])).
% 0.20/0.52  fof(f1,axiom,(
% 0.20/0.52    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).
% 0.20/0.52  fof(f55,plain,(
% 0.20/0.52    r2_hidden(k2_mcart_1(sK0),k2_enumset1(sK3,sK3,sK3,sK3))),
% 0.20/0.52    inference(unit_resulting_resolution,[],[f36,f22])).
% 0.20/0.52  fof(f22,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (~r2_hidden(X0,k2_zfmisc_1(X1,X2)) | r2_hidden(k2_mcart_1(X0),X2)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f11])).
% 0.20/0.52  fof(f11,plain,(
% 0.20/0.52    ! [X0,X1,X2] : ((r2_hidden(k2_mcart_1(X0),X2) & r2_hidden(k1_mcart_1(X0),X1)) | ~r2_hidden(X0,k2_zfmisc_1(X1,X2)))),
% 0.20/0.52    inference(ennf_transformation,[],[f7])).
% 0.20/0.52  fof(f7,axiom,(
% 0.20/0.52    ! [X0,X1,X2] : (r2_hidden(X0,k2_zfmisc_1(X1,X2)) => (r2_hidden(k2_mcart_1(X0),X2) & r2_hidden(k1_mcart_1(X0),X1)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_mcart_1)).
% 0.20/0.52  fof(f36,plain,(
% 0.20/0.52    r2_hidden(sK0,k2_zfmisc_1(k2_enumset1(sK1,sK1,sK1,sK2),k2_enumset1(sK3,sK3,sK3,sK3)))),
% 0.20/0.52    inference(definition_unfolding,[],[f15,f34,f35])).
% 0.20/0.52  fof(f35,plain,(
% 0.20/0.52    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 0.20/0.52    inference(definition_unfolding,[],[f16,f34])).
% 0.20/0.52  fof(f16,plain,(
% 0.20/0.52    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f2])).
% 0.20/0.52  fof(f2,axiom,(
% 0.20/0.52    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 0.20/0.52  fof(f34,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 0.20/0.52    inference(definition_unfolding,[],[f17,f20])).
% 0.20/0.52  fof(f17,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f3])).
% 0.20/0.52  fof(f3,axiom,(
% 0.20/0.52    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 0.20/0.52  fof(f15,plain,(
% 0.20/0.52    r2_hidden(sK0,k2_zfmisc_1(k2_tarski(sK1,sK2),k1_tarski(sK3)))),
% 0.20/0.52    inference(cnf_transformation,[],[f10])).
% 0.20/0.52  fof(f10,plain,(
% 0.20/0.52    ? [X0,X1,X2,X3] : ((k2_mcart_1(X0) != X3 | (k1_mcart_1(X0) != X2 & k1_mcart_1(X0) != X1)) & r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k1_tarski(X3))))),
% 0.20/0.52    inference(ennf_transformation,[],[f9])).
% 0.20/0.52  fof(f9,negated_conjecture,(
% 0.20/0.52    ~! [X0,X1,X2,X3] : (r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k1_tarski(X3))) => (k2_mcart_1(X0) = X3 & (k1_mcart_1(X0) = X2 | k1_mcart_1(X0) = X1)))),
% 0.20/0.52    inference(negated_conjecture,[],[f8])).
% 0.20/0.52  fof(f8,conjecture,(
% 0.20/0.52    ! [X0,X1,X2,X3] : (r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k1_tarski(X3))) => (k2_mcart_1(X0) = X3 & (k1_mcart_1(X0) = X2 | k1_mcart_1(X0) = X1)))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_mcart_1)).
% 0.20/0.52  fof(f29,plain,(
% 0.20/0.52    ( ! [X4,X2,X0,X1] : (~sP5(X4,X2,X1,X0) | X1 = X4 | X2 = X4 | X0 = X4) )),
% 0.20/0.52    inference(cnf_transformation,[],[f12])).
% 0.20/0.52  fof(f78,plain,(
% 0.20/0.52    sK1 = k1_mcart_1(sK0) | sK2 = k1_mcart_1(sK0)),
% 0.20/0.52    inference(duplicate_literal_removal,[],[f75])).
% 0.20/0.52  fof(f75,plain,(
% 0.20/0.52    sK1 = k1_mcart_1(sK0) | sK2 = k1_mcart_1(sK0) | sK1 = k1_mcart_1(sK0)),
% 0.20/0.52    inference(resolution,[],[f29,f60])).
% 0.20/0.52  % (26622)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.20/0.52  fof(f60,plain,(
% 0.20/0.52    sP5(k1_mcart_1(sK0),sK2,sK1,sK1)),
% 0.20/0.52    inference(unit_resulting_resolution,[],[f53,f48])).
% 0.20/0.52  fof(f53,plain,(
% 0.20/0.52    r2_hidden(k1_mcart_1(sK0),k2_enumset1(sK1,sK1,sK1,sK2))),
% 0.20/0.52    inference(unit_resulting_resolution,[],[f36,f21])).
% 0.20/0.52  fof(f21,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (~r2_hidden(X0,k2_zfmisc_1(X1,X2)) | r2_hidden(k1_mcart_1(X0),X1)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f11])).
% 0.20/0.52  fof(f13,plain,(
% 0.20/0.52    sK3 != k2_mcart_1(sK0) | sK1 != k1_mcart_1(sK0)),
% 0.20/0.52    inference(cnf_transformation,[],[f10])).
% 0.20/0.52  fof(f14,plain,(
% 0.20/0.52    sK3 != k2_mcart_1(sK0) | sK2 != k1_mcart_1(sK0)),
% 0.20/0.52    inference(cnf_transformation,[],[f10])).
% 0.20/0.52  % SZS output end Proof for theBenchmark
% 0.20/0.52  % (26632)------------------------------
% 0.20/0.52  % (26632)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.52  % (26632)Termination reason: Refutation
% 0.20/0.52  
% 0.20/0.52  % (26632)Memory used [KB]: 6268
% 0.20/0.52  % (26632)Time elapsed: 0.118 s
% 0.20/0.52  % (26632)------------------------------
% 0.20/0.52  % (26632)------------------------------
% 0.20/0.52  % (26607)Success in time 0.165 s
%------------------------------------------------------------------------------
